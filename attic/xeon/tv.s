   1              		.file	"main.cpp"
   2              		.intel_syntax noprefix
   3              	# GNU C++ (GCC) version 4.8.3 20140911 (Red Hat 4.8.3-9) (x86_64-redhat-linux)
   4              	#	compiled by GNU C version 4.8.3 20140911 (Red Hat 4.8.3-9), GMP version 5.1.1, MPFR version 3.1.1
   5              	# warning: GMP header version 5.1.1 differs from library version 6.0.0.
   6              	# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
   7              	# 渡されたオプション:  -D_GNU_SOURCE -D_REENTRANT main.cpp
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
  62              	.LFB4547:
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
  71 0004 480378E8 		add	rdi, QWORD PTR [rax-24]	# D.72918, MEM[(long int *)_2 + -24B]
  72              	.LVL1:
  73              	.LBB468:
  74              	.LBB469:
  75              	.LBB470:
  76              	.LBB471:
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
  79 0008 8B7720   		mov	esi, DWORD PTR [rdi+32]	# D.72920, MEM[(const struct basic_ios *)_5 + 32B]
  80 000b 83CE01   		or	esi, 1	# D.72920,
  81              	.LBE471:
  82              	.LBE470:
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
  87              	.LBE469:
  88              	.LBE468:
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
  94              	.LFE4547:
  96              		.section	.text._ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev,"axG",@progbits,_ZNSt15basic_s
  97              		.align 2
  98              		.p2align 4,,15
  99              		.weak	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev
 101              	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED2Ev:
 102              	.LFB4359:
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
 113              	.LBB500:
 114              		.loc 4 64 0
 115 0008 48C70700 		mov	QWORD PTR [rdi], OFFSET FLAT:_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16	# this_2(D)-
 115      000000
 116              	.LVL4:
 117              	.LBB501:
 118              	.LBB502:
 119              	.LBB503:
 120              	.LBB504:
 121              	.LBB505:
 122              	.LBB506:
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
 125 000f 488B4748 		mov	rax, QWORD PTR [rdi+72]	# D.72941, MEM[(const struct basic_string *)this_2(D) + 72B]._M_datapl
 126              	.LBE506:
 127              	.LBE505:
 128              	.LBE504:
 129              	.LBE503:
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
 131 0013 488D78E8 		lea	rdi, [rax-24]	# D.72942,
 132              	.LVL5:
 133              	.LBB507:
 134              	.LBB508:
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 135              		.loc 5 240 0
 136 0017 4881FF00 		cmp	rdi, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# D.72942,
 136      000000
 137 001e 7516     		jne	.L11	#,
 138              	.LVL6:
 139              	.L5:
 140              	.LBE508:
 141              	.LBE507:
 142              	.LBE502:
 143              	.LBE501:
 144              	.LBB522:
 145              	.LBB523:
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
 149 0027 488D7B38 		lea	rdi, [rbx+56]	# D.72943,
 150 002b E8000000 		call	_ZNSt6localeD1Ev	#
 150      00
 151              	.LVL7:
 152              	.LBE523:
 153              	.LBE522:
 154              	.LBE500:
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
 166              	.LBB525:
 167              	.LBB524:
 168              	.LBB521:
 169              	.LBB520:
 170              	.LBB519:
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 171              		.loc 5 246 0
 172 0036 488D5710 		lea	rdx, [rdi+16]	# D.72944,
 173              	.LVL10:
 174              	.LBB509:
 175              	.LBB510:
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
 182              	.LBB511:
 183              	.LBB512:
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 184              		.loc 7 49 0
 185 0044 4183C9FF 		or	r9d, -1	# D.72945,
 186 0048 F0440FC1 		lock xadd	DWORD PTR [rdx], r9d	#,* D.72944, D.72945
 186      0A
 187              	.LVL12:
 188              	.L7:
 189              	.LBE512:
 190              	.LBE511:
 191              	.LBE510:
 192              	.LBE509:
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 193              		.loc 5 245 0
 194 004d 4585C9   		test	r9d, r9d	# D.72947
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
 204              	.LBB518:
 205              	.LBB517:
 206              	.LBB513:
 207              	.LBB514:
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
 208              		.loc 7 67 0
 209 005e 8B70F8   		mov	esi, DWORD PTR [rax-8]	# __result, MEM[(_Atomic_word *)_6 + -8B]
 210              	.LVL16:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 211              		.loc 7 68 0
 212 0061 448D46FF 		lea	r8d, [rsi-1]	# tmp70,
 213              	.LBE514:
 214              	.LBE513:
  82:/usr/include/c++/4.8.2/ext/atomicity.h ****       return __exchange_and_add(__mem, __val);
  83:/usr/include/c++/4.8.2/ext/atomicity.h ****     else
  84:/usr/include/c++/4.8.2/ext/atomicity.h ****       return __exchange_and_add_single(__mem, __val);
 215              		.loc 7 84 0
 216 0065 4189F1   		mov	r9d, esi	# D.72947, __result
 217              	.LBB516:
 218              	.LBB515:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 219              		.loc 7 68 0
 220 0068 448940F8 		mov	DWORD PTR [rax-8], r8d	# MEM[(_Atomic_word *)_6 + -8B], tmp70
 221 006c EBDF     		jmp	.L7	#
 222              	.LBE515:
 223              	.LBE516:
 224              	.LBE517:
 225              	.LBE518:
 226              	.LBE519:
 227              	.LBE520:
 228              	.LBE521:
 229              	.LBE524:
 230              	.LBE525:
 231              		.cfi_endproc
 232              	.LFE4359:
 234              		.weak	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev
 235              		.set	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev,_ZNSt15basic_stringbufIcSt11char_traitsI
 236              		.section	.text._ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev,"axG",@progbits,_ZNSt15basic_s
 237              		.align 2
 238              		.p2align 4,,15
 239              		.weak	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev
 241              	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev:
 242              	.LFB4361:
 243              		.loc 4 64 0
 244              		.cfi_startproc
 245              	.LVL17:
 246 0000 53       		push	rbx	#
 247              		.cfi_def_cfa_offset 16
 248              		.cfi_offset 3, -16
 249 0001 4889FB   		mov	rbx, rdi	# this, this
 250 0004 4883EC10 		sub	rsp, 16	#,
 251              		.cfi_def_cfa_offset 32
 252              	.LBB547:
 253              	.LBB548:
 254              		.loc 4 64 0
 255 0008 48C70700 		mov	QWORD PTR [rdi], OFFSET FLAT:_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16	# this_2(D)-
 255      000000
 256              	.LVL18:
 257              	.LBB549:
 258              	.LBB550:
 259              	.LBB551:
 260              	.LBB552:
 261              	.LBB553:
 262              	.LBB554:
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 263              		.loc 5 293 0
 264 000f 488B4748 		mov	rax, QWORD PTR [rdi+72]	# D.72965, MEM[(const struct basic_string *)this_2(D) + 72B]._M_datapl
 265              	.LBE554:
 266              	.LBE553:
 267              	.LBE552:
 268              	.LBE551:
 269              		.loc 5 539 0
 270 0013 488D78E8 		lea	rdi, [rax-24]	# D.72966,
 271              	.LVL19:
 272              	.LBB555:
 273              	.LBB556:
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 274              		.loc 5 240 0
 275 0017 4881FF00 		cmp	rdi, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# D.72966,
 275      000000
 276 001e 751E     		jne	.L19	#,
 277              	.LVL20:
 278              	.L14:
 279              	.LBE556:
 280              	.LBE555:
 281              	.LBE550:
 282              	.LBE549:
 283              	.LBB570:
 284              	.LBB571:
 285              		.loc 6 198 0
 286 0020 488D7B38 		lea	rdi, [rbx+56]	# D.72967,
 287 0024 48C70300 		mov	QWORD PTR [rbx], OFFSET FLAT:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16	# MEM[(struct bas
 287      000000
 288 002b E8000000 		call	_ZNSt6localeD1Ev	#
 288      00
 289              	.LVL21:
 290              	.LBE571:
 291              	.LBE570:
 292              	.LBE548:
 293              	.LBE547:
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
 308              	.LBB574:
 309              	.LBB573:
 310              	.LBB572:
 311              	.LBB569:
 312              	.LBB568:
 313              	.LBB567:
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 314              		.loc 5 246 0
 315 003e 488D5710 		lea	rdx, [rdi+16]	# D.72968,
 316              	.LVL25:
 317              	.LBB557:
 318              	.LBB558:
  81:/usr/include/c++/4.8.2/ext/atomicity.h ****     if (__gthread_active_p())
 319              		.loc 7 81 0
 320 0042 B9000000 		mov	ecx, OFFSET FLAT:_ZL28__gthrw___pthread_key_createPjPFvPvE	# tmp69,
 320      00
 321 0047 4885C9   		test	rcx, rcx	# tmp69
 322 004a 741A     		je	.L15	#,
 323              	.LVL26:
 324              	.LBB559:
 325              	.LBB560:
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 326              		.loc 7 49 0
 327 004c 4183C9FF 		or	r9d, -1	# D.72969,
 328 0050 F0440FC1 		lock xadd	DWORD PTR [rdx], r9d	#,* D.72968, D.72969
 328      0A
 329              	.LVL27:
 330              	.L16:
 331              	.LBE560:
 332              	.LBE559:
 333              	.LBE558:
 334              	.LBE557:
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 335              		.loc 5 245 0
 336 0055 4585C9   		test	r9d, r9d	# D.72971
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
 346              	.LBB566:
 347              	.LBB565:
 348              	.LBB561:
 349              	.LBB562:
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
 350              		.loc 7 67 0
 351 0066 8B70F8   		mov	esi, DWORD PTR [rax-8]	# __result, MEM[(_Atomic_word *)_5 + -8B]
 352              	.LVL31:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 353              		.loc 7 68 0
 354 0069 448D46FF 		lea	r8d, [rsi-1]	# tmp70,
 355              	.LBE562:
 356              	.LBE561:
 357              		.loc 7 84 0
 358 006d 4189F1   		mov	r9d, esi	# D.72971, __result
 359              	.LBB564:
 360              	.LBB563:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 361              		.loc 7 68 0
 362 0070 448940F8 		mov	DWORD PTR [rax-8], r8d	# MEM[(_Atomic_word *)_5 + -8B], tmp70
 363 0074 EBDF     		jmp	.L16	#
 364              	.LBE563:
 365              	.LBE564:
 366              	.LBE565:
 367              	.LBE566:
 368              	.LBE567:
 369              	.LBE568:
 370              	.LBE569:
 371              	.LBE572:
 372              	.LBE573:
 373              	.LBE574:
 374              		.cfi_endproc
 375              	.LFE4361:
 377              		.section	.text._Z22fill_initial_conditionILi50ELi40ELi100EfEvPAT0__AT1__T2_S3_,"axG",@progbits,_Z2
 378              		.p2align 4,,15
 379              		.weak	_Z22fill_initial_conditionILi50ELi40ELi100EfEvPAT0__AT1__T2_S3_
 381              	_Z22fill_initial_conditionILi50ELi40ELi100EfEvPAT0__AT1__T2_S3_:
 382              	.LFB4351:
 383              		.file 8 "initial-condition.hpp"
   1:initial-condition.hpp **** #include <algorithm>
   2:initial-condition.hpp **** #include <cmath>
   3:initial-condition.hpp **** 
   4:initial-condition.hpp **** template <int NX, int NY, int NZ, class T> void fill_initial_condition(T U[NX][NY][NZ], T V[NX][NY]
 384              		.loc 8 4 0
 385              		.cfi_startproc
 386              	.LVL32:
 387 0000 55       		push	rbp	#
 388              		.cfi_def_cfa_offset 16
 389              		.cfi_offset 6, -16
 390 0001 4989FB   		mov	r11, rdi	# ivtmp.314, U
 391              	.LBB575:
 392              	.LBB576:
 393              	.LBB577:
 394              	.LBB578:
   5:initial-condition.hpp ****   for (int x=0;x<NX;++x) {
   6:initial-condition.hpp ****     for (int y=0;y<NY;++y) {
   7:initial-condition.hpp ****       for (int z=0;z<NZ;++z) {
   8:initial-condition.hpp ****         U[x][y][z] = 1;
   9:initial-condition.hpp ****         V[x][y][z] = 0;
 395              		.loc 8 9 0
 396 0004 C5F857C0 		vxorps	xmm0, xmm0, xmm0	# tmp228
 397              	.LBE578:
 398              	.LBE577:
 399              	.LBE576:
 400              	.LBE575:
   4:initial-condition.hpp **** template <int NX, int NY, int NZ, class T> void fill_initial_condition(T U[NX][NY][NZ], T V[NX][NY]
 401              		.loc 8 4 0
 402 0008 4889E5   		mov	rbp, rsp	#,
 403              		.cfi_def_cfa_register 6
 404 000b 4157     		push	r15	#
 405 000d 4156     		push	r14	#
 406 000f 4155     		push	r13	#
 407 0011 4154     		push	r12	#
 408              		.cfi_offset 15, -24
 409              		.cfi_offset 14, -32
 410              		.cfi_offset 13, -40
 411              		.cfi_offset 12, -48
 412 0013 41BC3200 		mov	r12d, 50	# D.73093,
 412      0000
 413 0019 53       		push	rbx	#
 414              		.cfi_offset 3, -56
 415 001a 4889F3   		mov	rbx, rsi	# ivtmp.316, V
 416 001d 4883EC58 		sub	rsp, 88	#,
 417              	.LBB595:
 418              	.LBB585:
 419              	.LBB582:
 420              	.LBB579:
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 421              		.loc 8 8 0
 422 0021 C5FC280D 		vmovaps	ymm1, YMMWORD PTR .LC2[rip]	# tmp227,
 422      00000000 
 423              	.LVL33:
 424 0029 0F1F8000 		.p2align 4,,10
 424      000000
 425              		.p2align 3
 426              	.L21:
 427              	.LBE579:
 428              	.LBE582:
 429              	.LBE585:
 430              	.LBE595:
   4:initial-condition.hpp **** template <int NX, int NY, int NZ, class T> void fill_initial_condition(T U[NX][NY][NZ], T V[NX][NY]
 431              		.loc 8 4 0 discriminator 1
 432 0030 4889D9   		mov	rcx, rbx	# ivtmp.301, ivtmp.316
 433 0033 4C89DA   		mov	rdx, r11	# ivtmp.299, ivtmp.314
 434 0036 4989D9   		mov	r9, rbx	# ivtmp.276, ivtmp.316
 435 0039 4D89D8   		mov	r8, r11	# ivtmp.275, ivtmp.314
 436 003c 4531D2   		xor	r10d, r10d	# y
 437 003f E93C0100 		jmp	.L29	#
 437      00
 438              	.LVL34:
 439              		.p2align 4,,10
 440 0044 0F1F4000 		.p2align 3
 441              	.L25:
 442              	.LBB596:
 443              	.LBB586:
 444              	.LBB583:
 445              	.LBB580:
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 446              		.loc 8 8 0
 447 0048 C4C17C11 		vmovups	YMMWORD PTR [r8], ymm1	# MEM[base: vect_p.202_51, offset: 0B], tmp227
 447      08
 448              		.loc 8 9 0
 449 004d C4C17C11 		vmovups	YMMWORD PTR [r9], ymm0	# MEM[base: vect_p.205_41, offset: 0B], tmp228
 449      01
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 450              		.loc 8 8 0
 451 0052 C4C17C11 		vmovups	YMMWORD PTR [r8+32], ymm1	# MEM[base: vect_p.202_51, offset: 32B], tmp227
 451      4820
 452              		.loc 8 9 0
 453 0058 C4C17C11 		vmovups	YMMWORD PTR [r9+32], ymm0	# MEM[base: vect_p.205_41, offset: 32B], tmp228
 453      4120
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 454              		.loc 8 8 0
 455 005e C4C17C11 		vmovups	YMMWORD PTR [r8+64], ymm1	# MEM[base: vect_p.202_51, offset: 64B], tmp227
 455      4840
 456              		.loc 8 9 0
 457 0064 C4C17C11 		vmovups	YMMWORD PTR [r9+64], ymm0	# MEM[base: vect_p.205_41, offset: 64B], tmp228
 457      4140
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 458              		.loc 8 8 0
 459 006a C4C17C11 		vmovups	YMMWORD PTR [r8+96], ymm1	# MEM[base: vect_p.202_51, offset: 96B], tmp227
 459      4860
 460              		.loc 8 9 0
 461 0070 C4C17C11 		vmovups	YMMWORD PTR [r9+96], ymm0	# MEM[base: vect_p.205_41, offset: 96B], tmp228
 461      4160
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 462              		.loc 8 8 0
 463 0076 C4C17C11 		vmovups	YMMWORD PTR [r8+128], ymm1	# MEM[base: vect_p.202_51, offset: 128B], tmp227
 463      88800000 
 463      00
 464              		.loc 8 9 0
 465 007f C4C17C11 		vmovups	YMMWORD PTR [r9+128], ymm0	# MEM[base: vect_p.205_41, offset: 128B], tmp228
 465      81800000 
 465      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 466              		.loc 8 8 0
 467 0088 C4C17C11 		vmovups	YMMWORD PTR [r8+160], ymm1	# MEM[base: vect_p.202_51, offset: 160B], tmp227
 467      88A00000 
 467      00
 468              		.loc 8 9 0
 469 0091 C4C17C11 		vmovups	YMMWORD PTR [r9+160], ymm0	# MEM[base: vect_p.205_41, offset: 160B], tmp228
 469      81A00000 
 469      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 470              		.loc 8 8 0
 471 009a C4C17C11 		vmovups	YMMWORD PTR [r8+192], ymm1	# MEM[base: vect_p.202_51, offset: 192B], tmp227
 471      88C00000 
 471      00
 472              		.loc 8 9 0
 473 00a3 C4C17C11 		vmovups	YMMWORD PTR [r9+192], ymm0	# MEM[base: vect_p.205_41, offset: 192B], tmp228
 473      81C00000 
 473      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 474              		.loc 8 8 0
 475 00ac C4C17C11 		vmovups	YMMWORD PTR [r8+224], ymm1	# MEM[base: vect_p.202_51, offset: 224B], tmp227
 475      88E00000 
 475      00
 476              		.loc 8 9 0
 477 00b5 C4C17C11 		vmovups	YMMWORD PTR [r9+224], ymm0	# MEM[base: vect_p.205_41, offset: 224B], tmp228
 477      81E00000 
 477      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 478              		.loc 8 8 0
 479 00be C4C17C11 		vmovups	YMMWORD PTR [r8+256], ymm1	# MEM[base: vect_p.202_51, offset: 256B], tmp227
 479      88000100 
 479      00
 480              		.loc 8 9 0
 481 00c7 C4C17C11 		vmovups	YMMWORD PTR [r9+256], ymm0	# MEM[base: vect_p.205_41, offset: 256B], tmp228
 481      81000100 
 481      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 482              		.loc 8 8 0
 483 00d0 C4C17C11 		vmovups	YMMWORD PTR [r8+288], ymm1	# MEM[base: vect_p.202_51, offset: 288B], tmp227
 483      88200100 
 483      00
 484              		.loc 8 9 0
 485 00d9 C4C17C11 		vmovups	YMMWORD PTR [r9+288], ymm0	# MEM[base: vect_p.205_41, offset: 288B], tmp228
 485      81200100 
 485      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 486              		.loc 8 8 0
 487 00e2 C4C17C11 		vmovups	YMMWORD PTR [r8+320], ymm1	# MEM[base: vect_p.202_51, offset: 320B], tmp227
 487      88400100 
 487      00
 488              		.loc 8 9 0
 489 00eb C4C17C11 		vmovups	YMMWORD PTR [r9+320], ymm0	# MEM[base: vect_p.205_41, offset: 320B], tmp228
 489      81400100 
 489      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 490              		.loc 8 8 0
 491 00f4 C4C17C11 		vmovups	YMMWORD PTR [r8+352], ymm1	# MEM[base: vect_p.202_51, offset: 352B], tmp227
 491      88600100 
 491      00
 492              		.loc 8 9 0
 493 00fd C4C17C11 		vmovups	YMMWORD PTR [r9+352], ymm0	# MEM[base: vect_p.205_41, offset: 352B], tmp228
 493      81600100 
 493      00
 494              	.LVL35:
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 495              		.loc 8 8 0
 496 0106 C7828001 		mov	DWORD PTR [rdx+384], 0x3f800000	# MEM[base: _198, offset: 384B],
 496      00000000 
 496      803F
 497              		.loc 8 9 0
 498 0110 C7818001 		mov	DWORD PTR [rcx+384], 0x00000000	# MEM[base: _193, offset: 384B],
 498      00000000 
 498      0000
 499              	.LVL36:
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 500              		.loc 8 8 0
 501 011a C7828401 		mov	DWORD PTR [rdx+388], 0x3f800000	# MEM[base: _198, offset: 388B],
 501      00000000 
 501      803F
 502              		.loc 8 9 0
 503 0124 C7818401 		mov	DWORD PTR [rcx+388], 0x00000000	# MEM[base: _193, offset: 388B],
 503      00000000 
 503      0000
 504              	.LVL37:
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 505              		.loc 8 8 0
 506 012e C7828801 		mov	DWORD PTR [rdx+392], 0x3f800000	# MEM[base: _198, offset: 392B],
 506      00000000 
 506      803F
 507              		.loc 8 9 0
 508 0138 C7818801 		mov	DWORD PTR [rcx+392], 0x00000000	# MEM[base: _193, offset: 392B],
 508      00000000 
 508      0000
 509              	.LVL38:
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 510              		.loc 8 8 0
 511 0142 C7828C01 		mov	DWORD PTR [rdx+396], 0x3f800000	# MEM[base: _198, offset: 396B],
 511      00000000 
 511      803F
 512              		.loc 8 9 0
 513 014c C7818C01 		mov	DWORD PTR [rcx+396], 0x00000000	# MEM[base: _193, offset: 396B],
 513      00000000 
 513      0000
 514              	.LVL39:
 515              	.L22:
 516              	.LBE580:
   6:initial-condition.hpp ****     for (int y=0;y<NY;++y) {
 517              		.loc 8 6 0
 518 0156 4183C201 		add	r10d, 1	# y,
 519              	.LVL40:
 520 015a 4981C090 		add	r8, 400	# ivtmp.275,
 520      010000
 521 0161 4981C190 		add	r9, 400	# ivtmp.276,
 521      010000
 522 0168 4881C290 		add	rdx, 400	# ivtmp.299,
 522      010000
 523 016f 4881C190 		add	rcx, 400	# ivtmp.301,
 523      010000
 524 0176 4183FA28 		cmp	r10d, 40	# y,
 525 017a 0F84F000 		je	.L24	#,
 525      0000
 526              	.LVL41:
 527              	.L29:
 528 0180 498D4020 		lea	rax, [r8+32]	# D.73096,
 529 0184 4939C1   		cmp	r9, rax	# ivtmp.276, D.73096
 530 0187 0F83BBFE 		jae	.L25	#,
 530      FFFF
 531 018d 4D8D6920 		lea	r13, [r9+32]	# D.73096,
 532 0191 4D39E8   		cmp	r8, r13	# ivtmp.275, D.73096
 533 0194 0F83AEFE 		jae	.L25	#,
 533      FFFF
 534              	.LBE583:
 535              	.LBE586:
 536              	.LBE596:
   4:initial-condition.hpp **** template <int NX, int NY, int NZ, class T> void fill_initial_condition(T U[NX][NY][NZ], T V[NX][NY]
 537              		.loc 8 4 0
 538 019a 4531F6   		xor	r14d, r14d	# ivtmp.263
 539              	.LVL42:
 540 019d 0F1F00   		.p2align 4,,10
 541              		.p2align 3
 542              	.L23:
 543              	.LBB597:
 544              	.LBB587:
 545              	.LBB584:
 546              	.LBB581:
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 547              		.loc 8 8 0
 548 01a0 42C70432 		mov	DWORD PTR [rdx+r14], 0x3f800000	# MEM[base: _54, index: ivtmp.263_57, offset: 0B],
 548      0000803F 
 549              		.loc 8 9 0
 550 01a8 42C70431 		mov	DWORD PTR [rcx+r14], 0x00000000	# MEM[base: _181, index: ivtmp.263_57, offset: 0B],
 550      00000000 
 551 01b0 4983C628 		add	r14, 40	# ivtmp.263,
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 552              		.loc 8 8 0
 553 01b4 41C74416 		mov	DWORD PTR [r14-36+rdx], 0x3f800000	# MEM[base: _54, index: ivtmp.263_57, offset: 0B],
 553      DC000080 
 553      3F
 554              		.loc 8 9 0
 555 01bd 41C7440E 		mov	DWORD PTR [r14-36+rcx], 0x00000000	# MEM[base: _181, index: ivtmp.263_57, offset: 0B],
 555      DC000000 
 555      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 556              		.loc 8 8 0
 557 01c6 41C74416 		mov	DWORD PTR [r14-32+rdx], 0x3f800000	# MEM[base: _54, index: ivtmp.263_57, offset: 0B],
 557      E0000080 
 557      3F
 558              		.loc 8 9 0
 559 01cf 41C7440E 		mov	DWORD PTR [r14-32+rcx], 0x00000000	# MEM[base: _181, index: ivtmp.263_57, offset: 0B],
 559      E0000000 
 559      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 560              		.loc 8 8 0
 561 01d8 41C74416 		mov	DWORD PTR [r14-28+rdx], 0x3f800000	# MEM[base: _54, index: ivtmp.263_57, offset: 0B],
 561      E4000080 
 561      3F
 562              		.loc 8 9 0
 563 01e1 41C7440E 		mov	DWORD PTR [r14-28+rcx], 0x00000000	# MEM[base: _181, index: ivtmp.263_57, offset: 0B],
 563      E4000000 
 563      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 564              		.loc 8 8 0
 565 01ea 41C74416 		mov	DWORD PTR [r14-24+rdx], 0x3f800000	# MEM[base: _54, index: ivtmp.263_57, offset: 0B],
 565      E8000080 
 565      3F
 566              		.loc 8 9 0
 567 01f3 41C7440E 		mov	DWORD PTR [r14-24+rcx], 0x00000000	# MEM[base: _181, index: ivtmp.263_57, offset: 0B],
 567      E8000000 
 567      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 568              		.loc 8 8 0
 569 01fc 41C74416 		mov	DWORD PTR [r14-20+rdx], 0x3f800000	# MEM[base: _54, index: ivtmp.263_57, offset: 0B],
 569      EC000080 
 569      3F
 570              		.loc 8 9 0
 571 0205 41C7440E 		mov	DWORD PTR [r14-20+rcx], 0x00000000	# MEM[base: _181, index: ivtmp.263_57, offset: 0B],
 571      EC000000 
 571      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 572              		.loc 8 8 0
 573 020e 41C74416 		mov	DWORD PTR [r14-16+rdx], 0x3f800000	# MEM[base: _54, index: ivtmp.263_57, offset: 0B],
 573      F0000080 
 573      3F
 574              		.loc 8 9 0
 575 0217 41C7440E 		mov	DWORD PTR [r14-16+rcx], 0x00000000	# MEM[base: _181, index: ivtmp.263_57, offset: 0B],
 575      F0000000 
 575      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 576              		.loc 8 8 0
 577 0220 41C74416 		mov	DWORD PTR [r14-12+rdx], 0x3f800000	# MEM[base: _54, index: ivtmp.263_57, offset: 0B],
 577      F4000080 
 577      3F
 578              		.loc 8 9 0
 579 0229 41C7440E 		mov	DWORD PTR [r14-12+rcx], 0x00000000	# MEM[base: _181, index: ivtmp.263_57, offset: 0B],
 579      F4000000 
 579      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 580              		.loc 8 8 0
 581 0232 41C74416 		mov	DWORD PTR [r14-8+rdx], 0x3f800000	# MEM[base: _54, index: ivtmp.263_57, offset: 0B],
 581      F8000080 
 581      3F
 582              		.loc 8 9 0
 583 023b 41C7440E 		mov	DWORD PTR [r14-8+rcx], 0x00000000	# MEM[base: _181, index: ivtmp.263_57, offset: 0B],
 583      F8000000 
 583      00
   8:initial-condition.hpp ****         U[x][y][z] = 1;
 584              		.loc 8 8 0
 585 0244 41C74416 		mov	DWORD PTR [r14-4+rdx], 0x3f800000	# MEM[base: _54, index: ivtmp.263_57, offset: 0B],
 585      FC000080 
 585      3F
 586              		.loc 8 9 0
 587 024d 41C7440E 		mov	DWORD PTR [r14-4+rcx], 0x00000000	# MEM[base: _181, index: ivtmp.263_57, offset: 0B],
 587      FC000000 
 587      00
   7:initial-condition.hpp ****       for (int z=0;z<NZ;++z) {
 588              		.loc 8 7 0
 589 0256 4981FE90 		cmp	r14, 400	# ivtmp.263,
 589      010000
 590 025d 0F853DFF 		jne	.L23	#,
 590      FFFF
 591 0263 E9EEFEFF 		jmp	.L22	#
 591      FF
 592 0268 0F1F8400 		.p2align 4,,10
 592      00000000 
 593              		.p2align 3
 594              	.L24:
 595              	.LVL43:
 596 0270 4981C380 		add	r11, 16000	# ivtmp.314,
 596      3E0000
 597 0277 4881C380 		add	rbx, 16000	# ivtmp.316,
 597      3E0000
 598              	.LBE581:
 599              	.LBE584:
   5:initial-condition.hpp ****   for (int x=0;x<NX;++x) {
 600              		.loc 8 5 0
 601 027e 4183EC01 		sub	r12d, 1	# D.73093,
 602              	.LVL44:
 603 0282 0F85A8FD 		jne	.L21	#,
 603      FFFF
 604 0288 488DBF80 		lea	rdi, [rdi+272000]	# D.73096,
 604      260400
 605              	.LVL45:
 606 028f 48C74424 		mov	QWORD PTR [rsp+32], 0	# %sfp,
 606      20000000 
 606      00
 607 0298 488DB680 		lea	rsi, [rsi+272000]	# D.73096,
 607      260400
 608              	.LVL46:
 609              	.LBE587:
 610              	.LBB588:
  10:initial-condition.hpp ****       }
  11:initial-condition.hpp ****     }
  12:initial-condition.hpp ****   }
  13:initial-condition.hpp ****   int bx = std::max(NX/4,NX/2-8),  ex = std::min(3*NX/4+1,NX/2+8);
  14:initial-condition.hpp ****   int by = std::max(NY/4,NY/2-8),  ey = std::min(3*NY/4+1,NY/2+8);
  15:initial-condition.hpp ****   int bz = std::max(NZ/4,NZ/2-8),  ez = std::min(3*NZ/4+1,NZ/2+8);
  16:initial-condition.hpp ****   for (int x=bx;x<ex;++x){
 611              		.loc 8 16 0
 612 029f C7442428 		mov	DWORD PTR [rsp+40], 17	# %sfp,
 612      11000000 
 613 02a7 48897C24 		mov	QWORD PTR [rsp+24], rdi	# %sfp, D.73096
 613      18
 614 02ac 48897424 		mov	QWORD PTR [rsp+16], rsi	# %sfp, D.73096
 614      10
 615 02b1 C5F877   		vzeroupper
 616              	.LVL47:
 617              	.L28:
 618 02b4 488B5424 		mov	rdx, QWORD PTR [rsp+32]	# ivtmp.252, %sfp
 618      20
 619              	.LBE588:
 620              	.LBE597:
   4:initial-condition.hpp **** template <int NX, int NY, int NZ, class T> void fill_initial_condition(T U[NX][NY][NZ], T V[NX][NY]
 621              		.loc 8 4 0 discriminator 1
 622 02b9 4531FF   		xor	r15d, r15d	# ivtmp.240
 623 02bc C744242C 		mov	DWORD PTR [rsp+44], 12	# %sfp,
 623      0C000000 
 624 02c4 488B4C24 		mov	rcx, QWORD PTR [rsp+24]	# D.73096, %sfp
 624      18
 625 02c9 4C8B4424 		mov	r8, QWORD PTR [rsp+16]	# D.73096, %sfp
 625      10
 626 02ce C5CB2A74 		vcvtsi2sd	xmm6, xmm6, DWORD PTR [rsp+40]	# D.73091, %sfp
 626      2428
 627 02d4 4C8D8C11 		lea	r9, [rcx+4800+rdx]	# D.73096,
 627      C0120000 
 628 02dc 4D8D9410 		lea	r10, [r8+4800+rdx]	# D.73096,
 628      C0120000 
 629 02e4 4C894C24 		mov	QWORD PTR [rsp+8], r9	# %sfp, D.73096
 629      08
 630 02e9 C5FB1174 		vmovsd	QWORD PTR [rsp+72], xmm6	# %sfp, D.73091
 630      2448
 631 02ef 4C891424 		mov	QWORD PTR [rsp], r10	# %sfp, D.73096
 632              	.LVL48:
 633              	.L36:
 634 02f3 C5D32A6C 		vcvtsi2sd	xmm5, xmm5, DWORD PTR [rsp+44]	# D.73091, %sfp
 634      242C
 635 02f9 4531F6   		xor	r14d, r14d	# ivtmp.220
 636 02fc 488B4424 		mov	rax, QWORD PTR [rsp+8]	# D.73096, %sfp
 636      08
 637 0301 4C8B2C24 		mov	r13, QWORD PTR [rsp]	# D.73096, %sfp
 638 0305 C52351DD 		vsqrtsd	xmm11, xmm11, xmm5	# tmp209, D.73091
 639 0309 C5FB116C 		vmovsd	QWORD PTR [rsp+48], xmm5	# %sfp, D.73091
 639      2430
 640 030f 4E8D2438 		lea	r12, [rax+r15]	# D.73096,
 641 0313 4B8D5C3D 		lea	rbx, [r13+0+r15]	# D.73096,
 641      00
 642              	.LVL49:
 643 0318 0F1F8400 		.p2align 4,,10
 643      00000000 
 644              		.p2align 3
 645              	.L34:
 646              	.LBB598:
 647              	.LBB593:
 648              	.LBB589:
 649              	.LBB590:
  17:initial-condition.hpp ****     for (int y=by;y<ey;++y){
  18:initial-condition.hpp ****       for (int z=bz;z<ez;++z){
  19:initial-condition.hpp ****         U[x][y][z] = 0.5;
  20:initial-condition.hpp ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 650              		.loc 8 20 0 discriminator 2
 651 0320 C441792E 		vucomisd	xmm11, xmm11	# tmp209, tmp209
 651      DB
 652 0325 C57B115C 		vmovsd	QWORD PTR [rsp+64], xmm11	# %sfp, tmp209
 652      2440
  19:initial-condition.hpp ****         U[x][y][z] = 0.5;
 653              		.loc 8 19 0 discriminator 2
 654 032b 43C784B4 		mov	DWORD PTR [r12+168+r14*4], 0x3f000000	# MEM[base: _201, index: ivtmp.220_85, step: 4, offset: 
 654      A8000000 
 654      0000003F 
 655              		.loc 8 20 0 discriminator 2
 656 0337 0F8A3402 		jp	.L63	#,
 656      0000
 657              	.L30:
 658 033d 458D5E2A 		lea	r11d, [r14+42]	# D.73093,
 659 0341 C57B115C 		vmovsd	QWORD PTR [rsp+56], xmm11	# %sfp, tmp209
 659      2438
 660 0347 C4C17B2A 		vcvtsi2sd	xmm0, xmm0, r11d	# D.73091, D.73093
 660      C3
 661 034c E8000000 		call	cos	#
 661      00
 662              	.LVL50:
 663 0351 C5FB105C 		vmovsd	xmm3, QWORD PTR [rsp+72]	# D.73091, %sfp
 663      2448
 664 0357 C5E35854 		vaddsd	xmm2, xmm3, QWORD PTR [rsp+64]	# D.73091, D.73091, %sfp
 664      2440
 665 035d C5EB58C0 		vaddsd	xmm0, xmm2, xmm0	# D.73091, D.73091, D.73091
 666 0361 E8000000 		call	sin	#
 666      00
 667              	.LVL51:
 668 0366 C57B104C 		vmovsd	xmm9, QWORD PTR [rsp+56]	# tmp209, %sfp
 668      2438
 669 036c C5FB1025 		vmovsd	xmm4, QWORD PTR .LC5[rip]	# tmp290,
 669      00000000 
 670 0374 C57B114C 		vmovsd	QWORD PTR [rsp+64], xmm9	# %sfp, tmp209
 670      2440
 671 037a C4E2D999 		vfmadd132sd	xmm0, xmm4, QWORD PTR .LC4[rip]	# D.73091, tmp290,
 671      05000000 
 671      00
 672 0383 C5FB12F8 		vmovddup	xmm7, xmm0	# tmp291, D.73091
 673 0387 C5795AC7 		vcvtpd2ps	xmm8, xmm7	# tmp291, tmp291
 674 038b C4217A11 		vmovss	DWORD PTR [rbx+168+r14*4], xmm8	# MEM[base: _191, index: ivtmp.220_85, step: 4, offset: 168
 674      84B3A800 
 674      0000
 675 0395 4983C601 		add	r14, 1	# tmp231,
 676 0399 C441792E 		vucomisd	xmm9, xmm9	# tmp209, tmp209
 676      C9
  19:initial-condition.hpp ****         U[x][y][z] = 0.5;
 677              		.loc 8 19 0 discriminator 2
 678 039e 43C784B4 		mov	DWORD PTR [r12+168+r14*4], 0x3f000000	# MEM[base: _201, index: ivtmp.220_85, step: 4, offset: 
 678      A8000000 
 678      0000003F 
 679              		.loc 8 20 0 discriminator 2
 680 03aa 0F8A9F01 		jp	.L64	#,
 680      0000
 681              	.L57:
 682 03b0 418D7E2A 		lea	edi, [r14+42]	# D.73093,
 683 03b4 C57B114C 		vmovsd	QWORD PTR [rsp+56], xmm9	# %sfp, tmp209
 683      2438
 684              		.loc 8 20 0 is_stmt 0
 685 03ba C5FB2AC7 		vcvtsi2sd	xmm0, xmm0, edi	# D.73091, D.73093
 686 03be 4D8D6E01 		lea	r13, [r14+1]	# ivtmp.220,
 687 03c2 E8000000 		call	cos	#
 687      00
 688              	.LVL52:
 689 03c7 C57B1054 		vmovsd	xmm10, QWORD PTR [rsp+72]	# D.73091, %sfp
 689      2448
 690 03cd C52B585C 		vaddsd	xmm11, xmm10, QWORD PTR [rsp+64]	# D.73091, D.73091, %sfp
 690      2440
 691 03d3 C5A358C0 		vaddsd	xmm0, xmm11, xmm0	# D.73091, D.73091, D.73091
 692 03d7 E8000000 		call	sin	#
 692      00
 693              	.LVL53:
 694 03dc C57B107C 		vmovsd	xmm15, QWORD PTR [rsp+56]	# tmp209, %sfp
 694      2438
 695 03e2 C57B1025 		vmovsd	xmm12, QWORD PTR .LC5[rip]	# tmp303,
 695      00000000 
 696 03ea C441792E 		vucomisd	xmm15, xmm15	# tmp209, tmp209
 696      FF
 697 03ef C57B117C 		vmovsd	QWORD PTR [rsp+64], xmm15	# %sfp, tmp209
 697      2440
 698 03f5 C4E29999 		vfmadd132sd	xmm0, xmm12, QWORD PTR .LC4[rip]	# D.73091, tmp303,
 698      05000000 
 698      00
 699 03fe C57B12E8 		vmovddup	xmm13, xmm0	# tmp304, D.73091
 700 0402 C441795A 		vcvtpd2ps	xmm14, xmm13	# tmp304, tmp304
 700      F5
 701 0407 C4217A11 		vmovss	DWORD PTR [rbx+168+r14*4], xmm14	# MEM[base: _191, index: ivtmp.220_85, step: 4, offset: 16
 701      B4B3A800 
 701      0000
  19:initial-condition.hpp ****         U[x][y][z] = 0.5;
 702              		.loc 8 19 0 is_stmt 1
 703 0411 43C784AC 		mov	DWORD PTR [r12+168+r13*4], 0x3f000000	# MEM[base: _201, index: ivtmp.220_85, step: 4, offset: 
 703      A8000000 
 703      0000003F 
 704              		.loc 8 20 0
 705 041d 0F8A7001 		jp	.L65	#,
 705      0000
 706              	.L58:
 707 0423 418D752A 		lea	esi, [r13+42]	# D.73093,
 708 0427 C57B117C 		vmovsd	QWORD PTR [rsp+56], xmm15	# %sfp, tmp209
 708      2438
 709 042d C5FB2AC6 		vcvtsi2sd	xmm0, xmm0, esi	# D.73091, D.73093
 710 0431 E8000000 		call	cos	#
 710      00
 711              	.LVL54:
 712 0436 C5FB104C 		vmovsd	xmm1, QWORD PTR [rsp+72]	# D.73091, %sfp
 712      2448
 713 043c C5F35874 		vaddsd	xmm6, xmm1, QWORD PTR [rsp+64]	# D.73091, D.73091, %sfp
 713      2440
 714 0442 C5CB58C0 		vaddsd	xmm0, xmm6, xmm0	# D.73091, D.73091, D.73091
 715 0446 E8000000 		call	sin	#
 715      00
 716              	.LVL55:
 717 044b C5FB1054 		vmovsd	xmm2, QWORD PTR [rsp+56]	# tmp209, %sfp
 717      2438
 718 0451 C5FB102D 		vmovsd	xmm5, QWORD PTR .LC5[rip]	# tmp306,
 718      00000000 
 719 0459 C5F92ED2 		vucomisd	xmm2, xmm2	# tmp209, tmp209
 720 045d C5FB1154 		vmovsd	QWORD PTR [rsp+64], xmm2	# %sfp, tmp209
 720      2440
 721 0463 C4E2D199 		vfmadd132sd	xmm0, xmm5, QWORD PTR .LC4[rip]	# D.73091, tmp306,
 721      05000000 
 721      00
 722 046c C5FB12C0 		vmovddup	xmm0, xmm0	# tmp307, D.73091
 723 0470 C5F95AD8 		vcvtpd2ps	xmm3, xmm0	# tmp307, tmp307
 724 0474 C4A17A11 		vmovss	DWORD PTR [rbx+168+r13*4], xmm3	# MEM[base: _191, index: ivtmp.220_85, step: 4, offset: 168
 724      9CABA800 
 724      0000
 725 047e 4D8D6E02 		lea	r13, [r14+2]	# ivtmp.220,
  19:initial-condition.hpp ****         U[x][y][z] = 0.5;
 726              		.loc 8 19 0
 727 0482 43C784AC 		mov	DWORD PTR [r12+168+r13*4], 0x3f000000	# MEM[base: _201, index: ivtmp.220_85, step: 4, offset: 
 727      A8000000 
 727      0000003F 
 728              		.loc 8 20 0
 729 048e 0F8A9F00 		jp	.L66	#,
 729      0000
 730              	.L59:
 731 0494 418D4D2A 		lea	ecx, [r13+42]	# D.73093,
 732 0498 C5FB1154 		vmovsd	QWORD PTR [rsp+56], xmm2	# %sfp, tmp209
 732      2438
 733 049e 4983C603 		add	r14, 3	# ivtmp.220,
 734 04a2 C5FB2AC1 		vcvtsi2sd	xmm0, xmm0, ecx	# D.73091, D.73093
 735 04a6 E8000000 		call	cos	#
 735      00
 736              	.LVL56:
 737 04ab C5FB1064 		vmovsd	xmm4, QWORD PTR [rsp+72]	# D.73091, %sfp
 737      2448
 738 04b1 C5DB587C 		vaddsd	xmm7, xmm4, QWORD PTR [rsp+64]	# D.73091, D.73091, %sfp
 738      2440
 739 04b7 C5C358C0 		vaddsd	xmm0, xmm7, xmm0	# D.73091, D.73091, D.73091
 740 04bb E8000000 		call	sin	#
 740      00
 741              	.LVL57:
  18:initial-condition.hpp ****       for (int z=bz;z<ez;++z){
 742              		.loc 8 18 0
 743 04c0 4983FE10 		cmp	r14, 16	# ivtmp.220,
 744 04c4 C57B105C 		vmovsd	xmm11, QWORD PTR [rsp+56]	# tmp209, %sfp
 744      2438
 745              		.loc 8 20 0
 746 04ca C57B1005 		vmovsd	xmm8, QWORD PTR .LC5[rip]	# tmp309,
 746      00000000 
 747 04d2 C4E2B999 		vfmadd132sd	xmm0, xmm8, QWORD PTR .LC4[rip]	# D.73091, tmp309,
 747      05000000 
 747      00
 748 04db C57B12C8 		vmovddup	xmm9, xmm0	# tmp310, D.73091
 749 04df C441795A 		vcvtpd2ps	xmm10, xmm9	# tmp310, tmp310
 749      D1
 750 04e4 C4217A11 		vmovss	DWORD PTR [rbx+168+r13*4], xmm10	# MEM[base: _191, index: ivtmp.220_85, step: 4, offset: 16
 750      94ABA800 
 750      0000
  18:initial-condition.hpp ****       for (int z=bz;z<ez;++z){
 751              		.loc 8 18 0
 752 04ee 0F852CFE 		jne	.L34	#,
 752      FFFF
 753              	.LBE590:
  17:initial-condition.hpp ****     for (int y=by;y<ey;++y){
 754              		.loc 8 17 0
 755 04f4 8344242C 		add	DWORD PTR [rsp+44], 1	# %sfp,
 755      01
 756              	.LVL58:
 757 04f9 4981C790 		add	r15, 400	# ivtmp.240,
 757      010000
 758 0500 837C242C 		cmp	DWORD PTR [rsp+44], 28	# %sfp,
 758      1C
 759 0505 0F85E8FD 		jne	.L36	#,
 759      FFFF
 760              	.LBE589:
  16:initial-condition.hpp ****   for (int x=bx;x<ex;++x){
 761              		.loc 8 16 0
 762 050b 83442428 		add	DWORD PTR [rsp+40], 1	# %sfp,
 762      01
 763              	.LVL59:
 764 0510 48814424 		add	QWORD PTR [rsp+32], 16000	# %sfp,
 764      20803E00 
 764      00
 765 0519 837C2428 		cmp	DWORD PTR [rsp+40], 33	# %sfp,
 765      21
 766 051e 0F8590FD 		jne	.L28	#,
 766      FFFF
 767              	.LBE593:
 768              	.LBE598:
  21:initial-condition.hpp ****       }
  22:initial-condition.hpp ****     }
  23:initial-condition.hpp ****   }
  24:initial-condition.hpp **** }
 769              		.loc 8 24 0
 770 0524 4883C458 		add	rsp, 88	#,
 771              	.LVL60:
 772 0528 5B       		pop	rbx	#
 773              	.LVL61:
 774 0529 415C     		pop	r12	#
 775              	.LVL62:
 776 052b 415D     		pop	r13	#
 777              	.LVL63:
 778 052d 415E     		pop	r14	#
 779              	.LVL64:
 780 052f 415F     		pop	r15	#
 781              	.LVL65:
 782 0531 5D       		pop	rbp	#
 783              		.cfi_remember_state
 784              		.cfi_def_cfa 7, 8
 785              	.LVL66:
 786 0532 C3       		ret
 787              	.LVL67:
 788              	.L66:
 789              		.cfi_restore_state
 790              	.LBB599:
 791              	.LBB594:
 792              	.LBB592:
 793              	.LBB591:
  20:initial-condition.hpp ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 794              		.loc 8 20 0
 795 0533 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+48]	#, %sfp
 795      2430
 796 0539 E8000000 		call	sqrt	#
 796      00
 797              	.LVL68:
 798 053e C5FB1054 		vmovsd	xmm2, QWORD PTR [rsp+56]	# tmp209, %sfp
 798      2438
 799 0544 C5FB1144 		vmovsd	QWORD PTR [rsp+64], xmm0	# %sfp,
 799      2440
 800 054a E945FFFF 		jmp	.L59	#
 800      FF
 801              	.L64:
 802 054f C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+48]	#, %sfp
 802      2430
 803 0555 C57B114C 		vmovsd	QWORD PTR [rsp+56], xmm9	# %sfp, tmp209
 803      2438
 804 055b E8000000 		call	sqrt	#
 804      00
 805              	.LVL69:
 806 0560 C57B104C 		vmovsd	xmm9, QWORD PTR [rsp+56]	# tmp209, %sfp
 806      2438
 807 0566 C5FB1144 		vmovsd	QWORD PTR [rsp+64], xmm0	# %sfp,
 807      2440
 808 056c E93FFEFF 		jmp	.L57	#
 808      FF
 809              	.L63:
  20:initial-condition.hpp ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 810              		.loc 8 20 0 is_stmt 0 discriminator 2
 811 0571 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+48]	#, %sfp
 811      2430
 812 0577 C57B115C 		vmovsd	QWORD PTR [rsp+56], xmm11	# %sfp, tmp209
 812      2438
 813 057d E8000000 		call	sqrt	#
 813      00
 814              	.LVL70:
 815 0582 C57B105C 		vmovsd	xmm11, QWORD PTR [rsp+56]	# tmp209, %sfp
 815      2438
 816 0588 C5FB1144 		vmovsd	QWORD PTR [rsp+64], xmm0	# %sfp,
 816      2440
 817 058e E9AAFDFF 		jmp	.L30	#
 817      FF
 818              	.L65:
  20:initial-condition.hpp ****         V[x][y][z] = 0.25+0.1*sin(x+sqrt(y)+cos(z));
 819              		.loc 8 20 0
 820 0593 C5FB1044 		vmovsd	xmm0, QWORD PTR [rsp+48]	#, %sfp
 820      2430
 821 0599 E8000000 		call	sqrt	#
 821      00
 822              	.LVL71:
 823 059e C57B107C 		vmovsd	xmm15, QWORD PTR [rsp+56]	# tmp209, %sfp
 823      2438
 824 05a4 C5FB1144 		vmovsd	QWORD PTR [rsp+64], xmm0	# %sfp,
 824      2440
 825 05aa E974FEFF 		jmp	.L58	#
 825      FF
 826              	.LBE591:
 827              	.LBE592:
 828              	.LBE594:
 829              	.LBE599:
 830              		.cfi_endproc
 831              	.LFE4351:
 833              		.section	.rodata.str1.1,"aMS",@progbits,1
 834              	.LC32:
 835 0000 0A00     		.string	"\n"
 836              		.section	.rodata.str1.8,"aMS",@progbits,1
 837              		.align 8
 838              	.LC34:
 839 0000 62617369 		.string	"basic_string::_S_construct null not valid"
 839      635F7374 
 839      72696E67 
 839      3A3A5F53 
 839      5F636F6E 
 840              		.section	.text.startup,"ax",@progbits
 841              		.p2align 4,,15
 842              		.globl	main
 844              	main:
 845              	.LFB4288:
 846              		.file 9 "main.cpp"
   1:main.cpp      **** #include <cmath>
   2:main.cpp      **** #include <unistd.h>
   3:main.cpp      **** #include <iostream>
   4:main.cpp      **** #include <sstream>
   5:main.cpp      **** #include "initial-condition.hpp"
   6:main.cpp      **** #include "naive-integrator.hpp"
   7:main.cpp      **** 
   8:main.cpp      **** #define NX 50
   9:main.cpp      **** #define NY 40
  10:main.cpp      **** #define NZ 100
  11:main.cpp      **** 
  12:main.cpp      **** float U[NX][NY][NZ];
  13:main.cpp      **** float V[NX][NY][NZ];
  14:main.cpp      **** 
  15:main.cpp      **** 
  16:main.cpp      **** int main () {
 847              		.loc 9 16 0 is_stmt 1
 848              		.cfi_startproc
 849              		.cfi_personality 0x3,__gxx_personality_v0
 850              		.cfi_lsda 0x3,.LLSDA4288
 851 0000 55       		push	rbp	#
 852              		.cfi_def_cfa_offset 16
 853              		.cfi_offset 6, -16
 854              	.LBB889:
  17:main.cpp      ****   fill_initial_condition<NX,NY,NZ,float>(U,V);
 855              		.loc 9 17 0
 856 0001 BE000000 		mov	esi, OFFSET FLAT:V	#,
 856      00
 857 0006 BF000000 		mov	edi, OFFSET FLAT:U	#,
 857      00
 858              	.LBE889:
  16:main.cpp      **** int main () {
 859              		.loc 9 16 0
 860 000b 4889E5   		mov	rbp, rsp	#,
 861              		.cfi_def_cfa_register 6
 862 000e 4157     		push	r15	#
 863 0010 4156     		push	r14	#
 864 0012 4155     		push	r13	#
 865 0014 4154     		push	r12	#
 866 0016 53       		push	rbx	#
 867 0017 4883E4E0 		and	rsp, -32	#,
 868 001b 4881ECE0 		sub	rsp, 736	#,
 868      020000
 869              		.cfi_offset 15, -24
 870              		.cfi_offset 14, -32
 871              		.cfi_offset 13, -40
 872              		.cfi_offset 12, -48
 873              		.cfi_offset 3, -56
 874              	.LBB1638:
 875              		.loc 9 17 0
 876 0022 E8000000 		call	_Z22fill_initial_conditionILi50ELi40ELi100EfEvPAT0__AT1__T2_S3_	#
 876      00
 877              	.LVL72:
 878 0027 C5FD6F3D 		vmovdqa	ymm7, YMMWORD PTR .LC7[rip]	# tmp1705,
 878      00000000 
 879              	.LBB890:
  18:main.cpp      **** 
  19:main.cpp      ****   naive_integrator<NX,NY,NZ,float> integrator;
  20:main.cpp      ****   for(int t=0;;++t){
 880              		.loc 9 20 0
 881 002f C7042400 		mov	DWORD PTR [rsp], 0	# %sfp,
 881      000000
 882 0036 C5FD73D7 		vpsrlq	ymm0, ymm7, 32	# tmp1524, tmp1705,
 882      20
 883 003b C5FD7F44 		vmovdqa	YMMWORD PTR [rsp+32], ymm0	# %sfp, tmp1524
 883      2420
 884              	.LVL73:
 885              	.L134:
 886              	.LBB891:
 887              	.LBB892:
 888              	.LBB893:
 889              	.LBB894:
 890              	.LBB895:
 891              	.LBB896:
 892              	.LBB897:
 893              	.LBB898:
 894              		.file 10 "naive-integrator.hpp"
   1:naive-integrator.hpp **** 
   2:naive-integrator.hpp **** template <int NX, int NY, int NZ, class T> struct naive_integrator {
   3:naive-integrator.hpp ****   typedef T surface[NX][NY];
   4:naive-integrator.hpp ****   void proceed(int timesteps, T U[NX][NY][NZ], T V[NX][NY][NZ]) {
   5:naive-integrator.hpp ****     static T U_other[NX][NY][NZ], V_other[NX][NY][NZ];
   6:naive-integrator.hpp **** 
   7:naive-integrator.hpp ****     const double Fu = 1.0/86400, Fv = 6.0/86400, Fe = 1.0/900, Du = 0.1*2.3e-9, Dv = 12.2e-11;
   8:naive-integrator.hpp ****     const double dt = 200, dx = 0.001;
   9:naive-integrator.hpp **** 
  10:naive-integrator.hpp ****     auto periodic = [](T ar[NX][NY][NZ],int x, int y, int z) {
  11:naive-integrator.hpp ****       x = (x+NX)%NX;
  12:naive-integrator.hpp ****       y = (y+NY)%NY;
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
  14:naive-integrator.hpp ****       return ar[x][y][z];
  15:naive-integrator.hpp ****     };
  16:naive-integrator.hpp ****     auto lap = [&periodic, &dx](T ar[NX][NY][NZ],int x, int y, int z) {
  17:naive-integrator.hpp ****       auto ret = periodic(ar, x-1, y, z) + periodic(ar, x+1, y, z)
  18:naive-integrator.hpp ****       + periodic(ar, x, y-1, z) + periodic(ar, x, y+1, z)
  19:naive-integrator.hpp ****       + periodic(ar, x, y, z-1) + periodic(ar, x, y, z+1)
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
  21:naive-integrator.hpp ****       return ret / dx / dx;
  22:naive-integrator.hpp ****     };
  23:naive-integrator.hpp **** 
  24:naive-integrator.hpp ****     for (int t=0;t<timesteps;++t){
  25:naive-integrator.hpp ****       for (int x=0;x<NX;++x) {
  26:naive-integrator.hpp ****         for (int y=0;y<NY;++y) {
  27:naive-integrator.hpp ****           for (int z=0;z<NZ;++z) {
  28:naive-integrator.hpp ****             auto u = U[x][y][z],  v = V[x][y][z];
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
  32:naive-integrator.hpp ****             V_other[x][y][z] = V[x][y][z] + dt*dv_dt;
 895              		.loc 10 32 0
 896 0041 48C78424 		mov	QWORD PTR [rsp+144], OFFSET FLAT:V	# %sfp,
 896      90000000 
 896      00000000 
 897 004d 48C78424 		mov	QWORD PTR [rsp+136], OFFSET FLAT:U	# %sfp,
 897      88000000 
 897      00000000 
 898 0059 48C74424 		mov	QWORD PTR [rsp+64], 0	# %sfp,
 898      40000000 
 898      00
 899 0062 C7442404 		mov	DWORD PTR [rsp+4], 0	# %sfp,
 899      00000000 
 900              	.LVL74:
 901              	.L68:
 902 006a 8B5C2404 		mov	ebx, DWORD PTR [rsp+4]	# x, %sfp
 903 006e 41B81F85 		mov	r8d, 1374389535	# tmp1276,
 903      EB51
 904 0074 BF320000 		mov	edi, 50	#,
 904      00
 905 0079 41BF3200 		mov	r15d, 50	#,
 905      0000
 906 007f 41BC3200 		mov	r12d, 50	#,
 906      0000
 907 0085 48C74424 		mov	QWORD PTR [rsp+80], 0	# %sfp,
 907      50000000 
 907      00
 908 008e C78424A8 		mov	DWORD PTR [rsp+168], 0	# %sfp,
 908      00000000 
 908      000000
 909 0099 8D4B31   		lea	ecx, [rbx+49]	# D.73740,
 910 009c 448D6B33 		lea	r13d, [rbx+51]	# D.73740,
 911 00a0 89C8     		mov	eax, ecx	# tmp1701, D.73740
 912 00a2 89CE     		mov	esi, ecx	# tmp1278, D.73740
 913 00a4 41F7E8   		imul	r8d	# tmp1276
 914 00a7 C1FE1F   		sar	esi, 31	# tmp1278,
 915 00aa 4489E8   		mov	eax, r13d	# tmp1702, D.73740
 916 00ad 4589EE   		mov	r14d, r13d	# tmp1287, D.73740
 917 00b0 41C1FE1F 		sar	r14d, 31	# tmp1287,
 918 00b4 C1FA04   		sar	edx, 4	# tmp1274,
 919 00b7 29F2     		sub	edx, esi	# tmp1274, tmp1278
 920 00b9 0FAFD7   		imul	edx, edi	# tmp1279,
 921 00bc 29D1     		sub	ecx, edx	# D.73734, tmp1279
 922 00be 41F7E8   		imul	r8d	# tmp1276
 923 00c1 4C63C9   		movsx	r9, ecx	# D.73759, D.73734
 924 00c4 4D69D180 		imul	r10, r9, 16000	# D.73759, D.73759,
 924      3E0000
 925 00cb C1FA04   		sar	edx, 4	# tmp1283,
 926 00ce 4429F2   		sub	edx, r14d	# tmp1283, tmp1287
 927 00d1 410FAFD7 		imul	edx, r15d	# tmp1288,
 928 00d5 4C8B7C24 		mov	r15, QWORD PTR [rsp+64]	# ivtmp.580, %sfp
 928      40
 929 00da 4D8D9A00 		lea	r11, U[r10]	# D.73741,
 929      000000
 930 00e1 4981C200 		add	r10, OFFSET FLAT:V	# D.73741,
 930      000000
 931 00e8 4C899C24 		mov	QWORD PTR [rsp+152], r11	# %sfp, D.73741
 931      98000000 
 932 00f0 448D5B32 		lea	r11d, [rbx+50]	# D.73740,
 933 00f4 4129D5   		sub	r13d, edx	# D.73734, tmp1288
 934 00f7 4489D8   		mov	eax, r11d	# tmp1703, D.73740
 935 00fa 4963CD   		movsx	rcx, r13d	# D.73759, D.73734
 936 00fd 4863DB   		movsx	rbx, ebx	# x, x
 937 0100 41F7E8   		imul	r8d	# tmp1276
 938 0103 4589D8   		mov	r8d, r11d	# tmp1296, D.73740
 939 0106 4489D8   		mov	eax, r11d	# D.73734, D.73740
 940 0109 4869F180 		imul	rsi, rcx, 16000	# D.73759, D.73759,
 940      3E0000
 941 0110 41C1F81F 		sar	r8d, 31	# tmp1296,
 942 0114 4C895424 		mov	QWORD PTR [rsp+88], r10	# %sfp, D.73741
 942      58
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 943              		.loc 10 31 0
 944 0119 4869CBA0 		imul	rcx, rbx, 4000	# tmp1512, x,
 944      0F0000
 945 0120 4C897C24 		mov	QWORD PTR [rsp+120], r15	# %sfp, ivtmp.580
 945      78
 946 0125 C1FA04   		sar	edx, 4	# tmp1292,
 947 0128 4429C2   		sub	edx, r8d	# tmp1292, tmp1296
 948 012b 410FAFD4 		imul	edx, r12d	# tmp1297,
 949 012f 488DBE00 		lea	rdi, U[rsi]	# D.73741,
 949      000000
 950 0136 4C8D9600 		lea	r10, V[rsi]	# D.73741,
 950      000000
 951 013d 4889BC24 		mov	QWORD PTR [rsp+296], rdi	# %sfp, D.73741
 951      28010000 
 952 0145 29D0     		sub	eax, edx	# D.73734, tmp1297
 953 0147 4C899424 		mov	QWORD PTR [rsp+288], r10	# %sfp, D.73741
 953      20010000 
 954 014f 4898     		cdqe
 955 0151 48894C24 		mov	QWORD PTR [rsp+8], rcx	# %sfp, tmp1512
 955      08
 956 0156 4C69E880 		imul	r13, rax, 16000	# D.73759, D.73759,
 956      3E0000
 957 015d 4D8D9D00 		lea	r11, U[r13]	# D.73741,
 957      000000
 958 0164 4D8DB500 		lea	r14, V[r13]	# D.73741,
 958      000000
 959              	.LVL75:
 960 016b 0F1F4400 		.p2align 4,,10
 960      00
 961              		.p2align 3
 962              	.L79:
 963 0170 448B8C24 		mov	r9d, DWORD PTR [rsp+168]	# y, %sfp
 963      A8000000 
 964 0178 41B86766 		mov	r8d, 1717986919	# tmp1025,
 964      6666
 965 017e 4C8B5424 		mov	r10, QWORD PTR [rsp+120]	# ivtmp.568, %sfp
 965      78
 966 0183 418D7928 		lea	edi, [r9+40]	# D.73740,
 967 0187 458D7927 		lea	r15d, [r9+39]	# D.73740,
 968 018b 89F8     		mov	eax, edi	# tmp1695, D.73740
 969 018d 4189FC   		mov	r12d, edi	# tmp1027, D.73740
 970 0190 41F7E8   		imul	r8d	# tmp1025
 971 0193 41C1FC1F 		sar	r12d, 31	# tmp1027,
 972 0197 4489F8   		mov	eax, r15d	# tmp1696, D.73740
 973 019a 418D7129 		lea	esi, [r9+41]	# D.73740,
 974 019e 4489FB   		mov	ebx, r15d	# tmp1036, D.73740
 975 01a1 4D8D8A00 		lea	r9, U[r10]	# D.73735,
 975      000000
 976 01a8 C1FB1F   		sar	ebx, 31	# tmp1036,
 977 01ab C1FA04   		sar	edx, 4	# D.73734,
 978 01ae 4183E11F 		and	r9d, 31	# D.73735,
 979 01b2 4429E2   		sub	edx, r12d	# D.73734, tmp1027
 980 01b5 49C1E902 		shr	r9, 2	# D.73735,
 981 01b9 448D2C92 		lea	r13d, [rdx+rdx*4]	# tmp1030,
 982 01bd 41F7E8   		imul	r8d	# tmp1025
 983 01c0 89F0     		mov	eax, esi	# tmp1697, D.73740
 984 01c2 41C1E503 		sal	r13d, 3	# tmp1031,
 985 01c6 49F7D9   		neg	r9	# D.73735
 986 01c9 4429EF   		sub	edi, r13d	# D.73734, tmp1031
 987 01cc C1FA04   		sar	edx, 4	# D.73734,
 988 01cf 29DA     		sub	edx, ebx	# D.73734, tmp1036
 989 01d1 8D0C92   		lea	ecx, [rdx+rdx*4]	# tmp1039,
 990 01d4 41F7E8   		imul	r8d	# tmp1025
 991 01d7 4189F0   		mov	r8d, esi	# tmp1045, D.73740
 992 01da 41C1F81F 		sar	r8d, 31	# tmp1045,
 993 01de C1E103   		sal	ecx, 3	# tmp1040,
 994 01e1 4129CF   		sub	r15d, ecx	# D.73734, tmp1040
 995 01e4 C1FA04   		sar	edx, 4	# D.73734,
 996 01e7 4429C2   		sub	edx, r8d	# D.73734, tmp1045
 997 01ea 448D2492 		lea	r12d, [rdx+rdx*4]	# tmp1048,
 998 01ee 41C1E403 		sal	r12d, 3	# tmp1049,
 999 01f2 4429E6   		sub	esi, r12d	# D.73734, tmp1049
 1000 01f5 4183E107 		and	r9d, 7	# prolog_loop_niters.323,
 1001 01f9 4C63EE   		movsx	r13, esi	#, D.73734
 1002 01fc 0F841E12 		je	.L140	#,
 1002      0000
 1003 0202 488B4424 		mov	rax, QWORD PTR [rsp+64]	# ivtmp.580, %sfp
 1003      40
 1004 0207 4963F7   		movsx	rsi, r15d	# D.73750, D.73734
 1005 020a 4863FF   		movsx	rdi, edi	# D.73750, D.73734
 1006 020d 4C8BA424 		mov	r12, QWORD PTR [rsp+136]	# D.73735, %sfp
 1006      88000000 
 1007 0215 4D89D7   		mov	r15, r10	# ivtmp.568, ivtmp.568
 1008 0218 4C896C24 		mov	QWORD PTR [rsp+96], r13	# %sfp, D.73750
 1008      60
 1009 021d 488B9C24 		mov	rbx, QWORD PTR [rsp+144]	# D.73735, %sfp
 1009      90000000 
 1010              	.LBB899:
 1011              	.LBB900:
 1012              	.LBB901:
 1013              	.LBB902:
 1014              	.LBB903:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1015              		.loc 10 14 0
 1016 0225 488D14B6 		lea	rdx, [rsi+rsi*4]	# tmp1493,
 1017              	.LBE903:
 1018              	.LBE902:
 1019              	.LBE901:
 1020              	.LBE900:
 1021              	.LBE899:
 1022              		.loc 10 32 0
 1023 0229 31C9     		xor	ecx, ecx	# ivtmp.538
 1024 022b 48897C24 		mov	QWORD PTR [rsp+112], rdi	# %sfp, D.73750
 1024      70
 1025 0230 C57B100D 		vmovsd	xmm9, QWORD PTR .LC27[rip]	# tmp1545,
 1025      00000000 
 1026              	.LBB1046:
 1027              	.LBB1047:
 1028              	.LBB1048:
 1029              	.LBB1049:
 1030              	.LBB1050:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1031              		.loc 10 13 0
 1032 0238 41B81F85 		mov	r8d, 1374389535	# tmp1486,
 1032      EB51
 1033 023e 48897424 		mov	QWORD PTR [rsp+104], rsi	# %sfp, D.73750
 1033      68
 1034 0243 C57B1005 		vmovsd	xmm8, QWORD PTR .LC28[rip]	# tmp1546,
 1034      00000000 
 1035 024b 4929C4   		sub	r12, rax	# D.73735, ivtmp.580
 1036 024e C57B1015 		vmovsd	xmm10, QWORD PTR .LC29[rip]	# tmp1547,
 1036      00000000 
 1037 0256 44898C24 		mov	DWORD PTR [rsp+256], r9d	# %sfp, prolog_loop_niters.323
 1037      00010000 
 1038 025e 4829C3   		sub	rbx, rax	# D.73735, ivtmp.580
 1039 0261 4D01D4   		add	r12, r10	# D.73735, ivtmp.568
 1040 0264 C5FB102D 		vmovsd	xmm5, QWORD PTR .LC30[rip]	# tmp1548,
 1040      00000000 
 1041              	.LBE1050:
 1042              	.LBE1049:
 1043              	.LBE1048:
 1044              	.LBE1047:
 1045              	.LBE1046:
 1046              	.LBB1197:
 1047              	.LBB1018:
 1048              	.LBB990:
 1049              	.LBB914:
 1050              	.LBB915:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1051              		.loc 10 14 0
 1052 026c 4B8D44AD 		lea	rax, [r13+0+r13*4]	# tmp1498,
 1052      00
 1053 0271 4C01D3   		add	rbx, r10	# D.73735, ivtmp.568
 1054 0274 4C8B6C24 		mov	r13, QWORD PTR [rsp+88]	# D.73741, %sfp
 1054      58
 1055              	.LBE915:
 1056              	.LBE914:
 1057              	.LBB926:
 1058              	.LBB927:
 1059 0279 4C8D14BF 		lea	r10, [rdi+rdi*4]	# tmp1488,
 1060 027d 4D89F9   		mov	r9, r15	# ivtmp.568, ivtmp.568
 1061 0280 48899C24 		mov	QWORD PTR [rsp+192], rbx	# %sfp, D.73735
 1061      C0000000 
 1062 0288 4B8D3C92 		lea	rdi, [r10+r10*4]	# tmp1490,
 1063              	.LBE927:
 1064              	.LBE926:
 1065              	.LBB939:
 1066              	.LBB916:
 1067 028c 488D3480 		lea	rsi, [rax+rax*4]	# tmp1500,
 1068              	.LBE916:
 1069              	.LBE939:
 1070              	.LBB940:
 1071              	.LBB928:
 1072 0290 48C1E702 		sal	rdi, 2	# tmp1491,
 1073              	.LBE928:
 1074              	.LBE940:
 1075              	.LBB941:
 1076              	.LBB904:
 1077 0294 4C8D1492 		lea	r10, [rdx+rdx*4]	# tmp1495,
 1078              	.LBE904:
 1079              	.LBE941:
 1080              	.LBB942:
 1081              	.LBB917:
 1082 0298 48C1E602 		sal	rsi, 2	# tmp1501,
 1083              	.LBE917:
 1084              	.LBE942:
 1085              	.LBB943:
 1086              	.LBB905:
 1087 029c 49C1E202 		sal	r10, 2	# tmp1496,
 1088              	.LBE905:
 1089              	.LBE943:
 1090              	.LBB944:
 1091              	.LBB918:
 1092 02a0 4889B424 		mov	QWORD PTR [rsp+224], rsi	# %sfp, tmp1501
 1092      E0000000 
 1093 02a8 4C899424 		mov	QWORD PTR [rsp+184], r10	# %sfp, tmp1496
 1093      B8000000 
 1094              	.LVL76:
 1095              		.p2align 4,,10
 1096              		.p2align 3
 1097              	.L75:
 1098              	.LBE918:
 1099              	.LBE944:
 1100              	.LBE990:
 1101              	.LBE1018:
 1102              	.LBE1197:
  28:naive-integrator.hpp ****             auto u = U[x][y][z],  v = V[x][y][z];
 1103              		.loc 10 28 0
 1104 02b0 4C8BBC24 		mov	r15, QWORD PTR [rsp+192]	# D.73735, %sfp
 1104      C0000000 
 1105              	.LBB1198:
 1106              	.LBB1168:
 1107              	.LBB1139:
 1108              	.LBB1066:
 1109              	.LBB1051:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1110              		.loc 10 13 0
 1111 02b8 41BA6400 		mov	r10d, 100	#,
 1111      0000
 1112              	.LBE1051:
 1113              	.LBE1066:
 1114              	.LBE1139:
 1115              	.LBE1168:
 1116              	.LBE1198:
  28:naive-integrator.hpp ****             auto u = U[x][y][z],  v = V[x][y][z];
 1117              		.loc 10 28 0
 1118 02be C4C17A10 		vmovss	xmm4, DWORD PTR [r12+rcx*4]	# u, MEM[base: _359, index: ivtmp.538_763, step: 4, offset: 0B]
 1118      248C
 1119              	.LVL77:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1120              		.loc 10 29 0
 1121 02c4 C55814DC 		vunpcklps	xmm11, xmm4, xmm4	# u, u, u
 1122 02c8 C4C1785A 		vcvtps2pd	xmm3, xmm11	# D.73757, u
 1122      DB
  28:naive-integrator.hpp ****             auto u = U[x][y][z],  v = V[x][y][z];
 1123              		.loc 10 28 0
 1124 02cd C4C17A10 		vmovss	xmm1, DWORD PTR [r15+rcx*4]	# v, MEM[base: _353, index: ivtmp.538_763, step: 4, offset: 0B]
 1124      0C8F
 1125              	.LVL78:
 1126 02d3 448D7964 		lea	r15d, [rcx+100]	# D.73740,
 1127              	.LBB1199:
 1128              	.LBB1169:
 1129              	.LBB1140:
 1130              	.LBB1067:
 1131              	.LBB1052:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1132              		.loc 10 13 0
 1133 02d7 4489F8   		mov	eax, r15d	# tmp1698, D.73740
 1134 02da 4489FB   		mov	ebx, r15d	# tmp1062, D.73740
 1135 02dd 41F7E8   		imul	r8d	# tmp1486
 1136 02e0 C1FB1F   		sar	ebx, 31	# tmp1062,
 1137              	.LBE1052:
 1138              	.LBE1067:
 1139              	.LBE1140:
 1140              	.LBE1169:
 1141              	.LBE1199:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1142              		.loc 10 29 0
 1143 02e3 C5F014F1 		vunpcklps	xmm6, xmm1, xmm1	# v, v, v
 1144 02e7 C5785AE6 		vcvtps2pd	xmm12, xmm6	# D.73757, v
 1145              	.LVL79:
 1146              	.LBB1200:
 1147              	.LBB1170:
 1148              	.LBB1141:
 1149              	.LBB1068:
 1150              	.LBB1053:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1151              		.loc 10 13 0
 1152 02eb C1FA05   		sar	edx, 5	# z,
 1153 02ee 29DA     		sub	edx, ebx	# z, tmp1062
 1154              	.LBE1053:
 1155              	.LBE1068:
 1156              	.LBB1069:
 1157              	.LBB1070:
 1158 02f0 BB640000 		mov	ebx, 100	#,
 1158      00
 1159              	.LBE1070:
 1160              	.LBE1069:
 1161              	.LBB1081:
 1162              	.LBB1054:
 1163 02f5 410FAFD2 		imul	edx, r10d	# tmp1063,
 1164 02f9 448D5163 		lea	r10d, [rcx+99]	# D.73740,
 1165              	.LBE1054:
 1166              	.LBE1081:
 1167              	.LBB1082:
 1168              	.LBB1071:
 1169 02fd 4489D0   		mov	eax, r10d	# tmp1699, D.73740
 1170 0300 4489D6   		mov	esi, r10d	# tmp1068, D.73740
 1171 0303 C1FE1F   		sar	esi, 31	# tmp1068,
 1172              	.LBE1071:
 1173              	.LBE1082:
 1174              	.LBB1083:
 1175              	.LBB1055:
 1176 0306 4129D7   		sub	r15d, edx	# z, tmp1063
 1177              	.LVL80:
 1178              	.LBE1055:
 1179              	.LBE1083:
 1180              	.LBB1084:
 1181              	.LBB1072:
 1182 0309 41F7E8   		imul	r8d	# tmp1486
 1183 030c C1FA05   		sar	edx, 5	# z,
 1184 030f 29F2     		sub	edx, esi	# z, tmp1068
 1185 0311 0FAFD3   		imul	edx, ebx	# tmp1069,
 1186 0314 8D7165   		lea	esi, [rcx+101]	# D.73740,
 1187              	.LBE1072:
 1188              	.LBE1084:
 1189              	.LBB1085:
 1190              	.LBB1086:
 1191 0317 89F0     		mov	eax, esi	# tmp1700, D.73740
 1192 0319 89F3     		mov	ebx, esi	# tmp1074, D.73740
 1193 031b C1FB1F   		sar	ebx, 31	# tmp1074,
 1194              	.LBE1086:
 1195              	.LBE1085:
 1196              	.LBB1097:
 1197              	.LBB1073:
 1198 031e 4129D2   		sub	r10d, edx	# z, tmp1069
 1199              	.LVL81:
 1200              	.LBE1073:
 1201              	.LBE1097:
 1202              	.LBB1098:
 1203              	.LBB1087:
 1204 0321 41F7E8   		imul	r8d	# tmp1486
 1205 0324 B8640000 		mov	eax, 100	#,
 1205      00
 1206              	.LBE1087:
 1207              	.LBE1098:
 1208              	.LBE1141:
 1209              	.LBE1170:
 1210              	.LBE1200:
 1211              	.LBB1201:
 1212              	.LBB1019:
 1213              	.LBB991:
 1214              	.LBB945:
 1215              	.LBB946:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1216              		.loc 10 14 0
 1217 0329 4D63D2   		movsx	r10, r10d	# z, z
 1218 032c 4901FA   		add	r10, rdi	# tmp1124, tmp1491
 1219              	.LBE946:
 1220              	.LBE945:
 1221              	.LBE991:
 1222              	.LBE1019:
 1223              	.LBE1201:
 1224              	.LBB1202:
 1225              	.LBB1171:
 1226              	.LBB1142:
 1227              	.LBB1099:
 1228              	.LBB1088:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1229              		.loc 10 13 0
 1230 032f C1FA05   		sar	edx, 5	# z,
 1231 0332 29DA     		sub	edx, ebx	# z, tmp1074
 1232              	.LBE1088:
 1233              	.LBE1099:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1234              		.loc 10 20 0
 1235 0334 488B9C24 		mov	rbx, QWORD PTR [rsp+152]	# D.73741, %sfp
 1235      98000000 
 1236              	.LBB1100:
 1237              	.LBB1089:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1238              		.loc 10 13 0
 1239 033c 0FAFD0   		imul	edx, eax	# tmp1075,
 1240              	.LBE1089:
 1241              	.LBE1100:
 1242              	.LBE1142:
 1243              	.LBE1171:
 1244              	.LBE1202:
 1245              	.LBB1203:
 1246              	.LBB1020:
 1247              	.LBB992:
 1248              	.LBB950:
 1249              	.LBB929:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1250              		.loc 10 14 0
 1251 033f 4963C7   		movsx	rax, r15d	# z, z
 1252              	.LBE929:
 1253              	.LBE950:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1254              		.loc 10 20 0
 1255 0342 4C8BBC24 		mov	r15, QWORD PTR [rsp+288]	# D.73741, %sfp
 1255      20010000 
 1256              	.LBE992:
 1257              	.LBE1020:
 1258              	.LBE1203:
 1259              	.LBB1204:
 1260              	.LBB1172:
 1261              	.LBB1143:
 1262              	.LBB1101:
 1263              	.LBB1090:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1264              		.loc 10 13 0
 1265 034a 29D6     		sub	esi, edx	# z, tmp1075
 1266              	.LVL82:
 1267              	.LBE1090:
 1268              	.LBE1101:
 1269              	.LBE1143:
 1270              	.LBE1172:
 1271              	.LBE1204:
 1272              	.LBB1205:
 1273              	.LBB1021:
 1274              	.LBB993:
 1275              	.LBB951:
 1276              	.LBB930:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1277              		.loc 10 14 0
 1278 034c 488D1407 		lea	rdx, [rdi+rax]	# tmp1084,
 1279              	.LBE930:
 1280              	.LBE951:
 1281              	.LBB952:
 1282              	.LBB953:
 1283 0350 4863F6   		movsx	rsi, esi	# z, z
 1284              	.LBE953:
 1285              	.LBE952:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1286              		.loc 10 20 0
 1287 0353 C4C17A10 		vmovss	xmm2, DWORD PTR [r13+0+rdx*4]	# tmp1095, MEM[(float[40][100] *)_964]
 1287      549500
 1288              	.LBB958:
 1289              	.LBB954:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1290              		.loc 10 14 0
 1291 035a 4801FE   		add	rsi, rdi	# tmp1134, tmp1491
 1292              	.LBE954:
 1293              	.LBE958:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1294              		.loc 10 20 0
 1295 035d C4416A58 		vaddss	xmm13, xmm2, DWORD PTR [r15+rdx*4]	# D.73733, tmp1095, MEM[(float[40][100] *)_965]
 1295      2C97
 1296              	.LBB959:
 1297              	.LBB906:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1298              		.loc 10 14 0
 1299 0363 4C8BBC24 		mov	r15, QWORD PTR [rsp+184]	# tmp1496, %sfp
 1299      B8000000 
 1300              	.LVL83:
 1301              	.LBE906:
 1302              	.LBE959:
 1303              	.LBE993:
 1304              	.LBE1021:
 1305              	.LBE1205:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1306              		.loc 10 30 0
 1307 036b C5E35915 		vmulsd	xmm2, xmm3, QWORD PTR .LC25[rip]	# D.73757, D.73757,
 1307      00000000 
 1308              	.LBB1206:
 1309              	.LBB1022:
 1310              	.LBB994:
 1311              	.LBB960:
 1312              	.LBB907:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1313              		.loc 10 14 0
 1314 0373 4901C7   		add	r15, rax	# tmp1104, z
 1315              	.LBE907:
 1316              	.LBE960:
 1317              	.LBB961:
 1318              	.LBB919:
 1319 0376 48038424 		add	rax, QWORD PTR [rsp+224]	# tmp1114, %sfp
 1319      E0000000 
 1320              	.LBE919:
 1321              	.LBE961:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1322              		.loc 10 20 0
 1323 037e C4011258 		vaddss	xmm14, xmm13, DWORD PTR [r14+r15*4]	# D.73733, D.73733, MEM[(float[40][100] *)_966]
 1323      34BE
 1324 0384 C4410A58 		vaddss	xmm15, xmm14, DWORD PTR [r14+rax*4]	# D.73733, D.73733, MEM[(float[40][100] *)_966]
 1324      3C86
 1325              	.LBE994:
 1326              	.LBE1022:
 1327              	.LBE1206:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1328              		.loc 10 30 0
 1329 038a C51B5935 		vmulsd	xmm14, xmm12, QWORD PTR .LC24[rip]	# D.73757, D.73757,
 1329      00000000 
 1330              	.LBB1207:
 1331              	.LBB1023:
 1332              	.LBB995:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1333              		.loc 10 20 0
 1334 0392 C4810258 		vaddss	xmm7, xmm15, DWORD PTR [r14+r10*4]	# D.73733, D.73733, MEM[(float[40][100] *)_966]
 1334      3C96
 1335              	.LBE995:
 1336              	.LBE1023:
 1337              	.LBE1207:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1338              		.loc 10 30 0
 1339 0398 C51B59FA 		vmulsd	xmm15, xmm12, xmm2	# D.73757, D.73757, D.73757
 1340              	.LBB1208:
 1341              	.LBB1024:
 1342              	.LBB996:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1343              		.loc 10 20 0
 1344 039c C4C14258 		vaddss	xmm0, xmm7, DWORD PTR [r14+rsi*4]	# D.73733, D.73733, MEM[(float[40][100] *)_966]
 1344      04B6
 1345              	.LBE996:
 1346              	.LBE1024:
 1347              	.LBE1208:
 1348              	.LBB1209:
 1349              	.LBB1173:
 1350              	.LBB1144:
 1351 03a2 C5FA103C 		vmovss	xmm7, DWORD PTR [rbx+rdx*4]	# tmp1170, MEM[(float[40][100] *)_949]
 1351      93
 1352 03a7 488B9C24 		mov	rbx, QWORD PTR [rsp+296]	# D.73741, %sfp
 1352      28010000 
 1353              	.LVL84:
 1354              	.LBE1144:
 1355              	.LBE1173:
 1356              	.LBE1209:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1357              		.loc 10 30 0
 1358 03af C442899B 		vfmsub132sd	xmm15, xmm14, xmm12	# D.73757, D.73757, D.73757
 1358      FC
 1359              	.LBB1210:
 1360              	.LBB1025:
 1361              	.LBB997:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1362              		.loc 10 20 0
 1363 03b4 C4E2799D 		vfnmadd132ss	xmm6, xmm0, DWORD PTR .LC22[rip]	# ret, D.73733,
 1363      35000000 
 1363      00
 1364              	.LVL85:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1365              		.loc 10 21 0
 1366 03bd C5C814E6 		vunpcklps	xmm4, xmm6, xmm6	# ret, ret, ret
 1367              	.LVL86:
 1368 03c1 C5F85ACC 		vcvtps2pd	xmm1, xmm4	# D.73757, ret
 1369              	.LVL87:
 1370 03c5 C5F35E35 		vdivsd	xmm6, xmm1, QWORD PTR .LC23[rip]	# D.73757, D.73757,
 1370      00000000 
 1371 03cd C54B5E2D 		vdivsd	xmm13, xmm6, QWORD PTR .LC23[rip]	# D.73757, D.73757,
 1371      00000000 
 1372              	.LBE997:
 1373              	.LBE1025:
 1374              	.LBE1210:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1375              		.loc 10 30 0
 1376 03d5 C4628199 		vfmadd132sd	xmm13, xmm15, QWORD PTR .LC26[rip]	# D.73757, D.73757,
 1376      2D000000 
 1376      00
 1377              	.LVL88:
 1378              		.loc 10 32 0
 1379 03de C4629999 		vfmadd132sd	xmm13, xmm12, xmm5	# D.73757, D.73757, tmp1548
 1379      ED
 1380              	.LVL89:
 1381              	.LBB1211:
 1382              	.LBB1174:
 1383              	.LBB1145:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1384              		.loc 10 20 0
 1385 03e3 C5C25804 		vaddss	xmm0, xmm7, DWORD PTR [rbx+rdx*4]	# D.73733, tmp1170, MEM[(float[40][100] *)_954]
 1385      93
 1386 03e8 8D5101   		lea	edx, [rcx+1]	# z,
 1387              	.LVL90:
 1388 03eb C4817A58 		vaddss	xmm4, xmm0, DWORD PTR [r11+r15*4]	# D.73733, D.73733, MEM[(float[40][100] *)_961]
 1388      24BB
 1389 03f1 C4C15A58 		vaddss	xmm1, xmm4, DWORD PTR [r11+rax*4]	# D.73733, D.73733, MEM[(float[40][100] *)_961]
 1389      0C83
 1390 03f7 B8630000 		mov	eax, 99	# D.73740,
 1390      00
 1391              	.LBE1145:
 1392              	.LBE1174:
 1393              	.LBE1211:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1394              		.loc 10 29 0
 1395 03fc C5FA1025 		vmovss	xmm4, DWORD PTR .LC0[rip]	# tmp1777,
 1395      00000000 
 1396 0404 29C8     		sub	eax, ecx	# D.73740, ivtmp.538
 1397              	.LBB1212:
 1398              	.LBB1175:
 1399              	.LBB1146:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1400              		.loc 10 20 0
 1401 0406 C4817258 		vaddss	xmm6, xmm1, DWORD PTR [r11+r10*4]	# D.73733, D.73733, MEM[(float[40][100] *)_961]
 1401      3493
 1402              	.LVL91:
 1403 040c C4414A58 		vaddss	xmm14, xmm6, DWORD PTR [r11+rsi*4]	# D.73733, D.73733, MEM[(float[40][100] *)_961]
 1403      34B3
 1404 0412 C46221BD 		vfnmadd231ss	xmm14, xmm11, DWORD PTR .LC22[rip]	# ret, u,
 1404      35000000 
 1404      00
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1405              		.loc 10 21 0
 1406 041b C4C10814 		vunpcklps	xmm2, xmm14, xmm14	# ret, ret, ret
 1406      D6
 1407 0420 C5785AFA 		vcvtps2pd	xmm15, xmm2	# D.73757, ret
 1408              	.LBE1146:
 1409              	.LBE1175:
 1410              	.LBE1212:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1411              		.loc 10 29 0
 1412 0424 C4C16359 		vmulsd	xmm2, xmm3, xmm8	# D.73757, D.73757, tmp1546
 1412      D0
 1413 0429 C4415A5C 		vsubss	xmm11, xmm4, xmm11	# D.73733, tmp1777, u
 1413      DB
 1414              	.LVL92:
 1415              	.LBB1213:
 1416              	.LBB1176:
 1417              	.LBB1147:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1418              		.loc 10 21 0
 1419 042e C5835E3D 		vdivsd	xmm7, xmm15, QWORD PTR .LC23[rip]	# D.73757, D.73757,
 1419      00000000 
 1420 0436 C5C35E05 		vdivsd	xmm0, xmm7, QWORD PTR .LC23[rip]	# D.73757, D.73757,
 1420      00000000 
 1421              	.LBE1147:
 1422              	.LBE1176:
 1423              	.LBE1213:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1424              		.loc 10 29 0
 1425 043e C4C12014 		vunpcklps	xmm1, xmm11, xmm11	# D.73733, D.73733, D.73733
 1425      CB
 1426 0443 C5F85AF1 		vcvtps2pd	xmm6, xmm1	# D.73757, D.73733
 1427 0447 C4414B59 		vmulsd	xmm14, xmm6, xmm9	# D.73757, D.73757, tmp1545
 1427      F1
 1428 044c C4416B59 		vmulsd	xmm15, xmm2, xmm12	# D.73757, D.73757, D.73757
 1428      FC
 1429 0451 C4428999 		vfmadd132sd	xmm15, xmm14, xmm12	# D.73757, D.73757, D.73757
 1429      FC
 1430              		.loc 10 32 0
 1431 0456 C4417B12 		vmovddup	xmm12, xmm13	# tmp1779, D.73757
 1431      E5
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1432              		.loc 10 29 0
 1433 045b C4C28199 		vfmadd132sd	xmm0, xmm15, xmm10	# D.73757, D.73757, tmp1547
 1433      C2
 1434              		.loc 10 32 0
 1435 0460 C441795A 		vcvtpd2ps	xmm13, xmm12	# tmp1779, tmp1779
 1435      EC
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1436              		.loc 10 31 0
 1437 0465 C4E2E199 		vfmadd132sd	xmm0, xmm3, xmm5	# D.73757, D.73757, tmp1548
 1437      C5
 1438 046a C5FB12D8 		vmovddup	xmm3, xmm0	# tmp1778, D.73757
 1439              		.loc 10 32 0
 1440 046e C4417A11 		vmovss	DWORD PTR _ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7V_other[r9+rcx
 1440      AC890000 
 1440      0000
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1441              		.loc 10 31 0
 1442 0478 C5F95AFB 		vcvtpd2ps	xmm7, xmm3	# tmp1778, tmp1778
 1443 047c C4C17A11 		vmovss	DWORD PTR _ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7U_other[r9+rcx
 1443      BC890000 
 1443      0000
 1444 0486 4883C101 		add	rcx, 1	# ivtmp.538,
 1445              	.LVL93:
 1446 048a 398C2400 		cmp	DWORD PTR [rsp+256], ecx	# %sfp, ivtmp.538
 1446      010000
 1447 0491 0F8719FE 		ja	.L75	#,
 1447      FFFF
 1448 0497 448B8C24 		mov	r9d, DWORD PTR [rsp+256]	# prolog_loop_niters.323, %sfp
 1448      00010000 
 1449 049f 8944244C 		mov	DWORD PTR [rsp+76], eax	# %sfp, D.73740
 1450 04a3 89D3     		mov	ebx, edx	# z, z
 1451 04a5 89942480 		mov	DWORD PTR [rsp+128], edx	# %sfp, z
 1451      000000
 1452              	.LVL94:
 1453              	.L74:
 1454 04ac 488B7424 		mov	rsi, QWORD PTR [rsp+80]	# ivtmp.569, %sfp
 1454      50
 1455 04b1 4489CA   		mov	edx, r9d	# prolog_loop_adjusted_niters.324, prolog_loop_niters.323
 1456 04b4 4189DC   		mov	r12d, ebx	# z, z
 1457 04b7 448D4302 		lea	r8d, [rbx+2]	# stmp_var_.330,
 1458 04bb C5796EDB 		vmovd	xmm11, ebx	# z, z
 1459 04bf 488B4424 		mov	rax, QWORD PTR [rsp+112]	# D.73750, %sfp
 1459      70
 1460 04c4 448D6B03 		lea	r13d, [rbx+3]	# stmp_var_.330,
 1461 04c8 4183C401 		add	r12d, 1	# stmp_var_.330,
 1462 04cc C441796E 		vmovd	xmm9, r8d	# stmp_var_.330, stmp_var_.330
 1462      C8
 1463 04d1 8D7B04   		lea	edi, [rbx+4]	# stmp_var_.330,
 1464 04d4 C4C32122 		vpinsrd	xmm1, xmm11, r12d, 1	# tmp1247, z, stmp_var_.330
 1464      CC01
 1465 04da C4C33122 		vpinsrd	xmm4, xmm9, r13d, 1	# tmp1246, stmp_var_.330, stmp_var_.330
 1465      E501
 1466 04e0 448D7B06 		lea	r15d, [rbx+6]	# stmp_var_.330,
 1467 04e4 4801D6   		add	rsi, rdx	# D.73750, prolog_loop_adjusted_niters.324
 1468 04e7 C5796EC7 		vmovd	xmm8, edi	# stmp_var_.330, stmp_var_.330
 1469 04eb 448D5307 		lea	r10d, [rbx+7]	# stmp_var_.330,
 1470 04ef C441796E 		vmovd	xmm10, r15d	# stmp_var_.330, stmp_var_.330
 1470      D7
 1471 04f4 48C1E602 		sal	rsi, 2	# base_off.336,
 1472 04f8 C4C32922 		vpinsrd	xmm5, xmm10, r10d, 1	# tmp1244, stmp_var_.330, stmp_var_.330
 1472      EA01
 1473 04fe 4C8B5424 		mov	r10, QWORD PTR [rsp+96]	# D.73750, %sfp
 1473      60
 1474 0503 C7842484 		mov	DWORD PTR [rsp+132], 100	# %sfp,
 1474      00000064 
 1474      000000
 1475 050e 488B7C24 		mov	rdi, QWORD PTR [rsp+104]	# D.73750, %sfp
 1475      68
 1476 0513 C5F16CF4 		vpunpcklqdq	xmm6, xmm1, xmm4	# tmp1248, tmp1247, tmp1246
 1477 0517 4C895C24 		mov	QWORD PTR [rsp+24], r11	# %sfp, D.73741
 1477      18
 1478 051c 44298C24 		sub	DWORD PTR [rsp+132], r9d	# %sfp, prolog_loop_niters.323
 1478      84000000 
 1479 0524 448D4B05 		lea	r9d, [rbx+5]	# stmp_var_.330,
 1480 0528 4C897424 		mov	QWORD PTR [rsp+16], r14	# %sfp, D.73741
 1480      10
 1481 052d 488B9C24 		mov	rbx, QWORD PTR [rsp+136]	# ivtmp.579, %sfp
 1481      88000000 
 1482 0535 C4C33922 		vpinsrd	xmm0, xmm8, r9d, 1	# tmp1245, stmp_var_.330, stmp_var_.330
 1482      C101
 1483 053b C5796CF5 		vpunpcklqdq	xmm14, xmm0, xmm5	# tmp1249, tmp1245, tmp1244
 1484 053f 4C8BA424 		mov	r12, QWORD PTR [rsp+152]	# D.73741, %sfp
 1484      98000000 
 1485              		.loc 10 32 0
 1486 0547 C4C34D38 		vinserti128	ymm2, ymm6, xmm14, 0x1	# vect_vec_iv_.333, tmp1248, tmp1249
 1486      D601
 1487 054d C5FD6FE2 		vmovdqa	ymm4, ymm2	# vect_vec_iv_.333, vect_vec_iv_.333
 1488 0551 4C8B8424 		mov	r8, QWORD PTR [rsp+296]	# D.73741, %sfp
 1488      28010000 
 1489 0559 4C8D0CBF 		lea	r9, [rdi+rdi*4]	# tmp1261,
 1490 055d 8B8C2484 		mov	ecx, DWORD PTR [rsp+132]	# bnd.326, %sfp
 1490      000000
 1491 0564 4B8D3C89 		lea	rdi, [r9+r9*4]	# tmp1264,
 1492 0568 4C8D3C33 		lea	r15, [rbx+rsi]	# vect_p.337,
 1493 056c 4803B424 		add	rsi, QWORD PTR [rsp+144]	# vect_p.342, %sfp
 1493      90000000 
 1494 0574 48C1E704 		sal	rdi, 4	# tmp1264,
 1495 0578 4C8B4C24 		mov	r9, QWORD PTR [rsp+88]	# D.73741, %sfp
 1495      58
 1496 057d 4A8D1C1F 		lea	rbx, [rdi+r11]	# D.73754,
 1497 0581 4C01F7   		add	rdi, r14	# D.73754, D.73741
 1498 0584 C57D6F44 		vmovdqa	ymm8, YMMWORD PTR [rsp+32]	# tmp1524, %sfp
 1498      2420
 1499 058a C1E903   		shr	ecx, 3	# bnd.326,
 1500 058d 4889BC24 		mov	QWORD PTR [rsp+160], rdi	# %sfp, D.73754
 1500      A0000000 
 1501 0595 4889B424 		mov	QWORD PTR [rsp+224], rsi	# %sfp, vect_p.342
 1501      E0000000 
 1502 059d 4B8D3492 		lea	rsi, [r10+r10*4]	# tmp1268,
 1503 05a1 898C24AC 		mov	DWORD PTR [rsp+172], ecx	# %sfp, bnd.326
 1503      000000
 1504 05a8 C1E103   		sal	ecx, 3	# ratio_mult_vf.327,
 1505 05ab 894C2448 		mov	DWORD PTR [rsp+72], ecx	# %sfp, ratio_mult_vf.327
 1506 05af 488D0C80 		lea	rcx, [rax+rax*4]	# tmp1254,
 1507 05b3 488D04B6 		lea	rax, [rsi+rsi*4]	# tmp1271,
 1508 05b7 488D0C89 		lea	rcx, [rcx+rcx*4]	# tmp1257,
 1509 05bb 48C1E004 		sal	rax, 4	# tmp1271,
 1510 05bf 4E8D1418 		lea	r10, [rax+r11]	# D.73754,
 1511 05c3 4C01F0   		add	rax, r14	# D.73754, D.73741
 1512 05c6 48C1E104 		sal	rcx, 4	# tmp1257,
 1513 05ca 48898424 		mov	QWORD PTR [rsp+256], rax	# %sfp, D.73754
 1513      00010000 
 1514 05d2 488B4424 		mov	rax, QWORD PTR [rsp+120]	# ivtmp.568, %sfp
 1514      78
 1515 05d7 4901C9   		add	r9, rcx	# D.73754, tmp1257
 1516 05da 4D8D2C0C 		lea	r13, [r12+rcx]	# D.73754,
 1517 05de 4D8D2408 		lea	r12, [r8+rcx]	# D.73754,
 1518 05e2 4C8B8424 		mov	r8, QWORD PTR [rsp+288]	# D.73741, %sfp
 1518      20010000 
 1519 05ea 498D340B 		lea	rsi, [r11+rcx]	# D.73754,
 1520 05ee 4C8B9C24 		mov	r11, QWORD PTR [rsp+256]	# D.73754, %sfp
 1520      00010000 
 1521 05f6 488D0490 		lea	rax, [rax+rdx*4]	# base_off.455,
 1522 05fa 488D9000 		lea	rdx, _ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7U_other[rax]	# vect_pU
 1522      000000
 1523 0601 488D8000 		lea	rax, _ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7V_other[rax]	# vect_pV
 1523      000000
 1524 0608 4901C8   		add	r8, rcx	# D.73754, tmp1257
 1525 060b 48899424 		mov	QWORD PTR [rsp+176], rdx	# %sfp, vect_pU_other.456
 1525      B0000000 
 1526 0613 4C01F1   		add	rcx, r14	# D.73754, D.73741
 1527 0616 48898424 		mov	QWORD PTR [rsp+184], rax	# %sfp, vect_pV_other.464
 1527      B8000000 
 1528 061e 31D2     		xor	edx, edx	# ivtmp.525
 1529 0620 31C0     		xor	eax, eax	# ivtmp.529
 1530 0622 4C8BB424 		mov	r14, QWORD PTR [rsp+224]	# vect_p.342, %sfp
 1530      E0000000 
 1531 062a EB15     		jmp	.L76	#
 1532              	.LVL95:
 1533 062c 0F1F4000 		.p2align 4,,10
 1534              		.p2align 3
 1535              	.L69:
 1536 0630 488BBC24 		mov	rdi, QWORD PTR [rsp+160]	# D.73754, %sfp
 1536      A0000000 
 1537 0638 C5FD6FA4 		vmovdqa	ymm4, YMMWORD PTR [rsp+192]	# vect_vec_iv_.333, %sfp
 1537      24C00000 
 1537      00
 1538              	.LVL96:
 1539              	.L76:
 1540              	.LBB1214:
 1541              	.LBB1177:
 1542              	.LBB1148:
 1543              	.LBB1102:
 1544              	.LBB1056:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1545              		.loc 10 13 0
 1546 0641 C55DFE15 		vpaddd	ymm10, ymm4, YMMWORD PTR .LC6[rip]	# vect_var_.356, vect_vec_iv_.333,
 1546      00000000 
 1547 0649 C55DFE3D 		vpaddd	ymm15, ymm4, YMMWORD PTR .LC31[rip]	# vect_vec_iv_.333, vect_vec_iv_.333,
 1547      00000000 
 1548 0651 83C201   		add	edx, 1	# ivtmp.525,
 1549              	.LBE1056:
 1550              	.LBE1102:
 1551              	.LBE1148:
 1552              	.LBE1177:
 1553              	.LBE1214:
  28:naive-integrator.hpp ****             auto u = U[x][y][z],  v = V[x][y][z];
 1554              		.loc 10 28 0
 1555 0654 C4C17C28 		vmovaps	ymm3, YMMWORD PTR [r15+rax]	# vect_u.338, MEM[base: vect_p.337_764, index: ivtmp.529_127, 
 1555      1C07
 1556 065a C4C17D73 		vpsrlq	ymm0, ymm10, 32	# tmp652, vect_var_.356,
 1556      D220
 1557 0660 C4C17C10 		vmovups	ymm7, YMMWORD PTR [r14+rax]	# tmp643, MEM[base: vect_p.342_753, index: ivtmp.529_127, offs
 1557      3C06
 1558 0666 C57D7FBC 		vmovdqa	YMMWORD PTR [rsp+192], ymm15	# %sfp, vect_vec_iv_.333
 1558      24C00000 
 1558      00
 1559 066f C4427D28 		vpmuldq	ymm14, ymm0, ymm8	# tmp650, tmp652, tmp1524
 1559      F0
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1560              		.loc 10 29 0
 1561 0674 C4C37D19 		vextractf128	xmm12, ymm3, 0x1	# tmp644, vect_u.338
 1561      DC01
 1562 067a C4C17C5A 		vcvtps2pd	ymm5, xmm12	# vect_var_.344, tmp644
 1562      EC
 1563 067f C4C37D19 		vextractf128	xmm13, ymm7, 0x1	# tmp645, tmp643
 1563      FD01
 1564 0685 C4C17C5A 		vcvtps2pd	ymm1, xmm13	# vect_var_.347, tmp645
 1564      CD
 1565 068a C5FC5AF3 		vcvtps2pd	ymm6, xmm3	# vect_var_.344, vect_u.338
 1566 068e C4622D28 		vpmuldq	ymm11, ymm10, YMMWORD PTR .LC7[rip]	# tmp648, vect_var_.356,
 1566      1D000000 
 1566      00
 1567 0697 C57C280D 		vmovaps	ymm9, YMMWORD PTR .LC2[rip]	# tmp1707,
 1567      00000000 
 1568 069f C5FC5AD7 		vcvtps2pd	ymm2, xmm7	# vect_var_.347, tmp643
 1569 06a3 C4622500 		vpshufb	ymm15, ymm11, YMMWORD PTR .LC8[rip]	# tmp656, tmp648,
 1569      3D000000 
 1569      00
 1570 06ac C4C12572 		vpsrad	ymm11, ymm10, 31	# vect_patt.361, vect_var_.356,
 1570      E21F
 1571 06b2 C4620D00 		vpshufb	ymm12, ymm14, YMMWORD PTR .LC9[rip]	# tmp658, tmp650,
 1571      25000000 
 1571      00
 1572 06bb C44105EB 		vpor	ymm13, ymm15, ymm12	# vect_patt.358, tmp656, tmp658
 1572      EC
 1573 06c0 C4C17D72 		vpsrad	ymm0, ymm13, 5	# vect_patt.360, vect_patt.358,
 1573      E505
 1574 06c6 C4417DFA 		vpsubd	ymm14, ymm0, ymm11	# vect_patt.362, vect_patt.360, vect_patt.361
 1574      F3
 1575              	.LBB1215:
 1576              	.LBB1178:
 1577              	.LBB1149:
 1578              	.LBB1103:
 1579              	.LBB1104:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1580              		.loc 10 14 0
 1581 06cb C57C281D 		vmovaps	ymm11, YMMWORD PTR .LC10[rip]	# tmp1681,
 1581      00000000 
 1582              	.LBE1104:
 1583              	.LBE1103:
 1584              	.LBE1149:
 1585              	.LBE1178:
 1586              	.LBE1215:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1587              		.loc 10 29 0
 1588 06d3 C5345CCB 		vsubps	ymm9, ymm9, ymm3	# vect_var_.350, tmp1707, vect_u.338
 1589              	.LVL97:
 1590 06d7 C4620D40 		vpmulld	ymm15, ymm14, YMMWORD PTR .LC6[rip]	# vect_patt.363, vect_patt.362,
 1590      3D000000 
 1590      00
 1591 06e0 C4C12DFA 		vpsubd	ymm0, ymm10, ymm15	# vect_patt.365, vect_var_.356, vect_patt.363
 1591      C7
 1592              	.LVL98:
 1593              	.LBB1216:
 1594              	.LBB1179:
 1595              	.LBB1150:
 1596              	.LBB1107:
 1597              	.LBB1057:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1598              		.loc 10 14 0
 1599 06e5 C57C2815 		vmovaps	ymm10, YMMWORD PTR .LC10[rip]	# tmp1680,
 1599      00000000 
 1600              	.LBE1057:
 1601              	.LBE1107:
 1602              	.LBB1108:
 1603              	.LBB1109:
 1604 06ed C57C283D 		vmovaps	ymm15, YMMWORD PTR .LC10[rip]	# tmp1683,
 1604      00000000 
 1605              	.LBE1109:
 1606              	.LBE1108:
 1607              	.LBB1111:
 1608              	.LBB1058:
 1609 06f5 C4422D92 		vgatherdps	ymm12, DWORD PTR [r13+0+ymm0*4], ymm10	# vect_var_.366,, tmp1680
 1609      648500
 1610              	.LBE1058:
 1611              	.LBE1111:
 1612              	.LBB1112:
 1613              	.LBB1113:
 1614 06fc C57C2835 		vmovaps	ymm14, YMMWORD PTR .LC10[rip]	# tmp1682,
 1614      00000000 
 1615              	.LBE1113:
 1616              	.LBE1112:
 1617              	.LBB1115:
 1618              	.LBB1059:
 1619 0704 C57C29A4 		vmovaps	YMMWORD PTR [rsp+224], ymm12	# %sfp, vect_var_.366
 1619      24E00000 
 1619      00
 1620              	.LBE1059:
 1621              	.LBE1115:
 1622              	.LBB1116:
 1623              	.LBB1105:
 1624 070d C4422592 		vgatherdps	ymm13, DWORD PTR [r12+ymm0*4], ymm11	# vect_var_.368,, tmp1681
 1624      2C84
 1625              	.LBE1105:
 1626              	.LBE1116:
 1627              	.LBB1117:
 1628              	.LBB1074:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1629              		.loc 10 13 0
 1630 0713 C55DFE1D 		vpaddd	ymm11, ymm4, YMMWORD PTR .LC11[rip]	# vect_var_.377, vect_vec_iv_.333,
 1630      00000000 
 1631              	.LBE1074:
 1632              	.LBE1117:
 1633              	.LBB1118:
 1634              	.LBB1106:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1635              		.loc 10 14 0
 1636 071b C57C29AC 		vmovaps	YMMWORD PTR [rsp+256], ymm13	# %sfp, vect_var_.368
 1636      24000100 
 1636      00
 1637              	.LBE1106:
 1638              	.LBE1118:
 1639              	.LBB1119:
 1640              	.LBB1091:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1641              		.loc 10 13 0
 1642 0724 C5DDFE25 		vpaddd	ymm4, ymm4, YMMWORD PTR .LC12[rip]	# vect_var_.390, vect_vec_iv_.333,
 1642      00000000 
 1643              	.LBE1091:
 1644              	.LBE1119:
 1645              	.LBB1120:
 1646              	.LBB1110:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1647              		.loc 10 14 0
 1648 072c C4420592 		vgatherdps	ymm12, DWORD PTR [r10+ymm0*4], ymm15	# vect_var_.374,, tmp1683
 1648      2482
 1649 0732 C4C12D73 		vpsrlq	ymm10, ymm11, 32	# tmp677, vect_var_.377,
 1649      D320
 1650              	.LBE1110:
 1651              	.LBE1120:
 1652              	.LBB1121:
 1653              	.LBB1114:
 1654 0738 C4620D92 		vgatherdps	ymm13, DWORD PTR [rbx+ymm0*4], ymm14	# vect_var_.371,, tmp1682
 1654      2C83
 1655              	.LVL99:
 1656 073e C4622528 		vpmuldq	ymm14, ymm11, YMMWORD PTR .LC7[rip]	# tmp673, vect_var_.377,
 1656      35000000 
 1656      00
 1657 0747 C4422D28 		vpmuldq	ymm15, ymm10, ymm8	# tmp675, tmp677, tmp1524
 1657      F8
 1658 074c C4620D00 		vpshufb	ymm14, ymm14, YMMWORD PTR .LC8[rip]	# tmp681, tmp673,
 1658      35000000 
 1658      00
 1659 0755 C4620500 		vpshufb	ymm10, ymm15, YMMWORD PTR .LC9[rip]	# tmp683, tmp675,
 1659      15000000 
 1659      00
 1660 075e C4410DEB 		vpor	ymm15, ymm14, ymm10	# vect_patt.379, tmp681, tmp683
 1660      FA
 1661 0763 C4C12D72 		vpsrad	ymm10, ymm11, 31	# vect_patt.382, vect_var_.377,
 1661      E31F
 1662 0769 C4C10D72 		vpsrad	ymm14, ymm15, 5	# vect_patt.381, vect_patt.379,
 1662      E705
 1663 076f C4410DFA 		vpsubd	ymm15, ymm14, ymm10	# vect_patt.383, vect_patt.381, vect_patt.382
 1663      FA
 1664 0774 C4620540 		vpmulld	ymm14, ymm15, YMMWORD PTR .LC6[rip]	# vect_patt.384, vect_patt.383,
 1664      35000000 
 1664      00
 1665 077d C44125FA 		vpsubd	ymm10, ymm11, ymm14	# vect_patt.386, vect_var_.377, vect_patt.384
 1665      D6
 1666 0782 C58D73D4 		vpsrlq	ymm14, ymm4, 32	# tmp696, vect_var_.390,
 1666      20
 1667 0787 C4420D28 		vpmuldq	ymm14, ymm14, ymm8	# tmp694, tmp696, tmp1524
 1667      F0
 1668              	.LBE1114:
 1669              	.LBE1121:
 1670              	.LBB1122:
 1671              	.LBB1075:
 1672 078c C57C283D 		vmovaps	ymm15, YMMWORD PTR .LC10[rip]	# tmp1684,
 1672      00000000 
 1673 0794 C4220592 		vgatherdps	ymm11, DWORD PTR [rsi+ymm10*4], ymm15	# vect_var_.387,, tmp1684
 1673      1C96
 1674              	.LVL100:
 1675 079a C4625D28 		vpmuldq	ymm15, ymm4, YMMWORD PTR .LC7[rip]	# tmp692, vect_var_.390,
 1675      3D000000 
 1675      00
 1676 07a3 C4620500 		vpshufb	ymm15, ymm15, YMMWORD PTR .LC8[rip]	# tmp700, tmp692,
 1676      3D000000 
 1676      00
 1677 07ac C4620D00 		vpshufb	ymm14, ymm14, YMMWORD PTR .LC9[rip]	# tmp702, tmp694,
 1677      35000000 
 1677      00
 1678 07b5 C44105EB 		vpor	ymm15, ymm15, ymm14	# vect_patt.392, tmp700, tmp702
 1678      FE
 1679 07ba C58D72E4 		vpsrad	ymm14, ymm4, 31	# vect_patt.395, vect_var_.390,
 1679      1F
 1680 07bf C4C10572 		vpsrad	ymm15, ymm15, 5	# vect_patt.394, vect_patt.392,
 1680      E705
 1681 07c5 C44105FA 		vpsubd	ymm15, ymm15, ymm14	# vect_patt.396, vect_patt.394, vect_patt.395
 1681      FE
 1682 07ca C4620540 		vpmulld	ymm14, ymm15, YMMWORD PTR .LC6[rip]	# vect_patt.397, vect_patt.396,
 1682      35000000 
 1682      00
 1683 07d3 C4C15DFA 		vpsubd	ymm4, ymm4, ymm14	# vect_patt.399, vect_var_.390, vect_patt.397
 1683      E6
 1684              	.LBE1075:
 1685              	.LBE1122:
 1686              	.LBB1123:
 1687              	.LBB1092:
 1688 07d8 C57C283D 		vmovaps	ymm15, YMMWORD PTR .LC10[rip]	# tmp1685,
 1688      00000000 
 1689 07e0 C4620592 		vgatherdps	ymm14, DWORD PTR [rsi+ymm4*4], ymm15	# vect_var_.400,, tmp1685
 1689      34A6
 1690              	.LBE1092:
 1691              	.LBE1123:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1692              		.loc 10 20 0
 1693 07e6 C57C28BC 		vmovaps	ymm15, YMMWORD PTR [rsp+256]	# vect_var_.368, %sfp
 1693      24000100 
 1693      00
 1694 07ef C50458BC 		vaddps	ymm15, ymm15, YMMWORD PTR [rsp+224]	# vect_var_.370, vect_var_.368, %sfp
 1694      24E00000 
 1694      00
 1695 07f8 C4410458 		vaddps	ymm13, ymm15, ymm13	# vect_var_.373, vect_var_.370, vect_var_.371
 1695      ED
 1696              	.LBE1150:
 1697              	.LBE1179:
 1698              	.LBE1216:
 1699              	.LBB1217:
 1700              	.LBB1026:
 1701              	.LBB998:
 1702              	.LBB962:
 1703              	.LBB931:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1704              		.loc 10 14 0
 1705 07fd C57C283D 		vmovaps	ymm15, YMMWORD PTR .LC10[rip]	# tmp1686,
 1705      00000000 
 1706              	.LBE931:
 1707              	.LBE962:
 1708              	.LBE998:
 1709              	.LBE1026:
 1710              	.LBE1217:
 1711              	.LBB1218:
 1712              	.LBB1180:
 1713              	.LBB1151:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1714              		.loc 10 20 0
 1715 0805 C4411458 		vaddps	ymm12, ymm13, ymm12	# vect_var_.376, vect_var_.373, vect_var_.374
 1715      E4
 1716 080a C4411C58 		vaddps	ymm11, ymm12, ymm11	# vect_var_.389, vect_var_.376, vect_var_.387
 1716      DB
 1717              	.LBE1151:
 1718              	.LBE1180:
 1719              	.LBE1218:
 1720              	.LBB1219:
 1721              	.LBB1027:
 1722              	.LBB999:
 1723              	.LBB963:
 1724              	.LBB964:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1725              		.loc 10 14 0
 1726 080f C57C2825 		vmovaps	ymm12, YMMWORD PTR .LC10[rip]	# tmp1687,
 1726      00000000 
 1727 0817 C4421D92 		vgatherdps	ymm13, DWORD PTR [r8+ymm0*4], ymm12	# vect_var_.423,, tmp1687
 1727      2C80
 1728              	.LBE964:
 1729              	.LBE963:
 1730              	.LBE999:
 1731              	.LBE1027:
 1732              	.LBE1219:
 1733              	.LBB1220:
 1734              	.LBB1181:
 1735              	.LBB1152:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1736              		.loc 10 20 0
 1737 081d C4412458 		vaddps	ymm14, ymm11, ymm14	# vect_var_.402, vect_var_.389, vect_var_.400
 1737      F6
 1738              	.LBE1152:
 1739              	.LBE1181:
 1740              	.LBE1220:
 1741              	.LBB1221:
 1742              	.LBB1028:
 1743              	.LBB1000:
 1744              	.LBB965:
 1745              	.LBB908:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1746              		.loc 10 14 0
 1747 0822 C57C281D 		vmovaps	ymm11, YMMWORD PTR .LC10[rip]	# tmp1688,
 1747      00000000 
 1748 082a C4622592 		vgatherdps	ymm12, DWORD PTR [rdi+ymm0*4], ymm11	# vect_var_.426,, tmp1688
 1748      2487
 1749              	.LBE908:
 1750              	.LBE965:
 1751              	.LBE1000:
 1752              	.LBE1028:
 1753              	.LBE1221:
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1754              		.loc 10 31 0
 1755 0830 488BBC24 		mov	rdi, QWORD PTR [rsp+176]	# vect_pU_other.456, %sfp
 1755      B0000000 
 1756              	.LBB1222:
 1757              	.LBB1182:
 1758              	.LBB1153:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1759              		.loc 10 20 0
 1760 0838 C4E20D9C 		vfnmadd132ps	ymm3, ymm14, YMMWORD PTR .LC13[rip]	# vect_ret.405, vect_var_.402,
 1760      1D000000 
 1760      00
 1761              	.LVL101:
 1762              	.LBE1153:
 1763              	.LBE1182:
 1764              	.LBE1222:
 1765              	.LBB1223:
 1766              	.LBB1029:
 1767              	.LBB1001:
 1768              	.LBB966:
 1769              	.LBB932:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1770              		.loc 10 14 0
 1771 0841 C4420592 		vgatherdps	ymm14, DWORD PTR [r9+ymm0*4], ymm15	# vect_var_.421,, tmp1686
 1771      3481
 1772              	.LVL102:
 1773              	.LBE932:
 1774              	.LBE966:
 1775              	.LBB967:
 1776              	.LBB920:
 1777 0847 C57C283D 		vmovaps	ymm15, YMMWORD PTR .LC10[rip]	# tmp1689,
 1777      00000000 
 1778 084f C4420592 		vgatherdps	ymm11, DWORD PTR [r11+ymm0*4], ymm15	# vect_var_.429,, tmp1689
 1778      1C83
 1779              	.LVL103:
 1780              	.LBE920:
 1781              	.LBE967:
 1782              	.LBB968:
 1783              	.LBB947:
 1784 0855 C5FC2805 		vmovaps	ymm0, YMMWORD PTR .LC10[rip]	# tmp1690,
 1784      00000000 
 1785 085d C4227D92 		vgatherdps	ymm15, DWORD PTR [rcx+ymm10*4], ymm0	# vect_var_.432,, tmp1690
 1785      3C91
 1786              	.LVL104:
 1787              	.LBE947:
 1788              	.LBE968:
 1789              	.LBB969:
 1790              	.LBB955:
 1791 0863 C5FC2805 		vmovaps	ymm0, YMMWORD PTR .LC10[rip]	# tmp1691,
 1791      00000000 
 1792 086b C4627D92 		vgatherdps	ymm10, DWORD PTR [rcx+ymm4*4], ymm0	# vect_var_.435,, tmp1691
 1792      14A1
 1793              	.LBE955:
 1794              	.LBE969:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1795              		.loc 10 20 0
 1796 0871 C4C10C58 		vaddps	ymm4, ymm14, ymm13	# vect_var_.425, vect_var_.421, vect_var_.423
 1796      E5
 1797 0876 C4415C58 		vaddps	ymm14, ymm4, ymm12	# vect_var_.428, vect_var_.425, vect_var_.426
 1797      F4
 1798 087b C4410C58 		vaddps	ymm13, ymm14, ymm11	# vect_var_.431, vect_var_.428, vect_var_.429
 1798      EB
 1799 0880 C4411458 		vaddps	ymm12, ymm13, ymm15	# vect_var_.434, vect_var_.431, vect_var_.432
 1799      E7
 1800              	.LBE1001:
 1801              	.LBE1029:
 1802              	.LBE1223:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1803              		.loc 10 29 0
 1804 0885 C54D592D 		vmulpd	ymm13, ymm6, YMMWORD PTR .LC16[rip]	# vect_var_.345, vect_var_.344,
 1804      00000000 
 1805              	.LBB1224:
 1806              	.LBB1183:
 1807              	.LBB1154:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1808              		.loc 10 21 0
 1809 088d C57C5AFB 		vcvtps2pd	ymm15, xmm3	# vect_var_.406, vect_ret.405
 1810 0891 C4E37D19 		vextractf128	xmm3, ymm3, 0x1	# tmp751, vect_ret.405
 1810      DB01
 1811 0897 C5855E05 		vdivpd	ymm0, ymm15, YMMWORD PTR .LC14[rip]	# vect_var_.407, vect_var_.406,
 1811      00000000 
 1812 089f C5FD5E25 		vdivpd	ymm4, ymm0, YMMWORD PTR .LC14[rip]	# vect_var_.451, vect_var_.407,
 1812      00000000 
 1813              	.LBE1154:
 1814              	.LBE1183:
 1815              	.LBE1224:
 1816              	.LBB1225:
 1817              	.LBB1030:
 1818              	.LBB1002:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1819              		.loc 10 20 0
 1820 08a7 C4411C58 		vaddps	ymm11, ymm12, ymm10	# vect_var_.437, vect_var_.434, vect_var_.435
 1820      DA
 1821              	.LBE1002:
 1822              	.LBE1030:
 1823              	.LBE1225:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1824              		.loc 10 29 0
 1825 08ac C4417C5A 		vcvtps2pd	ymm10, xmm9	# vect_var_.352, vect_var_.350
 1825      D1
 1826 08b1 C51559E2 		vmulpd	ymm12, ymm13, ymm2	# vect_var_.355, vect_var_.345, vect_var_.347
 1827 08b5 C52D5935 		vmulpd	ymm14, ymm10, YMMWORD PTR .LC15[rip]	# vect_var_.353, vect_var_.352,
 1827      00000000 
 1828 08bd C555592D 		vmulpd	ymm13, ymm5, YMMWORD PTR .LC16[rip]	# vect_var_.345, vect_var_.344,
 1828      00000000 
 1829 08c5 C4628D98 		vfmadd132pd	ymm12, ymm14, ymm2	# vect_var_.355, vect_var_.353, vect_var_.347
 1829      E2
 1830 08ca C4E29D98 		vfmadd132pd	ymm4, ymm12, YMMWORD PTR .LC17[rip]	# vect_var_.451, vect_var_.355,
 1830      25000000 
 1830      00
 1831 08d3 C4437D19 		vextractf128	xmm9, ymm9, 0x1	# tmp757, vect_var_.350
 1831      C901
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1832              		.loc 10 31 0
 1833 08d9 C4E2CD98 		vfmadd132pd	ymm4, ymm6, YMMWORD PTR .LC18[rip]	# vect_var_.451, vect_var_.344,
 1833      25000000 
 1833      00
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1834              		.loc 10 29 0
 1835 08e2 C4417C5A 		vcvtps2pd	ymm10, xmm9	# vect_var_.352, tmp757
 1835      D1
 1836 08e7 C51559E1 		vmulpd	ymm12, ymm13, ymm1	# vect_var_.355, vect_var_.345, vect_var_.347
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1837              		.loc 10 31 0
 1838 08eb C5FD5AE4 		vcvtpd2ps	xmm4, ymm4	# tmp769, vect_var_.451
 1839              	.LBB1226:
 1840              	.LBB1031:
 1841              	.LBB1003:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 1842              		.loc 10 20 0
 1843 08ef C4E2259C 		vfnmadd132ps	ymm7, ymm11, YMMWORD PTR .LC13[rip]	# vect_ret.440, vect_var_.437,
 1843      3D000000 
 1843      00
 1844              	.LBE1003:
 1845              	.LBE1031:
 1846              	.LBE1226:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1847              		.loc 10 29 0
 1848 08f8 C52D5935 		vmulpd	ymm14, ymm10, YMMWORD PTR .LC15[rip]	# vect_var_.353, vect_var_.352,
 1848      00000000 
 1849              	.LBB1227:
 1850              	.LBB1184:
 1851              	.LBB1155:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1852              		.loc 10 21 0
 1853 0900 C57C5ADB 		vcvtps2pd	ymm11, xmm3	# vect_var_.406, tmp751
 1854              	.LBE1155:
 1855              	.LBE1184:
 1856              	.LBE1227:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1857              		.loc 10 29 0
 1858 0904 C4628D98 		vfmadd132pd	ymm12, ymm14, ymm1	# vect_var_.355, vect_var_.353, vect_var_.347
 1858      E1
 1859              	.LBB1228:
 1860              	.LBB1185:
 1861              	.LBB1156:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1862              		.loc 10 21 0
 1863 0909 C5255E3D 		vdivpd	ymm15, ymm11, YMMWORD PTR .LC14[rip]	# vect_var_.407, vect_var_.406,
 1863      00000000 
 1864 0911 C5855E05 		vdivpd	ymm0, ymm15, YMMWORD PTR .LC14[rip]	# vect_var_.451, vect_var_.407,
 1864      00000000 
 1865              	.LBE1156:
 1866              	.LBE1185:
 1867              	.LBE1228:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 1868              		.loc 10 29 0
 1869 0919 C4E29D98 		vfmadd132pd	ymm0, ymm12, YMMWORD PTR .LC17[rip]	# vect_var_.451, vect_var_.355,
 1869      05000000 
 1869      00
 1870              	.LBB1229:
 1871              	.LBB1032:
 1872              	.LBB1004:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1873              		.loc 10 21 0
 1874 0922 C57C5AFF 		vcvtps2pd	ymm15, xmm7	# vect_var_.441, vect_ret.440
 1875              	.LBE1004:
 1876              	.LBE1032:
 1877              	.LBE1229:
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 1878              		.loc 10 31 0
 1879 0926 C4E2D598 		vfmadd132pd	ymm0, ymm5, YMMWORD PTR .LC18[rip]	# vect_var_.451, vect_var_.344,
 1879      05000000 
 1879      00
 1880 092f C5FD5AD8 		vcvtpd2ps	xmm3, ymm0	# tmp770, vect_var_.451
 1881 0933 C4635D18 		vinsertf128	ymm11, ymm4, xmm3, 0x1	# vect_var_.452, tmp769, tmp770
 1881      DB01
 1882 0939 C57C111C 		vmovups	YMMWORD PTR [rdi+rax], ymm11	# MEM[base: vect_pU_other.456_548, index: ivtmp.529_127, offs
 1882      07
 1883              		.loc 10 32 0
 1884 093e 488BBC24 		mov	rdi, QWORD PTR [rsp+184]	# vect_pV_other.464, %sfp
 1884      B8000000 
 1885              	.LBB1230:
 1886              	.LBB1033:
 1887              	.LBB1005:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1888              		.loc 10 21 0
 1889 0946 C5855E05 		vdivpd	ymm0, ymm15, YMMWORD PTR .LC14[rip]	# vect_var_.442, vect_var_.441,
 1889      00000000 
 1890              	.LBE1005:
 1891              	.LBE1033:
 1892              	.LBE1230:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1893              		.loc 10 30 0
 1894 094e C56D5915 		vmulpd	ymm10, ymm2, YMMWORD PTR .LC19[rip]	# vect_var_.418, vect_var_.347,
 1894      00000000 
 1895 0956 C5F55925 		vmulpd	ymm4, ymm1, YMMWORD PTR .LC19[rip]	# vect_var_.418, vect_var_.347,
 1895      00000000 
 1896              	.LBB1231:
 1897              	.LBB1034:
 1898              	.LBB1006:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1899              		.loc 10 21 0
 1900 095e C57D5E0D 		vdivpd	ymm9, ymm0, YMMWORD PTR .LC14[rip]	# vect_var_.459, vect_var_.442,
 1900      00000000 
 1901              	.LBE1006:
 1902              	.LBE1034:
 1903              	.LBE1231:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1904              		.loc 10 30 0
 1905 0966 C5CD5935 		vmulpd	ymm6, ymm6, YMMWORD PTR .LC20[rip]	# vect_var_.414, vect_var_.344,
 1905      00000000 
 1906              	.LBB1232:
 1907              	.LBB1035:
 1908              	.LBB1007:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1909              		.loc 10 21 0
 1910 096e C4E37D19 		vextractf128	xmm7, ymm7, 0x1	# tmp787, vect_ret.440
 1910      FF01
 1911              	.LBE1007:
 1912              	.LBE1035:
 1913              	.LBE1232:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1914              		.loc 10 30 0
 1915 0974 C56D59F6 		vmulpd	ymm14, ymm2, ymm6	# vect_var_.420, vect_var_.347, vect_var_.414
 1916 0978 C5D5592D 		vmulpd	ymm5, ymm5, YMMWORD PTR .LC20[rip]	# vect_var_.414, vect_var_.344,
 1916      00000000 
 1917 0980 C462AD9A 		vfmsub132pd	ymm14, ymm10, ymm2	# vect_var_.420, vect_var_.418, vect_var_.347
 1917      F2
 1918 0985 C5F559DD 		vmulpd	ymm3, ymm1, ymm5	# vect_var_.420, vect_var_.347, vect_var_.414
 1919 0989 C4E2DD9A 		vfmsub132pd	ymm3, ymm4, ymm1	# vect_var_.420, vect_var_.418, vect_var_.347
 1919      D9
 1920 098e C4628D98 		vfmadd132pd	ymm9, ymm14, YMMWORD PTR .LC21[rip]	# vect_var_.459, vect_var_.420,
 1920      0D000000 
 1920      00
 1921              		.loc 10 32 0
 1922 0997 C462ED98 		vfmadd132pd	ymm9, ymm2, YMMWORD PTR .LC18[rip]	# vect_var_.459, vect_var_.347,
 1922      0D000000 
 1922      00
 1923              	.LBB1233:
 1924              	.LBB1036:
 1925              	.LBB1008:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 1926              		.loc 10 21 0
 1927 09a0 C5FC5AD7 		vcvtps2pd	ymm2, xmm7	# vect_var_.441, tmp787
 1928 09a4 C56D5E2D 		vdivpd	ymm13, ymm2, YMMWORD PTR .LC14[rip]	# vect_var_.442, vect_var_.441,
 1928      00000000 
 1929 09ac C5155E25 		vdivpd	ymm12, ymm13, YMMWORD PTR .LC14[rip]	# vect_var_.459, vect_var_.442,
 1929      00000000 
 1930              	.LBE1008:
 1931              	.LBE1036:
 1932              	.LBE1233:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 1933              		.loc 10 30 0
 1934 09b4 C462E598 		vfmadd132pd	ymm12, ymm3, YMMWORD PTR .LC21[rip]	# vect_var_.459, vect_var_.420,
 1934      25000000 
 1934      00
 1935              		.loc 10 32 0
 1936 09bd C462F598 		vfmadd132pd	ymm12, ymm1, YMMWORD PTR .LC18[rip]	# vect_var_.459, vect_var_.347,
 1936      25000000 
 1936      00
 1937 09c6 C4C17D5A 		vcvtpd2ps	xmm1, ymm9	# tmp803, vect_var_.459
 1937      C9
 1938 09cb C4417D5A 		vcvtpd2ps	xmm11, ymm12	# tmp804, vect_var_.459
 1938      DC
 1939 09d0 C4437518 		vinsertf128	ymm15, ymm1, xmm11, 0x1	# vect_var_.460, tmp803, tmp804
 1939      FB01
 1940 09d6 C57C113C 		vmovups	YMMWORD PTR [rdi+rax], ymm15	# MEM[base: vect_pV_other.464_532, index: ivtmp.529_127, offs
 1940      07
 1941 09db 4883C020 		add	rax, 32	# ivtmp.529,
 1942 09df 3B9424AC 		cmp	edx, DWORD PTR [rsp+172]	# ivtmp.525, %sfp
 1942      000000
 1943 09e6 0F8244FC 		jb	.L69	#,
 1943      FFFF
 1944 09ec 448B7C24 		mov	r15d, DWORD PTR [rsp+72]	# ratio_mult_vf.327, %sfp
 1944      48
 1945 09f1 8B8C2480 		mov	ecx, DWORD PTR [rsp+128]	# z, %sfp
 1945      000000
 1946 09f8 448B6C24 		mov	r13d, DWORD PTR [rsp+76]	# tmp.329, %sfp
 1946      4C
 1947 09fd 448BA424 		mov	r12d, DWORD PTR [rsp+132]	# niters.325, %sfp
 1947      84000000 
 1948 0a05 4C8B5C24 		mov	r11, QWORD PTR [rsp+24]	# D.73741, %sfp
 1948      18
 1949 0a0a 4401F9   		add	ecx, r15d	# z, ratio_mult_vf.327
 1950 0a0d 4C8B7424 		mov	r14, QWORD PTR [rsp+16]	# D.73741, %sfp
 1950      10
 1951 0a12 4529FD   		sub	r13d, r15d	# tmp.329, ratio_mult_vf.327
 1952 0a15 4539E7   		cmp	r15d, r12d	# ratio_mult_vf.327, niters.325
 1953 0a18 0F84A802 		je	.L71	#,
 1953      0000
 1954              	.LBB1234:
 1955              	.LBB1037:
 1956              	.LBB1009:
 1957              	.LBB970:
 1958              	.LBB933:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1959              		.loc 10 14 0
 1960 0a1e 4C8B4C24 		mov	r9, QWORD PTR [rsp+112]	# D.73750, %sfp
 1960      70
 1961 0a23 4101CD   		add	r13d, ecx	# D.73734, z
 1962              	.LBE933:
 1963              	.LBE970:
 1964              	.LBE1009:
 1965              	.LBE1037:
 1966              	.LBE1234:
 1967              	.LBB1235:
 1968              	.LBB1186:
 1969              	.LBB1157:
 1970              	.LBB1124:
 1971              	.LBB1060:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 1972              		.loc 10 13 0
 1973 0a26 41B81F85 		mov	r8d, 1374389535	# tmp1463,
 1973      EB51
 1974 0a2c 48639C24 		movsx	rbx, DWORD PTR [rsp+168]	# y, %sfp
 1974      A8000000 
 1975 0a34 4489AC24 		mov	DWORD PTR [rsp+256], r13d	# %sfp, D.73734
 1975      00010000 
 1976              	.LBE1060:
 1977              	.LBE1124:
 1978              	.LBE1157:
 1979              	.LBE1186:
 1980              	.LBE1235:
 1981              	.LBB1236:
 1982              	.LBB1038:
 1983              	.LBB1010:
 1984              	.LBB971:
 1985              	.LBB909:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 1986              		.loc 10 14 0
 1987 0a3c 488B5424 		mov	rdx, QWORD PTR [rsp+104]	# D.73750, %sfp
 1987      68
 1988              	.LBE909:
 1989              	.LBE971:
 1990              	.LBB972:
 1991              	.LBB921:
 1992 0a41 4C8B6424 		mov	r12, QWORD PTR [rsp+96]	# D.73750, %sfp
 1992      60
 1993              	.LBE921:
 1994              	.LBE972:
 1995              	.LBB973:
 1996              	.LBB934:
 1997 0a46 4B8D0489 		lea	rax, [r9+r9*4]	# tmp1465,
 1998              	.LBE934:
 1999              	.LBE973:
 2000              	.LBE1010:
 2001              	.LBE1038:
 2002              	.LBE1236:
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 2003              		.loc 10 31 0
 2004 0a4a 4C8B4C24 		mov	r9, QWORD PTR [rsp+8]	# tmp1512, %sfp
 2004      08
  28:naive-integrator.hpp ****             auto u = U[x][y][z],  v = V[x][y][z];
 2005              		.loc 10 28 0
 2006 0a4f 4C8D149B 		lea	r10, [rbx+rbx*4]	# tmp1459,
 2007 0a53 C5FA103D 		vmovss	xmm7, DWORD PTR .LC22[rip]	# tmp1420,
 2007      00000000 
 2008 0a5b 4B8D3492 		lea	rsi, [r10+r10*4]	# tmp1461,
 2009 0a5f C5FB101D 		vmovsd	xmm3, QWORD PTR .LC23[rip]	# tmp1421,
 2009      00000000 
 2010              	.LBB1237:
 2011              	.LBB1039:
 2012              	.LBB1011:
 2013              	.LBB974:
 2014              	.LBB910:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 2015              		.loc 10 14 0
 2016 0a67 4C8D3C92 		lea	r15, [rdx+rdx*4]	# tmp1470,
 2017              	.LBE910:
 2018              	.LBE974:
 2019              	.LBE1011:
 2020              	.LBE1039:
 2021              	.LBE1237:
  28:naive-integrator.hpp ****             auto u = U[x][y][z],  v = V[x][y][z];
 2022              		.loc 10 28 0
 2023 0a6b 48C1E602 		sal	rsi, 2	# tmp1462,
 2024 0a6f C57B102D 		vmovsd	xmm13, QWORD PTR .LC24[rip]	# tmp1422,
 2024      00000000 
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 2025              		.loc 10 31 0
 2026 0a77 498D1431 		lea	rdx, [r9+rsi]	# tmp1480,
 2027 0a7b 4889B424 		mov	QWORD PTR [rsp+184], rsi	# %sfp, tmp1462
 2027      B8000000 
 2028 0a83 488BB424 		mov	rsi, QWORD PTR [rsp+152]	# D.73741, %sfp
 2028      98000000 
 2029              	.LBB1238:
 2030              	.LBB1040:
 2031              	.LBB1012:
 2032              	.LBB975:
 2033              	.LBB922:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 2034              		.loc 10 14 0
 2035 0a8b 4B8D1CA4 		lea	rbx, [r12+r12*4]	# tmp1475,
 2036 0a8f 4C8B6424 		mov	r12, QWORD PTR [rsp+88]	# D.73741, %sfp
 2036      58
 2037 0a94 48899424 		mov	QWORD PTR [rsp+176], rdx	# %sfp, tmp1480
 2037      B0000000 
 2038 0a9c 4C8D149B 		lea	r10, [rbx+rbx*4]	# tmp1477,
 2039 0aa0 C57B1025 		vmovsd	xmm12, QWORD PTR .LC25[rip]	# tmp1423,
 2039      00000000 
 2040              	.LBE922:
 2041              	.LBE975:
 2042              	.LBB976:
 2043              	.LBB935:
 2044 0aa8 488D3C80 		lea	rdi, [rax+rax*4]	# tmp1467,
 2045              	.LBE935:
 2046              	.LBE976:
 2047              	.LBB977:
 2048              	.LBB923:
 2049 0aac 49C1E202 		sal	r10, 2	# tmp1478,
 2050 0ab0 C57B101D 		vmovsd	xmm11, QWORD PTR .LC26[rip]	# tmp1424,
 2050      00000000 
 2051              	.LBE923:
 2052              	.LBE977:
 2053              	.LBB978:
 2054              	.LBB911:
 2055 0ab8 4F8D2CBF 		lea	r13, [r15+r15*4]	# tmp1472,
 2056 0abc C57A1015 		vmovss	xmm10, DWORD PTR .LC0[rip]	# tmp1428,
 2056      00000000 
 2057              	.LBE911:
 2058              	.LBE978:
 2059              	.LBB979:
 2060              	.LBB936:
 2061 0ac4 48C1E702 		sal	rdi, 2	# tmp1468,
 2062 0ac8 C57B100D 		vmovsd	xmm9, QWORD PTR .LC27[rip]	# tmp1425,
 2062      00000000 
 2063              	.LBE936:
 2064              	.LBE979:
 2065              	.LBB980:
 2066              	.LBB912:
 2067 0ad0 49C1E502 		sal	r13, 2	# tmp1473,
 2068              	.LBE912:
 2069              	.LBE980:
 2070              	.LBB981:
 2071              	.LBB924:
 2072 0ad4 4C899424 		mov	QWORD PTR [rsp+224], r10	# %sfp, tmp1478
 2072      E0000000 
 2073 0adc C57B1005 		vmovsd	xmm8, QWORD PTR .LC28[rip]	# tmp1426,
 2073      00000000 
 2074 0ae4 4889B424 		mov	QWORD PTR [rsp+192], rsi	# %sfp, D.73741
 2074      C0000000 
 2075 0aec C57B103D 		vmovsd	xmm15, QWORD PTR .LC29[rip]	# tmp1427,
 2075      00000000 
 2076 0af4 C5FB1035 		vmovsd	xmm6, QWORD PTR .LC30[rip]	# tmp1435,
 2076      00000000 
 2077              	.LVL105:
 2078 0afc 0F1F4000 		.p2align 4,,10
 2079              		.p2align 3
 2080              	.L72:
 2081              	.LBE924:
 2082              	.LBE981:
 2083              	.LBE1012:
 2084              	.LBE1040:
 2085              	.LBE1238:
  28:naive-integrator.hpp ****             auto u = U[x][y][z],  v = V[x][y][z];
 2086              		.loc 10 28 0
 2087 0b00 488B8424 		mov	rax, QWORD PTR [rsp+184]	# tmp1462, %sfp
 2087      B8000000 
 2088 0b08 4C63C9   		movsx	r9, ecx	# z, z
 2089              	.LBB1239:
 2090              	.LBB1187:
 2091              	.LBB1158:
 2092              	.LBB1125:
 2093              	.LBB1061:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 2094              		.loc 10 13 0
 2095 0b0b BE640000 		mov	esi, 100	#,
 2095      00
 2096              	.LBE1061:
 2097              	.LBE1125:
 2098              	.LBE1158:
 2099              	.LBE1187:
 2100              	.LBE1239:
  28:naive-integrator.hpp ****             auto u = U[x][y][z],  v = V[x][y][z];
 2101              		.loc 10 28 0
 2102 0b10 4C8BBC24 		mov	r15, QWORD PTR [rsp+136]	# ivtmp.579, %sfp
 2102      88000000 
 2103 0b18 488B9C24 		mov	rbx, QWORD PTR [rsp+144]	# ivtmp.581, %sfp
 2103      90000000 
 2104 0b20 4C01C8   		add	rax, r9	# tmp813, z
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 2105              		.loc 10 31 0
 2106 0b23 4C038C24 		add	r9, QWORD PTR [rsp+176]	# tmp926, %sfp
 2106      B0000000 
  28:naive-integrator.hpp ****             auto u = U[x][y][z],  v = V[x][y][z];
 2107              		.loc 10 28 0
 2108 0b2b C4C17A10 		vmovss	xmm0, DWORD PTR [r15+rax*4]	# u, MEM[(float[40][100] *)_940]
 2108      0487
 2109              	.LVL106:
 2110 0b31 448D7964 		lea	r15d, [rcx+100]	# D.73740,
 2111 0b35 C57A1034 		vmovss	xmm14, DWORD PTR [rbx+rax*4]	# v, MEM[(float[40][100] *)_941]
 2111      83
 2112              	.LVL107:
 2113 0b3a 8D5963   		lea	ebx, [rcx+99]	# D.73740,
 2114              	.LBB1240:
 2115              	.LBB1188:
 2116              	.LBB1159:
 2117              	.LBB1126:
 2118              	.LBB1062:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 2119              		.loc 10 13 0
 2120 0b3d 4489F8   		mov	eax, r15d	# tmp1692, D.73740
 2121 0b40 4589FA   		mov	r10d, r15d	# tmp827, D.73740
 2122 0b43 41F7E8   		imul	r8d	# tmp1463
 2123 0b46 41C1FA1F 		sar	r10d, 31	# tmp827,
 2124              	.LBE1062:
 2125              	.LBE1126:
 2126              	.LBB1127:
 2127              	.LBB1076:
 2128 0b4a 89D8     		mov	eax, ebx	# tmp1693, D.73740
 2129              	.LBE1076:
 2130              	.LBE1127:
 2131              	.LBE1159:
 2132              	.LBE1188:
 2133              	.LBE1240:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 2134              		.loc 10 29 0
 2135 0b4c C4C10814 		vunpcklps	xmm1, xmm14, xmm14	# v, v, v
 2135      CE
 2136 0b51 C5F814E8 		vunpcklps	xmm5, xmm0, xmm0	# u, u, u
 2137 0b55 C5F85AC1 		vcvtps2pd	xmm0, xmm1	# D.73757, v
 2138              	.LVL108:
 2139 0b59 C5F85AE5 		vcvtps2pd	xmm4, xmm5	# D.73757, u
 2140              	.LBB1241:
 2141              	.LBB1189:
 2142              	.LBB1160:
 2143              	.LBB1128:
 2144              	.LBB1063:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 2145              		.loc 10 13 0
 2146 0b5d C1FA05   		sar	edx, 5	# z,
 2147 0b60 4429D2   		sub	edx, r10d	# z, tmp827
 2148              	.LBE1063:
 2149              	.LBE1128:
 2150              	.LBB1129:
 2151              	.LBB1077:
 2152 0b63 4189DA   		mov	r10d, ebx	# tmp833, D.73740
 2153              	.LBE1077:
 2154              	.LBE1129:
 2155              	.LBB1130:
 2156              	.LBB1064:
 2157 0b66 0FAFD6   		imul	edx, esi	# tmp828,
 2158              	.LBE1064:
 2159              	.LBE1130:
 2160              	.LBB1131:
 2161              	.LBB1078:
 2162 0b69 41C1FA1F 		sar	r10d, 31	# tmp833,
 2163 0b6d BE640000 		mov	esi, 100	#,
 2163      00
 2164              	.LBE1078:
 2165              	.LBE1131:
 2166              	.LBB1132:
 2167              	.LBB1065:
 2168 0b72 4129D7   		sub	r15d, edx	# z, tmp828
 2169              	.LVL109:
 2170              	.LBE1065:
 2171              	.LBE1132:
 2172              	.LBB1133:
 2173              	.LBB1079:
 2174 0b75 41F7E8   		imul	r8d	# tmp1463
 2175 0b78 C1FA05   		sar	edx, 5	# z,
 2176 0b7b 4429D2   		sub	edx, r10d	# z, tmp833
 2177 0b7e 0FAFD6   		imul	edx, esi	# tmp834,
 2178 0b81 8D7165   		lea	esi, [rcx+101]	# D.73740,
 2179              	.LBE1079:
 2180              	.LBE1133:
 2181              	.LBE1160:
 2182              	.LBE1189:
 2183              	.LBE1241:
 2184              	.LBE898:
  27:naive-integrator.hpp ****           for (int z=0;z<NZ;++z) {
 2185              		.loc 10 27 0
 2186 0b84 83C101   		add	ecx, 1	# z,
 2187              	.LVL110:
 2188              	.LBB1254:
 2189              	.LBB1242:
 2190              	.LBB1190:
 2191              	.LBB1161:
 2192              	.LBB1134:
 2193              	.LBB1093:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 2194              		.loc 10 13 0
 2195 0b87 89F0     		mov	eax, esi	# tmp1694, D.73740
 2196 0b89 4189F2   		mov	r10d, esi	# tmp839, D.73740
 2197 0b8c 41C1FA1F 		sar	r10d, 31	# tmp839,
 2198              	.LBE1093:
 2199              	.LBE1134:
 2200              	.LBB1135:
 2201              	.LBB1080:
 2202 0b90 29D3     		sub	ebx, edx	# z, tmp834
 2203              	.LVL111:
 2204              	.LBE1080:
 2205              	.LBE1135:
 2206              	.LBB1136:
 2207              	.LBB1094:
 2208 0b92 41F7E8   		imul	r8d	# tmp1463
 2209 0b95 B8640000 		mov	eax, 100	#,
 2209      00
 2210 0b9a C1FA05   		sar	edx, 5	# z,
 2211 0b9d 4429D2   		sub	edx, r10d	# z, tmp839
 2212              	.LBE1094:
 2213              	.LBE1136:
 2214              	.LBE1161:
 2215              	.LBE1190:
 2216              	.LBE1242:
 2217              	.LBB1243:
 2218              	.LBB1041:
 2219              	.LBB1013:
 2220              	.LBB982:
 2221              	.LBB948:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 2222              		.loc 10 14 0
 2223 0ba0 4C63D3   		movsx	r10, ebx	# z, z
 2224              	.LBE948:
 2225              	.LBE982:
 2226              	.LBE1013:
 2227              	.LBE1041:
 2228              	.LBE1243:
 2229              	.LBB1244:
 2230              	.LBB1191:
 2231              	.LBB1162:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 2232              		.loc 10 20 0
 2233 0ba3 488B9C24 		mov	rbx, QWORD PTR [rsp+192]	# D.73741, %sfp
 2233      C0000000 
 2234              	.LBB1137:
 2235              	.LBB1095:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 2236              		.loc 10 13 0
 2237 0bab 0FAFD0   		imul	edx, eax	# tmp840,
 2238              	.LBE1095:
 2239              	.LBE1137:
 2240              	.LBE1162:
 2241              	.LBE1191:
 2242              	.LBE1244:
 2243              	.LBB1245:
 2244              	.LBB1042:
 2245              	.LBB1014:
 2246              	.LBB983:
 2247              	.LBB937:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 2248              		.loc 10 14 0
 2249 0bae 4963C7   		movsx	rax, r15d	# z, z
 2250              	.LBE937:
 2251              	.LBE983:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 2252              		.loc 10 20 0
 2253 0bb1 4C8BBC24 		mov	r15, QWORD PTR [rsp+288]	# D.73741, %sfp
 2253      20010000 
 2254              	.LBB984:
 2255              	.LBB949:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 2256              		.loc 10 14 0
 2257 0bb9 4901FA   		add	r10, rdi	# tmp889, tmp1468
 2258              	.LBE949:
 2259              	.LBE984:
 2260              	.LBE1014:
 2261              	.LBE1042:
 2262              	.LBE1245:
 2263              	.LBB1246:
 2264              	.LBB1192:
 2265              	.LBB1163:
 2266              	.LBB1138:
 2267              	.LBB1096:
  13:naive-integrator.hpp ****       z = (z+NZ)%NZ;
 2268              		.loc 10 13 0
 2269 0bbc 29D6     		sub	esi, edx	# z, tmp840
 2270              	.LVL112:
 2271              	.LBE1096:
 2272              	.LBE1138:
 2273              	.LBE1163:
 2274              	.LBE1192:
 2275              	.LBE1246:
 2276              	.LBB1247:
 2277              	.LBB1043:
 2278              	.LBB1015:
 2279              	.LBB985:
 2280              	.LBB938:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 2281              		.loc 10 14 0
 2282 0bbe 488D1407 		lea	rdx, [rdi+rax]	# tmp849,
 2283              	.LBE938:
 2284              	.LBE985:
 2285              	.LBB986:
 2286              	.LBB956:
 2287 0bc2 4863F6   		movsx	rsi, esi	# z, z
 2288              	.LBE956:
 2289              	.LBE986:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 2290              		.loc 10 20 0
 2291 0bc5 C4C17A10 		vmovss	xmm2, DWORD PTR [r12+rdx*4]	# tmp860, MEM[(float[40][100] *)_964]
 2291      1494
 2292              	.LBB987:
 2293              	.LBB957:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 2294              		.loc 10 14 0
 2295 0bcb 4801FE   		add	rsi, rdi	# tmp899, tmp1468
 2296              	.LBE957:
 2297              	.LBE987:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 2298              		.loc 10 20 0
 2299 0bce C4416A58 		vaddss	xmm14, xmm2, DWORD PTR [r15+rdx*4]	# D.73733, tmp860, MEM[(float[40][100] *)_965]
 2299      3497
 2300              	.LVL113:
 2301              	.LBB988:
 2302              	.LBB913:
  14:naive-integrator.hpp ****       return ar[x][y][z];
 2303              		.loc 10 14 0
 2304 0bd4 4D8D7C05 		lea	r15, [r13+0+rax]	# tmp869,
 2304      00
 2305              	.LVL114:
 2306              	.LBE913:
 2307              	.LBE988:
 2308              	.LBB989:
 2309              	.LBB925:
 2310 0bd9 48038424 		add	rax, QWORD PTR [rsp+224]	# tmp879, %sfp
 2310      E0000000 
 2311              	.LBE925:
 2312              	.LBE989:
 2313              	.LBE1015:
 2314              	.LBE1043:
 2315              	.LBE1247:
 2316              	.LBE1254:
  27:naive-integrator.hpp ****           for (int z=0;z<NZ;++z) {
 2317              		.loc 10 27 0
 2318 0be1 3B8C2400 		cmp	ecx, DWORD PTR [rsp+256]	# z, %sfp
 2318      010000
 2319              	.LBB1255:
 2320              	.LBB1248:
 2321              	.LBB1044:
 2322              	.LBB1016:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 2323              		.loc 10 20 0
 2324 0be8 C4810A58 		vaddss	xmm2, xmm14, DWORD PTR [r14+r15*4]	# D.73733, D.73733, MEM[(float[40][100] *)_966]
 2324      14BE
 2325 0bee C4416A58 		vaddss	xmm14, xmm2, DWORD PTR [r14+rax*4]	# D.73733, D.73733, MEM[(float[40][100] *)_966]
 2325      3486
 2326 0bf4 C4810A58 		vaddss	xmm2, xmm14, DWORD PTR [r14+r10*4]	# D.73733, D.73733, MEM[(float[40][100] *)_966]
 2326      1496
 2327 0bfa C4416A58 		vaddss	xmm14, xmm2, DWORD PTR [r14+rsi*4]	# D.73733, D.73733, MEM[(float[40][100] *)_966]
 2327      34B6
 2328 0c00 C4E2099D 		vfnmadd132ss	xmm1, xmm14, xmm7	# ret, D.73733, tmp1420
 2328      CF
 2329              	.LVL115:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 2330              		.loc 10 21 0
 2331 0c05 C5F014C9 		vunpcklps	xmm1, xmm1, xmm1	# ret, ret, ret
 2332 0c09 C5F85AD1 		vcvtps2pd	xmm2, xmm1	# D.73757, ret
 2333 0c0d C56B5EF3 		vdivsd	xmm14, xmm2, xmm3	# D.73757, D.73757, tmp1421
 2334              	.LBE1016:
 2335              	.LBE1044:
 2336              	.LBE1248:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 2337              		.loc 10 30 0
 2338 0c11 C4C15B59 		vmulsd	xmm2, xmm4, xmm12	# D.73757, D.73757, tmp1423
 2338      D4
 2339 0c16 C5FB59D2 		vmulsd	xmm2, xmm0, xmm2	# D.73757, D.73757, D.73757
 2340              	.LBB1249:
 2341              	.LBB1045:
 2342              	.LBB1017:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 2343              		.loc 10 21 0
 2344 0c1a C58B5ECB 		vdivsd	xmm1, xmm14, xmm3	# D.73757, D.73757, tmp1421
 2345              	.LBE1017:
 2346              	.LBE1045:
 2347              	.LBE1249:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 2348              		.loc 10 30 0
 2349 0c1e C4417B59 		vmulsd	xmm14, xmm0, xmm13	# D.73757, D.73757, tmp1422
 2349      F5
 2350 0c23 C4E2899B 		vfmsub132sd	xmm2, xmm14, xmm0	# D.73757, D.73757, D.73757
 2350      D0
 2351              	.LBB1250:
 2352              	.LBB1193:
 2353              	.LBB1164:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 2354              		.loc 10 20 0
 2355 0c28 C57A1034 		vmovss	xmm14, DWORD PTR [rbx+rdx*4]	# tmp947, MEM[(float[40][100] *)_949]
 2355      93
 2356 0c2d 488B9C24 		mov	rbx, QWORD PTR [rsp+296]	# D.73741, %sfp
 2356      28010000 
 2357              	.LVL116:
 2358              	.LBE1164:
 2359              	.LBE1193:
 2360              	.LBE1250:
  30:naive-integrator.hpp ****             auto dv_dt =  Fe * u*v*v - Fv*v     + Dv * lap(V,x,y,z);
 2361              		.loc 10 30 0
 2362 0c35 C4C2E999 		vfmadd132sd	xmm1, xmm2, xmm11	# D.73757, D.73757, tmp1424
 2362      CB
 2363              	.LVL117:
 2364              	.LBB1251:
 2365              	.LBB1194:
 2366              	.LBB1165:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 2367              		.loc 10 20 0
 2368 0c3a C58A5814 		vaddss	xmm2, xmm14, DWORD PTR [rbx+rdx*4]	# D.73733, tmp947, MEM[(float[40][100] *)_954]
 2368      93
 2369              	.LBE1165:
 2370              	.LBE1194:
 2371              	.LBE1251:
 2372              		.loc 10 32 0
 2373 0c3f C4E2F999 		vfmadd132sd	xmm1, xmm0, xmm6	# D.73757, D.73757, tmp1435
 2373      CE
 2374              	.LVL118:
 2375              	.LBB1252:
 2376              	.LBB1195:
 2377              	.LBB1166:
  20:naive-integrator.hpp ****       - 6*ar[x][y][z];
 2378              		.loc 10 20 0
 2379 0c44 C4016A58 		vaddss	xmm14, xmm2, DWORD PTR [r11+r15*4]	# D.73733, D.73733, MEM[(float[40][100] *)_961]
 2379      34BB
 2380 0c4a C4C10A58 		vaddss	xmm2, xmm14, DWORD PTR [r11+rax*4]	# D.73733, D.73733, MEM[(float[40][100] *)_961]
 2380      1483
 2381 0c50 C4016A58 		vaddss	xmm14, xmm2, DWORD PTR [r11+r10*4]	# D.73733, D.73733, MEM[(float[40][100] *)_961]
 2381      3493
 2382 0c56 C4C10A58 		vaddss	xmm2, xmm14, DWORD PTR [r11+rsi*4]	# D.73733, D.73733, MEM[(float[40][100] *)_961]
 2382      14B3
 2383 0c5c C4E251BD 		vfnmadd231ss	xmm2, xmm5, xmm7	# ret, u, tmp1420
 2383      D7
  21:naive-integrator.hpp ****       return ret / dx / dx;
 2384              		.loc 10 21 0
 2385 0c61 C56814F2 		vunpcklps	xmm14, xmm2, xmm2	# ret, ret, ret
 2386 0c65 C4C1785A 		vcvtps2pd	xmm2, xmm14	# D.73757, ret
 2386      D6
 2387 0c6a C56B5EF3 		vdivsd	xmm14, xmm2, xmm3	# D.73757, D.73757, tmp1421
 2388              	.LBE1166:
 2389              	.LBE1195:
 2390              	.LBE1252:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 2391              		.loc 10 29 0
 2392 0c6e C5AA5CED 		vsubss	xmm5, xmm10, xmm5	# D.73733, tmp1428, u
 2393              	.LVL119:
 2394              	.LBB1253:
 2395              	.LBB1196:
 2396              	.LBB1167:
  21:naive-integrator.hpp ****       return ret / dx / dx;
 2397              		.loc 10 21 0
 2398 0c72 C58B5ED3 		vdivsd	xmm2, xmm14, xmm3	# D.73757, D.73757, tmp1421
 2399              	.LBE1167:
 2400              	.LBE1196:
 2401              	.LBE1253:
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 2402              		.loc 10 29 0
 2403 0c76 C55014F5 		vunpcklps	xmm14, xmm5, xmm5	# D.73733, D.73733, D.73733
 2404 0c7a C4C1785A 		vcvtps2pd	xmm5, xmm14	# D.73757, D.73733
 2404      EE
 2405 0c7f C4415359 		vmulsd	xmm14, xmm5, xmm9	# D.73757, D.73757, tmp1425
 2405      F1
 2406 0c84 C4C15B59 		vmulsd	xmm5, xmm4, xmm8	# D.73757, D.73757, tmp1426
 2406      E8
 2407 0c89 C5D359E8 		vmulsd	xmm5, xmm5, xmm0	# D.73757, D.73757, D.73757
 2408 0c8d C4E28999 		vfmadd132sd	xmm5, xmm14, xmm0	# D.73757, D.73757, D.73757
 2408      E8
 2409              		.loc 10 32 0
 2410 0c92 C5FB12C1 		vmovddup	xmm0, xmm1	# tmp1737, D.73757
 2411 0c96 C5F95AC8 		vcvtpd2ps	xmm1, xmm0	# tmp1737, tmp1737
 2412 0c9a C4A17A11 		vmovss	DWORD PTR _ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7V_other[0+r9*4
 2412      0C8D0000 
 2412      0000
  29:naive-integrator.hpp ****             auto du_dt = -Fe * u*v*v + Fu*(1-u) + Du * lap(U,x,y,z);
 2413              		.loc 10 29 0
 2414 0ca4 C4C2D199 		vfmadd132sd	xmm2, xmm5, xmm15	# D.73757, D.73757, tmp1427
 2414      D7
  31:naive-integrator.hpp ****             U_other[x][y][z] = U[x][y][z] + dt*du_dt;
 2415              		.loc 10 31 0
 2416 0ca9 C4E2D999 		vfmadd132sd	xmm2, xmm4, xmm6	# D.73757, D.73757, tmp1435
 2416      D6
 2417 0cae C5FB12E2 		vmovddup	xmm4, xmm2	# tmp1736, D.73757
 2418 0cb2 C5F95AD4 		vcvtpd2ps	xmm2, xmm4	# tmp1736, tmp1736
 2419 0cb6 C4A17A11 		vmovss	DWORD PTR _ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7U_other[0+r9*4
 2419      148D0000 
 2419      0000
 2420              	.LBE1255:
  27:naive-integrator.hpp ****           for (int z=0;z<NZ;++z) {
 2421              		.loc 10 27 0
 2422 0cc0 0F853AFE 		jne	.L72	#,
 2422      FFFF
 2423              	.LVL120:
 2424              	.L71:
 2425              	.LBE897:
  26:naive-integrator.hpp ****         for (int y=0;y<NY;++y) {
 2426              		.loc 10 26 0
 2427 0cc6 838424A8 		add	DWORD PTR [rsp+168], 1	# %sfp,
 2427      00000001 
 2428              	.LVL121:
 2429 0cce 48814424 		add	QWORD PTR [rsp+120], 400	# %sfp,
 2429      78900100 
 2429      00
 2430 0cd7 48834424 		add	QWORD PTR [rsp+80], 100	# %sfp,
 2430      5064
 2431 0cdd 83BC24A8 		cmp	DWORD PTR [rsp+168], 40	# %sfp,
 2431      00000028 
 2432 0ce5 0F8585F4 		jne	.L79	#,
 2432      FFFF
 2433              	.LBE896:
  25:naive-integrator.hpp ****       for (int x=0;x<NX;++x) {
 2434              		.loc 10 25 0
 2435 0ceb 83442404 		add	DWORD PTR [rsp+4], 1	# %sfp,
 2435      01
 2436              	.LVL122:
 2437 0cf0 48818424 		add	QWORD PTR [rsp+136], 16000	# %sfp,
 2437      88000000 
 2437      803E0000 
 2438 0cfc 48814424 		add	QWORD PTR [rsp+64], 16000	# %sfp,
 2438      40803E00 
 2438      00
 2439 0d05 48818424 		add	QWORD PTR [rsp+144], 16000	# %sfp,
 2439      90000000 
 2439      803E0000 
 2440 0d11 837C2404 		cmp	DWORD PTR [rsp+4], 50	# %sfp,
 2440      32
 2441 0d16 0F854EF3 		jne	.L68	#,
 2441      FFFF
 2442 0d1c 4531F6   		xor	r14d, r14d	# ivtmp.514
 2443 0d1f C5F877   		vzeroupper
 2444              	.L78:
 2445              	.LVL123:
 2446 0d22 4D8DAE00 		lea	r13, U[r14]	# D.73735,
 2446      000000
 2447              	.LBB1260:
 2448              	.LBB1258:
 2449              	.LBB1256:
 2450              		.loc 10 32 0
 2451 0d29 4531FF   		xor	r15d, r15d	# ivtmp.506
 2452 0d2c 4D8DA600 		lea	r12, _ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7U_other[r14]	# D.73735
 2452      000000
 2453              	.LVL124:
 2454              		.p2align 4,,10
 2455 0d33 0F1F4400 		.p2align 3
 2455      00
 2456              	.L83:
 2457 0d38 4B8D7C3D 		lea	rdi, [r13+0+r15]	# D.73735,
 2457      00
 2458 0d3d BA900100 		mov	edx, 400	#,
 2458      00
 2459 0d42 4B8D343C 		lea	rsi, [r12+r15]	# D.73735,
 2460 0d46 E8000000 		call	memcpy	#
 2460      00
 2461              	.LVL125:
 2462 0d4b 4D8D9F90 		lea	r11, [r15+400]	# tmp1532,
 2462      010000
 2463 0d52 BA900100 		mov	edx, 400	#,
 2463      00
 2464 0d57 4B8D7C1D 		lea	rdi, [r13+0+r11]	# D.73735,
 2464      00
 2465 0d5c 4B8D341C 		lea	rsi, [r12+r11]	# D.73735,
 2466 0d60 E8000000 		call	memcpy	#
 2466      00
 2467              	.LVL126:
 2468 0d65 498D8F20 		lea	rcx, [r15+800]	# ivtmp.506,
 2468      030000
 2469 0d6c BA900100 		mov	edx, 400	#,
 2469      00
 2470 0d71 498D7C0D 		lea	rdi, [r13+0+rcx]	# D.73735,
 2470      00
 2471 0d76 498D340C 		lea	rsi, [r12+rcx]	# D.73735,
 2472 0d7a E8000000 		call	memcpy	#
 2472      00
 2473              	.LVL127:
 2474 0d7f 4D8D87B0 		lea	r8, [r15+1200]	# ivtmp.506,
 2474      040000
 2475 0d86 BA900100 		mov	edx, 400	#,
 2475      00
 2476 0d8b 4B8D7C05 		lea	rdi, [r13+0+r8]	# D.73735,
 2476      00
 2477 0d90 4B8D3404 		lea	rsi, [r12+r8]	# D.73735,
 2478 0d94 E8000000 		call	memcpy	#
 2478      00
 2479              	.LVL128:
 2480 0d99 4D8D8F40 		lea	r9, [r15+1600]	# ivtmp.506,
 2480      060000
 2481 0da0 BA900100 		mov	edx, 400	#,
 2481      00
 2482 0da5 4B8D7C0D 		lea	rdi, [r13+0+r9]	# D.73735,
 2482      00
 2483 0daa 4B8D340C 		lea	rsi, [r12+r9]	# D.73735,
 2484 0dae E8000000 		call	memcpy	#
 2484      00
 2485              	.LVL129:
 2486 0db3 498D87D0 		lea	rax, [r15+2000]	# ivtmp.506,
 2486      070000
 2487 0dba BA900100 		mov	edx, 400	#,
 2487      00
 2488 0dbf 498D7C05 		lea	rdi, [r13+0+rax]	# D.73735,
 2488      00
 2489 0dc4 498D3404 		lea	rsi, [r12+rax]	# D.73735,
 2490 0dc8 E8000000 		call	memcpy	#
 2490      00
 2491              	.LVL130:
 2492 0dcd 498D9760 		lea	rdx, [r15+2400]	# ivtmp.506,
 2492      090000
 2493 0dd4 498D7C15 		lea	rdi, [r13+0+rdx]	# D.73735,
 2493      00
 2494 0dd9 498D3414 		lea	rsi, [r12+rdx]	# D.73735,
 2495 0ddd BA900100 		mov	edx, 400	#,
 2495      00
 2496 0de2 E8000000 		call	memcpy	#
 2496      00
 2497              	.LVL131:
 2498 0de7 4D8D97F0 		lea	r10, [r15+2800]	# ivtmp.506,
 2498      0A0000
 2499 0dee BA900100 		mov	edx, 400	#,
 2499      00
 2500 0df3 4B8D7C15 		lea	rdi, [r13+0+r10]	# D.73735,
 2500      00
 2501 0df8 4981C780 		add	r15, 3200	# ivtmp.506,
 2501      0C0000
 2502 0dff 4B8D3414 		lea	rsi, [r12+r10]	# D.73735,
 2503 0e03 E8000000 		call	memcpy	#
 2503      00
 2504              	.LVL132:
 2505              	.LBE1256:
 2506              	.LBE1258:
 2507              	.LBE1260:
 2508              	.LBE895:
 2509              	.LBB1262:
 2510              	.LBB1263:
  33:naive-integrator.hpp ****           }
  34:naive-integrator.hpp ****         }
  35:naive-integrator.hpp ****       }
  36:naive-integrator.hpp ****       for (int x=0;x<NX;++x) {
  37:naive-integrator.hpp ****         for (int y=0;y<NY;++y) {
 2511              		.loc 10 37 0
 2512 0e08 4981FF80 		cmp	r15, 16000	# ivtmp.506,
 2512      3E0000
 2513 0e0f 0F8523FF 		jne	.L83	#,
 2513      FFFF
 2514              	.LVL133:
 2515 0e15 4981C680 		add	r14, 16000	# ivtmp.514,
 2515      3E0000
 2516              	.LBE1263:
  36:naive-integrator.hpp ****       for (int x=0;x<NX;++x) {
 2517              		.loc 10 36 0
 2518 0e1c 4981FE00 		cmp	r14, 800000	# ivtmp.514,
 2518      350C00
 2519 0e23 0F85F9FE 		jne	.L78	#,
 2519      FFFF
 2520 0e29 4531E4   		xor	r12d, r12d	# ivtmp.498
 2521              	.L82:
 2522              	.LVL134:
 2523 0e2c 4D8DBC24 		lea	r15, V[r12]	# D.73735,
 2523      00000000 
 2524              	.LBE1262:
 2525              	.LBB1264:
  25:naive-integrator.hpp ****       for (int x=0;x<NX;++x) {
 2526              		.loc 10 25 0
 2527 0e34 31DB     		xor	ebx, ebx	# ivtmp.490
 2528 0e36 4D8DAC24 		lea	r13, _ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7V_other[r12]	# D.73735
 2528      00000000 
 2529              	.LVL135:
 2530 0e3e 6690     		.p2align 4,,10
 2531              		.p2align 3
 2532              	.L86:
 2533 0e40 498D3C1F 		lea	rdi, [r15+rbx]	# D.73735,
 2534 0e44 BA900100 		mov	edx, 400	#,
 2534      00
 2535 0e49 498D741D 		lea	rsi, [r13+0+rbx]	# D.73735,
 2535      00
 2536 0e4e E8000000 		call	memcpy	#
 2536      00
 2537              	.LVL136:
 2538 0e53 488DB390 		lea	rsi, [rbx+400]	# tmp1531,
 2538      010000
 2539 0e5a BA900100 		mov	edx, 400	#,
 2539      00
 2540 0e5f 498D3C37 		lea	rdi, [r15+rsi]	# D.73735,
 2541 0e63 4C8DB320 		lea	r14, [rbx+800]	# ivtmp.490,
 2541      030000
 2542 0e6a 498D7435 		lea	rsi, [r13+0+rsi]	# D.73735,
 2542      00
 2543 0e6f E8000000 		call	memcpy	#
 2543      00
 2544              	.LVL137:
 2545 0e74 4B8D3C37 		lea	rdi, [r15+r14]	# D.73735,
 2546 0e78 BA900100 		mov	edx, 400	#,
 2546      00
 2547 0e7d 4B8D7435 		lea	rsi, [r13+0+r14]	# D.73735,
 2547      00
 2548 0e82 E8000000 		call	memcpy	#
 2548      00
 2549              	.LVL138:
 2550 0e87 4C8D9BB0 		lea	r11, [rbx+1200]	# ivtmp.490,
 2550      040000
 2551 0e8e BA900100 		mov	edx, 400	#,
 2551      00
 2552 0e93 4B8D3C1F 		lea	rdi, [r15+r11]	# D.73735,
 2553 0e97 4B8D741D 		lea	rsi, [r13+0+r11]	# D.73735,
 2553      00
 2554 0e9c E8000000 		call	memcpy	#
 2554      00
 2555              	.LVL139:
 2556 0ea1 488D8B40 		lea	rcx, [rbx+1600]	# ivtmp.490,
 2556      060000
 2557 0ea8 BA900100 		mov	edx, 400	#,
 2557      00
 2558 0ead 498D3C0F 		lea	rdi, [r15+rcx]	# D.73735,
 2559 0eb1 498D740D 		lea	rsi, [r13+0+rcx]	# D.73735,
 2559      00
 2560 0eb6 E8000000 		call	memcpy	#
 2560      00
 2561              	.LVL140:
 2562 0ebb 4C8D83D0 		lea	r8, [rbx+2000]	# ivtmp.490,
 2562      070000
 2563 0ec2 BA900100 		mov	edx, 400	#,
 2563      00
 2564 0ec7 4B8D3C07 		lea	rdi, [r15+r8]	# D.73735,
 2565 0ecb 4B8D7405 		lea	rsi, [r13+0+r8]	# D.73735,
 2565      00
 2566 0ed0 E8000000 		call	memcpy	#
 2566      00
 2567              	.LVL141:
 2568 0ed5 4C8D8B60 		lea	r9, [rbx+2400]	# ivtmp.490,
 2568      090000
 2569 0edc BA900100 		mov	edx, 400	#,
 2569      00
 2570 0ee1 4B8D3C0F 		lea	rdi, [r15+r9]	# D.73735,
 2571 0ee5 4B8D740D 		lea	rsi, [r13+0+r9]	# D.73735,
 2571      00
 2572 0eea E8000000 		call	memcpy	#
 2572      00
 2573              	.LVL142:
 2574 0eef 488D83F0 		lea	rax, [rbx+2800]	# ivtmp.490,
 2574      0A0000
 2575 0ef6 BA900100 		mov	edx, 400	#,
 2575      00
 2576 0efb 498D3C07 		lea	rdi, [r15+rax]	# D.73735,
 2577 0eff 4881C380 		add	rbx, 3200	# ivtmp.490,
 2577      0C0000
 2578 0f06 498D7405 		lea	rsi, [r13+0+rax]	# D.73735,
 2578      00
 2579 0f0b E8000000 		call	memcpy	#
 2579      00
 2580              	.LVL143:
 2581              	.LBE1264:
 2582              	.LBB1265:
 2583              	.LBB1266:
  38:naive-integrator.hpp ****           for (int z=0;z<NZ;++z) {
  39:naive-integrator.hpp ****             U[x][y][z]=U_other[x][y][z];
  40:naive-integrator.hpp ****           }
  41:naive-integrator.hpp ****         }
  42:naive-integrator.hpp ****       }
  43:naive-integrator.hpp ****       for (int x=0;x<NX;++x) {
  44:naive-integrator.hpp ****         for (int y=0;y<NY;++y) {
 2584              		.loc 10 44 0
 2585 0f10 4881FB80 		cmp	rbx, 16000	# ivtmp.490,
 2585      3E0000
 2586 0f17 0F8523FF 		jne	.L86	#,
 2586      FFFF
 2587              	.LVL144:
 2588 0f1d 4981C480 		add	r12, 16000	# ivtmp.498,
 2588      3E0000
 2589              	.LBE1266:
  43:naive-integrator.hpp ****       for (int x=0;x<NX;++x) {
 2590              		.loc 10 43 0
 2591 0f24 4981FC00 		cmp	r12, 800000	# ivtmp.498,
 2591      350C00
 2592 0f2b 0F85FBFE 		jne	.L82	#,
 2592      FFFF
 2593              	.LVL145:
 2594              	.LBE1265:
 2595              	.LBE894:
 2596              	.LBE893:
 2597              	.LBE892:
 2598              	.LBB1270:
 2599              	.LBB1271:
 2600              	.LBB1272:
 2601              	.LBB1273:
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
 2602              		.loc 3 456 0
 2603 0f31 488DBC24 		lea	rdi, [rsp+472]	# tmp1319,
 2603      D8010000 
 2604              	.LVL146:
 2605 0f39 E8000000 		call	_ZNSt8ios_baseC2Ev	#
 2605      00
 2606              	.LVL147:
 2607              	.LBE1273:
 2608              	.LBE1272:
 2609              	.LBB1277:
 2610              	.LBB1278:
 385:/usr/include/c++/4.8.2/ostream ****       { this->init(0); }
 2611              		.loc 1 385 0
 2612 0f3e 488B1500 		mov	rdx, QWORD PTR _ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE[rip+8]	# tmp1829, MEM[(co
 2612      000000
 2613 0f45 31F6     		xor	esi, esi	#
 2614              	.LBE1278:
 2615              	.LBE1277:
 2616              	.LBB1282:
 2617              	.LBB1274:
 2618              		.loc 3 456 0
 2619 0f47 C68424B8 		mov	BYTE PTR [rsp+696], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_fill,
 2619      02000000 
 2620              	.LBE1274:
 2621              	.LBE1282:
 2622              	.LBB1283:
 2623              	.LBB1279:
 385:/usr/include/c++/4.8.2/ostream ****       { this->init(0); }
 2624              		.loc 1 385 0
 2625 0f4f 488DBC24 		lea	rdi, [rsp+384]	# D.73742,
 2625      80010000 
 2626 0f57 4C8B1500 		mov	r10, QWORD PTR _ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE[rip+16]	# tmp1832, MEM[(c
 2626      000000
 2627              	.LBE1279:
 2628              	.LBE1283:
 2629              	.LBB1284:
 2630              	.LBB1275:
 2631              		.loc 3 456 0
 2632 0f5e 48C78424 		mov	QWORD PTR [rsp+472], OFFSET FLAT:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16	# MEM[(struct basic_
 2632      D8010000 
 2632      00000000 
 2633 0f6a 48C78424 		mov	QWORD PTR [rsp+688], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_tie,
 2633      B0020000 
 2633      00000000 
 2634              	.LBE1275:
 2635              	.LBE1284:
 2636              	.LBB1285:
 2637              	.LBB1280:
 385:/usr/include/c++/4.8.2/ostream ****       { this->init(0); }
 2638              		.loc 1 385 0
 2639 0f76 48037AE8 		add	rdi, QWORD PTR [rdx-24]	# D.73742, MEM[(long int *)_915 + -24B]
 2640              	.LBE1280:
 2641              	.LBE1285:
 2642              	.LBB1286:
 2643              	.LBB1276:
 2644              		.loc 3 456 0
 2645 0f7a C68424B9 		mov	BYTE PTR [rsp+697], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_fill_init,
 2645      02000000 
 2646 0f82 48C78424 		mov	QWORD PTR [rsp+704], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_streambuf,
 2646      C0020000 
 2646      00000000 
 2647 0f8e 48C78424 		mov	QWORD PTR [rsp+712], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_ctype,
 2647      C8020000 
 2647      00000000 
 2648 0f9a 48C78424 		mov	QWORD PTR [rsp+720], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_num_put,
 2648      D0020000 
 2648      00000000 
 2649 0fa6 48C78424 		mov	QWORD PTR [rsp+728], 0	# MEM[(struct basic_ios *)&ostr + 88B]._M_num_get,
 2649      D8020000 
 2649      00000000 
 2650              	.LVL148:
 2651              	.LBE1276:
 2652              	.LBE1286:
 2653              	.LBB1287:
 2654              	.LBB1281:
 385:/usr/include/c++/4.8.2/ostream ****       { this->init(0); }
 2655              		.loc 1 385 0
 2656 0fb2 48899424 		mov	QWORD PTR [rsp+384], rdx	# MEM[(struct basic_ostream *)&ostr]._vptr.basic_ostream, tmp1829
 2656      80010000 
 2657 0fba 4C8917   		mov	QWORD PTR [rdi], r10	# _227->D.29168._vptr.ios_base, tmp1832
 2658              	.LEHB0:
 2659 0fbd E8000000 		call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	#
 2659      00
 2660              	.LEHE0:
 2661              	.LVL149:
 2662              	.LBE1281:
 2663              	.LBE1287:
 2664              	.LBB1288:
 2665              	.LBB1289:
 2666              	.LBB1290:
 2667              	.LBB1291:
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
 2668              		.loc 6 466 0
 2669 0fc2 488DBC24 		lea	rdi, [rsp+448]	# tmp1323,
 2669      C0010000 
 2670              	.LBE1291:
 2671              	.LBE1290:
 2672              	.LBE1289:
 2673              	.LBE1288:
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
 2674              		.loc 4 424 0
 2675 0fca 48C78424 		mov	QWORD PTR [rsp+384], OFFSET FLAT:_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+24	# os
 2675      80010000 
 2675      00000000 
 2676 0fd6 48C78424 		mov	QWORD PTR [rsp+472], OFFSET FLAT:_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+64	# ME
 2676      D8010000 
 2676      00000000 
 2677              	.LVL150:
 2678              	.LBB1300:
 2679              	.LBB1297:
 2680              	.LBB1293:
 2681              	.LBB1292:
 2682              		.loc 6 466 0
 2683 0fe2 48C78424 		mov	QWORD PTR [rsp+392], OFFSET FLAT:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16	# MEM[(struct
 2683      88010000 
 2683      00000000 
 2684 0fee 48C78424 		mov	QWORD PTR [rsp+400], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_in_beg,
 2684      90010000 
 2684      00000000 
 2685 0ffa 48C78424 		mov	QWORD PTR [rsp+408], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_in_cur,
 2685      98010000 
 2685      00000000 
 2686 1006 48C78424 		mov	QWORD PTR [rsp+416], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_in_end,
 2686      A0010000 
 2686      00000000 
 2687 1012 48C78424 		mov	QWORD PTR [rsp+424], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_out_beg,
 2687      A8010000 
 2687      00000000 
 2688 101e 48C78424 		mov	QWORD PTR [rsp+432], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_out_cur,
 2688      B0010000 
 2688      00000000 
 2689 102a 48C78424 		mov	QWORD PTR [rsp+440], 0	# MEM[(struct basic_streambuf *)&ostr + 8B]._M_out_end,
 2689      B8010000 
 2689      00000000 
 2690 1036 E8000000 		call	_ZNSt6localeC1Ev	#
 2690      00
 2691              	.LVL151:
 2692              	.LBE1292:
 2693              	.LBE1293:
 2694              	.LBE1297:
 2695              	.LBE1300:
 425:/usr/include/c++/4.8.2/sstream ****       { this->init(&_M_stringbuf); }
 2696              		.loc 4 425 0
 2697 103b 488DBC24 		lea	rdi, [rsp+384]	# tmp1834,
 2697      80010000 
 2698              	.LBB1301:
 2699              	.LBB1298:
  99:/usr/include/c++/4.8.2/sstream ****       : __streambuf_type(), _M_mode(__mode), _M_string()
 2700              		.loc 4 99 0
 2701 1043 48C78424 		mov	QWORD PTR [rsp+392], OFFSET FLAT:_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16	# MEM[(s
 2701      88010000 
 2701      00000000 
 2702 104f C78424C8 		mov	DWORD PTR [rsp+456], 16	# MEM[(struct basic_stringbuf *)&ostr + 8B]._M_mode,
 2702      01000010 
 2702      000000
 2703              	.LVL152:
 2704              	.LBE1298:
 2705              	.LBE1301:
 2706              		.loc 4 425 0
 2707 105a 488D7708 		lea	rsi, [rdi+8]	# tmp1325,
 2708              	.LBB1302:
 2709              	.LBB1299:
 2710              	.LBB1294:
 2711              	.LBB1295:
 2712              	.LBB1296:
 275:/usr/include/c++/4.8.2/bits/basic_string.h **** 	: _Alloc(__a), _M_p(__dat) { }
 2713              		.loc 5 275 0
 2714 105e 48C78424 		mov	QWORD PTR [rsp+464], OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE+24	# MEM[(struct _Alloc_hid
 2714      D0010000 
 2714      00000000 
 2715              	.LVL153:
 2716              	.LBE1296:
 2717              	.LBE1295:
 2718              	.LBE1294:
 2719              	.LBE1299:
 2720              	.LBE1302:
 2721              		.loc 4 425 0
 2722 106a 488D7F58 		lea	rdi, [rdi+88]	# tmp1327,
 2723              	.LEHB1:
 2724 106e E8000000 		call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E	#
 2724      00
 2725              	.LEHE1:
 2726              	.LVL154:
 2727              	.LBE1271:
 2728              	.LBE1270:
  21:main.cpp      ****     integrator.proceed(1, U,V);
  22:main.cpp      **** 
  23:main.cpp      ****     std::ostringstream ostr;
  24:main.cpp      ****     ostr << t << "\n";
 2729              		.loc 9 24 0
 2730 1073 8B3424   		mov	esi, DWORD PTR [rsp]	#, %sfp
 2731 1076 488DBC24 		lea	rdi, [rsp+384]	# tmp1841,
 2731      80010000 
 2732              	.LEHB2:
 2733 107e E8000000 		call	_ZNSolsEi	#
 2733      00
 2734              	.LVL155:
 2735              	.LBB1309:
 2736              	.LBB1310:
 535:/usr/include/c++/4.8.2/ostream **** 	__ostream_insert(__out, __s,
 2737              		.loc 1 535 0
 2738 1083 BA010000 		mov	edx, 1	#,
 2738      00
 2739 1088 BE000000 		mov	esi, OFFSET FLAT:.LC32	#,
 2739      00
 2740 108d 4889C7   		mov	rdi, rax	#, D.73732
 2741 1090 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
 2741      00
 2742              	.LVL156:
 2743 1095 4531ED   		xor	r13d, r13d	# ivtmp.482
 2744              	.L90:
 2745              	.LVL157:
 2746              	.LBE1310:
 2747              	.LBE1309:
 2748              	.LBB1311:
 2749              	.LBB1312:
 2750              	.LBB1313:
  25:main.cpp      ****     for (int y=0;y<NY;++y) {
  26:main.cpp      ****       for (int z=0;z<NZ;++z) {
  27:main.cpp      ****         ostr<<int(std::floor(10*U[NX/2][y][z]));
 2751              		.loc 9 27 0 discriminator 1
 2752 1098 C5FA103D 		vmovss	xmm7, DWORD PTR .LC33[rip]	# tmp1847,
 2752      00000000 
 2753 10a0 C4C14259 		vmulss	xmm0, xmm7, DWORD PTR U[r13+400000]	# D.73733, tmp1847, MEM[symbol: U, base: ivtmp.482_109,
 2753      85000000 
 2753      00
 2754              	.LBB1314:
 2755              	.LBB1315:
 2756              		.file 11 "/usr/include/c++/4.8.2/cmath"
   1:/usr/include/c++/4.8.2/cmath **** // -*- C++ -*- C forwarding header.
   2:/usr/include/c++/4.8.2/cmath **** 
   3:/usr/include/c++/4.8.2/cmath **** // Copyright (C) 1997-2013 Free Software Foundation, Inc.
   4:/usr/include/c++/4.8.2/cmath **** //
   5:/usr/include/c++/4.8.2/cmath **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/4.8.2/cmath **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/4.8.2/cmath **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/4.8.2/cmath **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/4.8.2/cmath **** // any later version.
  10:/usr/include/c++/4.8.2/cmath **** 
  11:/usr/include/c++/4.8.2/cmath **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/4.8.2/cmath **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/4.8.2/cmath **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/4.8.2/cmath **** // GNU General Public License for more details.
  15:/usr/include/c++/4.8.2/cmath **** 
  16:/usr/include/c++/4.8.2/cmath **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/4.8.2/cmath **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/4.8.2/cmath **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/4.8.2/cmath **** 
  20:/usr/include/c++/4.8.2/cmath **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/4.8.2/cmath **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/4.8.2/cmath **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/4.8.2/cmath **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/4.8.2/cmath **** 
  25:/usr/include/c++/4.8.2/cmath **** /** @file include/cmath
  26:/usr/include/c++/4.8.2/cmath ****  *  This is a Standard C++ Library file.  You should @c \#include this file
  27:/usr/include/c++/4.8.2/cmath ****  *  in your programs, rather than any of the @a *.h implementation files.
  28:/usr/include/c++/4.8.2/cmath ****  *
  29:/usr/include/c++/4.8.2/cmath ****  *  This is the C++ version of the Standard C Library header @c math.h,
  30:/usr/include/c++/4.8.2/cmath ****  *  and its contents are (mostly) the same as that header, but are all
  31:/usr/include/c++/4.8.2/cmath ****  *  contained in the namespace @c std (except for names which are defined
  32:/usr/include/c++/4.8.2/cmath ****  *  as macros in C).
  33:/usr/include/c++/4.8.2/cmath ****  */
  34:/usr/include/c++/4.8.2/cmath **** 
  35:/usr/include/c++/4.8.2/cmath **** //
  36:/usr/include/c++/4.8.2/cmath **** // ISO C++ 14882: 26.5  C library
  37:/usr/include/c++/4.8.2/cmath **** //
  38:/usr/include/c++/4.8.2/cmath **** 
  39:/usr/include/c++/4.8.2/cmath **** #pragma GCC system_header
  40:/usr/include/c++/4.8.2/cmath **** 
  41:/usr/include/c++/4.8.2/cmath **** #include <bits/c++config.h>
  42:/usr/include/c++/4.8.2/cmath **** #include <bits/cpp_type_traits.h>
  43:/usr/include/c++/4.8.2/cmath **** #include <ext/type_traits.h>
  44:/usr/include/c++/4.8.2/cmath **** #include <math.h>
  45:/usr/include/c++/4.8.2/cmath **** 
  46:/usr/include/c++/4.8.2/cmath **** #ifndef _GLIBCXX_CMATH
  47:/usr/include/c++/4.8.2/cmath **** #define _GLIBCXX_CMATH 1
  48:/usr/include/c++/4.8.2/cmath **** 
  49:/usr/include/c++/4.8.2/cmath **** // Get rid of those macros defined in <math.h> in lieu of real functions.
  50:/usr/include/c++/4.8.2/cmath **** #undef abs
  51:/usr/include/c++/4.8.2/cmath **** #undef div
  52:/usr/include/c++/4.8.2/cmath **** #undef acos
  53:/usr/include/c++/4.8.2/cmath **** #undef asin
  54:/usr/include/c++/4.8.2/cmath **** #undef atan
  55:/usr/include/c++/4.8.2/cmath **** #undef atan2
  56:/usr/include/c++/4.8.2/cmath **** #undef ceil
  57:/usr/include/c++/4.8.2/cmath **** #undef cos
  58:/usr/include/c++/4.8.2/cmath **** #undef cosh
  59:/usr/include/c++/4.8.2/cmath **** #undef exp
  60:/usr/include/c++/4.8.2/cmath **** #undef fabs
  61:/usr/include/c++/4.8.2/cmath **** #undef floor
  62:/usr/include/c++/4.8.2/cmath **** #undef fmod
  63:/usr/include/c++/4.8.2/cmath **** #undef frexp
  64:/usr/include/c++/4.8.2/cmath **** #undef ldexp
  65:/usr/include/c++/4.8.2/cmath **** #undef log
  66:/usr/include/c++/4.8.2/cmath **** #undef log10
  67:/usr/include/c++/4.8.2/cmath **** #undef modf
  68:/usr/include/c++/4.8.2/cmath **** #undef pow
  69:/usr/include/c++/4.8.2/cmath **** #undef sin
  70:/usr/include/c++/4.8.2/cmath **** #undef sinh
  71:/usr/include/c++/4.8.2/cmath **** #undef sqrt
  72:/usr/include/c++/4.8.2/cmath **** #undef tan
  73:/usr/include/c++/4.8.2/cmath **** #undef tanh
  74:/usr/include/c++/4.8.2/cmath **** 
  75:/usr/include/c++/4.8.2/cmath **** namespace std _GLIBCXX_VISIBILITY(default)
  76:/usr/include/c++/4.8.2/cmath **** {
  77:/usr/include/c++/4.8.2/cmath **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  78:/usr/include/c++/4.8.2/cmath **** 
  79:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
  80:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR double
  81:/usr/include/c++/4.8.2/cmath ****   abs(double __x)
  82:/usr/include/c++/4.8.2/cmath ****   { return __builtin_fabs(__x); }
  83:/usr/include/c++/4.8.2/cmath **** #endif
  84:/usr/include/c++/4.8.2/cmath **** 
  85:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
  86:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
  87:/usr/include/c++/4.8.2/cmath ****   abs(float __x)
  88:/usr/include/c++/4.8.2/cmath ****   { return __builtin_fabsf(__x); }
  89:/usr/include/c++/4.8.2/cmath **** 
  90:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR long double
  91:/usr/include/c++/4.8.2/cmath ****   abs(long double __x)
  92:/usr/include/c++/4.8.2/cmath ****   { return __builtin_fabsl(__x); }
  93:/usr/include/c++/4.8.2/cmath **** #endif
  94:/usr/include/c++/4.8.2/cmath **** 
  95:/usr/include/c++/4.8.2/cmath ****   template<typename _Tp>
  96:/usr/include/c++/4.8.2/cmath ****     inline _GLIBCXX_CONSTEXPR
  97:/usr/include/c++/4.8.2/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
  98:/usr/include/c++/4.8.2/cmath ****                                     double>::__type
  99:/usr/include/c++/4.8.2/cmath ****     abs(_Tp __x)
 100:/usr/include/c++/4.8.2/cmath ****     { return __builtin_fabs(__x); }
 101:/usr/include/c++/4.8.2/cmath **** 
 102:/usr/include/c++/4.8.2/cmath ****   using ::acos;
 103:/usr/include/c++/4.8.2/cmath **** 
 104:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 105:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
 106:/usr/include/c++/4.8.2/cmath ****   acos(float __x)
 107:/usr/include/c++/4.8.2/cmath ****   { return __builtin_acosf(__x); }
 108:/usr/include/c++/4.8.2/cmath **** 
 109:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 110:/usr/include/c++/4.8.2/cmath ****   acos(long double __x)
 111:/usr/include/c++/4.8.2/cmath ****   { return __builtin_acosl(__x); }
 112:/usr/include/c++/4.8.2/cmath **** #endif
 113:/usr/include/c++/4.8.2/cmath **** 
 114:/usr/include/c++/4.8.2/cmath ****   template<typename _Tp>
 115:/usr/include/c++/4.8.2/cmath ****     inline _GLIBCXX_CONSTEXPR
 116:/usr/include/c++/4.8.2/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 117:/usr/include/c++/4.8.2/cmath ****                                     double>::__type
 118:/usr/include/c++/4.8.2/cmath ****     acos(_Tp __x)
 119:/usr/include/c++/4.8.2/cmath ****     { return __builtin_acos(__x); }
 120:/usr/include/c++/4.8.2/cmath **** 
 121:/usr/include/c++/4.8.2/cmath ****   using ::asin;
 122:/usr/include/c++/4.8.2/cmath **** 
 123:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 124:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
 125:/usr/include/c++/4.8.2/cmath ****   asin(float __x)
 126:/usr/include/c++/4.8.2/cmath ****   { return __builtin_asinf(__x); }
 127:/usr/include/c++/4.8.2/cmath **** 
 128:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 129:/usr/include/c++/4.8.2/cmath ****   asin(long double __x)
 130:/usr/include/c++/4.8.2/cmath ****   { return __builtin_asinl(__x); }
 131:/usr/include/c++/4.8.2/cmath **** #endif
 132:/usr/include/c++/4.8.2/cmath **** 
 133:/usr/include/c++/4.8.2/cmath ****   template<typename _Tp>
 134:/usr/include/c++/4.8.2/cmath ****     inline _GLIBCXX_CONSTEXPR
 135:/usr/include/c++/4.8.2/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 136:/usr/include/c++/4.8.2/cmath ****                                     double>::__type
 137:/usr/include/c++/4.8.2/cmath ****     asin(_Tp __x)
 138:/usr/include/c++/4.8.2/cmath ****     { return __builtin_asin(__x); }
 139:/usr/include/c++/4.8.2/cmath **** 
 140:/usr/include/c++/4.8.2/cmath ****   using ::atan;
 141:/usr/include/c++/4.8.2/cmath **** 
 142:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 143:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
 144:/usr/include/c++/4.8.2/cmath ****   atan(float __x)
 145:/usr/include/c++/4.8.2/cmath ****   { return __builtin_atanf(__x); }
 146:/usr/include/c++/4.8.2/cmath **** 
 147:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 148:/usr/include/c++/4.8.2/cmath ****   atan(long double __x)
 149:/usr/include/c++/4.8.2/cmath ****   { return __builtin_atanl(__x); }
 150:/usr/include/c++/4.8.2/cmath **** #endif
 151:/usr/include/c++/4.8.2/cmath **** 
 152:/usr/include/c++/4.8.2/cmath ****   template<typename _Tp>
 153:/usr/include/c++/4.8.2/cmath ****     inline _GLIBCXX_CONSTEXPR
 154:/usr/include/c++/4.8.2/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 155:/usr/include/c++/4.8.2/cmath ****                                     double>::__type
 156:/usr/include/c++/4.8.2/cmath ****     atan(_Tp __x)
 157:/usr/include/c++/4.8.2/cmath ****     { return __builtin_atan(__x); }
 158:/usr/include/c++/4.8.2/cmath **** 
 159:/usr/include/c++/4.8.2/cmath ****   using ::atan2;
 160:/usr/include/c++/4.8.2/cmath **** 
 161:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 162:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
 163:/usr/include/c++/4.8.2/cmath ****   atan2(float __y, float __x)
 164:/usr/include/c++/4.8.2/cmath ****   { return __builtin_atan2f(__y, __x); }
 165:/usr/include/c++/4.8.2/cmath **** 
 166:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 167:/usr/include/c++/4.8.2/cmath ****   atan2(long double __y, long double __x)
 168:/usr/include/c++/4.8.2/cmath ****   { return __builtin_atan2l(__y, __x); }
 169:/usr/include/c++/4.8.2/cmath **** #endif
 170:/usr/include/c++/4.8.2/cmath **** 
 171:/usr/include/c++/4.8.2/cmath ****   template<typename _Tp, typename _Up>
 172:/usr/include/c++/4.8.2/cmath ****     inline _GLIBCXX_CONSTEXPR
 173:/usr/include/c++/4.8.2/cmath ****     typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
 174:/usr/include/c++/4.8.2/cmath ****     atan2(_Tp __y, _Up __x)
 175:/usr/include/c++/4.8.2/cmath ****     {
 176:/usr/include/c++/4.8.2/cmath ****       typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
 177:/usr/include/c++/4.8.2/cmath ****       return atan2(__type(__y), __type(__x));
 178:/usr/include/c++/4.8.2/cmath ****     }
 179:/usr/include/c++/4.8.2/cmath **** 
 180:/usr/include/c++/4.8.2/cmath ****   using ::ceil;
 181:/usr/include/c++/4.8.2/cmath **** 
 182:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 183:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
 184:/usr/include/c++/4.8.2/cmath ****   ceil(float __x)
 185:/usr/include/c++/4.8.2/cmath ****   { return __builtin_ceilf(__x); }
 186:/usr/include/c++/4.8.2/cmath **** 
 187:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 188:/usr/include/c++/4.8.2/cmath ****   ceil(long double __x)
 189:/usr/include/c++/4.8.2/cmath ****   { return __builtin_ceill(__x); }
 190:/usr/include/c++/4.8.2/cmath **** #endif
 191:/usr/include/c++/4.8.2/cmath **** 
 192:/usr/include/c++/4.8.2/cmath ****   template<typename _Tp>
 193:/usr/include/c++/4.8.2/cmath ****     inline _GLIBCXX_CONSTEXPR
 194:/usr/include/c++/4.8.2/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value, 
 195:/usr/include/c++/4.8.2/cmath ****                                     double>::__type
 196:/usr/include/c++/4.8.2/cmath ****     ceil(_Tp __x)
 197:/usr/include/c++/4.8.2/cmath ****     { return __builtin_ceil(__x); }
 198:/usr/include/c++/4.8.2/cmath **** 
 199:/usr/include/c++/4.8.2/cmath ****   using ::cos;
 200:/usr/include/c++/4.8.2/cmath **** 
 201:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 202:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
 203:/usr/include/c++/4.8.2/cmath ****   cos(float __x)
 204:/usr/include/c++/4.8.2/cmath ****   { return __builtin_cosf(__x); }
 205:/usr/include/c++/4.8.2/cmath **** 
 206:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 207:/usr/include/c++/4.8.2/cmath ****   cos(long double __x)
 208:/usr/include/c++/4.8.2/cmath ****   { return __builtin_cosl(__x); }
 209:/usr/include/c++/4.8.2/cmath **** #endif
 210:/usr/include/c++/4.8.2/cmath **** 
 211:/usr/include/c++/4.8.2/cmath ****   template<typename _Tp>
 212:/usr/include/c++/4.8.2/cmath ****     inline _GLIBCXX_CONSTEXPR
 213:/usr/include/c++/4.8.2/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 214:/usr/include/c++/4.8.2/cmath ****                                     double>::__type
 215:/usr/include/c++/4.8.2/cmath ****     cos(_Tp __x)
 216:/usr/include/c++/4.8.2/cmath ****     { return __builtin_cos(__x); }
 217:/usr/include/c++/4.8.2/cmath **** 
 218:/usr/include/c++/4.8.2/cmath ****   using ::cosh;
 219:/usr/include/c++/4.8.2/cmath **** 
 220:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 221:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
 222:/usr/include/c++/4.8.2/cmath ****   cosh(float __x)
 223:/usr/include/c++/4.8.2/cmath ****   { return __builtin_coshf(__x); }
 224:/usr/include/c++/4.8.2/cmath **** 
 225:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 226:/usr/include/c++/4.8.2/cmath ****   cosh(long double __x)
 227:/usr/include/c++/4.8.2/cmath ****   { return __builtin_coshl(__x); }
 228:/usr/include/c++/4.8.2/cmath **** #endif
 229:/usr/include/c++/4.8.2/cmath **** 
 230:/usr/include/c++/4.8.2/cmath ****   template<typename _Tp>
 231:/usr/include/c++/4.8.2/cmath ****     inline _GLIBCXX_CONSTEXPR
 232:/usr/include/c++/4.8.2/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 233:/usr/include/c++/4.8.2/cmath ****                                     double>::__type
 234:/usr/include/c++/4.8.2/cmath ****     cosh(_Tp __x)
 235:/usr/include/c++/4.8.2/cmath ****     { return __builtin_cosh(__x); }
 236:/usr/include/c++/4.8.2/cmath **** 
 237:/usr/include/c++/4.8.2/cmath ****   using ::exp;
 238:/usr/include/c++/4.8.2/cmath **** 
 239:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 240:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
 241:/usr/include/c++/4.8.2/cmath ****   exp(float __x)
 242:/usr/include/c++/4.8.2/cmath ****   { return __builtin_expf(__x); }
 243:/usr/include/c++/4.8.2/cmath **** 
 244:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 245:/usr/include/c++/4.8.2/cmath ****   exp(long double __x)
 246:/usr/include/c++/4.8.2/cmath ****   { return __builtin_expl(__x); }
 247:/usr/include/c++/4.8.2/cmath **** #endif
 248:/usr/include/c++/4.8.2/cmath **** 
 249:/usr/include/c++/4.8.2/cmath ****   template<typename _Tp>
 250:/usr/include/c++/4.8.2/cmath ****     inline _GLIBCXX_CONSTEXPR
 251:/usr/include/c++/4.8.2/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 252:/usr/include/c++/4.8.2/cmath ****                                     double>::__type
 253:/usr/include/c++/4.8.2/cmath ****     exp(_Tp __x)
 254:/usr/include/c++/4.8.2/cmath ****     { return __builtin_exp(__x); }
 255:/usr/include/c++/4.8.2/cmath **** 
 256:/usr/include/c++/4.8.2/cmath ****   using ::fabs;
 257:/usr/include/c++/4.8.2/cmath **** 
 258:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 259:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
 260:/usr/include/c++/4.8.2/cmath ****   fabs(float __x)
 261:/usr/include/c++/4.8.2/cmath ****   { return __builtin_fabsf(__x); }
 262:/usr/include/c++/4.8.2/cmath **** 
 263:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR long double
 264:/usr/include/c++/4.8.2/cmath ****   fabs(long double __x)
 265:/usr/include/c++/4.8.2/cmath ****   { return __builtin_fabsl(__x); }
 266:/usr/include/c++/4.8.2/cmath **** #endif
 267:/usr/include/c++/4.8.2/cmath **** 
 268:/usr/include/c++/4.8.2/cmath ****   template<typename _Tp>
 269:/usr/include/c++/4.8.2/cmath ****     inline _GLIBCXX_CONSTEXPR
 270:/usr/include/c++/4.8.2/cmath ****     typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
 271:/usr/include/c++/4.8.2/cmath ****                                     double>::__type
 272:/usr/include/c++/4.8.2/cmath ****     fabs(_Tp __x)
 273:/usr/include/c++/4.8.2/cmath ****     { return __builtin_fabs(__x); }
 274:/usr/include/c++/4.8.2/cmath **** 
 275:/usr/include/c++/4.8.2/cmath ****   using ::floor;
 276:/usr/include/c++/4.8.2/cmath **** 
 277:/usr/include/c++/4.8.2/cmath **** #ifndef __CORRECT_ISO_CPP_MATH_H_PROTO
 278:/usr/include/c++/4.8.2/cmath ****   inline _GLIBCXX_CONSTEXPR float
 279:/usr/include/c++/4.8.2/cmath ****   floor(float __x)
 280:/usr/include/c++/4.8.2/cmath ****   { return __builtin_floorf(__x); }
 2757              		.loc 11 280 0 discriminator 1
 2758 10a9 E8000000 		call	floorf	#
 2758      00
 2759              	.LVL158:
 2760              	.LBE1315:
 2761              	.LBE1314:
 2762              		.loc 9 27 0 discriminator 1
 2763 10ae 488DBC24 		lea	rdi, [rsp+384]	# tmp1848,
 2763      80010000 
 2764 10b6 C5FA2CF0 		vcvttss2si	esi, xmm0	# D.73734, D.73733
 2765 10ba E8000000 		call	_ZNSolsEi	#
 2765      00
 2766              	.LVL159:
 2767              		.loc 9 27 0 is_stmt 0
 2768 10bf C5FA101D 		vmovss	xmm3, DWORD PTR .LC33[rip]	# tmp1877,
 2768      00000000 
 2769 10c7 C4C16259 		vmulss	xmm0, xmm3, DWORD PTR U[r13+400004]	# D.73733, tmp1877, MEM[symbol: U, base: ivtmp.482_109,
 2769      85000000 
 2769      00
 2770              	.LBB1324:
 2771              	.LBB1316:
 2772              		.loc 11 280 0 is_stmt 1
 2773 10d0 E8000000 		call	floorf	#
 2773      00
 2774              	.LVL160:
 2775              	.LBE1316:
 2776              	.LBE1324:
 2777              		.loc 9 27 0
 2778 10d5 488DBC24 		lea	rdi, [rsp+384]	# tmp1878,
 2778      80010000 
 2779 10dd C5FA2CF0 		vcvttss2si	esi, xmm0	# D.73734, D.73733
 2780 10e1 E8000000 		call	_ZNSolsEi	#
 2780      00
 2781              	.LVL161:
 2782 10e6 41BF0800 		mov	r15d, 8	# ivtmp.474,
 2782      0000
 2783              	.L93:
 2784 10ec C57A102D 		vmovss	xmm13, DWORD PTR .LC33[rip]	# tmp1842,
 2784      00000000 
 2785 10f4 C4811259 		vmulss	xmm0, xmm13, DWORD PTR U[r15+400000+r13]	# D.73733, tmp1842, MEM[symbol: U, base: ivtmp.482
 2785      842F0000 
 2785      0000
 2786              	.LBB1325:
 2787              	.LBB1317:
 2788              		.loc 11 280 0
 2789 10fe E8000000 		call	floorf	#
 2789      00
 2790              	.LVL162:
 2791              	.LBE1317:
 2792              	.LBE1325:
 2793              		.loc 9 27 0
 2794 1103 488DBC24 		lea	rdi, [rsp+384]	# tmp1843,
 2794      80010000 
 2795 110b C5FA2CF0 		vcvttss2si	esi, xmm0	# D.73734, D.73733
 2796 110f E8000000 		call	_ZNSolsEi	#
 2796      00
 2797              	.LVL163:
 2798 1114 C57A1025 		vmovss	xmm12, DWORD PTR .LC33[rip]	# tmp1844,
 2798      00000000 
 2799 111c 4983C704 		add	r15, 4	# tmp1530,
 2800 1120 C4811A59 		vmulss	xmm0, xmm12, DWORD PTR U[r13+400000+r15]	# D.73733, tmp1844, MEM[symbol: U, base: ivtmp.482
 2800      843D0000 
 2800      0000
 2801              	.LBB1326:
 2802              	.LBB1318:
 2803              		.loc 11 280 0
 2804 112a E8000000 		call	floorf	#
 2804      00
 2805              	.LVL164:
 2806              	.LBE1318:
 2807              	.LBE1326:
 2808              		.loc 9 27 0
 2809 112f 488DBC24 		lea	rdi, [rsp+384]	# tmp1845,
 2809      80010000 
 2810 1137 C5FA2CF0 		vcvttss2si	esi, xmm0	# D.73734, D.73733
 2811 113b E8000000 		call	_ZNSolsEi	#
 2811      00
 2812              	.LVL165:
 2813 1140 C57A101D 		vmovss	xmm11, DWORD PTR .LC33[rip]	# tmp1879,
 2813      00000000 
 2814 1148 C4812259 		vmulss	xmm0, xmm11, DWORD PTR U[r13+400004+r15]	# D.73733, tmp1879, MEM[symbol: U, base: ivtmp.482
 2814      843D0000 
 2814      0000
 2815              	.LBB1327:
 2816              	.LBB1319:
 2817              		.loc 11 280 0
 2818 1152 E8000000 		call	floorf	#
 2818      00
 2819              	.LVL166:
 2820              	.LBE1319:
 2821              	.LBE1327:
 2822              		.loc 9 27 0
 2823 1157 488DBC24 		lea	rdi, [rsp+384]	# tmp1880,
 2823      80010000 
 2824 115f C5FA2CF0 		vcvttss2si	esi, xmm0	# D.73734, D.73733
 2825 1163 E8000000 		call	_ZNSolsEi	#
 2825      00
 2826              	.LVL167:
 2827 1168 C57A1015 		vmovss	xmm10, DWORD PTR .LC33[rip]	# tmp1881,
 2827      00000000 
 2828 1170 C4812A59 		vmulss	xmm0, xmm10, DWORD PTR U[r13+400008+r15]	# D.73733, tmp1881, MEM[symbol: U, base: ivtmp.482
 2828      843D0000 
 2828      0000
 2829              	.LBB1328:
 2830              	.LBB1320:
 2831              		.loc 11 280 0
 2832 117a E8000000 		call	floorf	#
 2832      00
 2833              	.LVL168:
 2834              	.LBE1320:
 2835              	.LBE1328:
 2836              		.loc 9 27 0
 2837 117f 488DBC24 		lea	rdi, [rsp+384]	# tmp1882,
 2837      80010000 
 2838 1187 C5FA2CF0 		vcvttss2si	esi, xmm0	# D.73734, D.73733
 2839 118b E8000000 		call	_ZNSolsEi	#
 2839      00
 2840              	.LVL169:
 2841 1190 C57A100D 		vmovss	xmm9, DWORD PTR .LC33[rip]	# tmp1883,
 2841      00000000 
 2842 1198 C4813259 		vmulss	xmm0, xmm9, DWORD PTR U[r13+400012+r15]	# D.73733, tmp1883, MEM[symbol: U, base: ivtmp.482_
 2842      843D0000 
 2842      0000
 2843              	.LBB1329:
 2844              	.LBB1321:
 2845              		.loc 11 280 0
 2846 11a2 E8000000 		call	floorf	#
 2846      00
 2847              	.LVL170:
 2848              	.LBE1321:
 2849              	.LBE1329:
 2850              		.loc 9 27 0
 2851 11a7 488DBC24 		lea	rdi, [rsp+384]	# tmp1884,
 2851      80010000 
 2852 11af C5FA2CF0 		vcvttss2si	esi, xmm0	# D.73734, D.73733
 2853 11b3 E8000000 		call	_ZNSolsEi	#
 2853      00
 2854              	.LVL171:
 2855 11b8 C57A1005 		vmovss	xmm8, DWORD PTR .LC33[rip]	# tmp1885,
 2855      00000000 
 2856 11c0 C4813A59 		vmulss	xmm0, xmm8, DWORD PTR U[r13+400016+r15]	# D.73733, tmp1885, MEM[symbol: U, base: ivtmp.482_
 2856      843D0000 
 2856      0000
 2857              	.LBB1330:
 2858              	.LBB1322:
 2859              		.loc 11 280 0
 2860 11ca E8000000 		call	floorf	#
 2860      00
 2861              	.LVL172:
 2862              	.LBE1322:
 2863              	.LBE1330:
 2864              		.loc 9 27 0
 2865 11cf 488DBC24 		lea	rdi, [rsp+384]	# tmp1886,
 2865      80010000 
 2866 11d7 C5FA2CF0 		vcvttss2si	esi, xmm0	# D.73734, D.73733
 2867 11db E8000000 		call	_ZNSolsEi	#
 2867      00
 2868              	.LVL173:
 2869 11e0 C57A103D 		vmovss	xmm15, DWORD PTR .LC33[rip]	# tmp1887,
 2869      00000000 
 2870 11e8 C4810259 		vmulss	xmm0, xmm15, DWORD PTR U[r13+400020+r15]	# D.73733, tmp1887, MEM[symbol: U, base: ivtmp.482
 2870      843D0000 
 2870      0000
 2871              	.LBB1331:
 2872              	.LBB1323:
 2873              		.loc 11 280 0
 2874 11f2 E8000000 		call	floorf	#
 2874      00
 2875              	.LVL174:
 2876              	.LBE1323:
 2877              	.LBE1331:
 2878              		.loc 9 27 0
 2879 11f7 488DBC24 		lea	rdi, [rsp+384]	# tmp1888,
 2879      80010000 
 2880 11ff C5FA2CF0 		vcvttss2si	esi, xmm0	# D.73734, D.73733
 2881 1203 E8000000 		call	_ZNSolsEi	#
 2881      00
 2882              	.LVL175:
 2883 1208 4983C718 		add	r15, 24	# ivtmp.474,
  26:main.cpp      ****       for (int z=0;z<NZ;++z) {
 2884              		.loc 9 26 0
 2885 120c 4981FF90 		cmp	r15, 400	# ivtmp.474,
 2885      010000
 2886 1213 0F85D3FE 		jne	.L93	#,
 2886      FFFF
 2887              	.LVL176:
 2888              	.LBE1313:
 2889              	.LBB1332:
 2890              	.LBB1333:
 535:/usr/include/c++/4.8.2/ostream **** 	__ostream_insert(__out, __s,
 2891              		.loc 1 535 0
 2892 1219 BA010000 		mov	edx, 1	#,
 2892      00
 2893 121e BE000000 		mov	esi, OFFSET FLAT:.LC32	#,
 2893      00
 2894 1223 488DBC24 		lea	rdi, [rsp+384]	# tmp1846,
 2894      80010000 
 2895              	.LVL177:
 2896 122b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
 2896      00
 2897              	.LEHE2:
 2898              	.LVL178:
 2899 1230 4981C590 		add	r13, 400	# ivtmp.482,
 2899      010000
 2900              	.LBE1333:
 2901              	.LBE1332:
 2902              	.LBE1312:
  25:main.cpp      ****     for (int y=0;y<NY;++y) {
 2903              		.loc 9 25 0
 2904 1237 4981FD80 		cmp	r13, 16000	# ivtmp.482,
 2904      3E0000
 2905 123e 0F8554FE 		jne	.L90	#,
 2905      FFFF
 2906              	.LVL179:
 2907              	.LBE1311:
 2908              	.LBE891:
 2909              	.LBE890:
 2910              	.LBE1638:
 129:/usr/include/c++/4.8.2/sstream **** 	if (this->pptr())
 2911              		.loc 4 129 0
 2912 1244 4C8BA424 		mov	r12, QWORD PTR [rsp+432]	# D.73743, MEM[(const struct basic_streambuf *)&ostr + 48B]
 2912      B0010000 
 2913              	.LBB1639:
 2914              	.LBB1633:
 2915              	.LBB1627:
 2916              	.LBB1334:
 2917              	.LBB1335:
 2918              	.LBB1336:
 2919              	.LBB1337:
 2920              	.LBB1338:
 2921              	.LBB1339:
 275:/usr/include/c++/4.8.2/bits/basic_string.h **** 	: _Alloc(__a), _M_p(__dat) { }
 2922              		.loc 5 275 0
 2923 124c 48C78424 		mov	QWORD PTR [rsp+320], OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE+24	# MEM[(struct _Alloc_hid
 2923      40010000 
 2923      00000000 
 2924              	.LVL180:
 2925              	.LBE1339:
 2926              	.LBE1338:
 2927              	.LBE1337:
 129:/usr/include/c++/4.8.2/sstream **** 	if (this->pptr())
 2928              		.loc 4 129 0
 2929 1258 4D85E4   		test	r12, r12	# D.73743
 2930 125b 0F849504 		je	.L94	#,
 2930      0000
 2931              	.LVL181:
 2932              	.LBE1336:
 2933              	.LBE1335:
 2934              	.LBE1334:
 2935              	.LBE1627:
 2936              	.LBE1633:
 2937              	.LBE1639:
 2938 1261 4C8BB424 		mov	r14, QWORD PTR [rsp+416]	# D.73743, MEM[(const struct basic_streambuf *)&ostr + 32B]
 2938      A0010000 
 2939              	.LVL182:
 2940 1269 488B9C24 		mov	rbx, QWORD PTR [rsp+424]	# D.73743, MEM[(const struct basic_streambuf *)&ostr + 40B]
 2940      A8010000 
 2941              	.LBB1640:
 2942              	.LBB1634:
 2943              	.LBB1628:
 2944              	.LBB1505:
 2945              	.LBB1500:
 2946              	.LBB1495:
 132:/usr/include/c++/4.8.2/sstream **** 	    if (this->pptr() > this->egptr())
 2947              		.loc 4 132 0
 2948 1271 4D39F4   		cmp	r12, r14	# D.73743, D.73743
 2949 1274 0F86E303 		jbe	.L95	#,
 2949      0000
 2950              	.LVL183:
 2951              	.LBB1340:
 2952              	.LBB1341:
 2953              	.LBB1342:
 2954              	.LBB1343:
 2955              	.LBB1344:
 2956              	.LBB1345:
 2957              	.LBB1346:
 2958              		.file 12 "/usr/include/c++/4.8.2/bits/basic_string.tcc"
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
 2959              		.loc 12 128 0
 2960 127a 4939DC   		cmp	r12, rbx	# D.73743, D.73743
 2961 127d 0F84CF03 		je	.L197	#,
 2961      0000
 2962              	.LVL184:
 129:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  return _S_empty_rep()._M_refdata();
 130:/usr/include/c++/4.8.2/bits/basic_string.tcc **** #endif
 131:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	// NB: Not required, but considered best practice.
 132:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
 2963              		.loc 12 132 0
 2964 1283 4885DB   		test	rbx, rbx	# D.73743
 2965 1286 0F84BC03 		je	.L198	#,
 2965      0000
 2966              	.LVL185:
 133:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  __throw_logic_error(__N("basic_string::_S_construct null not valid"));
 134:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 
 135:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	const size_type __dnew = static_cast<size_type>(std::distance(__beg,
 136:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 								      __end));
 137:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	// Check for out_of_range and length_error exceptions.
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 2967              		.loc 12 138 0
 2968 128c 488D9424 		lea	rdx, [rsp+319]	# tmp1874,
 2968      3F010000 
 2969              	.LVL186:
 2970              	.LBB1347:
 2971              	.LBB1348:
 2972              	.LBB1349:
 2973              		.file 13 "/usr/include/c++/4.8.2/bits/stl_iterator_base_funcs.h"
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
 2974              		.loc 13 96 0
 2975 1294 4929DC   		sub	r12, rbx	# __dnew, D.73743
 2976              	.LVL187:
 2977              	.LBE1349:
 2978              	.LBE1348:
 2979              	.LBE1347:
 2980              		.loc 12 138 0
 2981 1297 31F6     		xor	esi, esi	#
 2982 1299 4C89E7   		mov	rdi, r12	#, __dnew
 2983              	.LEHB3:
 2984 129c E8000000 		call	_ZNSs4_Rep9_S_createEmmRKSaIcE	#
 2984      00
 2985              	.LEHE3:
 2986              	.LVL188:
 139:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	__try
 140:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  { _S_copy_chars(__r->_M_refdata(), __beg, __end); }
 2987              		.loc 12 140 0
 2988 12a1 4C8D4018 		lea	r8, [rax+24]	# D.73736,
 2989              	.LBB1350:
 2990              	.LBB1351:
 2991              	.LBB1352:
 356:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 2992              		.loc 5 356 0
 2993 12a5 4983FC01 		cmp	r12, 1	# __dnew,
 2994              	.LBE1352:
 2995              	.LBE1351:
 2996              	.LBE1350:
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 2997              		.loc 12 138 0
 2998 12a9 4989C6   		mov	r14, rax	# __r,
 2999              	.LVL189:
 3000              	.LBB1363:
 3001              	.LBB1360:
 3002              	.LBB1357:
 356:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 3003              		.loc 5 356 0
 3004 12ac 0F851B02 		jne	.L98	#,
 3004      0000
 3005              	.LBE1357:
 3006              	.LBE1360:
 3007              	.LBE1363:
 3008              	.LBE1346:
 3009              	.LBE1345:
 3010              	.LBE1344:
 3011              	.LBE1343:
 3012              	.LBE1342:
 3013              	.LBE1341:
 3014              	.LBE1340:
 3015              	.LBE1495:
 3016              	.LBE1500:
 3017              	.LBE1505:
 3018              	.LBE1628:
 3019              	.LBE1634:
 3020              	.LBE1640:
 354:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_copy(_CharT* __d, const _CharT* __s, size_type __n)
 3021              		.loc 5 354 0
 3022 12b2 440FB60B 		movzx	r9d, BYTE PTR [rbx]	# D.73745, MEM[(const char_type &)_245]
 3023              	.LVL190:
 3024              	.LBB1641:
 3025              	.LBB1635:
 3026              	.LBB1629:
 3027              	.LBB1506:
 3028              	.LBB1501:
 3029              	.LBB1496:
 3030              	.LBB1392:
 3031              	.LBB1387:
 3032              	.LBB1384:
 3033              	.LBB1381:
 3034              	.LBB1378:
 3035              	.LBB1375:
 3036              	.LBB1372:
 3037              	.LBB1364:
 3038              	.LBB1361:
 3039              	.LBB1358:
 3040              	.LBB1353:
 3041              	.LBB1354:
 3042              		.file 14 "/usr/include/c++/4.8.2/bits/char_traits.h"
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
 3043              		.loc 14 243 0
 3044 12b6 45884E18 		mov	BYTE PTR [r14+24], r9b	# MEM[(char_type &)__r_266 + 24], D.73745
 3045              	.LVL191:
 3046              	.L99:
 3047              	.LBE1354:
 3048              	.LBE1353:
 3049              	.LBE1358:
 3050              	.LBE1361:
 3051              	.LBE1364:
 3052              	.LBB1365:
 3053              	.LBB1366:
 210:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 3054              		.loc 5 210 0
 3055 12ba 4981FE00 		cmp	r14, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# __r,
 3055      000000
 3056 12c1 7411     		je	.L96	#,
 3057              	.LVL192:
 3058              	.LBB1367:
 3059              	.LBB1368:
 204:/usr/include/c++/4.8.2/bits/basic_string.h ****         { this->_M_refcount = 0; }
 3060              		.loc 5 204 0
 3061 12c3 41C74610 		mov	DWORD PTR [r14+16], 0	# MEM[(_Atomic_word *)__r_266 + 16B],
 3061      00000000 
 3062              	.LBE1368:
 3063              	.LBE1367:
 214:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      this->_M_length = __n;
 3064              		.loc 5 214 0
 3065 12cb 4D8926   		mov	QWORD PTR [r14], r12	# __r_266->D.22725._M_length, __dnew
 3066              	.LVL193:
 3067              	.LBB1369:
 3068              	.LBB1370:
 3069              		.loc 14 243 0
 3070 12ce 43C64426 		mov	BYTE PTR [r14+24+r12], 0	# MEM[(char_type &)_272],
 3070      1800
 3071              	.LVL194:
 3072              	.L96:
 3073              	.LBE1370:
 3074              	.LBE1369:
 3075              	.LBE1366:
 3076              	.LBE1365:
 3077              	.LBE1372:
 3078              	.LBE1375:
 3079              	.LBE1378:
 3080              	.LBE1381:
 3081              	.LBE1384:
 3082              	.LBE1387:
 3083              	.LBE1392:
 3084              	.LBB1393:
 3085              	.LBB1394:
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
 3086              		.loc 5 583 0
 3087 12d4 488D9C24 		lea	rbx, [rsp+352]	# tmp1446,
 3087      60010000 
 3088              	.LVL195:
 3089              	.LBE1394:
 3090              	.LBE1393:
 3091              	.LBB1396:
 3092              	.LBB1388:
 3093              	.LBB1389:
 275:/usr/include/c++/4.8.2/bits/basic_string.h **** 	: _Alloc(__a), _M_p(__dat) { }
 3094              		.loc 5 275 0
 3095 12dc 4C898424 		mov	QWORD PTR [rsp+352], r8	# MEM[(struct _Alloc_hider *)&D.73311]._M_p, D.73736
 3095      60010000 
 3096              	.LVL196:
 3097              	.LBE1389:
 3098              	.LBE1388:
 3099              	.LBE1396:
 3100              	.LBB1397:
 3101              	.LBB1395:
 3102              		.loc 5 583 0
 3103 12e4 488DBC24 		lea	rdi, [rsp+320]	# tmp1849,
 3103      40010000 
 3104              	.LVL197:
 3105 12ec 4889DE   		mov	rsi, rbx	#, tmp1446
 3106              	.LEHB4:
 3107 12ef E8000000 		call	_ZNSs4swapERSs	#
 3107      00
 3108              	.LEHE4:
 3109              	.LVL198:
 3110              	.L196:
 3111              	.LBE1395:
 3112              	.LBE1397:
 3113              	.LBB1398:
 3114              	.LBB1399:
 3115              	.LBB1400:
 3116              	.LBB1401:
 3117              	.LBB1402:
 3118              	.LBB1403:
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 3119              		.loc 5 293 0
 3120 12f4 4C8B9424 		mov	r10, QWORD PTR [rsp+352]	# D.73736,
 3120      60010000 
 3121              	.LBE1403:
 3122              	.LBE1402:
 3123              	.LBE1401:
 3124              	.LBE1400:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3125              		.loc 5 539 0
 3126 12fc 498D7AE8 		lea	rdi, [r10-24]	# D.73739,
 3127              	.LVL199:
 3128              	.LBB1404:
 3129              	.LBB1405:
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 3130              		.loc 5 240 0
 3131 1300 4881FF00 		cmp	rdi, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# D.73739,
 3131      000000
 3132 1307 0F85D102 		jne	.L199	#,
 3132      0000
 3133              	.LVL200:
 3134              	.L105:
 3135              	.LBE1405:
 3136              	.LBE1404:
 3137              	.LBE1399:
 3138              	.LBE1398:
 3139              	.LBE1496:
 3140              	.LBE1501:
 3141              	.LBE1506:
 3142              	.LBB1507:
 3143              	.LBB1508:
 3144              	.LBB1509:
 3145              	.LBB1510:
 3146              	.LBB1511:
 3147              	.LBB1512:
 3148              	.LBB1513:
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 3149              		.loc 5 293 0
 3150 130d 488BB424 		mov	rsi, QWORD PTR [rsp+320]	# D.73736, D.62922._M_dataplus._M_p
 3150      40010000 
 3151              	.LVL201:
 3152              	.LBE1513:
 3153              	.LBE1512:
 3154              	.LBE1511:
 3155              	.LBE1510:
 3156              	.LBE1509:
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
 3157              		.loc 5 2758 0
 3158 1315 BF000000 		mov	edi, OFFSET FLAT:_ZSt4cout	#,
 3158      00
 3159 131a 488B56E8 		mov	rdx, QWORD PTR [rsi-24]	# MEM[(struct _Rep *)_37 + -24B].D.22725._M_length, MEM[(struct _Rep *
 3160              	.LEHB5:
 3161 131e E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
 3161      00
 3162              	.LVL202:
 3163              	.LBE1508:
 3164              	.LBE1507:
 3165              	.LBB1515:
 3166              	.LBB1516:
 3167              	.LBB1517:
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
 3168              		.loc 1 565 0
 3169 1323 488B38   		mov	rdi, QWORD PTR [rax]	# _40->_vptr.basic_ostream, _40->_vptr.basic_ostream
 3170              	.LBE1517:
 3171              	.LBE1516:
 3172              	.LBE1515:
 3173              	.LBB1537:
 3174              	.LBB1514:
 3175              		.loc 5 2758 0
 3176 1326 4989C6   		mov	r14, rax	# D.73732,
 3177              	.LVL203:
 3178              	.LBE1514:
 3179              	.LBE1537:
 3180              	.LBE1629:
 3181              	.LBE1635:
 3182              	.LBE1641:
 3183              		.loc 1 565 0
 3184 1329 4C8B5FE8 		mov	r11, QWORD PTR [rdi-24]	# MEM[(long int *)_306 + -24B], MEM[(long int *)_306 + -24B]
 3185 132d 4E8BA418 		mov	r12, QWORD PTR [rax+240+r11]	# D.73751, MEM[(const struct basic_ios *)_309 + 240B]
 3185      F0000000 
 3186              	.LVL204:
 3187              	.LBB1642:
 3188              	.LBB1636:
 3189              	.LBB1630:
 3190              	.LBB1538:
 3191              	.LBB1534:
 3192              	.LBB1531:
 3193              	.LBB1518:
 3194              	.LBB1519:
 3195              	.LBB1520:
  48:/usr/include/c++/4.8.2/bits/basic_ios.h ****       if (!__f)
 3196              		.loc 3 48 0
 3197 1335 4D85E4   		test	r12, r12	# D.73751
 3198 1338 0F847702 		je	.L200	#,
 3198      0000
 3199              	.LVL205:
 3200              	.LBE1520:
 3201              	.LBE1519:
 3202              	.LBB1522:
 3203              	.LBB1523:
 3204              		.file 15 "/usr/include/c++/4.8.2/bits/locale_facets.h"
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
 3205              		.loc 15 867 0
 3206 133e 41807C24 		cmp	BYTE PTR [r12+56], 0	# MEM[(const struct ctype *)_310]._M_widen_ok,
 3206      3800
 3207 1344 0F842B02 		je	.L122	#,
 3207      0000
 868:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	  return _M_widen[static_cast<unsigned char>(__c)];
 3208              		.loc 15 868 0
 3209 134a 410FB644 		movzx	eax, BYTE PTR [r12+67]	# D.73753, MEM[(const struct ctype *)_310]._M_widen
 3209      2443
 3210              	.LVL206:
 3211              	.L123:
 3212              	.LBE1523:
 3213              	.LBE1522:
 3214              	.LBE1518:
 3215              		.loc 1 565 0
 3216 1350 0FBEF0   		movsx	esi, al	# D.73734, D.73753
 3217 1353 4C89F7   		mov	rdi, r14	#, D.73732
 3218 1356 E8000000 		call	_ZNSo3putEc	#
 3218      00
 3219              	.LVL207:
 3220              	.LBB1527:
 3221              	.LBB1528:
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
 3222              		.loc 1 587 0
 3223 135b 4889C7   		mov	rdi, rax	#, D.73732
 3224 135e E8000000 		call	_ZNSo5flushEv	#
 3224      00
 3225              	.LEHE5:
 3226              	.LVL208:
 3227              	.LBE1528:
 3228              	.LBE1527:
 3229              	.LBE1531:
 3230              	.LBE1534:
 3231              	.LBE1538:
 3232              	.LBB1539:
 3233              	.LBB1540:
 3234              	.LBB1541:
 3235              	.LBB1542:
 3236              	.LBB1543:
 3237              	.LBB1544:
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 3238              		.loc 5 293 0
 3239 1363 4C8B8424 		mov	r8, QWORD PTR [rsp+320]	# D.73736, D.62922._M_dataplus._M_p
 3239      40010000 
 3240              	.LBE1544:
 3241              	.LBE1543:
 3242              	.LBE1542:
 3243              	.LBE1541:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3244              		.loc 5 539 0
 3245 136b 498D78E8 		lea	rdi, [r8-24]	# D.73739,
 3246              	.LVL209:
 3247              	.LBB1545:
 3248              	.LBB1546:
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 3249              		.loc 5 240 0
 3250 136f 4881FF00 		cmp	rdi, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# D.73739,
 3250      000000
 3251 1376 0F85C701 		jne	.L201	#,
 3251      0000
 3252              	.LVL210:
 3253              	.L125:
 3254              	.LBE1546:
 3255              	.LBE1545:
 3256              	.LBE1540:
 3257              	.LBE1539:
  28:main.cpp      ****       }
  29:main.cpp      ****       ostr << "\n";
  30:main.cpp      ****     }
  31:main.cpp      ****     std::cout << ostr.str()<<std::endl;
  32:main.cpp      ****     usleep(10000);
 3258              		.loc 9 32 0
 3259 137c BF102700 		mov	edi, 10000	#,
 3259      00
 3260              	.LEHB6:
 3261 1381 E8000000 		call	usleep	#
 3261      00
 3262              	.LEHE6:
 3263              	.LVL211:
 3264              	.LBB1563:
 3265              	.LBB1564:
 3266              	.LBB1565:
 3267              	.LBB1566:
 3268              	.LBB1567:
 3269              	.LBB1568:
 3270              	.LBB1569:
 3271              	.LBB1570:
 3272              	.LBB1571:
 3273              	.LBB1572:
 293:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return  _M_dataplus._M_p; }
 3274              		.loc 5 293 0
 3275 1386 488B9C24 		mov	rbx, QWORD PTR [rsp+464]	# D.73736, MEM[(const struct basic_string *)&ostr + 80B]._M_dataplus.
 3275      D0010000 
 3276              	.LBE1572:
 3277              	.LBE1571:
 3278              	.LBE1570:
 3279              	.LBE1569:
 3280              	.LBE1568:
 3281              	.LBE1567:
 3282              	.LBE1566:
 3283              	.LBE1565:
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
 3284              		.loc 4 453 0
 3285 138e 48C78424 		mov	QWORD PTR [rsp+384], OFFSET FLAT:_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+24	# os
 3285      80010000 
 3285      00000000 
 3286 139a 48C78424 		mov	QWORD PTR [rsp+472], OFFSET FLAT:_ZTVSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE+64	# ME
 3286      D8010000 
 3286      00000000 
 3287              	.LVL212:
 3288              	.LBB1600:
 3289              	.LBB1597:
  64:/usr/include/c++/4.8.2/sstream ****     class basic_stringbuf : public basic_streambuf<_CharT, _Traits>
 3290              		.loc 4 64 0
 3291 13a6 48C78424 		mov	QWORD PTR [rsp+392], OFFSET FLAT:_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE+16	# MEM[(s
 3291      88010000 
 3291      00000000 
 3292              	.LVL213:
 3293              	.LBB1592:
 3294              	.LBB1589:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3295              		.loc 5 539 0
 3296 13b2 488D7BE8 		lea	rdi, [rbx-24]	# D.73739,
 3297              	.LVL214:
 3298              	.LBB1573:
 3299              	.LBB1574:
 240:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 3300              		.loc 5 240 0
 3301 13b6 4881FF00 		cmp	rdi, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# D.73739,
 3301      000000
 3302 13bd 0F854701 		jne	.L202	#,
 3302      0000
 3303              	.LVL215:
 3304              	.L130:
 3305              	.LBE1574:
 3306              	.LBE1573:
 3307              	.LBE1589:
 3308              	.LBE1592:
 3309              	.LBB1593:
 3310              	.LBB1594:
 198:/usr/include/c++/4.8.2/streambuf ****       { }
 3311              		.loc 6 198 0
 3312 13c3 488DBC24 		lea	rdi, [rsp+448]	# tmp1404,
 3312      C0010000 
 3313 13cb 48C78424 		mov	QWORD PTR [rsp+392], OFFSET FLAT:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16	# MEM[(struct
 3313      88010000 
 3313      00000000 
 3314 13d7 E8000000 		call	_ZNSt6localeD1Ev	#
 3314      00
 3315              	.LVL216:
 3316              	.LBE1594:
 3317              	.LBE1593:
 3318              	.LBE1597:
 3319              	.LBE1600:
 3320              	.LBB1601:
 3321              	.LBB1602:
  93:/usr/include/c++/4.8.2/ostream ****       ~basic_ostream() { }
 3322              		.loc 1 93 0
 3323 13dc 488B3D00 		mov	rdi, QWORD PTR _ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE[rip+8]	# tmp1867, MEM[(co
 3323      000000
 3324 13e3 4C8B0500 		mov	r8, QWORD PTR _ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE[rip+16]	# tmp1869, MEM[(co
 3324      000000
 3325 13ea 488B47E8 		mov	rax, QWORD PTR [rdi-24]	# MEM[(long int *)_915 + -24B], MEM[(long int *)_915 + -24B]
 3326 13ee 4889BC24 		mov	QWORD PTR [rsp+384], rdi	# MEM[(struct basic_ostream *)&ostr]._vptr.basic_ostream, tmp1867
 3326      80010000 
 3327              	.LBE1602:
 3328              	.LBE1601:
 3329              	.LBB1604:
 3330              	.LBB1605:
 276:/usr/include/c++/4.8.2/bits/basic_ios.h ****       ~basic_ios() { }
 3331              		.loc 3 276 0
 3332 13f6 488DBC24 		lea	rdi, [rsp+472]	# tmp1407,
 3332      D8010000 
 3333              	.LBE1605:
 3334              	.LBE1604:
 3335              	.LBB1607:
 3336              	.LBB1603:
  93:/usr/include/c++/4.8.2/ostream ****       ~basic_ostream() { }
 3337              		.loc 1 93 0
 3338 13fe 4C898404 		mov	QWORD PTR [rsp+384+rax], r8	# _338->D.29168._vptr.ios_base, tmp1869
 3338      80010000 
 3339              	.LVL217:
 3340              	.LBE1603:
 3341              	.LBE1607:
 3342              	.LBB1608:
 3343              	.LBB1606:
 276:/usr/include/c++/4.8.2/bits/basic_ios.h ****       ~basic_ios() { }
 3344              		.loc 3 276 0
 3345 1406 48C78424 		mov	QWORD PTR [rsp+472], OFFSET FLAT:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16	# MEM[(struct basic_
 3345      D8010000 
 3345      00000000 
 3346 1412 E8000000 		call	_ZNSt8ios_baseD2Ev	#
 3346      00
 3347              	.LVL218:
 3348              	.LBE1606:
 3349              	.LBE1608:
 3350              	.LBE1564:
 3351              	.LBE1563:
 3352              	.LBE1630:
  20:main.cpp      ****   for(int t=0;;++t){
 3353              		.loc 9 20 0
 3354 1417 83042401 		add	DWORD PTR [rsp], 1	# %sfp,
 3355              	.LVL219:
  33:main.cpp      ****   }
 3356              		.loc 9 33 0
 3357 141b E921ECFF 		jmp	.L134	#
 3357      FF
 3358              	.LVL220:
 3359              		.p2align 4,,10
 3360              		.p2align 3
 3361              	.L140:
 3362 1420 4863FF   		movsx	rdi, edi	# D.73750, D.73734
 3363 1423 4D63FF   		movsx	r15, r15d	# D.73750, D.73734
 3364              	.LBB1631:
 3365              	.LBB1613:
 3366              	.LBB1269:
 3367              	.LBB1268:
 3368              	.LBB1267:
 3369              	.LBB1261:
 3370              	.LBB1259:
 3371              	.LBB1257:
  32:naive-integrator.hpp ****             V_other[x][y][z] = V[x][y][z] + dt*dv_dt;
 3372              		.loc 10 32 0
 3373 1426 C744244C 		mov	DWORD PTR [rsp+76], 100	# %sfp,
 3373      64000000 
 3374 142e C7842480 		mov	DWORD PTR [rsp+128], 0	# %sfp,
 3374      00000000 
 3374      000000
 3375 1439 48897C24 		mov	QWORD PTR [rsp+112], rdi	# %sfp, D.73750
 3375      70
 3376 143e 8B9C2480 		mov	ebx, DWORD PTR [rsp+128]	# z, %sfp
 3376      000000
 3377 1445 4C897C24 		mov	QWORD PTR [rsp+104], r15	# %sfp, D.73750
 3377      68
 3378 144a 4C896C24 		mov	QWORD PTR [rsp+96], r13	# %sfp, D.73750
 3378      60
 3379 144f E958F0FF 		jmp	.L74	#
 3379      FF
 3380              	.LVL221:
 3381              	.L145:
 3382 1454 4889C3   		mov	rbx, rax	# tmp1335,
 3383 1457 C5F877   		vzeroupper
 3384              	.L89:
 3385              	.LVL222:
 3386              	.LBE1257:
 3387              	.LBE1259:
 3388              	.LBE1261:
 3389              	.LBE1267:
 3390              	.LBE1268:
 3391              	.LBE1269:
 3392              	.LBE1613:
 3393              	.LBB1614:
 3394              	.LBB1307:
 3395              	.LBB1303:
 3396              	.LBB1304:
 276:/usr/include/c++/4.8.2/bits/basic_ios.h ****       ~basic_ios() { }
 3397              		.loc 3 276 0
 3398 145a 488DBC24 		lea	rdi, [rsp+472]	# tmp1338,
 3398      D8010000 
 3399              	.LVL223:
 3400 1462 48C78424 		mov	QWORD PTR [rsp+472], OFFSET FLAT:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16	# MEM[(struct basic_
 3400      D8010000 
 3400      00000000 
 3401 146e E8000000 		call	_ZNSt8ios_baseD2Ev	#
 3401      00
 3402              	.LVL224:
 3403 1473 4889DF   		mov	rdi, rbx	#, tmp1335
 3404              	.LEHB7:
 3405 1476 E8000000 		call	_Unwind_Resume	#
 3405      00
 3406              	.LVL225:
 3407              	.L143:
 3408 147b 4989C7   		mov	r15, rax	# tmp1387,
 3409 147e C5F877   		vzeroupper
 3410              	.L120:
 3411              	.LBE1304:
 3412              	.LBE1303:
 3413              	.LBE1307:
 3414              	.LBE1614:
 3415              		.loc 9 33 0
 3416 1481 488DBC24 		lea	rdi, [rsp+384]	# tmp1873,
 3416      80010000 
 3417 1489 E8000000 		call	_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev	#
 3417      00
 3418              	.LVL226:
 3419 148e 4C89FF   		mov	rdi, r15	#, tmp1387
 3420 1491 E8000000 		call	_Unwind_Resume	#
 3420      00
 3421              	.LEHE7:
 3422              	.LVL227:
 3423              	.L146:
 3424              	.LBB1615:
 3425              	.LBB1308:
 424:/usr/include/c++/4.8.2/sstream ****       : __ostream_type(), _M_stringbuf(__mode | ios_base::out)
 3426              		.loc 4 424 0
 3427 1496 488DBC24 		lea	rdi, [rsp+392]	# tmp1329,
 3427      88010000 
 3428 149e 4889C3   		mov	rbx, rax	# tmp1331,
 3429 14a1 C5F877   		vzeroupper
 3430 14a4 E8000000 		call	_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev	#
 3430      00
 3431              	.LVL228:
 3432              	.LBB1305:
 3433              	.LBB1306:
  93:/usr/include/c++/4.8.2/ostream ****       ~basic_ostream() { }
 3434              		.loc 1 93 0
 3435 14a9 488B0D00 		mov	rcx, QWORD PTR _ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE[rip+8]	# tmp1837, MEM[(co
 3435      000000
 3436 14b0 488B3500 		mov	rsi, QWORD PTR _ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE[rip+16]	# tmp1839, MEM[(c
 3436      000000
 3437 14b7 4C8B51E8 		mov	r10, QWORD PTR [rcx-24]	# MEM[(long int *)_915 + -24B], MEM[(long int *)_915 + -24B]
 3438 14bb 48898C24 		mov	QWORD PTR [rsp+384], rcx	# MEM[(struct basic_ostream *)&ostr]._vptr.basic_ostream, tmp1837
 3438      80010000 
 3439 14c3 4A89B414 		mov	QWORD PTR [rsp+384+r10], rsi	# _238->D.29168._vptr.ios_base, tmp1839
 3439      80010000 
 3440 14cb EB8D     		jmp	.L89	#
 3441              	.LVL229:
 3442              	.L98:
 3443              	.LBE1306:
 3444              	.LBE1305:
 3445              	.LBE1308:
 3446              	.LBE1615:
 3447              	.LBB1616:
 3448              	.LBB1502:
 3449              	.LBB1497:
 3450              	.LBB1422:
 3451              	.LBB1390:
 3452              	.LBB1385:
 3453              	.LBB1382:
 3454              	.LBB1379:
 3455              	.LBB1376:
 3456              	.LBB1373:
 3457              	.LBB1371:
 3458              	.LBB1362:
 3459              	.LBB1359:
 3460              	.LBB1355:
 3461              	.LBB1356:
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
 3462              		.loc 14 271 0
 3463 14cd 4C89C7   		mov	rdi, r8	#, D.73736
 3464 14d0 4C89E2   		mov	rdx, r12	#, __dnew
 3465 14d3 4889DE   		mov	rsi, rbx	#, D.73743
 3466 14d6 E8000000 		call	memcpy	#
 3466      00
 3467              	.LVL230:
 3468 14db 4989C0   		mov	r8, rax	# D.73736,
 3469 14de E9D7FDFF 		jmp	.L99	#
 3469      FF
 3470              	.LVL231:
 3471              	.L147:
 3472 14e3 488D9C24 		lea	rbx, [rsp+352]	# tmp1446,
 3472      60010000 
 3473 14eb 4989C7   		mov	r15, rax	# tmp1375,
 3474 14ee C5F877   		vzeroupper
 3475              	.L118:
 3476              	.LVL232:
 3477              	.LBE1356:
 3478              	.LBE1355:
 3479              	.LBE1359:
 3480              	.LBE1362:
 3481              	.LBE1371:
 3482              	.LBE1373:
 3483              	.LBE1376:
 3484              	.LBE1379:
 3485              	.LBE1382:
 3486              	.LBE1385:
 3487              	.LBE1390:
 3488              	.LBE1422:
 3489              	.LBB1423:
 3490              	.LBB1424:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3491              		.loc 5 539 0
 3492 14f1 488B9424 		mov	rdx, QWORD PTR [rsp+320]	# tmp1861, D.62922._M_dataplus._M_p
 3492      40010000 
 3493 14f9 4889DE   		mov	rsi, rbx	#, tmp1446
 3494 14fc 488D7AE8 		lea	rdi, [rdx-24]	# D.73739,
 3495 1500 E8000000 		call	_ZNSs4_Rep10_M_disposeERKSaIcE	#
 3495      00
 3496              	.LVL233:
 3497 1505 E977FFFF 		jmp	.L120	#
 3497      FF
 3498              	.LVL234:
 3499              	.L202:
 3500              	.LBE1424:
 3501              	.LBE1423:
 3502              	.LBE1497:
 3503              	.LBE1502:
 3504              	.LBE1616:
 3505              	.LBB1617:
 3506              	.LBB1611:
 3507              	.LBB1609:
 3508              	.LBB1598:
 3509              	.LBB1595:
 3510              	.LBB1590:
 3511              	.LBB1587:
 3512              	.LBB1585:
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 3513              		.loc 5 246 0
 3514 150a 4C8D7F10 		lea	r15, [rdi+16]	# D.73746,
 3515              	.LVL235:
 3516              	.LBB1575:
 3517              	.LBB1576:
  81:/usr/include/c++/4.8.2/ext/atomicity.h ****     if (__gthread_active_p())
 3518              		.loc 7 81 0
 3519 150e 41BD0000 		mov	r13d, OFFSET FLAT:_ZL28__gthrw___pthread_key_createPjPFvPvE	# tmp1400,
 3519      0000
 3520 1514 4D85ED   		test	r13, r13	# tmp1400
 3521 1517 0F848400 		je	.L131	#,
 3521      0000
 3522              	.LVL236:
 3523              	.LBB1577:
 3524              	.LBB1578:
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 3525              		.loc 7 49 0
 3526 151d 41BCFFFF 		mov	r12d, -1	# D.73747,
 3526      FFFF
 3527              	.LVL237:
 3528 1523 F0450FC1 		lock xadd	DWORD PTR [r15], r12d	#,* D.73746, D.73747
 3528      27
 3529              	.LVL238:
 3530              	.L132:
 3531              	.LBE1578:
 3532              	.LBE1577:
 3533              	.LBE1576:
 3534              	.LBE1575:
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 3535              		.loc 5 245 0
 3536 1528 4585E4   		test	r12d, r12d	# D.73748
 3537 152b 0F8F92FE 		jg	.L130	#,
 3537      FFFF
 249:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _M_destroy(__a);
 3538              		.loc 5 249 0
 3539 1531 488DB424 		lea	rsi, [rsp+352]	# tmp1865,
 3539      60010000 
 3540 1539 E8000000 		call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
 3540      00
 3541              	.LVL239:
 3542 153e E980FEFF 		jmp	.L130	#
 3542      FF
 3543              	.LVL240:
 3544              	.L201:
 3545              	.LBE1585:
 3546              	.LBE1587:
 3547              	.LBE1590:
 3548              	.LBE1595:
 3549              	.LBE1598:
 3550              	.LBE1609:
 3551              	.LBE1611:
 3552              	.LBE1617:
 3553              	.LBB1618:
 3554              	.LBB1561:
 3555              	.LBB1559:
 3556              	.LBB1557:
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 3557              		.loc 5 246 0
 3558 1543 4C8D4F10 		lea	r9, [rdi+16]	# D.73746,
 3559              	.LVL241:
 3560              	.LBB1547:
 3561              	.LBB1548:
  81:/usr/include/c++/4.8.2/ext/atomicity.h ****     if (__gthread_active_p())
 3562              		.loc 7 81 0
 3563 1547 B9000000 		mov	ecx, OFFSET FLAT:_ZL28__gthrw___pthread_key_createPjPFvPvE	# tmp1396,
 3563      00
 3564 154c 4885C9   		test	rcx, rcx	# tmp1396
 3565 154f 7440     		je	.L126	#,
 3566              	.LVL242:
 3567              	.LBB1549:
 3568              	.LBB1550:
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 3569              		.loc 7 49 0
 3570 1551 BEFFFFFF 		mov	esi, -1	# D.73747,
 3570      FF
 3571 1556 F0410FC1 		lock xadd	DWORD PTR [r9], esi	#,* D.73746, D.73747
 3571      31
 3572              	.LVL243:
 3573              	.L127:
 3574              	.LBE1550:
 3575              	.LBE1549:
 3576              	.LBE1548:
 3577              	.LBE1547:
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 3578              		.loc 5 245 0
 3579 155b 85F6     		test	esi, esi	# D.73748
 3580 155d 0F8F19FE 		jg	.L125	#,
 3580      FFFF
 249:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _M_destroy(__a);
 3581              		.loc 5 249 0
 3582 1563 488DB424 		lea	rsi, [rsp+352]	# tmp1863,
 3582      60010000 
 3583 156b E8000000 		call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
 3583      00
 3584              	.LVL244:
 3585 1570 E907FEFF 		jmp	.L125	#
 3585      FF
 3586              	.LVL245:
 3587              	.L122:
 3588              	.LBE1557:
 3589              	.LBE1559:
 3590              	.LBE1561:
 3591              	.LBE1618:
 3592              	.LBB1619:
 3593              	.LBB1535:
 3594              	.LBB1532:
 3595              	.LBB1529:
 3596              	.LBB1525:
 3597              	.LBB1524:
 869:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	this->_M_widen_init();
 3598              		.loc 15 869 0
 3599 1575 4C89E7   		mov	rdi, r12	#, D.73751
 3600              	.LEHB8:
 3601 1578 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv	#
 3601      00
 3602              	.LVL246:
 870:/usr/include/c++/4.8.2/bits/locale_facets.h **** 	return this->do_widen(__c);
 3603              		.loc 15 870 0
 3604 157d 498B0424 		mov	rax, QWORD PTR [r12]	# MEM[(const struct ctype *)_310].D.26081._vptr.facet, MEM[(const struct 
 3605 1581 BE0A0000 		mov	esi, 10	#,
 3605      00
 3606 1586 4C89E7   		mov	rdi, r12	#, D.73751
 3607 1589 FF5030   		call	[QWORD PTR [rax+48]]	# MEM[(int (*__vtbl_ptr_type) () *)_319 + 48B]
 3608              	.LVL247:
 3609 158c E9BFFDFF 		jmp	.L123	#
 3609      FF
 3610              	.LVL248:
 3611              	.L126:
 3612              	.LBE1524:
 3613              	.LBE1525:
 3614              	.LBE1529:
 3615              	.LBE1532:
 3616              	.LBE1535:
 3617              	.LBE1619:
 3618              	.LBB1620:
 3619              	.LBB1562:
 3620              	.LBB1560:
 3621              	.LBB1558:
 3622              	.LBB1556:
 3623              	.LBB1555:
 3624              	.LBB1551:
 3625              	.LBB1552:
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
 3626              		.loc 7 67 0
 3627 1591 418B50F8 		mov	edx, DWORD PTR [r8-8]	# __result, MEM[(_Atomic_word *)_41 + -8B]
 3628              	.LVL249:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3629              		.loc 7 68 0
 3630 1595 448D52FF 		lea	r10d, [rdx-1]	# tmp1397,
 3631              	.LBE1552:
 3632              	.LBE1551:
 3633              		.loc 7 84 0
 3634 1599 89D6     		mov	esi, edx	# D.73748, __result
 3635              	.LBB1554:
 3636              	.LBB1553:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3637              		.loc 7 68 0
 3638 159b 458950F8 		mov	DWORD PTR [r8-8], r10d	# MEM[(_Atomic_word *)_41 + -8B], tmp1397
 3639 159f EBBA     		jmp	.L127	#
 3640              	.LVL250:
 3641              	.L131:
 3642              	.LBE1553:
 3643              	.LBE1554:
 3644              	.LBE1555:
 3645              	.LBE1556:
 3646              	.LBE1558:
 3647              	.LBE1560:
 3648              	.LBE1562:
 3649              	.LBE1620:
 3650              	.LBB1621:
 3651              	.LBB1612:
 3652              	.LBB1610:
 3653              	.LBB1599:
 3654              	.LBB1596:
 3655              	.LBB1591:
 3656              	.LBB1588:
 3657              	.LBB1586:
 3658              	.LBB1584:
 3659              	.LBB1583:
 3660              	.LBB1579:
 3661              	.LBB1580:
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
 3662              		.loc 7 67 0
 3663 15a1 448B73F8 		mov	r14d, DWORD PTR [rbx-8]	# __result, MEM[(_Atomic_word *)_341 + -8B]
 3664              	.LVL251:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3665              		.loc 7 68 0
 3666 15a5 458D5EFF 		lea	r11d, [r14-1]	# tmp1401,
 3667              	.LBE1580:
 3668              	.LBE1579:
 3669              		.loc 7 84 0
 3670 15a9 4589F4   		mov	r12d, r14d	# D.73748, __result
 3671              	.LVL252:
 3672              	.LBB1582:
 3673              	.LBB1581:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3674              		.loc 7 68 0
 3675 15ac 44895BF8 		mov	DWORD PTR [rbx-8], r11d	# MEM[(_Atomic_word *)_341 + -8B], tmp1401
 3676 15b0 E973FFFF 		jmp	.L132	#
 3676      FF
 3677              	.LVL253:
 3678              	.L200:
 3679              	.LBE1581:
 3680              	.LBE1582:
 3681              	.LBE1583:
 3682              	.LBE1584:
 3683              	.LBE1586:
 3684              	.LBE1588:
 3685              	.LBE1591:
 3686              	.LBE1596:
 3687              	.LBE1599:
 3688              	.LBE1610:
 3689              	.LBE1612:
 3690              	.LBE1621:
 3691              	.LBB1622:
 3692              	.LBB1536:
 3693              	.LBB1533:
 3694              	.LBB1530:
 3695              	.LBB1526:
 3696              	.LBB1521:
  49:/usr/include/c++/4.8.2/bits/basic_ios.h **** 	__throw_bad_cast();
 3697              		.loc 3 49 0
 3698 15b5 E8000000 		call	_ZSt16__throw_bad_castv	#
 3698      00
 3699              	.LEHE8:
 3700              	.LVL254:
 3701              	.L144:
 3702              	.LBE1521:
 3703              	.LBE1526:
 3704              	.LBE1530:
 3705              	.LBE1533:
 3706              	.LBE1536:
 3707              	.LBE1622:
 3708              	.LBB1623:
 3709              	.LBB1624:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3710              		.loc 5 539 0
 3711 15ba 4C8B8C24 		mov	r9, QWORD PTR [rsp+320]	# tmp1871, D.62922._M_dataplus._M_p
 3711      40010000 
 3712 15c2 4989C7   		mov	r15, rax	# tmp1411,
 3713              	.LVL255:
 3714 15c5 488DB424 		lea	rsi, [rsp+352]	# tmp1872,
 3714      60010000 
 3715 15cd 498D79E8 		lea	rdi, [r9-24]	# D.73739,
 3716 15d1 C5F877   		vzeroupper
 3717 15d4 E8000000 		call	_ZNSs4_Rep10_M_disposeERKSaIcE	#
 3717      00
 3718              	.LVL256:
 3719 15d9 E9A3FEFF 		jmp	.L120	#
 3719      FF
 3720              	.LVL257:
 3721              	.L199:
 3722              	.LBE1624:
 3723              	.LBE1623:
 3724              	.LBB1625:
 3725              	.LBB1503:
 3726              	.LBB1498:
 3727              	.LBB1425:
 3728              	.LBB1420:
 3729              	.LBB1418:
 3730              	.LBB1416:
 246:/usr/include/c++/4.8.2/bits/basic_string.h **** 							 -1) <= 0)
 3731              		.loc 5 246 0
 3732 15de 4C8D6710 		lea	r12, [rdi+16]	# D.73746,
 3733              	.LVL258:
 3734              	.LBB1406:
 3735              	.LBB1407:
  81:/usr/include/c++/4.8.2/ext/atomicity.h ****     if (__gthread_active_p())
 3736              		.loc 7 81 0
 3737 15e2 BE000000 		mov	esi, OFFSET FLAT:_ZL28__gthrw___pthread_key_createPjPFvPvE	# tmp1366,
 3737      00
 3738 15e7 4885F6   		test	rsi, rsi	# tmp1366
 3739 15ea 744B     		je	.L114	#,
 3740              	.LVL259:
 3741              	.LBB1408:
 3742              	.LBB1409:
  49:/usr/include/c++/4.8.2/ext/atomicity.h ****   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
 3743              		.loc 7 49 0
 3744 15ec 41BDFFFF 		mov	r13d, -1	# D.73747,
 3744      FFFF
 3745 15f2 F0450FC1 		lock xadd	DWORD PTR [r12], r13d	#,* D.73746, D.73747
 3745      2C24
 3746              	.LVL260:
 3747              	.L115:
 3748              	.LBE1409:
 3749              	.LBE1408:
 3750              	.LBE1407:
 3751              	.LBE1406:
 245:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
 3752              		.loc 5 245 0
 3753 15f8 4585ED   		test	r13d, r13d	# D.73748
 3754 15fb 0F8F0CFD 		jg	.L105	#,
 3754      FFFF
 249:/usr/include/c++/4.8.2/bits/basic_string.h **** 		  _M_destroy(__a);
 3755              		.loc 5 249 0
 3756 1601 488DB424 		lea	rsi, [rsp+318]	# tmp1854,
 3756      3E010000 
 3757 1609 E8000000 		call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
 3757      00
 3758              	.LVL261:
 3759 160e E9FAFCFF 		jmp	.L105	#
 3759      FF
 3760              	.LVL262:
 3761              	.L149:
 3762              	.L189:
 3763              	.LBE1416:
 3764              	.LBE1418:
 3765              	.LBE1420:
 3766              	.LBE1425:
 3767              	.LBB1426:
 3768              	.LBB1427:
 539:/usr/include/c++/4.8.2/bits/basic_string.h ****       { _M_rep()->_M_dispose(this->get_allocator()); }
 3769              		.loc 5 539 0
 3770 1613 488DB424 		lea	rsi, [rsp+318]	# tmp1860,
 3770      3E010000 
 3771 161b 4989C7   		mov	r15, rax	# tmp1382,
 3772              	.LVL263:
 3773 161e 488B8424 		mov	rax, QWORD PTR [rsp+352]	# tmp1859,
 3773      60010000 
 3774 1626 488D78E8 		lea	rdi, [rax-24]	# D.73739,
 3775 162a C5F877   		vzeroupper
 3776 162d E8000000 		call	_ZNSs4_Rep10_M_disposeERKSaIcE	#
 3776      00
 3777              	.LVL264:
 3778 1632 E9BAFEFF 		jmp	.L118	#
 3778      FF
 3779              	.LVL265:
 3780              	.L114:
 3781              	.LBE1427:
 3782              	.LBE1426:
 3783              	.LBB1428:
 3784              	.LBB1421:
 3785              	.LBB1419:
 3786              	.LBB1417:
 3787              	.LBB1415:
 3788              	.LBB1414:
 3789              	.LBB1410:
 3790              	.LBB1411:
  67:/usr/include/c++/4.8.2/ext/atomicity.h ****     _Atomic_word __result = *__mem;
 3791              		.loc 7 67 0
 3792 1637 418B5AF8 		mov	ebx, DWORD PTR [r10-8]	# __result,
 3793              	.LVL266:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3794              		.loc 7 68 0
 3795 163b 448D7BFF 		lea	r15d, [rbx-1]	# tmp1367,
 3796              	.LBE1411:
 3797              	.LBE1410:
 3798              		.loc 7 84 0
 3799 163f 4189DD   		mov	r13d, ebx	# D.73748, __result
 3800              	.LBB1413:
 3801              	.LBB1412:
  68:/usr/include/c++/4.8.2/ext/atomicity.h ****     *__mem += __val;
 3802              		.loc 7 68 0
 3803 1642 45897AF8 		mov	DWORD PTR [r10-8], r15d	#, tmp1367
 3804 1646 EBB0     		jmp	.L115	#
 3805              	.LVL267:
 3806              	.L198:
 3807              	.LBE1412:
 3808              	.LBE1413:
 3809              	.LBE1414:
 3810              	.LBE1415:
 3811              	.LBE1417:
 3812              	.LBE1419:
 3813              	.LBE1421:
 3814              	.LBE1428:
 3815              	.LBB1429:
 3816              	.LBB1391:
 3817              	.LBB1386:
 3818              	.LBB1383:
 3819              	.LBB1380:
 3820              	.LBB1377:
 3821              	.LBB1374:
 133:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  __throw_logic_error(__N("basic_string::_S_construct null not valid"));
 3822              		.loc 12 133 0
 3823 1648 BF000000 		mov	edi, OFFSET FLAT:.LC34	#,
 3823      00
 3824              	.LEHB9:
 3825 164d E8000000 		call	_ZSt19__throw_logic_errorPKc	#
 3825      00
 3826              	.LVL268:
 3827              	.L197:
 129:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  return _S_empty_rep()._M_refdata();
 3828              		.loc 12 129 0
 3829 1652 41B80000 		mov	r8d, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE+24	# D.73736,
 3829      0000
 3830 1658 E977FCFF 		jmp	.L96	#
 3830      FF
 3831              	.LVL269:
 3832              	.L95:
 3833              	.LBE1374:
 3834              	.LBE1377:
 3835              	.LBE1380:
 3836              	.LBE1383:
 3837              	.LBE1386:
 3838              	.LBE1391:
 3839              	.LBE1429:
 3840              	.LBB1430:
 3841              	.LBB1431:
 3842              	.LBB1432:
 3843              	.LBB1433:
 3844              	.LBB1434:
 3845              	.LBB1435:
 3846              	.LBB1436:
 128:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	if (__beg == __end && __a == _Alloc())
 3847              		.loc 12 128 0
 3848 165d 4939DE   		cmp	r14, rbx	# D.73743, D.73743
 3849 1660 0F848800 		je	.L203	#,
 3849      0000
 3850              	.LVL270:
 132:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
 3851              		.loc 12 132 0
 3852 1666 4885DB   		test	rbx, rbx	# D.73743
 3853 1669 0F84A500 		je	.L204	#,
 3853      0000
 3854              	.L109:
 3855              	.LVL271:
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 3856              		.loc 12 138 0
 3857 166f 488D9424 		lea	rdx, [rsp+319]	# tmp1876,
 3857      3F010000 
 3858              	.LBB1437:
 3859              	.LBB1438:
 3860              	.LBB1439:
 3861              		.loc 13 96 0
 3862 1677 4929DE   		sub	r14, rbx	# __dnew, D.73743
 3863              	.LVL272:
 3864              	.LBE1439:
 3865              	.LBE1438:
 3866              	.LBE1437:
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 3867              		.loc 12 138 0
 3868 167a 31F6     		xor	esi, esi	#
 3869 167c 4C89F7   		mov	rdi, r14	#, __dnew
 3870              	.LBB1442:
 3871              	.LBB1441:
 3872              	.LBB1440:
 3873              		.loc 13 96 0
 3874 167f 4D89F7   		mov	r15, r14	# __dnew, __dnew
 3875              	.LVL273:
 3876              	.LBE1440:
 3877              	.LBE1441:
 3878              	.LBE1442:
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 3879              		.loc 12 138 0
 3880 1682 E8000000 		call	_ZNSs4_Rep9_S_createEmmRKSaIcE	#
 3880      00
 3881              	.LEHE9:
 3882              	.LVL274:
 3883              		.loc 12 140 0
 3884 1687 4C8D5818 		lea	r11, [rax+24]	# D.73736,
 3885              	.LBB1443:
 3886              	.LBB1444:
 3887              	.LBB1445:
 356:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 3888              		.loc 5 356 0
 3889 168b 4983FE01 		cmp	r14, 1	# __dnew,
 3890              	.LBE1445:
 3891              	.LBE1444:
 3892              	.LBE1443:
 138:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	_Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 3893              		.loc 12 138 0
 3894 168f 4989C5   		mov	r13, rax	# __r,
 3895              	.LVL275:
 3896              	.LBB1456:
 3897              	.LBB1453:
 3898              	.LBB1450:
 356:/usr/include/c++/4.8.2/bits/basic_string.h **** 	if (__n == 1)
 3899              		.loc 5 356 0
 3900 1692 7547     		jne	.L110	#,
 3901              	.LBE1450:
 3902              	.LBE1453:
 3903              	.LBE1456:
 3904              	.LBE1436:
 3905              	.LBE1435:
 3906              	.LBE1434:
 3907              	.LBE1433:
 3908              	.LBE1432:
 3909              	.LBE1431:
 3910              	.LBE1430:
 3911              	.LBE1498:
 3912              	.LBE1503:
 3913              	.LBE1625:
 3914              	.LBE1631:
 3915              	.LBE1636:
 3916              	.LBE1642:
 354:/usr/include/c++/4.8.2/bits/basic_string.h ****       _M_copy(_CharT* __d, const _CharT* __s, size_type __n)
 3917              		.loc 5 354 0
 3918 1694 0FB60B   		movzx	ecx, BYTE PTR [rbx]	# D.73745, MEM[(const char_type &)_249]
 3919              	.LVL276:
 3920              	.LBB1643:
 3921              	.LBB1637:
 3922              	.LBB1632:
 3923              	.LBB1626:
 3924              	.LBB1504:
 3925              	.LBB1499:
 3926              	.LBB1485:
 3927              	.LBB1480:
 3928              	.LBB1477:
 3929              	.LBB1474:
 3930              	.LBB1471:
 3931              	.LBB1468:
 3932              	.LBB1465:
 3933              	.LBB1457:
 3934              	.LBB1454:
 3935              	.LBB1451:
 3936              	.LBB1446:
 3937              	.LBB1447:
 243:/usr/include/c++/4.8.2/bits/char_traits.h ****       { __c1 = __c2; }
 3938              		.loc 14 243 0
 3939 1697 41884D18 		mov	BYTE PTR [r13+24], cl	# MEM[(char_type &)__r_289 + 24], D.73745
 3940              	.LVL277:
 3941              	.L111:
 3942              	.LBE1447:
 3943              	.LBE1446:
 3944              	.LBE1451:
 3945              	.LBE1454:
 3946              	.LBE1457:
 3947              	.LBB1458:
 3948              	.LBB1459:
 210:/usr/include/c++/4.8.2/bits/basic_string.h **** 	  if (__builtin_expect(this != &_S_empty_rep(), false))
 3949              		.loc 5 210 0
 3950 169b 4981FD00 		cmp	r13, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE	# __r,
 3950      000000
 3951 16a2 7412     		je	.L106	#,
 3952              	.LVL278:
 3953              	.LBB1460:
 3954              	.LBB1461:
 204:/usr/include/c++/4.8.2/bits/basic_string.h ****         { this->_M_refcount = 0; }
 3955              		.loc 5 204 0
 3956 16a4 41C74510 		mov	DWORD PTR [r13+16], 0	# MEM[(_Atomic_word *)__r_289 + 16B],
 3956      00000000 
 3957              	.LBE1461:
 3958              	.LBE1460:
 214:/usr/include/c++/4.8.2/bits/basic_string.h **** 	      this->_M_length = __n;
 3959              		.loc 5 214 0
 3960 16ac 4D897D00 		mov	QWORD PTR [r13+0], r15	# __r_289->D.22725._M_length, __dnew
 3961              	.LVL279:
 3962              	.LBB1462:
 3963              	.LBB1463:
 243:/usr/include/c++/4.8.2/bits/char_traits.h ****       { __c1 = __c2; }
 3964              		.loc 14 243 0
 3965 16b0 43C6443D 		mov	BYTE PTR [r13+24+r15], 0	# MEM[(char_type &)_295],
 3965      1800
 3966              	.LVL280:
 3967              	.L106:
 3968              	.LBE1463:
 3969              	.LBE1462:
 3970              	.LBE1459:
 3971              	.LBE1458:
 3972              	.LBE1465:
 3973              	.LBE1468:
 3974              	.LBE1471:
 3975              	.LBE1474:
 3976              	.LBE1477:
 3977              	.LBE1480:
 3978              	.LBE1485:
 3979              	.LBB1486:
 3980              	.LBB1487:
 583:/usr/include/c++/4.8.2/bits/basic_string.h **** 	this->swap(__str);
 3981              		.loc 5 583 0
 3982 16b6 488D9C24 		lea	rbx, [rsp+352]	# tmp1446,
 3982      60010000 
 3983              	.LVL281:
 3984              	.LBE1487:
 3985              	.LBE1486:
 3986              	.LBB1489:
 3987              	.LBB1481:
 3988              	.LBB1482:
 275:/usr/include/c++/4.8.2/bits/basic_string.h **** 	: _Alloc(__a), _M_p(__dat) { }
 3989              		.loc 5 275 0
 3990 16be 4C899C24 		mov	QWORD PTR [rsp+352], r11	# MEM[(struct _Alloc_hider *)&D.73309]._M_p, D.73736
 3990      60010000 
 3991              	.LVL282:
 3992              	.LBE1482:
 3993              	.LBE1481:
 3994              	.LBE1489:
 3995              	.LBB1490:
 3996              	.LBB1488:
 583:/usr/include/c++/4.8.2/bits/basic_string.h **** 	this->swap(__str);
 3997              		.loc 5 583 0
 3998 16c6 488DBC24 		lea	rdi, [rsp+320]	# tmp1852,
 3998      40010000 
 3999              	.LVL283:
 4000 16ce 4889DE   		mov	rsi, rbx	#, tmp1446
 4001              	.LEHB10:
 4002 16d1 E8000000 		call	_ZNSs4swapERSs	#
 4002      00
 4003              	.LEHE10:
 4004              	.LVL284:
 4005 16d6 E919FCFF 		jmp	.L196	#
 4005      FF
 4006              	.LVL285:
 4007              	.L110:
 4008              	.LBE1488:
 4009              	.LBE1490:
 4010              	.LBB1491:
 4011              	.LBB1483:
 4012              	.LBB1478:
 4013              	.LBB1475:
 4014              	.LBB1472:
 4015              	.LBB1469:
 4016              	.LBB1466:
 4017              	.LBB1464:
 4018              	.LBB1455:
 4019              	.LBB1452:
 4020              	.LBB1448:
 4021              	.LBB1449:
 4022              		.loc 14 271 0
 4023 16db 4C89DF   		mov	rdi, r11	#, D.73736
 4024 16de 4C89FA   		mov	rdx, r15	#, __dnew
 4025 16e1 4889DE   		mov	rsi, rbx	#, D.73743
 4026 16e4 E8000000 		call	memcpy	#
 4026      00
 4027              	.LVL286:
 4028 16e9 4989C3   		mov	r11, rax	# D.73736,
 4029 16ec EBAD     		jmp	.L111	#
 4030              	.LVL287:
 4031              	.L203:
 4032              	.LBE1449:
 4033              	.LBE1448:
 4034              	.LBE1452:
 4035              	.LBE1455:
 4036              	.LBE1464:
 129:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  return _S_empty_rep()._M_refdata();
 4037              		.loc 12 129 0
 4038 16ee 41BB0000 		mov	r11d, OFFSET FLAT:_ZNSs4_Rep20_S_empty_rep_storageE+24	# D.73736,
 4038      0000
 4039 16f4 EBC0     		jmp	.L106	#
 4040              	.LVL288:
 4041              	.L94:
 4042              	.LBE1466:
 4043              	.LBE1469:
 4044              	.LBE1472:
 4045              	.LBE1475:
 4046              	.LBE1478:
 4047              	.LBE1483:
 4048              	.LBE1491:
 4049              	.LBB1492:
 4050              	.LBB1493:
 547:/usr/include/c++/4.8.2/bits/basic_string.h ****       { return this->assign(__str); }
 4051              		.loc 5 547 0
 4052 16f6 488DB424 		lea	rsi, [rsp+384]	# tmp1855,
 4052      80010000 
 4053 16fe 488D7650 		lea	rsi, [rsi+80]	# tmp1370,
 4054 1702 488DBC24 		lea	rdi, [rsp+320]	# tmp1856,
 4054      40010000 
 4055              	.LVL289:
 4056              	.LEHB11:
 4057 170a E8000000 		call	_ZNSs6assignERKSs	#
 4057      00
 4058              	.LVL290:
 4059 170f E9F9FBFF 		jmp	.L105	#
 4059      FF
 4060              	.LVL291:
 4061              	.L204:
 4062              	.LBE1493:
 4063              	.LBE1492:
 4064              	.LBB1494:
 4065              	.LBB1484:
 4066              	.LBB1479:
 4067              	.LBB1476:
 4068              	.LBB1473:
 4069              	.LBB1470:
 4070              	.LBB1467:
 132:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
 4071              		.loc 12 132 0
 4072 1714 4D85F6   		test	r14, r14	# D.73743
 4073 1717 0F8452FF 		je	.L109	#,
 4073      FFFF
 133:/usr/include/c++/4.8.2/bits/basic_string.tcc **** 	  __throw_logic_error(__N("basic_string::_S_construct null not valid"));
 4074              		.loc 12 133 0
 4075 171d BF000000 		mov	edi, OFFSET FLAT:.LC34	#,
 4075      00
 4076 1722 E8000000 		call	_ZSt19__throw_logic_errorPKc	#
 4076      00
 4077              	.LEHE11:
 4078              	.LVL292:
 4079              	.L148:
 4080 1727 E9E7FEFF 		jmp	.L189	#
 4080      FF
 4081              	.LBE1467:
 4082              	.LBE1470:
 4083              	.LBE1473:
 4084              	.LBE1476:
 4085              	.LBE1479:
 4086              	.LBE1484:
 4087              	.LBE1494:
 4088              	.LBE1499:
 4089              	.LBE1504:
 4090              	.LBE1626:
 4091              	.LBE1632:
 4092              	.LBE1637:
 4093              	.LBE1643:
 4094              		.cfi_endproc
 4095              	.LFE4288:
 4096              		.globl	__gxx_personality_v0
 4097              		.section	.gcc_except_table,"a",@progbits
 4098              	.LLSDA4288:
 4099 0000 FF       		.byte	0xff
 4100 0001 FF       		.byte	0xff
 4101 0002 01       		.byte	0x1
 4102 0003 48       		.uleb128 .LLSDACSE4288-.LLSDACSB4288
 4103              	.LLSDACSB4288:
 4104 0004 BD1F     		.uleb128 .LEHB0-.LFB4288
 4105 0006 05       		.uleb128 .LEHE0-.LEHB0
 4106 0007 D428     		.uleb128 .L145-.LFB4288
 4107 0009 00       		.uleb128 0
 4108 000a EE20     		.uleb128 .LEHB1-.LFB4288
 4109 000c 05       		.uleb128 .LEHE1-.LEHB1
 4110 000d 9629     		.uleb128 .L146-.LFB4288
 4111 000f 00       		.uleb128 0
 4112 0010 FE20     		.uleb128 .LEHB2-.LFB4288
 4113 0012 B203     		.uleb128 .LEHE2-.LEHB2
 4114 0014 FB28     		.uleb128 .L143-.LFB4288
 4115 0016 00       		.uleb128 0
 4116 0017 9C25     		.uleb128 .LEHB3-.LFB4288
 4117 0019 05       		.uleb128 .LEHE3-.LEHB3
 4118 001a E329     		.uleb128 .L147-.LFB4288
 4119 001c 00       		.uleb128 0
 4120 001d EF25     		.uleb128 .LEHB4-.LFB4288
 4121 001f 05       		.uleb128 .LEHE4-.LEHB4
 4122 0020 932C     		.uleb128 .L149-.LFB4288
 4123 0022 00       		.uleb128 0
 4124 0023 9E26     		.uleb128 .LEHB5-.LFB4288
 4125 0025 45       		.uleb128 .LEHE5-.LEHB5
 4126 0026 BA2B     		.uleb128 .L144-.LFB4288
 4127 0028 00       		.uleb128 0
 4128 0029 8127     		.uleb128 .LEHB6-.LFB4288
 4129 002b 05       		.uleb128 .LEHE6-.LEHB6
 4130 002c FB28     		.uleb128 .L143-.LFB4288
 4131 002e 00       		.uleb128 0
 4132 002f F628     		.uleb128 .LEHB7-.LFB4288
 4133 0031 20       		.uleb128 .LEHE7-.LEHB7
 4134 0032 00       		.uleb128 0
 4135 0033 00       		.uleb128 0
 4136 0034 F82A     		.uleb128 .LEHB8-.LFB4288
 4137 0036 42       		.uleb128 .LEHE8-.LEHB8
 4138 0037 BA2B     		.uleb128 .L144-.LFB4288
 4139 0039 00       		.uleb128 0
 4140 003a CD2C     		.uleb128 .LEHB9-.LFB4288
 4141 003c 3A       		.uleb128 .LEHE9-.LEHB9
 4142 003d E329     		.uleb128 .L147-.LFB4288
 4143 003f 00       		.uleb128 0
 4144 0040 D12D     		.uleb128 .LEHB10-.LFB4288
 4145 0042 05       		.uleb128 .LEHE10-.LEHB10
 4146 0043 A72E     		.uleb128 .L148-.LFB4288
 4147 0045 00       		.uleb128 0
 4148 0046 8A2E     		.uleb128 .LEHB11-.LFB4288
 4149 0048 1D       		.uleb128 .LEHE11-.LEHB11
 4150 0049 E329     		.uleb128 .L147-.LFB4288
 4151 004b 00       		.uleb128 0
 4152              	.LLSDACSE4288:
 4153              		.section	.text.startup
 4155 172c 0F1F4000 		.p2align 4,,15
 4157              	_GLOBAL__sub_I_U:
 4158              	.LFB4540:
  34:main.cpp      **** 
  35:main.cpp      **** }
 4159              		.loc 9 35 0
 4160              		.cfi_startproc
 4161              	.LVL293:
 4162 1730 4883EC08 		sub	rsp, 8	#,
 4163              		.cfi_def_cfa_offset 16
 4164              	.LBB1646:
 4165              	.LBB1647:
 4166              		.file 16 "/usr/include/c++/4.8.2/iostream"
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
 4167              		.loc 16 74 0
 4168 1734 BF000000 		mov	edi, OFFSET FLAT:_ZStL8__ioinit	#,
 4168      00
 4169 1739 E8000000 		call	_ZNSt8ios_base4InitC1Ev	#
 4169      00
 4170              	.LVL294:
 4171 173e BA000000 		mov	edx, OFFSET FLAT:__dso_handle	#,
 4171      00
 4172 1743 BE000000 		mov	esi, OFFSET FLAT:_ZStL8__ioinit	#,
 4172      00
 4173 1748 BF000000 		mov	edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev	#,
 4173      00
 4174              	.LBE1647:
 4175              	.LBE1646:
 4176              		.loc 9 35 0
 4177 174d 4883C408 		add	rsp, 8	#,
 4178              		.cfi_def_cfa_offset 8
 4179              	.LBB1649:
 4180              	.LBB1648:
 4181              		.loc 16 74 0
 4182 1751 E9000000 		jmp	__cxa_atexit	#
 4182      00
 4183              	.LVL295:
 4184              	.LBE1648:
 4185              	.LBE1649:
 4186              		.cfi_endproc
 4187              	.LFE4540:
 4189              		.section	.init_array,"aw"
 4190              		.align 8
 4191 0000 00000000 		.quad	_GLOBAL__sub_I_U
 4191      00000000 
 4192              		.weak	_ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7V_other
 4193              		.section	.bss._ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7V_other,"awG",@no
 4194              		.align 32
 4197              	_ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7V_other:
 4198 0000 00000000 		.zero	800000
 4198      00000000 
 4198      00000000 
 4198      00000000 
 4198      00000000 
 4199              		.weak	_ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7U_other
 4200              		.section	.bss._ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7U_other,"awG",@no
 4201              		.align 32
 4204              	_ZZN16naive_integratorILi50ELi40ELi100EfE7proceedEiPA40_A100_fS3_E7U_other:
 4205 0000 00000000 		.zero	800000
 4205      00000000 
 4205      00000000 
 4205      00000000 
 4205      00000000 
 4206              		.globl	V
 4207              		.bss
 4208              		.align 32
 4211              	V:
 4212 0000 00000000 		.zero	800000
 4212      00000000 
 4212      00000000 
 4212      00000000 
 4212      00000000 
 4213              		.globl	U
 4214              		.align 32
 4217              	U:
 4218 c3500 00000000 		.zero	800000
 4218      00000000 
 4218      00000000 
 4218      00000000 
 4218      00000000 
 4219              		.local	_ZStL8__ioinit
 4220              		.comm	_ZStL8__ioinit,1,1
 4221              		.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
 4222              		.section	.rodata.cst4,"aM",@progbits,4
 4223              		.align 4
 4224              	.LC0:
 4225 0000 0000803F 		.long	1065353216
 4226              		.section	.rodata.cst32,"aM",@progbits,32
 4227              		.align 32
 4228              	.LC2:
 4229 0000 0000803F 		.long	1065353216
 4230 0004 0000803F 		.long	1065353216
 4231 0008 0000803F 		.long	1065353216
 4232 000c 0000803F 		.long	1065353216
 4233 0010 0000803F 		.long	1065353216
 4234 0014 0000803F 		.long	1065353216
 4235 0018 0000803F 		.long	1065353216
 4236 001c 0000803F 		.long	1065353216
 4237              		.section	.rodata.cst8,"aM",@progbits,8
 4238              		.align 8
 4239              	.LC4:
 4240 0000 9A999999 		.long	2576980378
 4241 0004 9999B93F 		.long	1069128089
 4242              		.align 8
 4243              	.LC5:
 4244 0008 00000000 		.long	0
 4245 000c 0000D03F 		.long	1070596096
 4246              		.section	.rodata.cst32
 4247              		.align 32
 4248              	.LC6:
 4249 0020 64000000 		.long	100
 4250 0024 64000000 		.long	100
 4251 0028 64000000 		.long	100
 4252 002c 64000000 		.long	100
 4253 0030 64000000 		.long	100
 4254 0034 64000000 		.long	100
 4255 0038 64000000 		.long	100
 4256 003c 64000000 		.long	100
 4257              		.align 32
 4258              	.LC7:
 4259 0040 1F85EB51 		.long	1374389535
 4260 0044 1F85EB51 		.long	1374389535
 4261 0048 1F85EB51 		.long	1374389535
 4262 004c 1F85EB51 		.long	1374389535
 4263 0050 1F85EB51 		.long	1374389535
 4264 0054 1F85EB51 		.long	1374389535
 4265 0058 1F85EB51 		.long	1374389535
 4266 005c 1F85EB51 		.long	1374389535
 4267              		.align 32
 4268              	.LC8:
 4269 0060 04       		.byte	4
 4270 0061 05       		.byte	5
 4271 0062 06       		.byte	6
 4272 0063 07       		.byte	7
 4273 0064 80       		.byte	-128
 4274 0065 80       		.byte	-128
 4275 0066 80       		.byte	-128
 4276 0067 80       		.byte	-128
 4277 0068 0C       		.byte	12
 4278 0069 0D       		.byte	13
 4279 006a 0E       		.byte	14
 4280 006b 0F       		.byte	15
 4281 006c 80       		.byte	-128
 4282 006d 80       		.byte	-128
 4283 006e 80       		.byte	-128
 4284 006f 80       		.byte	-128
 4285 0070 04       		.byte	4
 4286 0071 05       		.byte	5
 4287 0072 06       		.byte	6
 4288 0073 07       		.byte	7
 4289 0074 80       		.byte	-128
 4290 0075 80       		.byte	-128
 4291 0076 80       		.byte	-128
 4292 0077 80       		.byte	-128
 4293 0078 0C       		.byte	12
 4294 0079 0D       		.byte	13
 4295 007a 0E       		.byte	14
 4296 007b 0F       		.byte	15
 4297 007c 80       		.byte	-128
 4298 007d 80       		.byte	-128
 4299 007e 80       		.byte	-128
 4300 007f 80       		.byte	-128
 4301              		.align 32
 4302              	.LC9:
 4303 0080 80       		.byte	-128
 4304 0081 80       		.byte	-128
 4305 0082 80       		.byte	-128
 4306 0083 80       		.byte	-128
 4307 0084 04       		.byte	4
 4308 0085 05       		.byte	5
 4309 0086 06       		.byte	6
 4310 0087 07       		.byte	7
 4311 0088 80       		.byte	-128
 4312 0089 80       		.byte	-128
 4313 008a 80       		.byte	-128
 4314 008b 80       		.byte	-128
 4315 008c 0C       		.byte	12
 4316 008d 0D       		.byte	13
 4317 008e 0E       		.byte	14
 4318 008f 0F       		.byte	15
 4319 0090 80       		.byte	-128
 4320 0091 80       		.byte	-128
 4321 0092 80       		.byte	-128
 4322 0093 80       		.byte	-128
 4323 0094 04       		.byte	4
 4324 0095 05       		.byte	5
 4325 0096 06       		.byte	6
 4326 0097 07       		.byte	7
 4327 0098 80       		.byte	-128
 4328 0099 80       		.byte	-128
 4329 009a 80       		.byte	-128
 4330 009b 80       		.byte	-128
 4331 009c 0C       		.byte	12
 4332 009d 0D       		.byte	13
 4333 009e 0E       		.byte	14
 4334 009f 0F       		.byte	15
 4335              		.align 32
 4336              	.LC10:
 4337 00a0 FFFFFFFF 		.long	4294967295
 4338 00a4 FFFFFFFF 		.long	4294967295
 4339 00a8 FFFFFFFF 		.long	4294967295
 4340 00ac FFFFFFFF 		.long	4294967295
 4341 00b0 FFFFFFFF 		.long	4294967295
 4342 00b4 FFFFFFFF 		.long	4294967295
 4343 00b8 FFFFFFFF 		.long	4294967295
 4344 00bc FFFFFFFF 		.long	4294967295
 4345              		.align 32
 4346              	.LC11:
 4347 00c0 63000000 		.long	99
 4348 00c4 63000000 		.long	99
 4349 00c8 63000000 		.long	99
 4350 00cc 63000000 		.long	99
 4351 00d0 63000000 		.long	99
 4352 00d4 63000000 		.long	99
 4353 00d8 63000000 		.long	99
 4354 00dc 63000000 		.long	99
 4355              		.align 32
 4356              	.LC12:
 4357 00e0 65000000 		.long	101
 4358 00e4 65000000 		.long	101
 4359 00e8 65000000 		.long	101
 4360 00ec 65000000 		.long	101
 4361 00f0 65000000 		.long	101
 4362 00f4 65000000 		.long	101
 4363 00f8 65000000 		.long	101
 4364 00fc 65000000 		.long	101
 4365              		.align 32
 4366              	.LC13:
 4367 0100 0000C040 		.long	1086324736
 4368 0104 0000C040 		.long	1086324736
 4369 0108 0000C040 		.long	1086324736
 4370 010c 0000C040 		.long	1086324736
 4371 0110 0000C040 		.long	1086324736
 4372 0114 0000C040 		.long	1086324736
 4373 0118 0000C040 		.long	1086324736
 4374 011c 0000C040 		.long	1086324736
 4375              		.align 32
 4376              	.LC14:
 4377 0120 FCA9F1D2 		.long	3539053052
 4378 0124 4D62503F 		.long	1062232653
 4379 0128 FCA9F1D2 		.long	3539053052
 4380 012c 4D62503F 		.long	1062232653
 4381 0130 FCA9F1D2 		.long	3539053052
 4382 0134 4D62503F 		.long	1062232653
 4383 0138 FCA9F1D2 		.long	3539053052
 4384 013c 4D62503F 		.long	1062232653
 4385              		.align 32
 4386              	.LC15:
 4387 0140 2951CEA0 		.long	2697875753
 4388 0144 C845E83E 		.long	1055409608
 4389 0148 2951CEA0 		.long	2697875753
 4390 014c C845E83E 		.long	1055409608
 4391 0150 2951CEA0 		.long	2697875753
 4392 0154 C845E83E 		.long	1055409608
 4393 0158 2951CEA0 		.long	2697875753
 4394 015c C845E83E 		.long	1055409608
 4395              		.align 32
 4396              	.LC16:
 4397 0160 DFBC9A78 		.long	2023406815
 4398 0164 563452BF 		.long	-1085131690
 4399 0168 DFBC9A78 		.long	2023406815
 4400 016c 563452BF 		.long	-1085131690
 4401 0170 DFBC9A78 		.long	2023406815
 4402 0174 563452BF 		.long	-1085131690
 4403 0178 DFBC9A78 		.long	2023406815
 4404 017c 563452BF 		.long	-1085131690
 4405              		.align 32
 4406              	.LC17:
 4407 0180 97801ED4 		.long	3558768791
 4408 0184 679CEF3D 		.long	1039113319
 4409 0188 97801ED4 		.long	3558768791
 4410 018c 679CEF3D 		.long	1039113319
 4411 0190 97801ED4 		.long	3558768791
 4412 0194 679CEF3D 		.long	1039113319
 4413 0198 97801ED4 		.long	3558768791
 4414 019c 679CEF3D 		.long	1039113319
 4415              		.align 32
 4416              	.LC18:
 4417 01a0 00000000 		.long	0
 4418 01a4 00006940 		.long	1080623104
 4419 01a8 00000000 		.long	0
 4420 01ac 00006940 		.long	1080623104
 4421 01b0 00000000 		.long	0
 4422 01b4 00006940 		.long	1080623104
 4423 01b8 00000000 		.long	0
 4424 01bc 00006940 		.long	1080623104
 4425              		.align 32
 4426              	.LC19:
 4427 01c0 DFBC9A78 		.long	2023406815
 4428 01c4 5634123F 		.long	1058157654
 4429 01c8 DFBC9A78 		.long	2023406815
 4430 01cc 5634123F 		.long	1058157654
 4431 01d0 DFBC9A78 		.long	2023406815
 4432 01d4 5634123F 		.long	1058157654
 4433 01d8 DFBC9A78 		.long	2023406815
 4434 01dc 5634123F 		.long	1058157654
 4435              		.align 32
 4436              	.LC20:
 4437 01e0 DFBC9A78 		.long	2023406815
 4438 01e4 5634523F 		.long	1062351958
 4439 01e8 DFBC9A78 		.long	2023406815
 4440 01ec 5634523F 		.long	1062351958
 4441 01f0 DFBC9A78 		.long	2023406815
 4442 01f4 5634523F 		.long	1062351958
 4443 01f8 DFBC9A78 		.long	2023406815
 4444 01fc 5634523F 		.long	1062351958
 4445              		.align 32
 4446              	.LC21:
 4447 0200 18C31F4F 		.long	1327481624
 4448 0204 7EC4E03D 		.long	1038140542
 4449 0208 18C31F4F 		.long	1327481624
 4450 020c 7EC4E03D 		.long	1038140542
 4451 0210 18C31F4F 		.long	1327481624
 4452 0214 7EC4E03D 		.long	1038140542
 4453 0218 18C31F4F 		.long	1327481624
 4454 021c 7EC4E03D 		.long	1038140542
 4455              		.section	.rodata.cst4
 4456              		.align 4
 4457              	.LC22:
 4458 0004 0000C040 		.long	1086324736
 4459              		.section	.rodata.cst8
 4460              		.align 8
 4461              	.LC23:
 4462 0010 FCA9F1D2 		.long	3539053052
 4463 0014 4D62503F 		.long	1062232653
 4464              		.align 8
 4465              	.LC24:
 4466 0018 DFBC9A78 		.long	2023406815
 4467 001c 5634123F 		.long	1058157654
 4468              		.align 8
 4469              	.LC25:
 4470 0020 DFBC9A78 		.long	2023406815
 4471 0024 5634523F 		.long	1062351958
 4472              		.align 8
 4473              	.LC26:
 4474 0028 18C31F4F 		.long	1327481624
 4475 002c 7EC4E03D 		.long	1038140542
 4476              		.align 8
 4477              	.LC27:
 4478 0030 2951CEA0 		.long	2697875753
 4479 0034 C845E83E 		.long	1055409608
 4480              		.align 8
 4481              	.LC28:
 4482 0038 DFBC9A78 		.long	2023406815
 4483 003c 563452BF 		.long	-1085131690
 4484              		.align 8
 4485              	.LC29:
 4486 0040 97801ED4 		.long	3558768791
 4487 0044 679CEF3D 		.long	1039113319
 4488              		.align 8
 4489              	.LC30:
 4490 0048 00000000 		.long	0
 4491 004c 00006940 		.long	1080623104
 4492              		.section	.rodata.cst32
 4493              		.align 32
 4494              	.LC31:
 4495 0220 08000000 		.long	8
 4496 0224 08000000 		.long	8
 4497 0228 08000000 		.long	8
 4498 022c 08000000 		.long	8
 4499 0230 08000000 		.long	8
 4500 0234 08000000 		.long	8
 4501 0238 08000000 		.long	8
 4502 023c 08000000 		.long	8
 4503              		.section	.rodata.cst4
 4504              		.align 4
 4505              	.LC33:
 4506 0008 00002041 		.long	1092616192
 4507              		.text
 4508              	.Letext0:
 4509              		.file 17 "/usr/include/c++/4.8.2/cwchar"
 4510              		.file 18 "/usr/include/c++/4.8.2/bits/exception_ptr.h"
 4511              		.file 19 "/usr/include/c++/4.8.2/x86_64-redhat-linux/bits/c++config.h"
 4512              		.file 20 "/usr/include/c++/4.8.2/type_traits"
 4513              		.file 21 "/usr/include/c++/4.8.2/bits/cpp_type_traits.h"
 4514              		.file 22 "/usr/include/c++/4.8.2/bits/stl_pair.h"
 4515              		.file 23 "/usr/include/c++/4.8.2/bits/stl_iterator_base_types.h"
 4516              		.file 24 "/usr/include/c++/4.8.2/cstdint"
 4517              		.file 25 "/usr/include/c++/4.8.2/clocale"
 4518              		.file 26 "/usr/include/c++/4.8.2/new"
 4519              		.file 27 "/usr/include/c++/4.8.2/bits/allocator.h"
 4520              		.file 28 "/usr/include/c++/4.8.2/cstdlib"
 4521              		.file 29 "/usr/include/c++/4.8.2/cstdio"
 4522              		.file 30 "/usr/include/c++/4.8.2/initializer_list"
 4523              		.file 31 "/usr/include/c++/4.8.2/cwctype"
 4524              		.file 32 "/usr/include/c++/4.8.2/bits/ostream.tcc"
 4525              		.file 33 "/usr/include/c++/4.8.2/debug/debug.h"
 4526              		.file 34 "/usr/include/c++/4.8.2/bits/random.h"
 4527              		.file 35 "/usr/include/c++/4.8.2/bits/alloc_traits.h"
 4528              		.file 36 "/usr/include/c++/4.8.2/bits/uses_allocator.h"
 4529              		.file 37 "/usr/include/c++/4.8.2/tuple"
 4530              		.file 38 "/usr/include/c++/4.8.2/bits/basic_ios.tcc"
 4531              		.file 39 "/usr/include/c++/4.8.2/bits/stl_algobase.h"
 4532              		.file 40 "/usr/include/c++/4.8.2/iosfwd"
 4533              		.file 41 "/usr/include/c++/4.8.2/functional"
 4534              		.file 42 "/usr/include/c++/4.8.2/bits/ostream_insert.h"
 4535              		.file 43 "/usr/include/c++/4.8.2/bits/postypes.h"
 4536              		.file 44 "/usr/include/c++/4.8.2/bits/functexcept.h"
 4537              		.file 45 "/usr/include/c++/4.8.2/ext/new_allocator.h"
 4538              		.file 46 "/usr/include/c++/4.8.2/ext/numeric_traits.h"
 4539              		.file 47 "/usr/include/c++/4.8.2/bits/stl_iterator.h"
 4540              		.file 48 "/usr/include/bits/mathdef.h"
 4541              		.file 49 "/usr/include/bits/types.h"
 4542              		.file 50 "/usr/lib/gcc/x86_64-redhat-linux/4.8.3/include/stddef.h"
 4543              		.file 51 "/usr/include/unistd.h"
 4544              		.file 52 "/usr/include/stdio.h"
 4545              		.file 53 "/usr/include/libio.h"
 4546              		.file 54 "<\347\265\204\343\201\277\350\276\274\343\201\277>"
 4547              		.file 55 "/usr/include/wchar.h"
 4548              		.file 56 "/usr/include/time.h"
 4549              		.file 57 "/usr/include/stdint.h"
 4550              		.file 58 "/usr/include/locale.h"
 4551              		.file 59 "/usr/include/c++/4.8.2/x86_64-redhat-linux/bits/atomic_word.h"
 4552              		.file 60 "/usr/include/stdlib.h"
 4553              		.file 61 "/usr/include/bits/stdlib-float.h"
 4554              		.file 62 "/usr/include/c++/4.8.2/ext/type_traits.h"
 4555              		.file 63 "/usr/include/_G_config.h"
 4556              		.file 64 "/usr/include/bits/stdio.h"
 4557              		.file 65 "/usr/include/wctype.h"
 4558              		.file 66 "/usr/include/c++/4.8.2/x86_64-redhat-linux/bits/gthr-default.h"
 4559              		.file 67 "/usr/include/bits/mathcalls.h"

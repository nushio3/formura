/**
***
*** Copyright (C) 1985-2015 Intel Corporation.  All rights reserved.
***
*** The information and source code contained herein is the exclusive
*** property of Intel Corporation and may not be disclosed, examined
*** or reproduced in whole or in part except as expressly provided
*** by the accompanying LICENSE AGREEMENT
***
**/

/*
 *  Definition of C++ class interfaces to the Intel(R) Pentium(R) 4 processor
 *  SSE2 intrinsics, and Intel(R) Advanced Vector Extensions 512 intrinsics.
 *
 *	File name : dvec.h  class definitions 
 *
 *	Concept: A C++ abstraction of simd intrinsics designed to
 *      improve programmer productivity.  Speed and accuracy are
 *      sacrificed for utility.  Facilitates an easy transition to
 *      compiler intrinsics or assembly language.
 *
 */

#ifndef DVEC_H_INCLUDED
#define DVEC_H_INCLUDED

#if !defined __cplusplus
	#error ERROR: This file is only supported in C++ compilations!
#endif /* !__cplusplus */

#include <ia32intrin.h> 
#include <assert.h>
#include <fvec.h>

#pragma pack(push,16) /* Must ensure class & union 16-B aligned */


/* If using MSVC5.0, explicit keyword should be used */
#if (_MSC_VER >= 1100) || defined (__linux__) || defined(__unix__) || defined(__APPLE__)
        #define EXPLICIT explicit
#else
   #if (__INTEL_COMPILER)
        #define EXPLICIT explicit /* If MSVC4.x & Intel, use __explicit */
   #else
        #define EXPLICIT /* nothing */
        #pragma message( "explicit keyword not recognized") 
   #endif
#endif

/* Figure out whether and how to define the output operators */
#if defined(_IOSTREAM_) || defined(_CPP_IOSTREAM) || defined(_GLIBCXX_IOSTREAM) || defined (_LIBCPP_IOSTREAM)
#define DVEC_DEFINE_OUTPUT_OPERATORS
#define DVEC_STD std::
#elif defined(_INC_IOSTREAM) || defined(_IOSTREAM_H_)
#define DVEC_DEFINE_OUTPUT_OPERATORS
#define DVEC_STD
#endif

const union
{
    int i[4];
    __m128d m;
} __f64vec2_abs_mask_cheat = {0xffffffff, 0x7fffffff, 0xffffffff, 0x7fffffff};

#define _f64vec2_abs_mask ((F64vec2)__f64vec2_abs_mask_cheat.m)

/* EMM Functionality Intrinsics */

class I8vec16;			/* 16 elements, each element a signed or unsigned char data type */
class Is8vec16;			/* 16 elements, each element a signed char data type */
class Iu8vec16;			/* 16 elements, each element an unsigned char data type */	
class I16vec8;			/* 8 elements, each element a signed or unsigned short */
class Is16vec8;			/* 8 elements, each element a signed short */
class Iu16vec8;			/* 8 elements, each element an unsigned short */
class I32vec4;			/* 4 elements, each element a signed or unsigned long */
class Is32vec4;			/* 4 elements, each element a signed long */
class Iu32vec4;			/* 4 elements, each element an unsigned long */
class I64vec2;			/* 2 element, each a __m64 data type */
class I128vec1;			/* 1 element, a __m128i data type */

#define _MM_16UB(element,vector) (*((unsigned char*)&(vector) + (element)))
#define _MM_16B(element,vector) (*((signed char*)&(vector) + (element)))

#define _MM_8UW(element,vector) (*((unsigned short*)&(vector) + (element)))
#define _MM_8W(element,vector) (*((short*)&(vector) + (element)))

#define _MM_4UDW(element,vector) (*((unsigned int*)&(vector) + (element)))
#define _MM_4DW(element,vector) (*((int*)&(vector) + (element)))

#define _MM_2QW(element,vector) (*((__int64*)&(vector) + (element)))

/* We need a m128i constant, keeping performance in mind*/

inline const __m128i get_mask128()
{
        static union {__int64 m1[2]; __m128i m2;} mask128 =
                     {0xffffffffffffffff, 0xffffffffffffffff};
	return mask128.m2;
}


/* M128 Class:
 * 1 element, a __m128i data type  
 * Contructors & Logical Operations 
 */

class M128  
{
protected:
		__m128i vec;

public:
	M128()									{ } 
	M128(__m128i mm)						{ vec = mm; }

	operator __m128i() const					{ return vec; }

	/* Logical Operations */
	M128& operator&=(const M128 &a)					{ return *this = (M128) _mm_and_si128(vec,a); }
	M128& operator|=(const M128 &a)					{ return *this = (M128) _mm_or_si128(vec,a); }
	M128& operator^=(const M128 &a)					{ return *this = (M128) _mm_xor_si128(vec,a); }

};

inline M128 operator&(const M128 &a, const M128 &b)	{ return _mm_and_si128(a,b); }
inline M128 operator|(const M128 &a, const M128 &b)	{ return _mm_or_si128(a,b); }
inline M128 operator^(const M128 &a, const M128 &b)	{ return _mm_xor_si128(a,b); }
inline M128 andnot(const M128 &a, const M128 &b)	{ return _mm_andnot_si128(a,b); }

/* I128vec1 Class:
 * 1 element, a __m128i data type  
 * Contains Operations which can operate on any __m128i data type
 */

class I128vec1 : public M128  
{
public:
	I128vec1()								{ }
	I128vec1(__m128i mm) : M128(mm)				{ }

	I128vec1& operator= (const M128 &a) { return *this = (I128vec1) a; }
	I128vec1& operator&=(const M128 &a) { return *this = (I128vec1) _mm_and_si128(vec,a); }
	I128vec1& operator|=(const M128 &a) { return *this = (I128vec1) _mm_or_si128(vec,a); }
	I128vec1& operator^=(const M128 &a) { return *this = (I128vec1) _mm_xor_si128(vec,a); }

};

/* I64vec2 Class: 
 * 2 elements, each element signed or unsigned 64-bit integer 
 */
class I64vec2 : public M128  
{
public:
	I64vec2() { }
	I64vec2(__m128i mm) : M128(mm) { }

	I64vec2(__m64 q1, __m64 q0)
	{ 
		_MM_2QW(0,vec) = *(__int64*)&q0;
		_MM_2QW(1,vec) = *(__int64*)&q1;
	}

	/* Assignment Operator */
	I64vec2& operator= (const M128 &a) { return *this = (I64vec2) a; }

	/* Logical Assignment Operators */
	I64vec2& operator&=(const M128 &a) { return *this = (I64vec2) _mm_and_si128(vec,a); }
	I64vec2& operator|=(const M128 &a) { return *this = (I64vec2) _mm_or_si128(vec,a); }
	I64vec2& operator^=(const M128 &a) { return *this = (I64vec2) _mm_xor_si128(vec,a); }

	/* Addition & Subtraction Assignment Operators */
	I64vec2& operator +=(const I64vec2 &a)			{ return *this = (I64vec2) _mm_add_epi64(vec,a); }
	I64vec2& operator -=(const I64vec2 &a)			{ return *this = (I64vec2) _mm_sub_epi64(vec,a); }   

	/* Shift Logical Operators */
	I64vec2 operator<<(const I64vec2 &a) 			{ return _mm_sll_epi64(vec,a); }
	I64vec2 operator<<(int count) 					{ return _mm_slli_epi64(vec,count); }
	I64vec2& operator<<=(const I64vec2 &a)			{ return *this = (I64vec2) _mm_sll_epi64(vec,a); }
	I64vec2& operator<<=(int count) 				{ return *this = (I64vec2) _mm_slli_epi64(vec,count); }
	I64vec2 operator>>(const I64vec2 &a) 			{ return _mm_srl_epi64(vec,a); }
	I64vec2 operator>>(int count) 					{ return _mm_srli_epi64(vec,count); }
	I64vec2& operator>>=(const I64vec2 &a)			{ return *this = (I64vec2) _mm_srl_epi64(vec,a); }
	I64vec2& operator>>=(int count) 				{ return *this = (I64vec2) _mm_srli_epi64(vec,count); }

	/* Element Access for Debug, No data modified */
	const __int64& operator[](int i)const
	{
		assert(static_cast<unsigned int>(i) < 2);	/* Only 2 elements to access */
		return _MM_2QW(i,vec);
	} 

	/* Element Access and Assignment for Debug */
	__int64& operator[](int i)
	{
		assert(static_cast<unsigned int>(i) < 2);	/* Only 2 elements to access */
		return _MM_2QW(i,vec);
	} 


};

/* Unpacks */
inline I64vec2 unpack_low(const I64vec2 &a, const I64vec2 &b) 	{return _mm_unpacklo_epi64(a,b); }
inline I64vec2 unpack_high(const I64vec2 &a, const I64vec2 &b) 	{return _mm_unpackhi_epi64(a,b); }

/* I32vec4 Class: 
 * 4 elements, each element either a signed or unsigned int 
 */
class I32vec4 : public M128  
{
public:
	I32vec4() { }
	I32vec4(__m128i mm) : M128(mm) { }
	I32vec4(int i3, int i2, int i1, int i0)
            {
                vec = _mm_set_epi32(i3, i2, i1, i0);
            }

	/* Assignment Operator */
	I32vec4& operator= (const M128 &a)				{ return *this = (I32vec4) a; }

	/* Logicals Operators */
	I32vec4& operator&=(const M128 &a)				{ return *this = (I32vec4) _mm_and_si128(vec,a); }
	I32vec4& operator|=(const M128 &a)				{ return *this = (I32vec4) _mm_or_si128(vec,a); }
	I32vec4& operator^=(const M128 &a)				{ return *this = (I32vec4) _mm_xor_si128(vec,a); }

	/* Addition & Subtraction Assignment Operators */
	I32vec4& operator +=(const I32vec4 &a)			{ return *this = (I32vec4)_mm_add_epi32(vec,a); }
	I32vec4& operator -=(const I32vec4 &a)			{ return *this = (I32vec4)_mm_sub_epi32(vec,a); }   

	/* Shift Logical Operators */
	I32vec4 operator<<(const I32vec4 &a) 			{ return _mm_sll_epi32(vec,a); }
	I32vec4 operator<<(int count) 					{ return _mm_slli_epi32(vec,count); }
	I32vec4& operator<<=(const I32vec4 &a)			{ return *this = (I32vec4)_mm_sll_epi32(vec,a); }
	I32vec4& operator<<=(int count) 				{ return *this = (I32vec4)_mm_slli_epi32(vec,count); }

};

inline I32vec4 cmpeq(const I32vec4 &a, const I32vec4 &b) 	    { return _mm_cmpeq_epi32(a,b); }
inline I32vec4 cmpneq(const I32vec4 &a, const I32vec4 &b) 	    { return _mm_andnot_si128(_mm_cmpeq_epi32(a,b), get_mask128()); }

inline I32vec4 unpack_low(const I32vec4 &a, const I32vec4 &b) 	{ return _mm_unpacklo_epi32(a,b); }
inline I32vec4 unpack_high(const I32vec4 &a, const I32vec4 &b) 	{ return _mm_unpackhi_epi32(a,b); }

/* Is32vec4 Class: 
 * 4 elements, each element signed integer 
 */
class Is32vec4 : public I32vec4  
{
public:
	Is32vec4() { }
	Is32vec4(__m128i mm) : I32vec4(mm) { }
	Is32vec4(int i3, int i2, int i1, int i0) : I32vec4(i3, i2, i1, i0) { }

	/* Assignment Operator */
	Is32vec4& operator= (const M128 &a)		{ return *this = (Is32vec4) a; }

	/* Logical Operators */
	Is32vec4& operator&=(const M128 &a)		{ return *this = (Is32vec4) _mm_and_si128(vec,a); }
	Is32vec4& operator|=(const M128 &a)		{ return *this = (Is32vec4) _mm_or_si128(vec,a); }
	Is32vec4& operator^=(const M128 &a)		{ return *this = (Is32vec4) _mm_xor_si128(vec,a); }

	/* Addition & Subtraction Assignment Operators */
	Is32vec4& operator +=(const I32vec4 &a)	{ return *this = (Is32vec4)_mm_add_epi32(vec,a); }
	Is32vec4& operator -=(const I32vec4 &a)	{ return *this = (Is32vec4)_mm_sub_epi32(vec,a); }   

	/* Shift Logical Operators */
	Is32vec4 operator<<(const M128 &a) 		{ return _mm_sll_epi32(vec,a); }
	Is32vec4 operator<<(int count) 			{ return _mm_slli_epi32(vec,count); }
	Is32vec4& operator<<=(const M128 &a)	{ return *this = (Is32vec4)_mm_sll_epi32(vec,a); }
	Is32vec4& operator<<=(int count) 		{ return *this = (Is32vec4)_mm_slli_epi32(vec,count); }
	/* Shift Arithmetic Operations */
	Is32vec4 operator>>(const M128 &a) 		{ return _mm_sra_epi32(vec,a); } 
	Is32vec4 operator>>(int count) 			{ return _mm_srai_epi32(vec,count); }
	Is32vec4& operator>>=(const M128 &a)	{ return *this = (Is32vec4) _mm_sra_epi32(vec,a); } 
	Is32vec4& operator>>=(int count) 		{ return *this = (Is32vec4) _mm_srai_epi32(vec,count); }

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
	/* Output for Debug */
	friend DVEC_STD ostream& operator<< (DVEC_STD ostream &os,
                                             const Is32vec4 &a)
	{
		os << "[3]:" << _MM_4DW(3,a) 
			<< " [2]:" << _MM_4DW(2,a) 
			<< " [1]:" << _MM_4DW(1,a) 
			<< " [0]:" << _MM_4DW(0,a);
		return os;
	}
#endif

	/* Element Access for Debug, No data modified */
	const int& operator[](int i)const
	{
		assert(static_cast<unsigned int>(i) < 4);	/* Only 4 elements to access */
		return _MM_4DW(i,vec);
	} 

	/* Element Access for Debug */
	int& operator[](int i)
	{
		assert(static_cast<unsigned int>(i) < 4);	/* Only 4 elements to access */
		return _MM_4DW(i,vec);
	} 
};

/* Compares */
inline Is32vec4 cmpeq(const Is32vec4 &a, const Is32vec4 &b) 	    	{ return _mm_cmpeq_epi32(a,b); }
inline Is32vec4 cmpneq(const Is32vec4 &a, const Is32vec4 &b)			{ return _mm_andnot_si128(_mm_cmpeq_epi32(a,b), get_mask128()); }
inline Is32vec4 cmpgt(const Is32vec4 &a, const Is32vec4 &b)				{ return _mm_cmpgt_epi32(a,b); }
inline Is32vec4 cmplt(const Is32vec4 &a, const Is32vec4 &b)				{ return _mm_cmpgt_epi32(b,a); }

/* Unpacks */
inline Is32vec4 unpack_low(const Is32vec4 &a, const Is32vec4 &b) 		{ return _mm_unpacklo_epi32(a,b); }
inline Is32vec4 unpack_high(const Is32vec4 &a, const Is32vec4 &b)		{ return _mm_unpackhi_epi32(a,b); }

inline Is32vec4 div(const Is32vec4 &a, const Is32vec4 &b)               { return _mm_idiv_epi32(a,b); }
inline Is32vec4 rem(const Is32vec4 &a, const Is32vec4 &b)               { return _mm_irem_epi32(a,b); }


/* Iu32vec4 Class: 
 * 4 elements, each element unsigned int
 */
class Iu32vec4 : public I32vec4  
{
public:
	Iu32vec4() { }
	Iu32vec4(__m128i mm) : I32vec4(mm) { }
	Iu32vec4(unsigned int ui3, unsigned int ui2,
                 unsigned int ui1, unsigned int ui0)
            : I32vec4(ui3, ui2, ui1, ui0) { }

	/* Assignment Operator */
	Iu32vec4& operator= (const M128 &a)		{ return *this = (Iu32vec4) a; }

	/* Logical Assignment Operators */
	Iu32vec4& operator&=(const M128 &a)		{ return *this = (Iu32vec4) _mm_and_si128(vec,a); }
	Iu32vec4& operator|=(const M128 &a)		{ return *this = (Iu32vec4) _mm_or_si128(vec,a); }
	Iu32vec4& operator^=(const M128 &a)		{ return *this = (Iu32vec4) _mm_xor_si128(vec,a); }

	/* Addition & Subtraction Assignment Operators */
	Iu32vec4& operator +=(const I32vec4 &a)	{ return *this = (Iu32vec4)_mm_add_epi32(vec,a); }
	Iu32vec4& operator -=(const I32vec4 &a)	{ return *this = (Iu32vec4)_mm_sub_epi32(vec,a); }   

	/* Shift Logical Operators */
	Iu32vec4 operator<<(const M128 &a) 				{ return _mm_sll_epi32(vec,a); }
	Iu32vec4 operator<<(int count) 					{ return _mm_slli_epi32(vec,count); }
	Iu32vec4& operator<<=(const M128 &a)			{ return *this = (Iu32vec4)_mm_sll_epi32(vec,a); }
	Iu32vec4& operator<<=(int count) 				{ return *this = (Iu32vec4)_mm_slli_epi32(vec,count); }
	Iu32vec4 operator>>(const M128 &a) 				{ return _mm_srl_epi32(vec,a); }
	Iu32vec4 operator>>(int count) 					{ return _mm_srli_epi32(vec,count); }
	Iu32vec4& operator>>=(const M128 &a)			{ return *this = (Iu32vec4) _mm_srl_epi32(vec,a); }
	Iu32vec4& operator>>=(int count) 				{ return *this = (Iu32vec4) _mm_srli_epi32(vec,count); }

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
	/* Output for Debug */
	friend DVEC_STD ostream& operator<< (DVEC_STD ostream &os,
                                             const Iu32vec4 &a)
	{
		os << "[3]:" << _MM_4UDW(3,a) 
			<< " [2]:" << _MM_4UDW(2,a) 
			<< " [1]:" << _MM_4UDW(1,a) 
			<< " [0]:" << _MM_4UDW(0,a);
		return os;
	}
#endif

	/* Element Access for Debug, No data modified */
	const unsigned int& operator[](int i)const
	{
		assert(static_cast<unsigned int>(i) < 4);	/* Only 4 elements to access */
		return _MM_4UDW(i,vec);
	} 

	/* Element Access and Assignment for Debug */
	unsigned int& operator[](int i)
	{
		assert(static_cast<unsigned int>(i) < 4);	/* Only 4 elements to access */
		return _MM_4UDW(i,vec);
	} 
};

inline I64vec2 operator*(const Iu32vec4 &a, const Iu32vec4 &b) { return _mm_mul_epu32(a,b); }
inline Iu32vec4 cmpeq(const Iu32vec4 &a, const Iu32vec4 &b) 	{ return _mm_cmpeq_epi32(a,b); }
inline Iu32vec4 cmpneq(const Iu32vec4 &a, const Iu32vec4 &b) 	{ return _mm_andnot_si128(_mm_cmpeq_epi32(a,b), get_mask128()); }

inline Iu32vec4 unpack_low(const Iu32vec4 &a, const Iu32vec4 &b) 	{ return _mm_unpacklo_epi32(a,b); }
inline Iu32vec4 unpack_high(const Iu32vec4 &a, const Iu32vec4 &b)	{ return _mm_unpackhi_epi32(a,b); }

inline Iu32vec4 div(const Iu32vec4 &a, const Iu32vec4 &b)           { return _mm_udiv_epi32(a,b); }
inline Iu32vec4 rem(const Iu32vec4 &a, const Iu32vec4 &b)           { return _mm_urem_epi32(a,b); }

/* I16vec8 Class: 
 * 8 elements, each element either unsigned or signed short
 */
class I16vec8 : public M128  
{
public:
	I16vec8() { }
	I16vec8(__m128i mm) : M128(mm) { }
	I16vec8(short s7, short s6, short s5, short s4, short s3, short s2,
                short s1, short s0)
            {
                vec = _mm_set_epi16(s7, s6, s5, s4, s3, s2, s1, s0);
            }

	/* Assignment Operator */
	I16vec8& operator= (const M128 &a)		{ return *this = (I16vec8) a; }

	/* Logical Assignment Operators */
	I16vec8& operator&=(const M128 &a)		{ return *this = (I16vec8) _mm_and_si128(vec,a); }
	I16vec8& operator|=(const M128 &a)		{ return *this = (I16vec8) _mm_or_si128(vec,a); }
	I16vec8& operator^=(const M128 &a)		{ return *this = (I16vec8) _mm_xor_si128(vec,a); }

	/* Addition & Subtraction Assignment Operators */
	I16vec8& operator +=(const I16vec8 &a)	{ return *this = (I16vec8) _mm_add_epi16(vec,a); }
	I16vec8& operator -=(const I16vec8 &a)	{ return *this = (I16vec8) _mm_sub_epi16(vec,a); }   
	I16vec8& operator *=(const I16vec8 &a)	{ return *this = (I16vec8) _mm_mullo_epi16(vec,a); }   

	/* Shift Logical Operators */
	I16vec8 operator<<(const M128 &a) 				{ return _mm_sll_epi16(vec,a); }
	I16vec8 operator<<(int count) 				{ return _mm_slli_epi16(vec,count); }
	I16vec8& operator<<=(const M128 &a)				{ return *this = (I16vec8)_mm_sll_epi16(vec,a); }
	I16vec8& operator<<=(int count) 				{ return *this = (I16vec8)_mm_slli_epi16(vec,count); }

};


inline I16vec8 operator*(const I16vec8 &a, const I16vec8 &b)	{ return _mm_mullo_epi16(a,b); }   

inline I16vec8 cmpeq(const I16vec8 &a, const I16vec8 &b) 		{ return _mm_cmpeq_epi16(a,b); }
inline I16vec8 cmpneq(const I16vec8 &a, const I16vec8 &b) 		{ return _mm_andnot_si128(_mm_cmpeq_epi16(a,b), get_mask128()); }

inline I16vec8 unpack_low(const I16vec8 &a, const I16vec8 &b) 	{ return _mm_unpacklo_epi16(a,b); }
inline I16vec8 unpack_high(const I16vec8 &a, const I16vec8 &b) 	{ return _mm_unpackhi_epi16(a,b); }

/* Is16vec8 Class: 
 * 8 elements, each element signed short
 */
class Is16vec8 : public I16vec8  
{
public:
	Is16vec8() { }
	Is16vec8(__m128i mm) : I16vec8(mm) { }
	Is16vec8(signed short s7, signed short s6, signed short s5,
                 signed short s4, signed short s3, signed short s2,
                 signed short s1, signed short s0)
            : I16vec8(s7, s6, s5, s4, s3, s2, s1, s0) { }

	/* Assignment Operator */
	Is16vec8& operator= (const M128 &a)		{ return *this = (Is16vec8) a; }

	/* Logical Assignment Operators */
	Is16vec8& operator&=(const M128 &a)		{ return *this = (Is16vec8) _mm_and_si128(vec,a); }
	Is16vec8& operator|=(const M128 &a)		{ return *this = (Is16vec8) _mm_or_si128(vec,a); }
	Is16vec8& operator^=(const M128 &a)		{ return *this = (Is16vec8) _mm_xor_si128(vec,a); }

	/* Addition & Subtraction Assignment Operators */
	Is16vec8& operator +=(const I16vec8 &a)	{ return *this = (Is16vec8) _mm_add_epi16(vec,a); }
	Is16vec8& operator -=(const I16vec8 &a)	{ return *this = (Is16vec8) _mm_sub_epi16(vec,a); }   
	Is16vec8& operator *=(const I16vec8 &a)	{ return *this = (Is16vec8) _mm_mullo_epi16(vec,a); }   

	/* Shift Logical Operators */
	Is16vec8 operator<<(const M128 &a) 				{ return _mm_sll_epi16(vec,a); }
	Is16vec8 operator<<(int count) 				{ return _mm_slli_epi16(vec,count); }
	Is16vec8& operator<<=(const M128 &a)			{ return *this = (Is16vec8)_mm_sll_epi16(vec,a); }
	Is16vec8& operator<<=(int count) 				{ return *this = (Is16vec8)_mm_slli_epi16(vec,count); }
	/* Shift Arithmetic Operators */
	Is16vec8 operator>>(const M128 &a) 				{ return _mm_sra_epi16(vec,a); }
	Is16vec8 operator>>(int count) 				{ return _mm_srai_epi16(vec,count); }
	Is16vec8& operator>>=(const M128 &a)			{ return *this = (Is16vec8)_mm_sra_epi16(vec,a); }
	Is16vec8& operator>>=(int count) 				{ return *this = (Is16vec8)_mm_srai_epi16(vec,count); }

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
	/* Output for Debug */
	friend DVEC_STD ostream& operator<< (DVEC_STD ostream &os,
                                             const Is16vec8 &a)
	{
		os << "[7]:" << _MM_8W(7,a) 
			<< " [6]:" << _MM_8W(6,a) 
			<< " [5]:" << _MM_8W(5,a) 
			<< " [4]:" << _MM_8W(4,a) 
			<< " [3]:" << _MM_8W(3,a) 
			<< " [2]:" << _MM_8W(2,a) 
			<< " [1]:" << _MM_8W(1,a) 
			<< " [0]:" << _MM_8W(0,a);
		return os;
	}
#endif

	/* Element Access for Debug, No data modified */
	const signed short& operator[](int i)const
	{
		assert(static_cast<unsigned int>(i) < 8);	/* Only 8 elements to access */
		return _MM_8W(i,vec);
	} 

	/* Element Access and Assignment for Debug */
	signed short& operator[](int i)
	{
		assert(static_cast<unsigned int>(i) < 8);	/* Only 8 elements to access */
		return _MM_8W(i,vec);
	} 
};

inline Is16vec8 operator*(const Is16vec8 &a, const Is16vec8 &b)	{ return _mm_mullo_epi16(a,b); }   


/* Additional Is16vec8 functions: compares, unpacks, sat add/sub */
inline Is16vec8 cmpeq(const Is16vec8 &a, const Is16vec8 &b) 	{ return _mm_cmpeq_epi16(a,b); }
inline Is16vec8 cmpneq(const Is16vec8 &a, const Is16vec8 &b) 	{ return _mm_andnot_si128(_mm_cmpeq_epi16(a,b), get_mask128()); }
inline Is16vec8 cmpgt(const Is16vec8 &a, const Is16vec8 &b)		{ return _mm_cmpgt_epi16(a,b); }
inline Is16vec8 cmplt(const Is16vec8 &a, const Is16vec8 &b)		{ return _mm_cmpgt_epi16(b,a); }

inline Is16vec8 unpack_low(const Is16vec8 &a, const Is16vec8 &b) 	{ return _mm_unpacklo_epi16(a,b); }
inline Is16vec8 unpack_high(const Is16vec8 &a, const Is16vec8 &b)	{ return _mm_unpackhi_epi16(a,b); }

inline Is16vec8 mul_high(const Is16vec8 &a, const Is16vec8 &b)	{ return _mm_mulhi_epi16(a,b); }
inline Is32vec4 mul_add(const Is16vec8 &a, const Is16vec8 &b)	{ return _mm_madd_epi16(a,b);}

inline Is16vec8 sat_add(const Is16vec8 &a, const Is16vec8 &b)	{ return _mm_adds_epi16(a,b); }
inline Is16vec8 sat_sub(const Is16vec8 &a, const Is16vec8 &b)	{ return _mm_subs_epi16(a,b); }

inline Is16vec8 simd_max(const Is16vec8 &a, const Is16vec8 &b)	{ return _mm_max_epi16(a,b); }
inline Is16vec8 simd_min(const Is16vec8 &a, const Is16vec8 &b)	{ return _mm_min_epi16(a,b); }


/* Iu16vec8 Class: 
 * 8 elements, each element unsigned short
 */
class Iu16vec8 : public I16vec8  
{
public:
	Iu16vec8() { }
	Iu16vec8(__m128i mm) : I16vec8(mm) { }
	Iu16vec8(unsigned short s7, unsigned short s6, unsigned short s5,
                 unsigned short s4, unsigned short s3, unsigned short s2,
                 unsigned short s1, unsigned short s0)
            : I16vec8(s7, s6, s5, s4, s3, s2, s1, s0) { }

	/* Assignment Operator */
	Iu16vec8& operator= (const M128 &a)		{ return *this = (Iu16vec8) a; }
	/* Logical Assignment Operators */
	Iu16vec8& operator&=(const M128 &a)		{ return *this = (Iu16vec8) _mm_and_si128(vec,a); }
	Iu16vec8& operator|=(const M128 &a)		{ return *this = (Iu16vec8) _mm_or_si128(vec,a); }
	Iu16vec8& operator^=(const M128 &a)		{ return *this = (Iu16vec8) _mm_xor_si128(vec,a); }
	/* Addition & Subtraction Assignment Operators */
	Iu16vec8& operator +=(const I16vec8 &a)	{ return *this = (Iu16vec8) _mm_add_epi16(vec,a); }
	Iu16vec8& operator -=(const I16vec8 &a)	{ return *this = (Iu16vec8) _mm_sub_epi16(vec,a); }   
	Iu16vec8& operator *=(const I16vec8 &a)	{ return *this = (Iu16vec8) _mm_mullo_epi16(vec,a); }   

	/* Shift Logical Operators */
	Iu16vec8 operator<<(const M128 &a) 				{ return _mm_sll_epi16(vec,a); }
	Iu16vec8 operator<<(int count) 					{ return _mm_slli_epi16(vec,count); }
	Iu16vec8& operator<<=(const M128 &a)			{ return *this = (Iu16vec8)_mm_sll_epi16(vec,a); }
	Iu16vec8& operator<<=(int count) 				{ return *this = (Iu16vec8)_mm_slli_epi16(vec,count); }
	Iu16vec8 operator>>(const M128 &a) 				{ return _mm_srl_epi16(vec,a); }
	Iu16vec8 operator>>(int count) 					{ return _mm_srli_epi16(vec,count); }
	Iu16vec8& operator>>=(const M128 &a)			{ return *this = (Iu16vec8) _mm_srl_epi16(vec,a); }
	Iu16vec8& operator>>=(int count) 				{ return *this = (Iu16vec8) _mm_srli_epi16(vec,count); }


#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
	/* Output for Debug */
	friend DVEC_STD ostream& operator << (DVEC_STD ostream &os,
                                              const Iu16vec8 &a)
	{
		 os << "[7]:"  << (unsigned short)(_MM_8UW(7,a)) 
			<< " [6]:" << (unsigned short)(_MM_8UW(6,a)) 
			<< " [5]:" << (unsigned short)(_MM_8UW(5,a)) 
			<< " [4]:" << (unsigned short)(_MM_8UW(4,a)) 
			<< " [3]:" << (unsigned short)(_MM_8UW(3,a)) 
			<< " [2]:" << (unsigned short)(_MM_8UW(2,a)) 
			<< " [1]:" << (unsigned short)(_MM_8UW(1,a)) 
			<< " [0]:" << (unsigned short)(_MM_8UW(0,a));
		return os;
	}
#endif

	/* Element Access for Debug, No data modified */
	const unsigned short& operator[](int i)const
	{
		assert(static_cast<unsigned int>(i) < 8);	/* Only 8 elements to access */
		return _MM_8UW(i,vec);
	} 

	/* Element Access for Debug */
	unsigned short& operator[](int i)
	{
		assert(static_cast<unsigned int>(i) < 8);	/* Only 8 elements to access */
		return _MM_8UW(i,vec);
	} 
};

inline Iu16vec8 operator*(const Iu16vec8 &a, const Iu16vec8 &b)	{ return _mm_mullo_epi16(a,b); }   

/* Additional Iu16vec8 functions: cmpeq,cmpneq, unpacks, sat add/sub */
inline Iu16vec8 cmpeq(const Iu16vec8 &a, const Iu16vec8 &b) 	{ return _mm_cmpeq_epi16(a,b); }
inline Iu16vec8 cmpneq(const Iu16vec8 &a, const Iu16vec8 &b) 	{ return _mm_andnot_si128(_mm_cmpeq_epi16(a,b), get_mask128()); }

inline Iu16vec8 unpack_low(const Iu16vec8 &a, const Iu16vec8 &b) 	{ return _mm_unpacklo_epi16(a,b); }
inline Iu16vec8 unpack_high(const Iu16vec8 &a, const Iu16vec8 &b) { return _mm_unpackhi_epi16(a,b); }

inline Iu16vec8 sat_add(const Iu16vec8 &a, const Iu16vec8 &b)	{ return _mm_adds_epu16(a,b); }
inline Iu16vec8 sat_sub(const Iu16vec8 &a, const Iu16vec8 &b)	{ return _mm_subs_epu16(a,b); }

inline Iu16vec8 simd_avg(const Iu16vec8 &a, const Iu16vec8 &b)	{ return _mm_avg_epu16(a,b); }
inline I16vec8 mul_high(const Iu16vec8 &a, const Iu16vec8 &b)	{ return _mm_mulhi_epu16(a,b); }

/* I8vec16 Class: 
 * 16 elements, each element either unsigned or signed char
 */
class I8vec16 : public M128  
{
public:
	I8vec16() { }
	I8vec16(__m128i mm) : M128(mm) { }
        I8vec16(char s15, char s14, char s13, char s12, char s11, char s10,
                char s9, char s8, char s7, char s6, char s5, char s4,
                char s3, char s2, char s1, char s0)
            {
                vec = _mm_set_epi8(s15, s14, s13, s12, s11, s10, s9, s8,
                                   s7, s6, s5, s4, s3, s2, s1, s0);
            }

	/* Assignment Operator */
	I8vec16& operator= (const M128 &a)		{ return *this = (I8vec16) a; }

	/* Logical Assignment Operators */
	I8vec16& operator&=(const M128 &a)		{ return *this = (I8vec16) _mm_and_si128(vec,a); }
	I8vec16& operator|=(const M128 &a)		{ return *this = (I8vec16) _mm_or_si128(vec,a); }
	I8vec16& operator^=(const M128 &a)		{ return *this = (I8vec16) _mm_xor_si128(vec,a); }

	/* Addition & Subtraction Assignment Operators */
	I8vec16& operator +=(const I8vec16 &a)	{ return *this = (I8vec16) _mm_add_epi8(vec,a); }
	I8vec16& operator -=(const I8vec16 &a)	{ return *this = (I8vec16) _mm_sub_epi8(vec,a); }   

};

inline I8vec16 cmpeq(const I8vec16 &a, const I8vec16 &b) 		{ return _mm_cmpeq_epi8(a,b); }
inline I8vec16 cmpneq(const I8vec16 &a, const I8vec16 &b) 		{ return _mm_andnot_si128(_mm_cmpeq_epi8(a,b), get_mask128()); }

inline I8vec16 unpack_low(const I8vec16 &a, const I8vec16 &b) 	{ return _mm_unpacklo_epi8(a,b); }
inline I8vec16 unpack_high(const I8vec16 &a, const I8vec16 &b)	{ return _mm_unpackhi_epi8(a,b); }

/* Is8vec16 Class: 
 * 16 elements, each element a signed char
 */
class Is8vec16 : public I8vec16  
{
public:
	Is8vec16() { }
	Is8vec16(__m128i mm) : I8vec16(mm) { }
        Is8vec16(char s15, char s14, char s13, char s12, char s11, char s10,
                 char s9, char s8, char s7, char s6, char s5, char s4,
                 char s3, char s2, char s1, char s0)
            : I8vec16(s15, s14, s13, s12, s11, s10, s9, s8,
                      s7, s6, s5, s4, s3, s2, s1, s0) { }

	/* Assignment Operator */
	Is8vec16& operator= (const M128 &a)		{ return *this = (Is8vec16) a; }

	/* Logical Assignment Operators */
	Is8vec16& operator&=(const M128 &a)		{ return *this = (Is8vec16) _mm_and_si128(vec,a); }
	Is8vec16& operator|=(const M128 &a)		{ return *this = (Is8vec16) _mm_or_si128(vec,a); }
	Is8vec16& operator^=(const M128 &a)		{ return *this = (Is8vec16) _mm_xor_si128(vec,a); }

	/* Addition & Subtraction Assignment Operators */
	Is8vec16& operator +=(const I8vec16 &a)	{ return *this = (Is8vec16) _mm_add_epi8(vec,a); }
	Is8vec16& operator -=(const I8vec16 &a)	{ return *this = (Is8vec16) _mm_sub_epi8(vec,a); }   

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
	/* Output for Debug */
	friend DVEC_STD ostream& operator << (DVEC_STD ostream &os,
                                              const Is8vec16 &a)
	{
		 os << "[15]:"  << short(_MM_16B(15,a)) 
			<< " [14]:" << short(_MM_16B(14,a)) 
			<< " [13]:" << short(_MM_16B(13,a)) 
			<< " [12]:" << short(_MM_16B(12,a)) 
			<< " [11]:" << short(_MM_16B(11,a)) 
			<< " [10]:" << short(_MM_16B(10,a)) 
			<< " [9]:" << short(_MM_16B(9,a)) 
			<< " [8]:" << short(_MM_16B(8,a))
		      << " [7]:" << short(_MM_16B(7,a)) 
			<< " [6]:" << short(_MM_16B(6,a)) 
			<< " [5]:" << short(_MM_16B(5,a)) 
			<< " [4]:" << short(_MM_16B(4,a)) 
			<< " [3]:" << short(_MM_16B(3,a)) 
			<< " [2]:" << short(_MM_16B(2,a)) 
			<< " [1]:" << short(_MM_16B(1,a)) 
			<< " [0]:" << short(_MM_16B(0,a));
		return os;
	}
#endif

	/* Element Access for Debug, No data modified */
	const signed char& operator[](int i)const
	{
		assert(static_cast<unsigned int>(i) < 16);	/* Only 16 elements to access */
		return _MM_16B(i,vec);
	} 

	/* Element Access for Debug */
	signed char& operator[](int i)
	{
		assert(static_cast<unsigned int>(i) < 16);	/* Only 16 elements to access */
		return _MM_16B(i,vec);
	} 

};

inline Is8vec16 cmpeq(const Is8vec16 &a, const Is8vec16 &b) 	{ return _mm_cmpeq_epi8(a,b); }
inline Is8vec16 cmpneq(const Is8vec16 &a, const Is8vec16 &b) 	{ return _mm_andnot_si128(_mm_cmpeq_epi8(a,b), get_mask128()); }
inline Is8vec16 cmpgt(const Is8vec16 &a, const Is8vec16 &b) 	{ return _mm_cmpgt_epi8(a,b); }
inline Is8vec16 cmplt(const Is8vec16 &a, const Is8vec16 &b) 	{ return _mm_cmplt_epi8(a,b); }

inline Is8vec16 unpack_low(const Is8vec16 &a, const Is8vec16 &b) 	{ return _mm_unpacklo_epi8(a,b); }
inline Is8vec16 unpack_high(const Is8vec16 &a, const Is8vec16 &b) { return _mm_unpackhi_epi8(a,b); }

inline Is8vec16 sat_add(const Is8vec16 &a, const Is8vec16 &b)	{ return _mm_adds_epi8(a,b); }
inline Is8vec16 sat_sub(const Is8vec16 &a, const Is8vec16 &b)	{ return _mm_subs_epi8(a,b); }

/* Iu8vec16 Class: 
 * 16 elements, each element an unsigned char
 */
class Iu8vec16 : public I8vec16  
{
public:
	Iu8vec16() { }
	Iu8vec16(__m128i mm) : I8vec16(mm) { }
        Iu8vec16(unsigned char u15, unsigned char u14, unsigned char u13,
                 unsigned char u12, unsigned char u11, unsigned char u10,
                 unsigned char u9, unsigned char u8, unsigned char u7,
                 unsigned char u6, unsigned char u5, unsigned char u4,
                 unsigned char u3, unsigned char u2, unsigned char u1,
                 unsigned char u0)
            : I8vec16(u15, u14, u13, u12, u11, u10, u9, u8,
                      u7, u6, u5, u4, u3, u2, u1, u0) { }

	/* Assignment Operator */
	Iu8vec16& operator= (const M128 &a)		{ return *this = (Iu8vec16) a; }

	/* Logical Assignment Operators */
	Iu8vec16& operator&=(const M128 &a)		{ return *this = (Iu8vec16) _mm_and_si128(vec,a); }
	Iu8vec16& operator|=(const M128 &a)		{ return *this = (Iu8vec16) _mm_or_si128(vec,a); }
	Iu8vec16& operator^=(const M128 &a)		{ return *this = (Iu8vec16) _mm_xor_si128(vec,a); }

	/* Addition & Subtraction Assignment Operators */
	Iu8vec16& operator +=(const I8vec16 &a)	{ return *this = (Iu8vec16) _mm_add_epi8(vec,a); }
	Iu8vec16& operator -=(const I8vec16 &a)	{ return *this = (Iu8vec16) _mm_sub_epi8(vec,a); }   

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
	/* Output for Debug */
	friend DVEC_STD ostream& operator << (DVEC_STD ostream &os,
                                              const Iu8vec16 &a)
	{
		 os << "[15]:"  << (unsigned char)(_MM_16UB(15,a)) 
			<< " [14]:" << (unsigned char)(_MM_16UB(14,a)) 
			<< " [13]:" << (unsigned char)(_MM_16UB(13,a)) 
			<< " [12]:" << (unsigned char)(_MM_16UB(12,a)) 
			<< " [11]:" << (unsigned char)(_MM_16UB(11,a)) 
			<< " [10]:" << (unsigned char)(_MM_16UB(10,a)) 
			<< " [9]:" << (unsigned char)(_MM_16UB(9,a)) 
			<< " [8]:" << (unsigned char)(_MM_16UB(8,a))
		      << " [7]:" << (unsigned char)(_MM_16UB(7,a)) 
			<< " [6]:" << (unsigned char)(_MM_16UB(6,a)) 
			<< " [5]:" << (unsigned char)(_MM_16UB(5,a)) 
			<< " [4]:" << (unsigned char)(_MM_16UB(4,a)) 
			<< " [3]:" << (unsigned char)(_MM_16UB(3,a)) 
			<< " [2]:" << (unsigned char)(_MM_16UB(2,a)) 
			<< " [1]:" << (unsigned char)(_MM_16UB(1,a)) 
			<< " [0]:" << (unsigned char)(_MM_16UB(0,a));
		return os;
	}
#endif

	/* Element Access for Debug, No data modified */
	const unsigned char& operator[](int i)const
	{
		assert(static_cast<unsigned int>(i) < 16);	/* Only 16 elements to access */
		return _MM_16UB(i,vec);
	} 

	/* Element Access for Debug */
	unsigned char& operator[](int i)
	{
		assert(static_cast<unsigned int>(i) < 16);	/* Only 16 elements to access */
		return _MM_16UB(i,vec);
	} 

};

inline Iu8vec16 cmpeq(const Iu8vec16 &a, const Iu8vec16 &b) 	{ return _mm_cmpeq_epi8(a,b); }
inline Iu8vec16 cmpneq(const Iu8vec16 &a, const Iu8vec16 &b) 	{ return _mm_andnot_si128(_mm_cmpeq_epi8(a,b), get_mask128()); }

inline Iu8vec16 unpack_low(const Iu8vec16 &a, const Iu8vec16 &b) 	{ return _mm_unpacklo_epi8(a,b); }
inline Iu8vec16 unpack_high(const Iu8vec16 &a, const Iu8vec16 &b) { return _mm_unpackhi_epi8(a,b); }

inline Iu8vec16 sat_add(const Iu8vec16 &a, const Iu8vec16 &b)	{ return _mm_adds_epu8(a,b); }
inline Iu8vec16 sat_sub(const Iu8vec16 &a, const Iu8vec16 &b)	{ return _mm_subs_epu8(a,b); }

inline I64vec2 sum_abs(const Iu8vec16 &a, const Iu8vec16 &b)	{ return _mm_sad_epu8(a,b); }

inline Iu8vec16 simd_avg(const Iu8vec16 &a, const Iu8vec16 &b)	{ return _mm_avg_epu8(a,b); }
inline Iu8vec16 simd_max(const Iu8vec16 &a, const Iu8vec16 &b)	{ return _mm_max_epu8(a,b); }
inline Iu8vec16 simd_min(const Iu8vec16 &a, const Iu8vec16 &b)	{ return _mm_min_epu8(a,b); }

/* Pack & Saturates */

inline Is16vec8 pack_sat(const Is32vec4 &a, const Is32vec4 &b) 	{ return _mm_packs_epi32(a,b); }
inline Is8vec16 pack_sat(const Is16vec8 &a, const Is16vec8 &b) 	{ return _mm_packs_epi16(a,b); }
inline Iu8vec16 packu_sat(const Is16vec8 &a, const Is16vec8 &b) { return _mm_packus_epi16(a,b);}

/********************************* Logicals ****************************************/
#define IVEC128_LOGICALS(vect,element) \
inline I##vect##vec##element operator& (const I##vect##vec##element &a, const I##vect##vec##element &b) \
{ return _mm_and_si128( a,b); } \
inline I##vect##vec##element operator| (const I##vect##vec##element &a, const I##vect##vec##element &b) \
{ return _mm_or_si128( a,b); } \
inline I##vect##vec##element operator^ (const I##vect##vec##element &a, const I##vect##vec##element &b) \
{ return _mm_xor_si128( a,b); } \
inline I##vect##vec##element andnot (const I##vect##vec##element &a, const I##vect##vec##element &b) \
{ return _mm_andnot_si128( a,b); } 

IVEC128_LOGICALS(8,16)
IVEC128_LOGICALS(u8,16)
IVEC128_LOGICALS(s8,16)
IVEC128_LOGICALS(16,8)
IVEC128_LOGICALS(u16,8)
IVEC128_LOGICALS(s16,8)
IVEC128_LOGICALS(32,4)
IVEC128_LOGICALS(u32,4)
IVEC128_LOGICALS(s32,4)
IVEC128_LOGICALS(64,2)
IVEC128_LOGICALS(128,1)
#undef IVEC128_LOGICALS

/********************************* Add & Sub ****************************************/
#define IVEC128_ADD_SUB(vect,element,opsize) \
inline I##vect##vec##element operator+ (const I##vect##vec##element &a, const I##vect##vec##element &b) \
{ return _mm_add_##opsize( a,b); } \
inline I##vect##vec##element operator- (const I##vect##vec##element &a, const I##vect##vec##element &b) \
{ return _mm_sub_##opsize( a,b); }

IVEC128_ADD_SUB(8,16, epi8)
IVEC128_ADD_SUB(u8,16, epi8)
IVEC128_ADD_SUB(s8,16, epi8)
IVEC128_ADD_SUB(16,8, epi16)
IVEC128_ADD_SUB(u16,8, epi16)
IVEC128_ADD_SUB(s16,8, epi16)
IVEC128_ADD_SUB(32,4, epi32)
IVEC128_ADD_SUB(u32,4, epi32)
IVEC128_ADD_SUB(s32,4, epi32)
IVEC128_ADD_SUB(64,2, epi64)
#undef IVEC128_ADD_SUB

/************************* Conditional Select ********************************
 *      version of: retval = (a OP b)? c : d;                                *
 *      Where OP is one of the possible comparision operators.               *
 *      Example: r = select_eq(a,b,c,d);                                     *
 *      if "member at position x of the vector a" ==                         *
 *         "member at position x of vector b"                                *
 *      assign the corresponding member in r from c, else assign from d.     *
 ************************* Conditional Select ********************************/

#define IVEC128_SELECT(vect12,vect34,element,selop)                           \
	inline I##vect34##vec##element select_##selop (                       \
            const I##vect12##vec##element &a,                                 \
            const I##vect12##vec##element &b,                                 \
            const I##vect34##vec##element &c,                                 \
            const I##vect34##vec##element &d)                                 \
{                                                                             \
	I##vect12##vec##element mask = cmp##selop(a,b);                       \
	return( (I##vect34##vec##element)(mask & c ) |                        \
                I##vect34##vec##element ((_mm_andnot_si128(mask, d ))));      \
}

IVEC128_SELECT(8,s8,16,eq)
IVEC128_SELECT(8,u8,16,eq)
IVEC128_SELECT(8,8,16,eq)
IVEC128_SELECT(8,s8,16,neq)
IVEC128_SELECT(8,u8,16,neq)
IVEC128_SELECT(8,8,16,neq)

IVEC128_SELECT(16,s16,8,eq)
IVEC128_SELECT(16,u16,8,eq)
IVEC128_SELECT(16,16,8,eq)
IVEC128_SELECT(16,s16,8,neq)
IVEC128_SELECT(16,u16,8,neq)
IVEC128_SELECT(16,16,8,neq)

IVEC128_SELECT(32,s32,4,eq)
IVEC128_SELECT(32,u32,4,eq)
IVEC128_SELECT(32,32,4,eq)
IVEC128_SELECT(32,s32,4,neq)
IVEC128_SELECT(32,u32,4,neq)
IVEC128_SELECT(32,32,4,neq)

IVEC128_SELECT(s8,s8,16,gt)
IVEC128_SELECT(s8,u8,16,gt)
IVEC128_SELECT(s8,8,16,gt)
IVEC128_SELECT(s8,s8,16,lt)
IVEC128_SELECT(s8,u8,16,lt)
IVEC128_SELECT(s8,8,16,lt)

IVEC128_SELECT(s16,s16,8,gt)
IVEC128_SELECT(s16,u16,8,gt)
IVEC128_SELECT(s16,16,8,gt)
IVEC128_SELECT(s16,s16,8,lt)
IVEC128_SELECT(s16,u16,8,lt)
IVEC128_SELECT(s16,16,8,lt)
		
	
#undef IVEC128_SELECT


class F64vec2
{
protected:
   	 __m128d vec;
public:
	
	/* Constructors: __m128d, 2 doubles */
	F64vec2() {}
	
	/* initialize 2 DP FP with __m128d data type */	
	F64vec2(__m128d m)					{ vec = m;}

	/* initialize 2 DP FPs with 2 doubles */	
	F64vec2(double d1, double d0)		                { vec= _mm_set_pd(d1,d0); }

	/* Explicitly initialize each of 2 DP FPs with same double */	
	EXPLICIT F64vec2(double d)	{ vec = _mm_set1_pd(d); }	

	/* Conversion functions */
	operator  __m128d() const	{ return vec; }		/* Convert to __m128d */

 	/* Logical Operators */
	friend F64vec2 operator &(const F64vec2 &a, const F64vec2 &b) { return _mm_and_pd(a,b); }
	friend F64vec2 operator |(const F64vec2 &a, const F64vec2 &b) { return _mm_or_pd(a,b); }
	friend F64vec2 operator ^(const F64vec2 &a, const F64vec2 &b) { return _mm_xor_pd(a,b); }

	/* Arithmetic Operators */
	friend F64vec2 operator +(const F64vec2 &a, const F64vec2 &b) { return _mm_add_pd(a,b); }
	friend F64vec2 operator -(const F64vec2 &a, const F64vec2 &b) { return _mm_sub_pd(a,b); } 
	friend F64vec2 operator *(const F64vec2 &a, const F64vec2 &b) { return _mm_mul_pd(a,b); } 
	friend F64vec2 operator /(const F64vec2 &a, const F64vec2 &b) { return _mm_div_pd(a,b); }

	F64vec2& operator +=(const F64vec2 &a) { return *this = _mm_add_pd(vec,a); }
	F64vec2& operator -=(const F64vec2 &a) { return *this = _mm_sub_pd(vec,a); }   
	F64vec2& operator *=(const F64vec2 &a) { return *this = _mm_mul_pd(vec,a); } 
	F64vec2& operator /=(const F64vec2 &a) { return *this = _mm_div_pd(vec,a); }
	F64vec2& operator &=(const F64vec2 &a) { return *this = _mm_and_pd(vec,a); }
	F64vec2& operator |=(const F64vec2 &a) { return *this = _mm_or_pd(vec,a); }
	F64vec2& operator ^=(const F64vec2 &a) { return *this = _mm_xor_pd(vec,a); }

	F64vec2& flip_sign () { return *this = _mm_xor_pd (_mm_set1_pd(-0.0), *this); }
	F64vec2 operator - () const { return  _mm_xor_pd (_mm_set1_pd(-0.0), *this); }
	void set_zero() { vec = _mm_setzero_pd(); }
	void init (double f0, double f1) { vec = _mm_set_pd(f1,f0); }
	/* Mixed vector-scalar operations */
	F64vec2& operator +=(const double &f) { return *this = _mm_add_pd(vec,_mm_set1_pd(f)); }
	F64vec2& operator -=(const double &f) { return *this = _mm_sub_pd(vec,_mm_set1_pd(f)); }
	F64vec2& operator *=(const double &f) { return *this = _mm_mul_pd(vec,_mm_set1_pd(f)); }
	F64vec2& operator /=(const double &f) { return *this = _mm_div_pd(vec,_mm_set1_pd(f)); }

	friend F64vec2 operator +(const F64vec2 &a, const double &f) { return _mm_add_pd(a, _mm_set1_pd(f)); }
	friend F64vec2 operator -(const F64vec2 &a, const double &f) { return _mm_sub_pd(a, _mm_set1_pd(f)); } 
	friend F64vec2 operator *(const F64vec2 &a, const double &f) { return _mm_mul_pd(a, _mm_set1_pd(f)); } 
	friend F64vec2 operator /(const F64vec2 &a, const double &f) { return _mm_div_pd(a, _mm_set1_pd(f)); }

	bool is_zero() const { 
		__m128d a = _mm_setzero_pd();
		a = _mm_cmpeq_pd(a, *this);
		int k = _mm_movemask_pd(a);
		return (k == 0x3);
	}
	/* Dot product */
	void dot (double& p, const F64vec2& rhs) const {
		p = add_horizontal(*this * rhs);
	}
	double dot (const F64vec2& rhs) const { 
		return (add_horizontal(*this * rhs));
	}
	/* Length */
	double length_sqr()  const { F64vec2 t = *this;  t*= t; return add_horizontal(t); }
	double length()  const { 
		double d = dot(*this);
		__m128d d2 = _mm_set_sd(d);
		__m128d d3 = _mm_sqrt_sd(d2,d2);
		return _mm_cvtsd_f64(d3);
	}
	/* Normalize */
	bool normalize() { double l = length(); *this /= l; return true; }

	/* Horizontal Add */
	friend double add_horizontal(const F64vec2 &a) 
	{ 
		F64vec2 ftemp = _mm_add_sd(a,_mm_shuffle_pd(a, a, 1));
		return _mm_cvtsd_f64(ftemp);
	}
	/* Horizontal Mul */
	friend double mul_horizontal(const F64vec2 &a) 
	{ 
		F64vec2 ftemp = _mm_mul_sd(a,_mm_shuffle_pd(a, a, 1));
		return _mm_cvtsd_f64(ftemp);
	}

	/* And Not */
	friend F64vec2 andnot(const F64vec2 &a, const F64vec2 &b) { return _mm_andnot_pd(a,b); }
	/* Square Root */
	friend F64vec2 sqrt(const F64vec2 &a)		{ return _mm_sqrt_pd(a); }	 
	/* Ceil */
	friend F64vec2 ceil(const F64vec2 &a)	{ return _mm_svml_ceil_pd(a); }	 
	/* Floor */
	friend F64vec2 floor(const F64vec2 &a)	{ return _mm_svml_floor_pd(a); }	 
	/* Round */
	friend F64vec2 round(const F64vec2 &a)	{ return _mm_svml_round_pd(a); }	 
	/* SVML functions */
	friend F64vec2 acos(const F64vec2 &a)    { return _mm_acos_pd(a);    }
	friend F64vec2 acosh(const F64vec2 &a)   { return _mm_acosh_pd(a);   }
	friend F64vec2 asin(const F64vec2 &a)    { return _mm_asin_pd(a);    }
	friend F64vec2 asinh(const F64vec2 &a)   { return _mm_asinh_pd(a);   }
	friend F64vec2 atan(const F64vec2 &a)    { return _mm_atan_pd(a);    }
	friend F64vec2 atan2(const F64vec2 &a, const F64vec2 &b) { return _mm_atan2_pd(a, b); }
	friend F64vec2 atanh(const F64vec2 &a)   { return _mm_atanh_pd(a);   }
	friend F64vec2 cbrt(const F64vec2 &a)    { return _mm_cbrt_pd(a);    }
	friend F64vec2 cos(const F64vec2 &a)     { return _mm_cos_pd(a);     }
	friend F64vec2 cosh(const F64vec2 &a)    { return _mm_cosh_pd(a);    }
	friend F64vec2 exp(const F64vec2 &a)     { return _mm_exp_pd(a);     }
	friend F64vec2 exp2(const F64vec2 &a)    { return _mm_exp2_pd(a);    }
	friend F64vec2 invcbrt(const F64vec2 &a) { return _mm_invcbrt_pd(a); }
	friend F64vec2 invsqrt(const F64vec2 &a) { return _mm_invsqrt_pd(a); }
	friend F64vec2 log(const F64vec2 &a)     { return _mm_log_pd(a);     }
	friend F64vec2 log10(const F64vec2 &a)   { return _mm_log10_pd(a);   }
	friend F64vec2 log2(const F64vec2 &a)    { return _mm_log2_pd(a);    }
	friend F64vec2 pow(const F64vec2 &a, const F64vec2 &b) { return _mm_pow_pd(a, b); }
	friend F64vec2 sin(const F64vec2 &a)     { return _mm_sin_pd(a);     }
	friend F64vec2 sinh(const F64vec2 &a)    { return _mm_sinh_pd(a);    }
	friend F64vec2 tan(const F64vec2 &a)     { return _mm_tan_pd(a);     }
	friend F64vec2 tanh(const F64vec2 &a)    { return _mm_tanh_pd(a);    }
	friend F64vec2 trunc(const F64vec2 &a)   { return _mm_trunc_pd(a);   }
	friend F64vec2 erf(const F64vec2 &a)     { return _mm_erf_pd(a);     }
	friend F64vec2 erfc(const F64vec2 &a)    { return _mm_erfc_pd(a);    }
	friend F64vec2 erfinv(const F64vec2 &a)  { return _mm_erfinv_pd(a);  }

	/* Compares: Mask is returned  */
	/* Macros expand to all compare intrinsics.  Example: 
			friend F64vec2 cmpeq(const F64vec2 &a, const F64vec2 &b) 
			{ return _mm_cmpeq_ps(a,b);} */
	#define F64vec2_COMP(op) \
	friend F64vec2 cmp##op (const F64vec2 &a, const F64vec2 &b) { return _mm_cmp##op##_pd(a,b); }
		F64vec2_COMP(eq)					// expanded to cmpeq(a,b)
		F64vec2_COMP(lt)					// expanded to cmplt(a,b)
		F64vec2_COMP(le)					// expanded to cmple(a,b)	
		F64vec2_COMP(gt)					// expanded to cmpgt(a,b)
		F64vec2_COMP(ge)					// expanded to cmpge(a,b)
		F64vec2_COMP(ngt)					// expanded to cmpngt(a,b)
		F64vec2_COMP(nge)					// expanded to cmpnge(a,b)
		F64vec2_COMP(neq)					// expanded to cmpneq(a,b)
		F64vec2_COMP(nlt)					// expanded to cmpnlt(a,b)
		F64vec2_COMP(nle)					// expanded to cmpnle(a,b)
	#undef F64vec2_COMP

	/* Min and Max */
	friend F64vec2 simd_min(const F64vec2 &a, const F64vec2 &b) { return _mm_min_pd(a,b); }
	friend F64vec2 simd_max(const F64vec2 &a, const F64vec2 &b) { return _mm_max_pd(a,b); }

	/* Absolute value */
	friend F64vec2 abs(const F64vec2 &a)
        {
            return _mm_and_pd(a, _f64vec2_abs_mask);
        }

        /* Compare lower DP FP values */
	#define F64vec2_COMI(op) \
	friend int comi##op (const F64vec2 &a, const F64vec2 &b) { return _mm_comi##op##_sd(a,b); }
		F64vec2_COMI(eq)					// expanded to comieq(a,b)
		F64vec2_COMI(lt)					// expanded to comilt(a,b)
		F64vec2_COMI(le)					// expanded to comile(a,b)	
		F64vec2_COMI(gt)					// expanded to comigt(a,b)
		F64vec2_COMI(ge)					// expanded to comige(a,b)
		F64vec2_COMI(neq)					// expanded to comineq(a,b)
	#undef F64vec2_COMI

        /* Compare lower DP FP values */
	#define F64vec2_UCOMI(op) \
	friend int ucomi##op (const F64vec2 &a, const F64vec2 &b) { return _mm_ucomi##op##_sd(a,b); }
		F64vec2_UCOMI(eq)					// expanded to ucomieq(a,b)
		F64vec2_UCOMI(lt)					// expanded to ucomilt(a,b)
		F64vec2_UCOMI(le)					// expanded to ucomile(a,b)	
		F64vec2_UCOMI(gt)					// expanded to ucomigt(a,b)
		F64vec2_UCOMI(ge)					// expanded to ucomige(a,b)
		F64vec2_UCOMI(neq)					// expanded to ucomineq(a,b)
	#undef F64vec2_UCOMI

	/* Debug Features */
#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
	/* Output */
	friend DVEC_STD ostream & operator<<(DVEC_STD ostream & os,
                                             const F64vec2 &a)	
	{
	/* To use: cout << "Elements of F64vec2 fvec are: " << fvec; */ 
	  double *dp = (double*)&a;
                  os <<	"[1]:" << *(dp+1) 
			<< " [0]:" << *dp;
		return os;
	}
#endif
	/* Element Access Only, no modifications to elements*/
	const double& operator[](int i) const				
	{
		/* Assert enabled only during debug /DDEBUG */
		assert((0 <= i) && (i <= 1));			/* User should only access elements 0-1 */
		double *dp = (double*)&vec;
		return *(dp+i);
	}
	/* Element Access and Modification*/
	double& operator[](int i)				
	{
		/* Assert enabled only during debug /DDEBUG */
		assert((0 <= i) && (i <= 1));			/* User should only access elements 0-1 */
		double *dp = (double*)&vec;
		return *(dp+i);
	}
};

						/* Miscellaneous */
		
/* Interleave low order data elements of a and b into destination */
inline F64vec2 unpack_low(const F64vec2 &a, const F64vec2 &b) 	
{ return _mm_unpacklo_pd(a, b); }

/* Interleave high order data elements of a and b into target */
inline F64vec2 unpack_high(const F64vec2 &a, const F64vec2 &b) 	
{ return _mm_unpackhi_pd(a, b); }

/* Move Mask to Integer returns 4 bit mask formed of most significant bits of a */
inline int move_mask(const F64vec2 &a)	
{ return _mm_movemask_pd(a);}					

						/* Data Motion Functions */

/* Load Unaligned loadu_pd: Unaligned */
inline void loadu(F64vec2 &a, double *p)	
{ a = _mm_loadu_pd(p); }									

/* Store Temporal storeu_pd: Unaligned */
inline void storeu(double *p, const F64vec2 &a)	
{ _mm_storeu_pd(p, a); }							

						/* Cacheability Support */

/* Non-Temporal Store */
inline void store_nta(double *p, const F64vec2 &a) 
{ _mm_stream_pd(p,a);}					

#define F64vec2_SELECT(op) \
inline F64vec2 select_##op (const F64vec2 &a, const F64vec2 &b, const F64vec2 &c, const F64vec2 &d) 	   \
{																\
	F64vec2 mask = _mm_cmp##op##_pd(a,b);						\
	return( (mask & c) | F64vec2((_mm_andnot_pd(mask,d))));	\
}												
F64vec2_SELECT(eq)		// generates select_eq(a,b)
F64vec2_SELECT(lt)		// generates select_lt(a,b)
F64vec2_SELECT(le)		// generates select_le(a,b)	
F64vec2_SELECT(gt)		// generates select_gt(a,b)
F64vec2_SELECT(ge)		// generates select_ge(a,b)
F64vec2_SELECT(neq)		// generates select_neq(a,b)
F64vec2_SELECT(nlt)		// generates select_nlt(a,b)
F64vec2_SELECT(nle)		// generates select_nle(a,b)
#undef F64vec2_SELECT

/* Convert the lower DP FP value of a to a 32 bit signed integer using Truncate*/
inline int F64vec2ToInt(const F64vec2 &a)
{ 

	return _mm_cvttsd_si32(a);
 
}  

/* Convert the 4 SP FP values of a to DP FP values */
inline F64vec2 F32vec4ToF64vec2(const F32vec4 &a)
{ 
	return _mm_cvtps_pd(a);
}  

/* Convert the 2 DP FP values of a to SP FP values */
inline F32vec4 F64vec2ToF32vec4(const F64vec2 &a)
{ 
	return _mm_cvtpd_ps(a);
}  

/* Convert the signed int in b to a DP FP value.  Upper DP FP value in a passed through */
inline F64vec2 IntToF64vec2(const F64vec2 &a, int b)
{ 
	return _mm_cvtsi32_sd(a,b);
}  


#pragma pack(pop) /* 16-B aligned */

/******************************************************************************/
/************** Interface classes for Intel(R) AVX intrinsics *****************/
/******************************************************************************/

/* The Microsoft compiler (version VS2008 or older) cannot handle the #pragma pack(push,32) */
#if !defined(_MSC_VER) || (_MSC_VER >= 1600)
#pragma pack(push,32)
#endif

/*
 * class F32vec8
 *
 * Represents 256-bit vector composed of 8 single precision floating point elements.
 */
class F32vec8
{
protected:
    __m256 vec;

public:

    /* Constructors: __m256, 8 floats, 1 float */
    F32vec8() {}

    /* initialize 8 SP FP with __m256 data type */
    F32vec8(__m256 m) { vec = m; }

    /* initialize 8 SP FPs with 8 floats */
    F32vec8(float f7, float f6, float f5, float f4, float f3, float f2, float f1, float f0)
    {
        vec = _mm256_set_ps(f7,f6,f5,f4,f3,f2,f1,f0);
    }

    /* Explicitly initialize each of 8 SP FPs with same float */
    EXPLICIT F32vec8(float f)   { vec = _mm256_set1_ps(f); }

    /* Explicitly initialize each of 8 SP FPs with same double */
    EXPLICIT F32vec8(double d)  { vec = _mm256_set1_ps((float) d); }

    /* Assignment operations */
    F32vec8& operator =(float f)
    {
        vec = _mm256_set1_ps(f);
        return *this;
    }

    F32vec8& operator =(double d)
    {
        vec = _mm256_set1_ps((float) d);
        return *this;
    }

    /* Conversion functions */
    operator  __m256() const { return vec; }

    /* Logical Operators */
    friend F32vec8 operator &(const F32vec8 &a, const F32vec8 &b) { return _mm256_and_ps(a,b); }
    friend F32vec8 operator |(const F32vec8 &a, const F32vec8 &b) { return _mm256_or_ps(a,b); }
    friend F32vec8 operator ^(const F32vec8 &a, const F32vec8 &b) { return _mm256_xor_ps(a,b); }

    /* Arithmetic Operators */
    friend F32vec8 operator +(const F32vec8 &a, const F32vec8 &b) { return _mm256_add_ps(a,b); }
    friend F32vec8 operator -(const F32vec8 &a, const F32vec8 &b) { return _mm256_sub_ps(a,b); } 
    friend F32vec8 operator *(const F32vec8 &a, const F32vec8 &b) { return _mm256_mul_ps(a,b); } 
    friend F32vec8 operator /(const F32vec8 &a, const F32vec8 &b) { return _mm256_div_ps(a,b); }

    F32vec8& operator +=(const F32vec8 &a) { return *this = _mm256_add_ps(vec,a); }
    F32vec8& operator -=(const F32vec8 &a) { return *this = _mm256_sub_ps(vec,a); }
    F32vec8& operator *=(const F32vec8 &a) { return *this = _mm256_mul_ps(vec,a); }
    F32vec8& operator /=(const F32vec8 &a) { return *this = _mm256_div_ps(vec,a); }
    F32vec8& operator &=(const F32vec8 &a) { return *this = _mm256_and_ps(vec,a); }
    F32vec8& operator |=(const F32vec8 &a) { return *this = _mm256_or_ps(vec,a); }
    F32vec8& operator ^=(const F32vec8 &a) { return *this = _mm256_xor_ps(vec,a); }

    F32vec8& flip_sign () { return *this = _mm256_xor_ps (_mm256_set1_ps(-0.0), *this); }
    F32vec8 operator - () const { return  _mm256_xor_ps (_mm256_set1_ps(-0.0), *this); }
    void set_zero() { vec = _mm256_setzero_ps(); }
    void init (float f0,float f1,float f2,float f3,float f4,float f5,float f6,float f7) { 
      vec = _mm256_set_ps(f7,f6,f5,f4,f3,f2,f1,f0); }
    
	/* Mixed vector-scalar operations */
    F32vec8& operator +=(const float &f) { return *this = _mm256_add_ps(vec,_mm256_set1_ps(f)); }
    F32vec8& operator -=(const float &f) { return *this = _mm256_sub_ps(vec,_mm256_set1_ps(f)); }
    F32vec8& operator *=(const float &f) { return *this = _mm256_mul_ps(vec,_mm256_set1_ps(f)); }
    F32vec8& operator /=(const float &f) { return *this = _mm256_div_ps(vec,_mm256_set1_ps(f)); }

    friend F32vec8 operator +(const F32vec8 &a, const float &f) { return _mm256_add_ps(a, _mm256_set1_ps(f)); }
    friend F32vec8 operator -(const F32vec8 &a, const float &f) { return _mm256_sub_ps(a, _mm256_set1_ps(f)); }
    friend F32vec8 operator *(const F32vec8 &a, const float &f) { return _mm256_mul_ps(a, _mm256_set1_ps(f)); }
    friend F32vec8 operator /(const F32vec8 &a, const float &f) { return _mm256_div_ps(a, _mm256_set1_ps(f)); }

    bool is_zero() const {
        __m256 a = _mm256_setzero_ps();
        a = _mm256_cmp_ps(a, *this, 0x0);
        int k = _mm256_movemask_ps(a);
        return (k == 0xFF);
	}
    /* Dot product */
    void dot (float& p, const F32vec8& rhs) const { 
        p = add_horizontal(*this * rhs);
    }
    float dot (const F32vec8& rhs) const { 
        return (add_horizontal(*this * rhs));
    }
    /* Length */
    float length_sqr()  const { return dot(*this); }
    float length()  const { 
        float f = dot(*this);
        __m128 f2 = _mm_set_ss(f);
        __m128 f3 = _mm_sqrt_ss(f2);
        return _mm_cvtss_f32(f3);
	}
    /* Normalize */
    bool normalize() { float l = length(); *this /= l; return true; }

    /* Horizontal Add */
    friend float add_horizontal(const F32vec8 &a)
    {
        F32vec8 temp = _mm256_add_ps(a, _mm256_permute_ps(a, 0xee));
        temp = _mm256_add_ps(temp, _mm256_movehdup_ps(temp));
        return _mm_cvtss_f32(_mm_add_ss(_mm256_castps256_ps128(temp), _mm256_extractf128_ps(temp,1)));
    }
    /* Horizontal Mul */
    friend float mul_horizontal(const F32vec8 &a)
    {
        F32vec8 temp = _mm256_mul_ps(a, _mm256_permute_ps(a, 0xee));
        temp = _mm256_mul_ps(temp, _mm256_movehdup_ps(temp));
        return _mm_cvtss_f32(_mm_mul_ss(_mm256_castps256_ps128(temp), _mm256_extractf128_ps(temp,1)));
    }

    /* And Not */
    friend F32vec8 andnot(const F32vec8 &a, const F32vec8 &b) { return _mm256_andnot_ps(a,b); }
    /* Square Root */
    friend F32vec8 sqrt(const F32vec8 &a)   { return _mm256_sqrt_ps(a); }
    /* Reciprocal */
    friend F32vec8 rcp(const F32vec8 &a)    { return _mm256_rcp_ps(a); }
    /* Reciprocal Square Root */
    friend F32vec8 rsqrt(const F32vec8 &a)  { return _mm256_rsqrt_ps(a); }
    /* Ceil */
    friend F32vec8 ceil(const F32vec8 &a)   { return _mm256_round_ps((a), _MM_FROUND_CEIL); }
    /* Floor */
    friend F32vec8 floor(const F32vec8 &a)  { return _mm256_round_ps((a), _MM_FROUND_FLOOR); }
    /* Trunc */
    friend F32vec8 trunc(const F32vec8 &a)  { return _mm256_round_ps((a), _MM_FROUND_TO_ZERO); }
    /* Round */
    friend F32vec8 round(const F32vec8 &a)  { return _mm256_svml_round_ps(a); }
    /* SVML functions */
    friend F32vec8 acos(const F32vec8 &a)    { return _mm256_acos_ps(a);    }
    friend F32vec8 acosh(const F32vec8 &a)   { return _mm256_acosh_ps(a);   }
    friend F32vec8 asin(const F32vec8 &a)    { return _mm256_asin_ps(a);    }
    friend F32vec8 asinh(const F32vec8 &a)   { return _mm256_asinh_ps(a);   }
    friend F32vec8 atan(const F32vec8 &a)    { return _mm256_atan_ps(a);    }
    friend F32vec8 atan2(const F32vec8 &a, const F32vec8 &b) { return _mm256_atan2_ps(a, b); }
    friend F32vec8 atanh(const F32vec8 &a)   { return _mm256_atanh_ps(a);   }
    friend F32vec8 cbrt(const F32vec8 &a)    { return _mm256_cbrt_ps(a);    }
    friend F32vec8 cos(const F32vec8 &a)     { return _mm256_cos_ps(a);     }
    friend F32vec8 cosh(const F32vec8 &a)    { return _mm256_cosh_ps(a);    }
    friend F32vec8 exp(const F32vec8 &a)     { return _mm256_exp_ps(a);     }
    friend F32vec8 exp2(const F32vec8 &a)    { return _mm256_exp2_ps(a);    }
    friend F32vec8 invcbrt(const F32vec8 &a) { return _mm256_invcbrt_ps(a); }
    friend F32vec8 invsqrt(const F32vec8 &a) { return _mm256_invsqrt_ps(a); }
    friend F32vec8 log(const F32vec8 &a)     { return _mm256_log_ps(a);     }
    friend F32vec8 log10(const F32vec8 &a)   { return _mm256_log10_ps(a);   }
    friend F32vec8 log2(const F32vec8 &a)    { return _mm256_log2_ps(a);    }
    friend F32vec8 pow(const F32vec8 &a, const F32vec8 &b) { return _mm256_pow_ps(a, b); }
    friend F32vec8 sin(const F32vec8 &a)     { return _mm256_sin_ps(a);     }
    friend F32vec8 sinh(const F32vec8 &a)    { return _mm256_sinh_ps(a);    }
    friend F32vec8 tan(const F32vec8 &a)     { return _mm256_tan_ps(a);     }
    friend F32vec8 tanh(const F32vec8 &a)    { return _mm256_tanh_ps(a);    }
    friend F32vec8 erf(const F32vec8 &a)     { return _mm256_erf_ps(a);     }
    friend F32vec8 erfc(const F32vec8 &a)    { return _mm256_erfc_ps(a);    }
    friend F32vec8 erfinv(const F32vec8 &a)  { return _mm256_erfinv_ps(a);  }

    /*
     * NewtonRaphson Reciprocal
     * [2 * rcpps(x) - (x * rcpps(x) * rcpps(x))]
     */
    friend F32vec8 rcp_nr(const F32vec8 &a)
    {
        F32vec8 Ra0 = _mm256_rcp_ps(a);
        return _mm256_sub_ps(_mm256_add_ps(Ra0, Ra0), _mm256_mul_ps(_mm256_mul_ps(Ra0, a), Ra0));
    }

    /*
     * NewtonRaphson Reciprocal Square Root
     * 0.5 * rsqrtps * (3 - x * rsqrtps(x) * rsqrtps(x))
     */
    friend F32vec8 rsqrt_nr(const F32vec8 &a)
    {
        static const F32vec8 fvecf0pt5(0.5f);
        static const F32vec8 fvecf3pt0(3.0f);
        F32vec8 Ra0 = _mm256_rsqrt_ps(a);
        return (fvecf0pt5 * Ra0) * (fvecf3pt0 - (a * Ra0) * Ra0);

    }

    /* Compares: Mask is returned */
    friend F32vec8 cmp_eq(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_cmp_ps(a, b, _CMP_EQ_OQ); }
    friend F32vec8 cmp_lt(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_cmp_ps(a, b, _CMP_LT_OS); }
    friend F32vec8 cmp_le(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_cmp_ps(a, b, _CMP_LE_OS); }
    friend F32vec8 cmp_gt(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_cmp_ps(a, b, _CMP_GT_OS); }
    friend F32vec8 cmp_ge(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_cmp_ps(a, b, _CMP_GE_OS); }
    friend F32vec8 cmp_neq(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_cmp_ps(a, b, _CMP_NEQ_UQ); }
    friend F32vec8 cmp_nlt(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_cmp_ps(a, b, _CMP_NLT_US); }
    friend F32vec8 cmp_nle(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_cmp_ps(a, b, _CMP_NLE_US); }
    friend F32vec8 cmp_ngt(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_cmp_ps(a, b, _CMP_NGT_US); }
    friend F32vec8 cmp_nge(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_cmp_ps(a, b, _CMP_NGE_US); }

    /* Min and Max */
    friend F32vec8 simd_min(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_min_ps(a,b); }
    friend F32vec8 simd_max(const F32vec8 &a, const F32vec8 &b)
                { return _mm256_max_ps(a,b); }

    /* Absolute value */
    friend F32vec8 abs(const F32vec8 &a)
    {
        static const union
        {
            int i[8];
            __m256 m;
        } __f32vec8_abs_mask = { 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff,
                                 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff};
        return _mm256_and_ps(a, __f32vec8_abs_mask.m);
    }

    /* Debug Features */
#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output */
    friend DVEC_STD ostream & operator<<(DVEC_STD ostream &os, const F32vec8 &a)
    {
        /* To use: cout << "Elements of F32vec8 fvec are: " << fvec; */
        float *fp = (float*) &a;
        os <<  "[7]:" << *(fp+7)
           << " [6]:" << *(fp+6)
           << " [5]:" << *(fp+5)
           << " [4]:" << *(fp+4)
           << " [3]:" << *(fp+3)
           << " [2]:" << *(fp+2)
           << " [1]:" << *(fp+1)
           << " [0]:" << *fp;
        return os;
    }
#endif

    /* Element Access Only, no modifications to elements*/
    const float& operator[](int i) const
    {
        /* Assert enabled only during debug /DDEBUG */
        assert((0 <= i) && (i <= 7));
        float *fp = (float*)&vec;
        return *(fp+i);
    }

    /* Element Access and Modification*/
    float& operator[](int i)
    {
        /* Assert enabled only during debug /DDEBUG */
        assert((0 <= i) && (i <= 7));
        float *fp = (float*)&vec;
        return *(fp+i);
    }
};

            /* Miscellaneous */

/* Interleave low order data elements of a and b into destination */
inline F32vec8 unpack_low(const F32vec8 &a, const F32vec8 &b)
{ return _mm256_unpacklo_ps(a, b); }

/* Interleave high order data elements of a and b into target */
inline F32vec8 unpack_high(const F32vec8 &a, const F32vec8 &b)
{ return _mm256_unpackhi_ps(a, b); }

/* Move Mask to Integer returns 8 bit mask formed of most significant bits of a */
inline int move_mask(const F32vec8 &a)
{ return _mm256_movemask_ps(a); }

            /* Data Motion Functions */

/* Load Unaligned loadu_ps: Unaligned */
inline void loadu(F32vec8 &a, const float *p)
{ a = _mm256_loadu_ps(p); }

/* Store Unaligned storeu_ps: Unaligned */
inline void storeu(float *p, const F32vec8 &a)
{ _mm256_storeu_ps(p, a); }

            /* Cacheability Support */

/* Non-Temporal Store */
inline void store_nta(float *p, const F32vec8 &a)
{ _mm256_stream_ps(p, a); }

            /* Conditional moves */

/* Masked load */
inline void maskload(F32vec8 &a, const float *p, const F32vec8 &m)
{ a = _mm256_maskload_ps(p, _mm256_castps_si256(m)); }

inline void maskload(F32vec4 &a, const float *p, const F32vec4 &m)
{ a = _mm_maskload_ps(p, _mm_castps_si128(m)); }

/* Masked store */
inline void maskstore(float *p, const F32vec8 &a, const F32vec8 &m)
{ _mm256_maskstore_ps(p, _mm256_castps_si256(m), a); }

inline void maskstore(float *p, const F32vec4 &a, const F32vec4 &m)
{ _mm_maskstore_ps(p, _mm_castps_si128(m), a); }

            /* Conditional Selects */ 

inline F32vec8 select_eq(const F32vec8 &a, const F32vec8 &b, const F32vec8 &c, const F32vec8 &d)
{ return _mm256_blendv_ps(d, c, _mm256_cmp_ps(a, b, _CMP_EQ_OQ)); }

inline F32vec8 select_lt(const F32vec8 &a, const F32vec8 &b, const F32vec8 &c, const F32vec8 &d)
{ return _mm256_blendv_ps(d, c, _mm256_cmp_ps(a, b, _CMP_LT_OS)); }

inline F32vec8 select_le(const F32vec8 &a, const F32vec8 &b, const F32vec8 &c, const F32vec8 &d)
{ return _mm256_blendv_ps(d, c, _mm256_cmp_ps(a, b, _CMP_LE_OS)); }

inline F32vec8 select_gt(const F32vec8 &a, const F32vec8 &b, const F32vec8 &c, const F32vec8 &d)
{ return _mm256_blendv_ps(d, c, _mm256_cmp_ps(a, b, _CMP_GT_OS)); }

inline F32vec8 select_ge(const F32vec8 &a, const F32vec8 &b, const F32vec8 &c, const F32vec8 &d)
{ return _mm256_blendv_ps(d, c, _mm256_cmp_ps(a, b, _CMP_GE_OS)); }

inline F32vec8 select_neq(const F32vec8 &a, const F32vec8 &b, const F32vec8 &c, const F32vec8 &d)
{ return _mm256_blendv_ps(d, c, _mm256_cmp_ps(a, b, _CMP_NEQ_UQ)); }

inline F32vec8 select_nlt(const F32vec8 &a, const F32vec8 &b, const F32vec8 &c, const F32vec8 &d)
{ return _mm256_blendv_ps(d, c, _mm256_cmp_ps(a, b, _CMP_NLT_US)); }

inline F32vec8 select_nle(const F32vec8 &a, const F32vec8 &b, const F32vec8 &c, const F32vec8 &d)
{ return _mm256_blendv_ps(d, c, _mm256_cmp_ps(a, b, _CMP_NLE_US)); }

inline F32vec8 select_ngt(const F32vec8 &a, const F32vec8 &b, const F32vec8 &c, const F32vec8 &d)
{ return _mm256_blendv_ps(d, c, _mm256_cmp_ps(a, b, _CMP_NGT_US)); }

inline F32vec8 select_nge(const F32vec8 &a, const F32vec8 &b, const F32vec8 &c, const F32vec8 &d)
{ return _mm256_blendv_ps(d, c, _mm256_cmp_ps(a, b, _CMP_NGE_US)); }


/*
 * class F64vec4
 *
 * Represents 256-bit vector composed of 4 double precision floating point elements.
 */
class F64vec4
{
protected:
    __m256d vec;

public:

    /* Constructors: __m256d, 4 doubles */
    F64vec4() {}

    /* initialize 4 DP FP with __m256d data type */
    F64vec4(__m256d m) { vec = m; }

    /* initialize 4 DP FPs with 4 doubles */
    F64vec4(double d3, double d2, double d1, double d0)
    {
        vec = _mm256_set_pd(d3,d2,d1,d0);
    }

    /* Explicitly initialize each of 4 DP FPs with same double */
    EXPLICIT F64vec4(double d) { vec = _mm256_set1_pd(d); }

    /* Conversion functions */
    operator  __m256d() const { return vec; }

    /* Logical Operators */
    friend F64vec4 operator &(const F64vec4 &a, const F64vec4 &b) { return _mm256_and_pd(a,b); }
    friend F64vec4 operator |(const F64vec4 &a, const F64vec4 &b) { return _mm256_or_pd(a,b); }
    friend F64vec4 operator ^(const F64vec4 &a, const F64vec4 &b) { return _mm256_xor_pd(a,b); }

    /* Arithmetic Operators */
    friend F64vec4 operator +(const F64vec4 &a, const F64vec4 &b) { return _mm256_add_pd(a,b); }
    friend F64vec4 operator -(const F64vec4 &a, const F64vec4 &b) { return _mm256_sub_pd(a,b); }
    friend F64vec4 operator *(const F64vec4 &a, const F64vec4 &b) { return _mm256_mul_pd(a,b); }
    friend F64vec4 operator /(const F64vec4 &a, const F64vec4 &b) { return _mm256_div_pd(a,b); }

    F64vec4& operator +=(const F64vec4 &a) { return *this = _mm256_add_pd(vec,a); }
    F64vec4& operator -=(const F64vec4 &a) { return *this = _mm256_sub_pd(vec,a); }
    F64vec4& operator *=(const F64vec4 &a) { return *this = _mm256_mul_pd(vec,a); }
    F64vec4& operator /=(const F64vec4 &a) { return *this = _mm256_div_pd(vec,a); }
    F64vec4& operator &=(const F64vec4 &a) { return *this = _mm256_and_pd(vec,a); }
    F64vec4& operator |=(const F64vec4 &a) { return *this = _mm256_or_pd(vec,a); }
    F64vec4& operator ^=(const F64vec4 &a) { return *this = _mm256_xor_pd(vec,a); }

    F64vec4& flip_sign () { return *this = _mm256_xor_pd (_mm256_set1_pd(-0.0), *this); }
    F64vec4 operator - () const { return  _mm256_xor_pd (_mm256_set1_pd(-0.0), *this); }
    void set_zero() { vec = _mm256_setzero_pd(); }
	void init (double f0, double f1, double f2, double f3) { vec = _mm256_set_pd(f3,f2,f1,f0); }
    /* Mixed vector-scalar operations */
    F64vec4& operator *=(const double &f) { return *this = _mm256_mul_pd(vec,_mm256_set1_pd(f)); }
    F64vec4& operator /=(const double &f) { return *this = _mm256_div_pd(vec,_mm256_set1_pd(f)); }
    F64vec4& operator +=(const double &f) { return *this = _mm256_add_pd(vec,_mm256_set1_pd(f)); }
    F64vec4& operator -=(const double &f) { return *this = _mm256_sub_pd(vec,_mm256_set1_pd(f)); }

    friend F64vec4 operator +(const F64vec4 &a, const double &f) { return _mm256_add_pd(a, _mm256_set1_pd(f)); }
    friend F64vec4 operator -(const F64vec4 &a, const double &f) { return _mm256_sub_pd(a, _mm256_set1_pd(f)); } 
    friend F64vec4 operator *(const F64vec4 &a, const double &f) { return _mm256_mul_pd(a, _mm256_set1_pd(f)); } 
    friend F64vec4 operator /(const F64vec4 &a, const double &f) { return _mm256_div_pd(a, _mm256_set1_pd(f)); }

    bool is_zero() const { 
        __m256d a = _mm256_setzero_pd();
        a = _mm256_cmp_pd(a, *this, 0x0);
        int k = _mm256_movemask_pd(a);
        return (k == 0xF); 
    }
    /* Dot product */
    void dot (double& p, const F64vec4& rhs) const {
        p = add_horizontal(*this * rhs);
    }
    double dot (const F64vec4& rhs) const { 
        return (add_horizontal(*this * rhs));
    }
	/* Length */
    double length_sqr()  const { F64vec4 t = *this;  t *= t; return add_horizontal(t); }
    double length()  const { 
        double d = dot(*this);
        __m128d d2 = _mm_set_sd(d);
        __m128d d3 = _mm_sqrt_sd(d2,d2);
        return _mm_cvtsd_f64(d3);
    }
    /* Normalize */
    bool normalize() { double l = length(); *this /= l; return true; }

    /* Horizontal Add */
    friend double add_horizontal(const F64vec4 &a)
    {
        F64vec4 temp = _mm256_add_pd(a, _mm256_permute_pd(a,0x05));
        return _mm_cvtsd_f64(_mm_add_sd(_mm256_castpd256_pd128(temp), _mm256_extractf128_pd(temp,1)));
    }
    /* Horizontal Mul */
    friend double mul_horizontal(const F64vec4 &a)
    {
        F64vec4 temp = _mm256_mul_pd(a, _mm256_permute_pd(a,0x05));
        return _mm_cvtsd_f64(_mm_mul_sd(_mm256_castpd256_pd128(temp), _mm256_extractf128_pd(temp,1)));
    }

    /* And Not */
    friend F64vec4 andnot(const F64vec4 &a, const F64vec4 &b) { return _mm256_andnot_pd(a,b); }
    /* Square Root */
    friend F64vec4 sqrt(const F64vec4 &a) { return _mm256_sqrt_pd(a); }
    /* Ceil */
    friend F64vec4 ceil(const F64vec4 &a)   { return _mm256_round_pd((a), _MM_FROUND_CEIL); }
    /* Floor */
    friend F64vec4 floor(const F64vec4 &a)  { return _mm256_round_pd((a), _MM_FROUND_FLOOR); }
    /* Trunc */
    friend F64vec4 trunc(const F64vec4 &a)  { return _mm256_round_pd((a), _MM_FROUND_TO_ZERO); }
    /* Round */
    friend F64vec4 round(const F64vec4 &a)  { return _mm256_svml_round_pd(a); }
    
	/* SVML functions */
    friend F64vec4 acos(const F64vec4 &a)    { return _mm256_acos_pd(a);    }
    friend F64vec4 acosh(const F64vec4 &a)   { return _mm256_acosh_pd(a);   }
    friend F64vec4 asin(const F64vec4 &a)    { return _mm256_asin_pd(a);    }
    friend F64vec4 asinh(const F64vec4 &a)   { return _mm256_asinh_pd(a);   }
    friend F64vec4 atan(const F64vec4 &a)    { return _mm256_atan_pd(a);    }
    friend F64vec4 atan2(const F64vec4 &a, const F64vec4 &b) { return _mm256_atan2_pd(a, b); }
    friend F64vec4 atanh(const F64vec4 &a)   { return _mm256_atanh_pd(a);   }
    friend F64vec4 cbrt(const F64vec4 &a)    { return _mm256_cbrt_pd(a);    }
    friend F64vec4 cos(const F64vec4 &a)     { return _mm256_cos_pd(a);     }
    friend F64vec4 cosh(const F64vec4 &a)    { return _mm256_cosh_pd(a);    }
    friend F64vec4 exp(const F64vec4 &a)     { return _mm256_exp_pd(a);     }
    friend F64vec4 exp2(const F64vec4 &a)    { return _mm256_exp2_pd(a);    }
    friend F64vec4 invcbrt(const F64vec4 &a) { return _mm256_invcbrt_pd(a); }
    friend F64vec4 invsqrt(const F64vec4 &a) { return _mm256_invsqrt_pd(a); }
    friend F64vec4 log(const F64vec4 &a)     { return _mm256_log_pd(a);     }
    friend F64vec4 log10(const F64vec4 &a)   { return _mm256_log10_pd(a);   }
    friend F64vec4 log2(const F64vec4 &a)    { return _mm256_log2_pd(a);    }
    friend F64vec4 pow(const F64vec4 &a, const F64vec4 &b) { return _mm256_pow_pd(a, b); }
    friend F64vec4 sin(const F64vec4 &a)     { return _mm256_sin_pd(a);     }
    friend F64vec4 sinh(const F64vec4 &a)    { return _mm256_sinh_pd(a);    }
    friend F64vec4 tan(const F64vec4 &a)     { return _mm256_tan_pd(a);     }
    friend F64vec4 tanh(const F64vec4 &a)    { return _mm256_tanh_pd(a);    }
    friend F64vec4 erf(const F64vec4 &a)     { return _mm256_erf_pd(a);     }
    friend F64vec4 erfc(const F64vec4 &a)    { return _mm256_erfc_pd(a);    }
    friend F64vec4 erfinv(const F64vec4 &a)  { return _mm256_erfinv_pd(a);  }

    /* Compares: Mask is returned  */
    friend F64vec4 cmp_eq(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_cmp_pd(a, b, _CMP_EQ_OQ); }
    friend F64vec4 cmp_lt(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_cmp_pd(a, b, _CMP_LT_OS); }
    friend F64vec4 cmp_le(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_cmp_pd(a, b, _CMP_LE_OS); }
    friend F64vec4 cmp_gt(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_cmp_pd(a, b, _CMP_GT_OS); }
    friend F64vec4 cmp_ge(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_cmp_pd(a, b, _CMP_GE_OS); }
    friend F64vec4 cmp_neq(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_cmp_pd(a, b, _CMP_NEQ_UQ); }
    friend F64vec4 cmp_nlt(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_cmp_pd(a, b, _CMP_NLT_US); }
    friend F64vec4 cmp_nle(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_cmp_pd(a, b, _CMP_NLE_US); }
    friend F64vec4 cmp_ngt(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_cmp_pd(a, b, _CMP_NGT_US); }
    friend F64vec4 cmp_nge(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_cmp_pd(a, b, _CMP_NGE_US); }

    /* Min and Max */
    friend F64vec4 simd_min(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_min_pd(a,b); }
    friend F64vec4 simd_max(const F64vec4 &a, const F64vec4 &b)
                { return _mm256_max_pd(a,b); }

    /* Absolute value */
    friend F64vec4 abs(const F64vec4 &a)
    {
        static const union
        {
            int i[8];
            __m256d m;
        } __f64vec4_abs_mask = { 0xffffffff, 0x7fffffff, 0xffffffff, 0x7fffffff,
                                 0xffffffff, 0x7fffffff, 0xffffffff, 0x7fffffff};
        return _mm256_and_pd(a, __f64vec4_abs_mask.m);
    }

    /* Debug Features */
#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output */
    friend DVEC_STD ostream & operator<<(DVEC_STD ostream &os, const F64vec4 &a)
    {
        /* To use: cout << "Elements of F64vec4 fvec are: " << fvec; */
        double *dp = (double*) &a;
        os <<  "[3]:" << *(dp+3)
           << " [2]:" << *(dp+2)
           << " [3]:" << *(dp+1)
           << " [0]:" << *dp;
        return os;
    }
#endif

    /* Element Access Only, no modifications to elements */
    const double& operator[](int i) const
    {
        /* Assert enabled only during debug /DDEBUG */
        assert((0 <= i) && (i <= 3));
        double *dp = (double*)&vec;
        return *(dp+i);
    }
    /* Element Access and Modification*/
    double& operator[](int i)
    {
        /* Assert enabled only during debug /DDEBUG */
        assert((0 <= i) && (i <= 3));
        double *dp = (double*)&vec;
        return *(dp+i);
    }
};

            /* Miscellaneous */

/* Interleave low order data elements of a and b into destination */
inline F64vec4 unpack_low(const F64vec4 &a, const F64vec4 &b)
{ return _mm256_unpacklo_pd(a, b); }

/* Interleave high order data elements of a and b into target */
inline F64vec4 unpack_high(const F64vec4 &a, const F64vec4 &b)
{ return _mm256_unpackhi_pd(a, b); }

/* Move Mask to Integer returns 4 bit mask formed of most significant bits of a */
inline int move_mask(const F64vec4 &a)
{ return _mm256_movemask_pd(a); }

            /* Data Motion Functions */

/* Load Unaligned loadu_pd: Unaligned */
inline void loadu(F64vec4 &a, double *p)
{ a = _mm256_loadu_pd(p); }

/* Store Unaligned storeu_pd: Unaligned */
inline void storeu(double *p, const F64vec4 &a)
{ _mm256_storeu_pd(p, a); }

            /* Cacheability Support */

/* Non-Temporal Store */
inline void store_nta(double *p, const F64vec4 &a)
{ _mm256_stream_pd(p, a); }

            /* Conditional moves */

/* Masked load */
inline void maskload(F64vec4 &a, const double *p, const F64vec4 &m)
{ a = _mm256_maskload_pd(p, _mm256_castpd_si256(m)); }

inline void maskload(F64vec2 &a, const double *p, const F64vec2 &m)
{ a = _mm_maskload_pd(p, _mm_castpd_si128(m)); }

/* Masked store */
inline void maskstore(double *p, const F64vec4 &a, const F64vec4 &m)
{ _mm256_maskstore_pd(p, _mm256_castpd_si256(m), a); }

inline void maskstore(double *p, const F64vec2 &a, const F64vec2 &m)
{ _mm_maskstore_pd(p, _mm_castpd_si128(m), a); }

            /* Conditional Selects */

inline F64vec4 select_eq(const F64vec4 &a, const F64vec4 &b, const F64vec4 &c, const F64vec4 &d)
{ return _mm256_blendv_pd(d, c, _mm256_cmp_pd(a, b, _CMP_EQ_OQ)); }

inline F64vec4 select_lt(const F64vec4 &a, const F64vec4 &b, const F64vec4 &c, const F64vec4 &d)
{ return _mm256_blendv_pd(d, c, _mm256_cmp_pd(a, b, _CMP_LT_OS)); }

inline F64vec4 select_le(const F64vec4 &a, const F64vec4 &b, const F64vec4 &c, const F64vec4 &d)
{ return _mm256_blendv_pd(d, c, _mm256_cmp_pd(a, b, _CMP_LE_OS)); }

inline F64vec4 select_gt(const F64vec4 &a, const F64vec4 &b, const F64vec4 &c, const F64vec4 &d)
{ return _mm256_blendv_pd(d, c, _mm256_cmp_pd(a, b, _CMP_GT_OS)); }

inline F64vec4 select_ge(const F64vec4 &a, const F64vec4 &b, const F64vec4 &c, const F64vec4 &d)
{ return _mm256_blendv_pd(d, c, _mm256_cmp_pd(a, b, _CMP_GE_OS)); }

inline F64vec4 select_neq(const F64vec4 &a, const F64vec4 &b, const F64vec4 &c, const F64vec4 &d)
{ return _mm256_blendv_pd(d, c, _mm256_cmp_pd(a, b, _CMP_NEQ_UQ)); }

inline F64vec4 select_nlt(const F64vec4 &a, const F64vec4 &b, const F64vec4 &c, const F64vec4 &d)
{ return _mm256_blendv_pd(d, c, _mm256_cmp_pd(a, b, _CMP_NLT_US)); }

inline F64vec4 select_nle(const F64vec4 &a, const F64vec4 &b, const F64vec4 &c, const F64vec4 &d)
{ return _mm256_blendv_pd(d, c, _mm256_cmp_pd(a, b, _CMP_NLE_US)); }

inline F64vec4 select_ngt(const F64vec4 &a, const F64vec4 &b, const F64vec4 &c, const F64vec4 &d)
{ return _mm256_blendv_pd(d, c, _mm256_cmp_pd(a, b, _CMP_NGT_US)); }

inline F64vec4 select_nge(const F64vec4 &a, const F64vec4 &b, const F64vec4 &c, const F64vec4 &d)
{ return _mm256_blendv_pd(d, c, _mm256_cmp_pd(a, b, _CMP_NGE_US)); }

            /* Conversion Functions */

/* Convert the 4 SP FP values of a to 4 DP FP values */
inline F64vec4 F32vec4ToF64vec4(const F32vec4 &a)
{ return _mm256_cvtps_pd(a); }

/* Convert the 4 DP FP values of a to 4 SP FP values */
inline F32vec4 F64vec4ToF32vec8(const F64vec4 &a)
{ return _mm256_cvtpd_ps(a); }

/************************************************************************/
/************** Interface classes for working with 512-bit intrinsics ***/
/************************************************************************/

#define __f32vec16_abs_mask ((F32vec16)_mm512_castsi512_ps(_mm512_set1_epi32(0x7fffffff)))
#define __f64vec8_abs_mask ((F64vec8)_mm512_castsi512_pd(_mm512_set1_epi64(0x7fffffffffffffffLL)))

/*
 * class F32vec16
 *
 * Represents 512-bit vector composed of 16 single precision
 * floating point elements.
 */

class F32vec16
{
protected:
    __m512 vec;
public:

    /* Constructors: __m512, 16 floats, 1 float */
    F32vec16() {}

    /* initialize 16 SP FP with __m512 data type */
    F32vec16(__m512 m) { vec = m; }

    /* initialize 16 SP FPs with 16 floats */
    F32vec16(float f15, float f14, float f13, float f12,
             float f11, float f10, float f9, float f8,
             float f7, float f6, float f5, float f4,
             float f3, float f2, float f1, float f0)
    { 
        vec = _mm512_set_ps(f15,f14,f13,f12,f11,f10,f9,f8,
                            f7,f6,f5,f4,f3,f2,f1,f0);
    }

    /* Explicitly initialize each of 16 SP FPs with same float */
    EXPLICIT F32vec16(float f) { vec = _mm512_set1_ps(f); }

    /* Explicitly initialize each of 16 SP FPs with same double */
    EXPLICIT F32vec16(double d)	{ vec = _mm512_set1_ps((float) d); }

    /* Assignment operations */
    F32vec16& operator =(float f) {
        vec = _mm512_set1_ps(f);
        return *this;
    }

    F32vec16& operator =(double d)
    {
        vec = _mm512_set1_ps((float) d);
        return *this;
    }

    /* Conversion functions */
    operator  __m512() const { return vec; } /* Convert to __m512 */

    /* Logical Operators */
    friend F32vec16 operator &(const F32vec16 &a, const F32vec16 &b) {
        return _mm512_castsi512_ps(_mm512_and_si512(
                                   _mm512_castps_si512(a),
                                   _mm512_castps_si512(b)));
    }
    friend F32vec16 operator |(const F32vec16 &a, const F32vec16 &b) {
        return _mm512_castsi512_ps(_mm512_or_si512(
                                   _mm512_castps_si512(a),
                                   _mm512_castps_si512(b)));
    }
    friend F32vec16 operator ^(const F32vec16 &a, const F32vec16 &b) {
        return _mm512_castsi512_ps(_mm512_xor_si512(
                                   _mm512_castps_si512(a),
                                   _mm512_castps_si512(b)));
    }

    /* Arithmetic Operators */
    friend F32vec16 operator +(const F32vec16 &a, const F32vec16 &b) {
        return _mm512_add_ps(a, b);
    }
    friend F32vec16 operator -(const F32vec16 &a, const F32vec16 &b) {
        return _mm512_sub_ps(a, b);
    }
    friend F32vec16 operator *(const F32vec16 &a, const F32vec16 &b) {
        return _mm512_mul_ps(a, b);
    }
    friend F32vec16 operator /(const F32vec16 &a, const F32vec16 &b) {
        return _mm512_div_ps(a, b);
    }

    F32vec16& operator +=(const F32vec16 &a)
        { return *this = *this + a; }
    F32vec16& operator -=(const F32vec16 &a)
        { return *this = *this - a; }
    F32vec16& operator *=(const F32vec16 &a)
        { return *this = *this * a; }
    F32vec16& operator /=(const F32vec16 &a)
        { return *this = *this / a; }
    F32vec16& operator &=(const F32vec16 &a)
        { return *this = *this & a; }
    F32vec16& operator ^=(const F32vec16 &a)
        { return *this = *this ^ a; }
    F32vec16& operator |=(const F32vec16 &a)
        { return *this = *this | a; }

    F32vec16 operator - () const {
        return _mm512_castsi512_ps(_mm512_xor_si512(
                            _mm512_set1_epi32(0x80000000),
                            _mm512_castps_si512(*this)));
    }
    F32vec16& flip_sign () { return *this = - *this;}

    void set_zero() { vec = _mm512_setzero_ps(); }
    void init (float f0, float f1, float f2, float f3,
               float f4, float f5, float f6, float f7,
               float f8, float f9, float f10, float f11,
               float f12, float f13, float f14, float f15)
    {
        vec = _mm512_set_ps(f15,f14,f13,f12,f11,f10,f9,f8,
                            f7,f6,f5,f4,f3,f2,f1,f0);
    }
    /* Mixed vector-scalar operations */
    friend F32vec16 operator +(const F32vec16 &a, const float &f) {
        return _mm512_add_ps(a, _mm512_set1_ps(f));
    }
    friend F32vec16 operator -(const F32vec16 &a, const float &f) {
        return _mm512_sub_ps(a, _mm512_set1_ps(f));
    }
    friend F32vec16 operator /(const F32vec16 &a, const float &f) {
        return _mm512_div_ps(a, _mm512_set1_ps(f));
    }
    friend F32vec16 operator *(const F32vec16 &a, const float &f) {
        return _mm512_mul_ps(a, _mm512_set1_ps(f));
    }
    F32vec16& operator +=(const float &f) {
        return *this = *this + f;
    }
    F32vec16& operator -=(const float &f) {
        return *this = *this - f;
    }
    F32vec16& operator *=(const float &f) {
        return *this = *this * f;
    }
    F32vec16& operator /=(const float &f) {
        return *this = *this / f;
    }

    bool is_zero() const {
        __m512 a = _mm512_setzero_ps();
        __mmask16 k = _mm512_cmpeq_ps_mask(a, *this);
        return (k == 0xffff);
    }
    /* Dot product */
    void dot (float& p, const F32vec16& rhs) const {
        p = add_horizontal(*this * rhs);
    }
    float dot (const F32vec16& rhs) const {
        return (add_horizontal(*this * rhs));
    }
    /* Length */
    float length_sqr()  const { return dot(*this); }
    float length() const {
        float f = dot(*this);
        __m128 f2 = _mm_set_ss(f);
        __m128 f3 = _mm_sqrt_ss(f2);
        return _mm_cvtss_f32(f3);
    }

    /* Normalize */
    bool normalize() { float l = length(); *this /= l; return true; }

    /* Horizontal Add */
    friend float add_horizontal(const F32vec16 &a) {
        return _mm512_reduce_add_ps(a);
    }
    friend float mul_horizontal(const F32vec16 &a) {
        return _mm512_reduce_mul_ps(a);
    }

    /* Debug Features */
#if defined(FVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output */
    friend FVEC_STD ostream & operator<<(FVEC_STD ostream & os,
                                         const F32vec16 &a)
    {
    /* To use: cout << "Elements of F32vec16 fvec are: " << fvec; */
        const float *fp = (const float*)&a;
        os << "[15]:" << *(fp+15)
            << " [14]:" << *(fp+14)
            << " [13]:" << *(fp+13)
            << " [12]:" << *(fp+12)
            << " [11]:" << *(fp+11)
            << " [10]:" << *(fp+10)
            << " [9]:" << *(fp+9)
            << " [8]:" << *(fp+8)
            << " [7]:" << *(fp+7)
            << " [6]:" << *(fp+6)
            << " [5]:" << *(fp+5)
            << " [4]:" << *(fp+4)
            << " [3]:" << *(fp+3)
            << " [2]:" << *(fp+2)
            << " [1]:" << *(fp+1)
            << " [0]:" << *fp;
        return os;
    }
#endif
    /* Element Access Only, no modifications to elements*/
    const float& operator[](int i) const
    {
        /* Assert enabled only during debug /DDEBUG */
        assert((0 <= i) && (i <= 15)); /* User should only access elements 0-15 */
        const float *fp = (const float*)&vec;
        return *(fp+i);
    }
    /* Element Access and Modification */
    float& operator[](int i)
    {
        /* Assert enabled only during debug /DDEBUG */
        assert((0 <= i) && (i <= 15)); /* User should only access elements 0-15 */
        float *fp = (float*)&vec;
        return *(fp+i);
    }
};

/* Square Root */
inline F32vec16 sqrt(const F32vec16 &a) { return _mm512_sqrt_ps(a); }
/* Ceil */
inline F32vec16 ceil(const F32vec16 &a) { return _mm512_ceil_ps(a); }
/* Reciprocal */
inline F32vec16 rcp(const F32vec16 &a) { return _mm512_rcp14_ps(a); }
/* Reciprocal Square Root */
inline F32vec16 rsqrt(const F32vec16 &a) {
    return _mm512_rsqrt14_ps(a);
}
/* NewtonRaphson Reciprocal
    [2 * rcpps(x) - (x * rcpps(x) * rcpps(x))] */
inline F32vec16 rcp_nr(const F32vec16 &a)
{
    F32vec16 Ra0 = _mm512_rcp14_ps(a);
    return _mm512_sub_ps(_mm512_add_ps(Ra0, Ra0),
                         _mm512_mul_ps(_mm512_mul_ps(Ra0, a), Ra0));
} 
   
/* NewtonRaphson Reciprocal Square Root
    0.5 * rsqrtps * (3 - x * rsqrtps(x) * rsqrtps(x)) */
inline F32vec16 rsqrt_nr(const F32vec16 &a)
{
    const F32vec16 fvecf0pt5(0.5f);
    const F32vec16 fvecf3pt0(3.0f);
    F32vec16 Ra0 = _mm512_rsqrt14_ps(a);
    return (fvecf0pt5 * Ra0) * (fvecf3pt0 - (a * Ra0) * Ra0);
}

/* Round */
inline F32vec16 round(const F32vec16 &a) {
    return _mm512_roundscale_ps(a, _MM_FROUND_CUR_DIRECTION);
}

/* Floor */
inline F32vec16 floor(const F32vec16 &a) { return _mm512_floor_ps(a); }

/* SVML functions */
inline F32vec16 acos(const F32vec16 &a) {
    return _mm512_acos_ps(a);
}
inline F32vec16 acosh(const F32vec16 &a) {
    return _mm512_acosh_ps(a);
}
inline F32vec16 asin(const F32vec16 &a) {
    return _mm512_asin_ps(a);
}
inline F32vec16 asinh(const F32vec16 &a) {
    return _mm512_asinh_ps(a);
}
inline F32vec16 atan(const F32vec16 &a) {
    return _mm512_atan_ps(a);
}
inline F32vec16 atan2(const F32vec16 &a, const F32vec16 &b) {
    return _mm512_atan2_ps(a, b);
}
inline F32vec16 atanh(const F32vec16 &a) {
    return _mm512_atanh_ps(a);
}
inline F32vec16 cbrt(const F32vec16 &a) {
    return _mm512_cbrt_ps(a);
}
inline F32vec16 cos(const F32vec16 &a) {
    return _mm512_cos_ps(a);
}
inline F32vec16 cosh(const F32vec16 &a) {
    return _mm512_cosh_ps(a);
}
inline F32vec16 exp(const F32vec16 &a) {
    return _mm512_exp_ps(a);
}
inline F32vec16 exp2(const F32vec16 &a) {
    return _mm512_exp2_ps(a);
}
inline F32vec16 invsqrt(const F32vec16 &a) {
    return _mm512_invsqrt_ps(a);
}
inline F32vec16 log(const F32vec16 &a) {
    return _mm512_log_ps(a);
}
inline F32vec16 log10(const F32vec16 &a) {
    return _mm512_log10_ps(a);
}
inline F32vec16 log2(const F32vec16 &a) {
    return _mm512_log2_ps(a);
}
inline F32vec16 pow(const F32vec16 &a, const F32vec16 &b) {
    return _mm512_pow_ps(a, b);
}
inline F32vec16 sin(const F32vec16 &a) {
    return _mm512_sin_ps(a);
}
inline F32vec16 sinh(const F32vec16 &a) {
    return _mm512_sinh_ps(a);
}
inline F32vec16 tan(const F32vec16 &a) {
    return _mm512_tan_ps(a);
}
inline F32vec16 tanh(const F32vec16 &a) {
    return _mm512_tanh_ps(a);
}
inline F32vec16 erf(const F32vec16 &a) {
    return _mm512_erf_ps(a);
}
inline F32vec16 trunc(const F32vec16 &a) {
    return _mm512_trunc_ps(a);
}
inline F32vec16 erfc(const F32vec16 &a) {
    return _mm512_erfc_ps(a);
}
inline F32vec16 erfinv(const F32vec16 &a) {
    return _mm512_erfinv_ps(a);
}

/* Compares: Mask is returned */
inline __mmask16 cmpeq(const F32vec16 &a, const F32vec16 &b)
            { return _mm512_cmp_ps_mask(a, b, _CMP_EQ_OQ); }
inline __mmask16 cmplt(const F32vec16 &a, const F32vec16 &b)
            { return _mm512_cmp_ps_mask(a, b, _CMP_LT_OS); }
inline __mmask16 cmple(const F32vec16 &a, const F32vec16 &b)
            { return _mm512_cmp_ps_mask(a, b, _CMP_LE_OS); }
inline __mmask16 cmpgt(const F32vec16 &a, const F32vec16 &b)
            { return _mm512_cmp_ps_mask(a, b, _CMP_GT_OS); }
inline __mmask16 cmpge(const F32vec16 &a, const F32vec16 &b)
            { return _mm512_cmp_ps_mask(a, b, _CMP_GE_OS); }
inline __mmask16 cmpneq(const F32vec16 &a, const F32vec16 &b)
            { return _mm512_cmp_ps_mask(a, b, _CMP_NEQ_UQ); }
inline __mmask16 cmpnlt(const F32vec16 &a, const F32vec16 &b)
            { return _mm512_cmp_ps_mask(a, b, _CMP_NLT_US); }
inline __mmask16 cmpnle(const F32vec16 &a, const F32vec16 &b)
            { return _mm512_cmp_ps_mask(a, b, _CMP_NLE_US); }
inline __mmask16 cmpngt(const F32vec16 &a, const F32vec16 &b)
            { return _mm512_cmp_ps_mask(a, b, _CMP_NGT_US); }
inline __mmask16 cmpnge(const F32vec16 &a, const F32vec16 &b)
            { return _mm512_cmp_ps_mask(a, b, _CMP_NGE_US); }

/* Min and Max */
inline F32vec16 simd_min(const F32vec16 &a, const F32vec16 &b) {
    return _mm512_min_ps(a,b);
}
inline F32vec16 simd_max(const F32vec16 &a, const F32vec16 &b) {
    return _mm512_max_ps(a,b);
}

/* Absolute value */
inline F32vec16 abs(const F32vec16 &a)
{
    return _mm512_castsi512_ps(_mm512_and_si512(
                        _mm512_castps_si512(a),
                        _mm512_castps_si512(__f32vec16_abs_mask)));
}

/* Miscellaneous */
		
/* Interleave low order data elements of a and b into destination */
inline F32vec16 unpack_low(const F32vec16 &a, const F32vec16 &b)
{ return _mm512_unpacklo_ps(a, b); }

/* Interleave high order data elements of a and b into target */
inline F32vec16 unpack_high(const F32vec16 &a, const F32vec16 &b)
{ return _mm512_unpackhi_ps(a, b); }

/* Data Motion Functions */

/* Load Unaligned loadu_ps: Unaligned */
inline void loadu(F32vec16 &a, float *p)
{ a = _mm512_loadu_ps(p); }

/* Cacheability Support */

/* Store storeu_ps: Unaligned */
inline void storeu(float *p, const F32vec16 &a)
{ _mm512_storeu_ps(p, a); }

/* Non-Temporal Store */

inline void store_nta(float *p, const F32vec16 &a)
{ _mm512_stream_ps(p,a);}

/* Conditional Selects: */
inline F32vec16 select_eq(const F32vec16 &a, const F32vec16 &b,
                          const F32vec16 &c, const F32vec16 &d)
{ return _mm512_mask_blend_ps(_mm512_cmp_ps_mask(a, b, _CMP_EQ_OQ), d, c); }

inline F32vec16 select_lt(const F32vec16 &a, const F32vec16 &b,
                          const F32vec16 &c, const F32vec16 &d)
{ return _mm512_mask_blend_ps(_mm512_cmp_ps_mask(a, b, _CMP_LT_OS), d, c); }

inline F32vec16 select_le(const F32vec16 &a, const F32vec16 &b,
                          const F32vec16 &c, const F32vec16 &d)
{ return _mm512_mask_blend_ps(_mm512_cmp_ps_mask(a, b, _CMP_LE_OS), d, c); }

inline F32vec16 select_gt(const F32vec16 &a, const F32vec16 &b,
                          const F32vec16 &c, const F32vec16 &d)
{ return _mm512_mask_blend_ps(_mm512_cmp_ps_mask(a, b, _CMP_GT_OS), d, c); }

inline F32vec16 select_ge(const F32vec16 &a, const F32vec16 &b,
                          const F32vec16 &c, const F32vec16 &d)
{ return _mm512_mask_blend_ps(_mm512_cmp_ps_mask(a, b, _CMP_GE_OS), d, c); }

inline F32vec16 select_neq(const F32vec16 &a, const F32vec16 &b,
                           const F32vec16 &c, const F32vec16 &d)
{ return _mm512_mask_blend_ps(_mm512_cmp_ps_mask(a, b, _CMP_NEQ_UQ), d, c); }

inline F32vec16 select_nlt(const F32vec16 &a, const F32vec16 &b,
                           const F32vec16 &c, const F32vec16 &d)
{ return _mm512_mask_blend_ps(_mm512_cmp_ps_mask(a, b, _CMP_NLT_US), d, c); }

inline F32vec16 select_nle(const F32vec16 &a, const F32vec16 &b,
                           const F32vec16 &c, const F32vec16 &d)
{ return _mm512_mask_blend_ps(_mm512_cmp_ps_mask(a, b, _CMP_NLE_US), d, c); }

inline F32vec16 select_ngt(const F32vec16 &a, const F32vec16 &b,
                           const F32vec16 &c, const F32vec16 &d)
{ return _mm512_mask_blend_ps(_mm512_cmp_ps_mask(a, b, _CMP_NGT_US), d, c); }

inline F32vec16 select_nge(const F32vec16 &a, const F32vec16 &b,
                           const F32vec16 &c, const F32vec16 &d)
{ return _mm512_mask_blend_ps(_mm512_cmp_ps_mask(a, b, _CMP_NGE_US), d, c); }


/*
 * class F64vec8
 *
 * Represents 512-bit vector composed of 8 double precision
 * floating point elements.
 */
class F64vec8
{
protected:
    __m512d vec;

public:

    /* Constructors: __m512d, 8 doubles */
    F64vec8() {}

    /* initialize 8 DP FP with __m512d data type */
    F64vec8(__m512d m) { vec = m; }

    /* initialize 8 DP FPs with 8 doubles */
    F64vec8(double d7, double d6, double d5, double d4,
            double d3, double d2, double d1, double d0)
    {
        vec = _mm512_set_pd(d7,d6,d5,d4,d3,d2,d1,d0);
    }

    /* Explicitly initialize each of 8 DP FPs with same double */
    EXPLICIT F64vec8(double d) { vec = _mm512_set1_pd(d); }

    /* Conversion functions */
    operator  __m512d() const { return vec; }

    /* Logical Operators */
    friend F64vec8 operator &(const F64vec8 &a, const F64vec8 &b) {
        return _mm512_castsi512_pd(
               _mm512_and_si512(_mm512_castpd_si512(a),
                                _mm512_castpd_si512(b)));
    }
    /* Arithmetic Operators */
    friend F64vec8 operator +(const F64vec8 &a, const F64vec8 &b) {
        return _mm512_add_pd(a, b);
    }
    friend F64vec8 operator -(const F64vec8 &a, const F64vec8 &b) {
        return _mm512_sub_pd(a, b);
    }
    friend F64vec8 operator *(const F64vec8 &a, const F64vec8 &b) {
        return _mm512_mul_pd(a, b);
    }
    friend F64vec8 operator /(const F64vec8 &a, const F64vec8 &b) {
        return _mm512_div_pd(a, b);
    }
    friend F64vec8 operator |(const F64vec8 &a, const F64vec8 &b) {
        return _mm512_castsi512_pd(
               _mm512_or_si512(_mm512_castpd_si512(a),
                               _mm512_castpd_si512(b)));
    }
    friend F64vec8 operator ^(const F64vec8 &a, const F64vec8 &b) {
        return _mm512_castsi512_pd(
               _mm512_xor_si512(_mm512_castpd_si512(a),
                                _mm512_castpd_si512(b)));
    }

    F64vec8& operator +=(const F64vec8 &a) {
        return *this = *this + a;
    }
    F64vec8& operator -=(const F64vec8 &a) {
        return *this = *this - a;
    }
    F64vec8& operator *=(const F64vec8 &a) {
        return *this = *this * a;
    }
    F64vec8& operator /=(const F64vec8 &a) {
        return *this = *this / a;
    }
    F64vec8& operator &=(const F64vec8 &a) {
        return *this = *this & a;
    }
    F64vec8& operator |=(const F64vec8 &a) {
        return *this = *this | a;
    }
    F64vec8& operator ^=(const F64vec8 &a) {
        return *this = *this ^ a;
    }

    F64vec8 operator - () const {
        return _mm512_castsi512_pd(
               _mm512_xor_si512(_mm512_castpd_si512(_mm512_set1_pd(-0.0)),
                                _mm512_castpd_si512(*this)));
    }
    F64vec8& flip_sign () {
        return *this = -*this;
    }

    void set_zero() { vec = _mm512_setzero_pd(); }
    void init (double d0, double d1, double d2, double d3,
               double d4, double d5, double d6, double d7) {
        vec = _mm512_set_pd(d7,d6,d5,d4,d3,d2,d1,d0);
    }
    /* Mixed vector-scalar operations */
    friend F64vec8 operator +(const F64vec8 &a, const double &d) {
        return _mm512_add_pd(a, _mm512_set1_pd(d));
    }
    friend F64vec8 operator -(const F64vec8 &a, const double &d) {
        return _mm512_sub_pd(a, _mm512_set1_pd(d));
    } 
    friend F64vec8 operator *(const F64vec8 &a, const double &d) {
        return _mm512_mul_pd(a, _mm512_set1_pd(d));
    } 
    friend F64vec8 operator /(const F64vec8 &a, const double &d) {
        return _mm512_div_pd(a, _mm512_set1_pd(d));
    }
    F64vec8& operator *=(const double &d) {
        return *this = *this * d;
    }
    F64vec8& operator /=(const double &d) {
        return *this = *this / d;
    }
    F64vec8& operator +=(const double &d) {
        return *this = *this + d;
    }
    F64vec8& operator -=(const double &d) {
        return *this = *this - d;
    }

    bool is_zero() const { 
        __m512d a = _mm512_setzero_pd();
        __mmask8 k = _mm512_cmp_pd_mask(a, *this, _CMP_EQ_OQ);
        return (k == 0xFF); 
    }
    /* Dot product */
    void dot (double& p, const F64vec8& rhs) const {
        p = add_horizontal(*this * rhs);
    }
    double dot (const F64vec8& rhs) const { 
        return (add_horizontal(*this * rhs));
    }
    /* Length */
    double length_sqr() const {
        F64vec8 t = *this; t *= t;
        return add_horizontal(t);
    }
    double length()  const {
        double d = dot(*this);
        __m128d d2 = _mm_set_sd(d);
        __m128d d3 = _mm_sqrt_sd(d2,d2);
        return _mm_cvtsd_f64(d3);
    }
    /* Normalize */
    bool normalize() { double l = length(); *this /= l; return true; }

    /* Horizontal Add */
    friend double add_horizontal(const F64vec8 &a)
    {
        return _mm512_reduce_add_pd(a);
    }
    /* Horizontal Mul */
    friend double mul_horizontal(const F64vec8 &a)
    {
        return _mm512_reduce_mul_pd(a);
    }

    /* Debug Features */
#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output */
    friend DVEC_STD ostream & operator<<(DVEC_STD ostream &os,
                                         const F64vec8 &a)
    {
        /* To use: cout << "Elements of F64vec8 fvec are: " << fvec; */
        const double *dp = (const double*) &a;
        os <<  "[7]:" << *(dp+7)
           << " [6]:" << *(dp+6)
           << " [5]:" << *(dp+5)
           << " [4]:" << *(dp+4)
           <<  "[3]:" << *(dp+3)
           << " [2]:" << *(dp+2)
           << " [1]:" << *(dp+1)
           << " [0]:" << *dp;
        return os;
    }
#endif

    /* Element Access Only, no modifications to elements */
    const double& operator[](int i) const
    {
        /* Assert enabled only during debug /DDEBUG */
        assert((0 <= i) && (i <= 7));
        const double *dp = (const double*)&vec;
        return *(dp+i);
    }
    /* Element Access and Modification*/
    double& operator[](int i)
    {
        /* Assert enabled only during debug /DDEBUG */
        assert((0 <= i) && (i <= 7));
        double *dp = (double*)&vec;
        return *(dp+i);
    }
};

/* Round */
inline F64vec8 round(const F64vec8 &a) {
    return _mm512_roundscale_pd(a, _MM_FROUND_CUR_DIRECTION);
}
/* And Not */
inline F64vec8 andnot(const F64vec8 &a, const F64vec8 &b) {
    return _mm512_castsi512_pd(
               _mm512_andnot_si512(_mm512_castpd_si512(a),
                                   _mm512_castpd_si512(b)));
}
/* Square Root */
inline F64vec8 sqrt(const F64vec8 &a) {
    return _mm512_sqrt_pd(a);
}
/* Ceil */
inline F64vec8 ceil(const F64vec8 &a) {
    return _mm512_roundscale_pd((a), _MM_FROUND_CEIL);
}
/* Floor */
inline F64vec8 floor(const F64vec8 &a) {
    return _mm512_roundscale_pd((a), _MM_FROUND_FLOOR);
}
/* Trunc */
inline F64vec8 trunc(const F64vec8 &a) {
    return _mm512_roundscale_pd((a), _MM_FROUND_TO_ZERO);
}
    
/* SVML functions */
inline F64vec8 acos(const F64vec8 &a) {
    return _mm512_acos_pd(a);
}
inline F64vec8 acosh(const F64vec8 &a) {
    return _mm512_acosh_pd(a);
}
inline F64vec8 asin(const F64vec8 &a) {
    return _mm512_asin_pd(a);
}
inline F64vec8 asinh(const F64vec8 &a) {
    return _mm512_asinh_pd(a);
}
inline F64vec8 atan(const F64vec8 &a) {
    return _mm512_atan_pd(a);
}
inline F64vec8 atan2(const F64vec8 &a, const F64vec8 &b) {
    return _mm512_atan2_pd(a, b);
}
inline F64vec8 atanh(const F64vec8 &a) {
    return _mm512_atanh_pd(a);
}
inline F64vec8 cbrt(const F64vec8 &a) {
    return _mm512_cbrt_pd(a);
}
inline F64vec8 cos(const F64vec8 &a) {
    return _mm512_cos_pd(a);
}
inline F64vec8 cosh(const F64vec8 &a) {
    return _mm512_cosh_pd(a); 
}
inline F64vec8 exp(const F64vec8 &a) {
    return _mm512_exp_pd(a);
}
inline F64vec8 exp2(const F64vec8 &a) {
    return _mm512_exp2_pd(a);
}
inline F64vec8 invsqrt(const F64vec8 &a) {
    return _mm512_invsqrt_pd(a);
}
inline F64vec8 log(const F64vec8 &a) {
    return _mm512_log_pd(a);
}
inline F64vec8 log10(const F64vec8 &a) {
    return _mm512_log10_pd(a);
}
inline F64vec8 log2(const F64vec8 &a) {
    return _mm512_log2_pd(a);
}
inline F64vec8 pow(const F64vec8 &a, const F64vec8 &b) {
    return _mm512_pow_pd(a, b);
}
inline F64vec8 sin(const F64vec8 &a) {
    return _mm512_sin_pd(a);
}
inline F64vec8 sinh(const F64vec8 &a) {
    return _mm512_sinh_pd(a);
}
inline F64vec8 tan(const F64vec8 &a) {
    return _mm512_tan_pd(a);
}
inline F64vec8 tanh(const F64vec8 &a) {
    return _mm512_tanh_pd(a);
}
inline F64vec8 erf(const F64vec8 &a) {
    return _mm512_erf_pd(a);
}
inline F64vec8 erfc(const F64vec8 &a) {
    return _mm512_erfc_pd(a);
}
inline F64vec8 erfinv(const F64vec8 &a) {
    return _mm512_erfinv_pd(a);
}

/* Compares: Mask is returned  */
inline __mmask8 cmpeq(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_cmp_pd_mask(a, b, _CMP_EQ_OQ); }
inline __mmask8 cmplt(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_cmp_pd_mask(a, b, _CMP_LT_OS); }
inline __mmask8 cmple(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_cmp_pd_mask(a, b, _CMP_LE_OS); }
inline __mmask8 cmpgt(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_cmp_pd_mask(a, b, _CMP_GT_OS); }
inline __mmask8 cmpge(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_cmp_pd_mask(a, b, _CMP_GE_OS); }
inline __mmask8 cmpneq(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_cmp_pd_mask(a, b, _CMP_NEQ_UQ); }
inline __mmask8 cmpnlt(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_cmp_pd_mask(a, b, _CMP_NLT_US); }
inline __mmask8 cmpnle(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_cmp_pd_mask(a, b, _CMP_NLE_US); }
inline __mmask8 cmpngt(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_cmp_pd_mask(a, b, _CMP_NGT_US); }
inline __mmask8 cmpnge(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_cmp_pd_mask(a, b, _CMP_NGE_US); }

/* Min and Max */
inline F64vec8 simd_min(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_min_pd(a,b); }
inline F64vec8 simd_max(const F64vec8 &a, const F64vec8 &b)
            { return _mm512_max_pd(a,b); }

/* Absolute value */
inline F64vec8 abs(const F64vec8 &a)
{
    return _mm512_castsi512_pd(
               _mm512_and_si512(_mm512_castpd_si512(a),
                                _mm512_castpd_si512(__f64vec8_abs_mask)));
}    

        /* Miscellaneous */

/* Interleave low order data elements of a and b into destination */
inline F64vec8 unpack_low(const F64vec8 &a, const F64vec8 &b)
{ return _mm512_unpacklo_pd(a, b); }

/* Interleave high order data elements of a and b into target */
inline F64vec8 unpack_high(const F64vec8 &a, const F64vec8 &b)
{ return _mm512_unpackhi_pd(a, b); }

        /* Data Motion Functions */

/* Load Unaligned loadu_pd: Unaligned */
inline void loadu(F64vec8 &a, double *p)
{ a = _mm512_loadu_pd(p); }

/* Store Unaligned storeu_pd: Unaligned */
inline void storeu(double *p, const F64vec8 &a)
{ _mm512_storeu_pd(p, a); }

        /* Cacheability Support */

/* Non-Temporal Store */
inline void store_nta(double *p, const F64vec8 &a)
{ _mm512_stream_pd(p, a); }

        /* Conditional Selects */

inline F64vec8 select_eq(const F64vec8 &a, const F64vec8 &b,
                         const F64vec8 &c, const F64vec8 &d)
{ return _mm512_mask_blend_pd(_mm512_cmp_pd_mask(a, b, _CMP_EQ_OQ), d, c); }

inline F64vec8 select_lt(const F64vec8 &a, const F64vec8 &b,
                         const F64vec8 &c, const F64vec8 &d)
{ return _mm512_mask_blend_pd(_mm512_cmp_pd_mask(a, b, _CMP_LT_OS), d, c); }

inline F64vec8 select_le(const F64vec8 &a, const F64vec8 &b,
                         const F64vec8 &c, const F64vec8 &d)
{ return _mm512_mask_blend_pd(_mm512_cmp_pd_mask(a, b, _CMP_LE_OS), d, c); }

inline F64vec8 select_gt(const F64vec8 &a, const F64vec8 &b,
                         const F64vec8 &c, const F64vec8 &d)
{ return _mm512_mask_blend_pd(_mm512_cmp_pd_mask(a, b, _CMP_GT_OS), d, c); }

inline F64vec8 select_ge(const F64vec8 &a, const F64vec8 &b,
                         const F64vec8 &c, const F64vec8 &d)
{ return _mm512_mask_blend_pd(_mm512_cmp_pd_mask(a, b, _CMP_GE_OS), d, c); }

inline F64vec8 select_neq(const F64vec8 &a, const F64vec8 &b,
                          const F64vec8 &c, const F64vec8 &d)
{ return _mm512_mask_blend_pd(_mm512_cmp_pd_mask(a, b, _CMP_NEQ_UQ), d, c); }

inline F64vec8 select_nlt(const F64vec8 &a, const F64vec8 &b,
                          const F64vec8 &c, const F64vec8 &d)
{ return _mm512_mask_blend_pd(_mm512_cmp_pd_mask(a, b, _CMP_NLT_US), d, c); }

inline F64vec8 select_nle(const F64vec8 &a, const F64vec8 &b,
                          const F64vec8 &c, const F64vec8 &d)
{ return _mm512_mask_blend_pd(_mm512_cmp_pd_mask(a, b, _CMP_NLE_US), d, c); }

inline F64vec8 select_ngt(const F64vec8 &a, const F64vec8 &b,
                          const F64vec8 &c, const F64vec8 &d)
{ return _mm512_mask_blend_pd(_mm512_cmp_pd_mask(a, b, _CMP_NGT_US), d, c); }

inline F64vec8 select_nge(const F64vec8 &a, const F64vec8 &b,
                          const F64vec8 &c, const F64vec8 &d)
{ return _mm512_mask_blend_pd(_mm512_cmp_pd_mask(a, b, _CMP_NGE_US), d, c); }

        /* Conversion Functions */

/* Convert the 16 SP FP values of a to 8 DP FP values */
inline F64vec8 F32vec16ToF64vec8(const F32vec16 &a)
{ return _mm512_cvtpslo_pd(a); }

/* Convert the 16 DP FP values of a to 8 SP FP values */
inline F32vec16 F64vec8ToF32vec16(const F64vec8 &a)
{ return _mm512_cvtpd_pslo(a); }

class I32vec16;  /* 16 elements, each element a signed or unsigned __int32 */
class Is32vec16; /* 16 elements, each element a signed __int32 */
class Iu32vec16; /* 16 elements, each element a unsigned __int32 */
class I64vec8;   /* 8 element, each a __int64 data type */
class Is64vec8;  /* 8 element, each a signed __int64 data type */
class Iu64vec8;  /* 8 element, each a unsigned __int64 data type */
class M512vec;   /* 1 element, a __m512i data type */

#define _MM_16UDW(element,vector) (*((unsigned int*)&(vector) + (element)))
#define _MM_16DW(element,vector) (*((int*)&(vector) + (element)))

#define _MM_8UQW(element,vector) (*((unsigned __int64*)&(vector) + (element)))
#define _MM_8QW(element,vector) (*((__int64*)&(vector) + (element)))

/* M512vec Class:
 * 1 element, a __m512i data type
 * Contructors & Logical Operations
 */

class M512vec
{
protected:
    __m512i vec;

public:
    M512vec() { }
    M512vec(__m512i mm) { vec = mm; }

    operator __m512i() const { return vec; }

    /* Logical Operations */
    friend M512vec operator&(const M512vec &a, const M512vec &b) {
        return _mm512_and_si512(a, b);
    }
    M512vec& operator&=(const M512vec &a) {
        return *this = *this & a;
    }
    friend M512vec operator|(const M512vec &a, const M512vec &b) {
        return _mm512_or_si512(a, b);
    }
    M512vec& operator|=(const M512vec &a) {
        return *this = *this | a;
    }
    friend M512vec operator^(const M512vec &a, const M512vec &b) {
        return _mm512_xor_si512(a, b);
    }
    M512vec& operator^=(const M512vec &a) {
        return *this = *this ^ a;
    }
};

/* Andnot */
inline M512vec andnot(const M512vec &a, const M512vec &b) {
    return _mm512_andnot_si512(a, b);
}

/* I64vec8 Class:
 * 8 elements, each element signed or unsigned 64-bit integer
 */
class I64vec8 : public M512vec
{
public:
    I64vec8() { }
    I64vec8(__m512i mm) : M512vec(mm) { }
    EXPLICIT I64vec8(__int64 i) { vec = _mm512_set1_epi64(i);}
    EXPLICIT I64vec8(int i) { vec = _mm512_set1_epi64(i);}

    I64vec8(__int64 q7,__int64 q6,__int64 q5,__int64 q4,
            __int64 q3,__int64 q2,__int64 q1,__int64 q0) {
        vec = _mm512_set_epi64(q7,q6,q5,q4,q3,q2,q1,q0);
    }

    /* Copy Constructor */
    I64vec8(const M512vec &m) : M512vec(m) {}

    /* Addition & Subtraction Operators */
    friend I64vec8 operator +(const I64vec8 &a, const I64vec8 &b) {
        return _mm512_add_epi64(a, b);
    }
    friend I64vec8 operator -(const I64vec8 &a, const I64vec8 &b) {
        return _mm512_sub_epi64(a, b);
    }

    /* Addition & Subtraction Assignment Operators */
    I64vec8& operator +=(const I64vec8 &a) {
        return *this = *this + a;
    }
    I64vec8& operator -=(const I64vec8 &a) {
        return *this = *this - a;
    }

    /* Shift Logical Operators */
    I64vec8 operator<<(const I64vec8 &a) {
        return _mm512_sllv_epi64(*this, a);
    }
    I64vec8 operator<<(int count) {
        return _mm512_slli_epi64(*this, count);
    }
    I64vec8& operator<<=(const I64vec8 &a) {
        return *this = *this << a;
    }
    I64vec8& operator<<=(int count) {
        return *this = *this << count;
    }

    /* Element Access for Debug, No data modified */
    const __int64& operator[](int i)const
    {
        assert(static_cast<unsigned int>(i) < 8);
        /* Only 8 elements to access */
        return _MM_8QW(i,vec);
    }

    /* Element Access and Assignment for Debug */
    __int64& operator[](int i)
    {
        assert(static_cast<unsigned int>(i) < 8);
        /* Only 8 elements to access */
        return _MM_8QW(i,vec);
    }
};

/* Is64vec8 Class:
 * 8 elements, each element signed 64-bit integer
 */
class Is64vec8 : public I64vec8
{
public:
    Is64vec8() { }
    Is64vec8(__m512i mm) : I64vec8(mm) { }
    EXPLICIT Is64vec8(int i) : I64vec8((int)i) { }
    EXPLICIT Is64vec8(__int64 i) : I64vec8((__int64)i) { }

    Is64vec8(__int64 q7,__int64 q6,__int64 q5,__int64 q4,
             __int64 q3,__int64 q2,__int64 q1,__int64 q0) :
        I64vec8(q7,q6,q5,q4,q3,q2,q1,q0) {}

    /* Copy Constructor */
    Is64vec8(const M512vec &m) : I64vec8(m) {}

    /* Shift Arithmetiic Operators */

    Is64vec8 operator>>(const I64vec8 &a) {
        return _mm512_srav_epi64(*this,a);
    }
    Is64vec8 operator>>(int count) {
        return _mm512_srai_epi64(*this,count);
    }
    Is64vec8& operator>>=(const I64vec8 &a) {
        return *this = *this >> a;
    }
    Is64vec8& operator>>=(int count) {
        return *this = *this >> count;
    }

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output for Debug */
    friend DVEC_STD ostream& operator<< (DVEC_STD ostream &os,
                                         const Is64vec8 &a)
    {
        os << "[7]:" << a[7]
            << " [6]:" << a[6]
            << " [5]:" << a[5]
            << " [4]:" << a[4]
            << " [3]:" << a[3]
            << " [2]:" << a[2]
            << " [1]:" << a[1]
            << " [0]:" << a[0];
            return os;
    }
#endif

    /* Element Access for Debug, No data modified */
    const __int64& operator[](int i)const
    {
        assert(static_cast<unsigned int>(i) < 8);
        /* Only 8 elements to access */
        return _MM_8QW(i,vec);
    }

    /* Element Access and Assignment for Debug */
    __int64& operator[](int i)
    {
        assert(static_cast<unsigned int>(i) < 8);
        /* Only 8 elements to access */
        return _MM_8QW(i,vec);
    }
};
/* Iu64vec8 Class:
 * 8 elements, each element unsigned 64-bit integer
 */
class Iu64vec8 : public I64vec8
{
public:
    Iu64vec8() { }
    Iu64vec8(__m512i mm) : I64vec8(mm) { }
    EXPLICIT Iu64vec8(unsigned int ui) : I64vec8((int)ui) { }
    EXPLICIT Iu64vec8(unsigned __int64 ui) : I64vec8((__int64)ui) { }

    Iu64vec8(unsigned __int64 q7, unsigned __int64 q6,unsigned __int64 q5,
             unsigned __int64 q4, unsigned __int64 q3,unsigned __int64 q2,
             unsigned __int64 q1, unsigned __int64 q0) :
        I64vec8(q7,q6,q5,q4,q3,q2,q1,q0) {}

    /* Copy Constructor */
    Iu64vec8(const M512vec &m) : I64vec8(m) {}

    /* Shift Logical Operators */

    Iu64vec8 operator>>(const I64vec8 &a) {
        return _mm512_srlv_epi64(*this,a);
    }
    Iu64vec8 operator>>(int count) {
        return _mm512_srli_epi64(*this,count);
    }
    Iu64vec8& operator>>=(const I64vec8 &a) {
        return *this = *this >> a;
    }
    Iu64vec8& operator>>=(int count) {
        return *this = *this >> count;
    }

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output for Debug */
    friend DVEC_STD ostream& operator<< (DVEC_STD ostream &os,
                                         const Iu64vec8 &a)
    {
        os << "[7]:" << a[7]
            << " [6]:" << a[6]
            << " [5]:" << a[5]
            << " [4]:" << a[4]
            << " [3]:" << a[3]
            << " [2]:" << a[2]
            << " [1]:" << a[1]
            << " [0]:" << a[0];
            return os;
    }
#endif

    /* Element Access for Debug, No data modified */
    const unsigned __int64& operator[](int i)const
    {
        assert(static_cast<int>(i) < 8);
        /* Only 8 elements to access */
        return _MM_8UQW(i,vec);
    }

    /* Element Access and Assignment for Debug */
    unsigned __int64& operator[](int i)
    {
        assert(static_cast<int>(i) < 8);
        /* Only 8 elements to access */
        return _MM_8UQW(i,vec);
    }
};

/* Unpacks */
inline I64vec8 unpack_low(const I64vec8 &a, const I64vec8 &b) {
    return _mm512_unpacklo_epi64(a,b);
}
inline I64vec8 unpack_high(const I64vec8 &a, const I64vec8 &b) {
    return _mm512_unpackhi_epi64(a,b);
}

/* I32vec16 Class:
 * 16 elements, each element either a signed or unsigned int
 */
class I32vec16 : public M512vec
{
public:
    I32vec16() { }
    I32vec16(__m512i mm) : M512vec(mm) { }
    EXPLICIT I32vec16(int i)     { vec = _mm512_set1_epi32(i); }
    EXPLICIT I32vec16(__int64 i) { vec = _mm512_set1_epi32((int)i); }

    I32vec16(int i15, int i14, int i13, int i12,
             int i11, int i10, int i9, int i8,
             int i7, int i6, int i5, int i4,
             int i3, int i2, int i1, int i0)
    {
        vec = _mm512_set_epi32(i15, i14, i13, i12,
                               i11, i10, i9, i8,
                               i7, i6, i5, i4,
                               i3, i2, i1, i0);
    }

    /* Copy Constructor */
    I32vec16(const M512vec &m) : M512vec(m) {}

    /* Addition & Subtraction Operators */
    I32vec16 operator +(const I32vec16 &a) const {
        return _mm512_add_epi32(*this, a);
    }
    I32vec16 operator -(const I32vec16 &a) const {
        return _mm512_sub_epi32(*this, a);
    }

    /* Addition & Subtraction Assignment Operators */
    I32vec16& operator +=(const I32vec16 &a) {
        return *this = *this + a;
    }
    I32vec16& operator -=(const I32vec16 &a) {
        return *this = *this - a;
    }

    /* Shift Logical Operators */
    I32vec16 operator<<(const I32vec16 &a) {
        return _mm512_sllv_epi32(*this, a);
    }
    I32vec16 operator<<(int count) {
        return _mm512_slli_epi32(*this, count);
    }
    I32vec16& operator<<=(const I32vec16 &a) {
        return *this = *this << a;
    }
    I32vec16& operator<<=(int count) {
        return *this = *this << count;
    }
};

/* Unpacks */
inline I32vec16 unpack_low(const I32vec16 &a, const I32vec16 &b) {
    return _mm512_unpacklo_epi32(a,b);
}
inline I32vec16 unpack_high(const I32vec16 &a, const I32vec16 &b) {
    return _mm512_unpackhi_epi32(a,b);
}

/* Is32vec16 Class:
 * 16 elements, each element signed integer
 */
class Is32vec16 : public I32vec16
{
public:
    Is32vec16() { }
    Is32vec16(__m512i mm) : I32vec16(mm) { }
    EXPLICIT Is32vec16(int i) : I32vec16(i) { }
    EXPLICIT Is32vec16(__int64 i) : I32vec16(i) { }

    Is32vec16(int i15, int i14, int i13, int i12,
              int i11, int i10, int i9, int i8,
              int i7, int i6, int i5, int i4,
              int i3, int i2, int i1, int i0)
        : I32vec16(i15, i14, i13, i12, i11, i10, i9, i8,
                   i7, i6, i5, i4, i3, i2, i1, i0) { }

    /* Constructor from M512vec */
    Is32vec16(const M512vec &m) : I32vec16(m) {}

    /* Shift Arithmetic Operations */
    Is32vec16 operator>>(const I32vec16 &a) {
        return _mm512_srav_epi32(*this, a);
    }
    Is32vec16 operator>>(int count) {
        return _mm512_srai_epi32(*this, count);
    }
    Is32vec16& operator>>=(const I32vec16 &a) {
        return *this = *this >> a;
    }
    Is32vec16& operator>>=(int count) {
        return *this = *this >> count;
    }
#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output for Debug */
    friend DVEC_STD ostream& operator<< (DVEC_STD ostream &os,
                                         const Is32vec16 &a)
    {
        os << "[15]:" << a[15]
            << " [14]:" << a[14]
            << " [13]:" << a[13]
            << " [12]:" << a[12]
            << " [11]:" << a[11]
            << " [10]:" << a[10]
            << " [9]:" << a[9]
            << " [8]:" << a[8]
            << " [7]:" << a[7]
            << " [6]:" << a[6]
            << " [5]:" << a[5]
            << " [4]:" << a[4]
            << " [3]:" << a[3]
            << " [2]:" << a[2]
            << " [1]:" << a[1]
            << " [0]:" << a[0];
        return os;
    }
#endif

    /* Element Access for Debug, No data modified */
    const int& operator[](int i) const
    {
        /* Only 16 elements to access */
        assert(static_cast<unsigned int>(i) < 16);
        return _MM_16DW(i,vec);
    }

    /* Element Access for Debug */
    int& operator[](int i)
    {
        /* Only 16 elements to access */
        assert(static_cast<unsigned int>(i) < 16);
        return _MM_16DW(i,vec);
    }
    Is32vec16 operator *(const Is32vec16 &a) {
        return _mm512_mullo_epi32(*this, a);
    }
    Is32vec16 operator *=(const Is32vec16 &a) {
        return *this = *this * a;
    }
    Is32vec16 operator /(const Is32vec16 &a) {
        return _mm512_div_epi32(*this, a);
    }
    Is32vec16 operator /=(const Is32vec16 &a) {
        return *this = *this / a;
    }
    Is32vec16 operator %(const Is32vec16 &a) {
        return _mm512_rem_epi32(*this, a);
    }
    Is32vec16 operator %=(const Is32vec16 &a) {
        return *this = *this % a;
    }

};

/* Compares */
inline __mmask16 cmpeq(const Is32vec16 &a, const Is32vec16 &b) {
    return _mm512_cmpeq_epi32_mask(a,b);
}
inline __mmask16 cmpneq(const Is32vec16 &a, const Is32vec16 &b) {
    return _mm512_cmpneq_epi32_mask(a,b);
}
inline __mmask16 cmpgt(const Is32vec16 &a, const Is32vec16 &b) {
    return _mm512_cmpgt_epi32_mask(a,b);
}
inline __mmask16 cmplt(const Is32vec16 &a, const Is32vec16 &b) {
    return _mm512_cmpgt_epi32_mask(b,a);
}

inline Is32vec16 div(const Is32vec16 &a, const Is32vec16 &b) {
    return _mm512_div_epi32(a,b);
}
inline Is32vec16 rem(const Is32vec16 &a, const Is32vec16 &b) {
    return _mm512_rem_epi32(a,b);
}

/* Iu32vec16 Class:
 * 16 elements, each element unsigned int
 */
class Iu32vec16 : public I32vec16
{
public:
    Iu32vec16() { }
    Iu32vec16(__m512i mm) : I32vec16(mm) { }
    EXPLICIT Iu32vec16(unsigned int ui) : I32vec16((int)ui) { }
    EXPLICIT Iu32vec16(unsigned __int64 ui) : I32vec16((__int64)ui) { }

    Iu32vec16(unsigned int ui15, unsigned int ui14,
              unsigned int ui13, unsigned int ui12,
              unsigned int ui11, unsigned int ui10,
              unsigned int ui9, unsigned int ui8,
              unsigned int ui7, unsigned int ui6,
              unsigned int ui5, unsigned int ui4,
              unsigned int ui3, unsigned int ui2,
              unsigned int ui1, unsigned int ui0)
            : I32vec16(ui15, ui14, ui13, ui12, ui11, ui10, ui9, ui8,
                       ui7, ui6, ui5, ui4, ui3, ui2, ui1, ui0) { }

    /* Copy Constructor */
    Iu32vec16(const M512vec &m) : I32vec16(m) {}

    /* Shift Logical Operators */
    Iu32vec16 operator>>(const Iu32vec16 &a) {
        return _mm512_srlv_epi32(*this,a);
    }
    Iu32vec16 operator>>(int count) {
        return _mm512_srli_epi32(*this,count);
    }
    Iu32vec16& operator>>=(const Iu32vec16 &a) {
        return *this = *this >> a;
    }
    Iu32vec16& operator>>=(int count) {
        return *this = *this >> count;
    }
#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output for Debug */
    friend DVEC_STD ostream& operator<< (DVEC_STD ostream &os,
                                         const Iu32vec16 &a)
    {
        os << "[15]:" << a[15]
            << " [14]:" << a[14]
            << " [13]:" << a[13]
            << " [12]:" << a[12]
            << " [11]:" << a[11]
            << " [10]:" << a[10]
            << " [9]:" << a[9]
            << " [8]:" << a[8]
            << " [7]:" << a[7]
            << " [6]:" << a[6]
            << " [5]:" << a[5]
            << " [4]:" << a[4]
            << " [3]:" << a[3]
            << " [2]:" << a[2]
            << " [1]:" << a[1]
            << " [0]:" << a[0];
            return os;
    }
#endif

    /* Element Access for Debug, No data modified */
    const unsigned int& operator[](int i)const
    {
        /* Only 16 elements to access */
        assert(static_cast<unsigned int>(i) < 16);
        return _MM_16UDW(i,vec);
    }

    /* Element Access and Assignment for Debug */
    unsigned int& operator[](int i)
    {
        /* Only 16 elements to access */
        assert(static_cast<unsigned int>(i) < 16);
        return _MM_16UDW(i,vec);
    }
    Iu32vec16 operator / (const Iu32vec16 &a) {
        return _mm512_div_epu32(*this, a);
    }
    Iu32vec16 operator /= (const Iu32vec16 &a) {
        return *this = *this / a;
    }
    Iu32vec16 operator % (const Iu32vec16 &a) {
        return _mm512_rem_epu32(*this, a);
    }
    Iu32vec16 operator %= (const Iu32vec16 &a) {
        return *this = *this % a;
    }
    I64vec8 operator * (const Iu32vec16 &a) {
        return _mm512_mul_epu32(*this, a);
    }
};

inline __mmask16 cmpeq(const Iu32vec16 &a, const Iu32vec16 &b) {
    return _mm512_cmpeq_epu32_mask(a,b);
}
inline __mmask16 cmpneq(const Iu32vec16 &a, const Iu32vec16 &b) {
    return _mm512_cmpneq_epu32_mask(a,b);
}

inline Iu32vec16 div(const Iu32vec16 &a, const Iu32vec16 &b) {
    return _mm512_div_epu32(a,b);
}
inline Iu32vec16 rem(const Iu32vec16 &a, const Iu32vec16 &b) {
    return _mm512_rem_epu32(a,b);
}

/************************************************************************/
/************** Intel(R) AVX-512 Byte and Word Instructions *************/
/************************************************************************/
class I16vec32;  /* 32 elements, each element a signed or unsigned short */
class Is16vec32; /* 32 elements, each element a signed short */
class Iu16vec32; /* 32 elements, each element an unsigned short */
class I8vec64;   /* 64 elements, each element a signed or unsigned char */
class Is8vec64;  /* 64 elements, each element a signed char */
class Iu8vec64;  /* 64 elements, each element an unsigned char */

#define _MM_64UB(element,vector) (*((unsigned char*)&(vector) + (element)))
#define _MM_64B(element,vector) (*((signed char*)&(vector) + (element)))

#define _MM_32UW(element,vector) (*((unsigned short*)&(vector) + (element)))
#define _MM_32W(element,vector) (*((short*)&(vector) + (element)))

/* I16vec32 Class:
 * 32 elements, each element either unsigned or signed short
 */
class I16vec32 : public M512vec
{
public:
    I16vec32() { }
    I16vec32(__m512i mm) : M512vec(mm) { }
    I16vec32(short s31, short s30, short s29, short s28,
             short s27, short s26, short s25, short s24,
             short s23, short s22, short s21, short s20,
             short s19, short s18, short s17, short s16,
             short s15, short s14, short s13, short s12,
             short s11, short s10, short s9, short s8,
             short s7, short s6, short s5, short s4,
             short s3, short s2, short s1, short s0)
    {
        vec = _mm512_set_epi16(s31, s30, s29, s28, s27, s26, s25, s24,
                               s23, s22, s21, s20, s19, s18, s17, s16,
                               s15, s14, s13, s12, s11, s10, s9, s8,
                               s7, s6, s5, s4, s3, s2, s1, s0);
    }

    /* Constructor */
    I16vec32(const M512vec &m) : M512vec(m) {}

    /* Addition & Subtraction Assignment Operators */
    friend I16vec32 operator +(const I16vec32 &a, const I16vec32 &b) {
        return (I16vec32)_mm512_add_epi16(a, b);
    }
    friend I16vec32 operator -(const I16vec32 &a, const I16vec32 &b) {
        return (I16vec32)_mm512_sub_epi16(a, b);
    }
    friend I16vec32 operator *(const I16vec32 &a, const I16vec32 &b) {
        return (I16vec32)_mm512_mullo_epi16(a, b);
    }
    I16vec32& operator +=(const I16vec32 &a) {
        return *this = *this + a;
    }
    I16vec32& operator -=(const I16vec32 &a) {
        return *this = *this - a;
    }
    I16vec32& operator *=(const I16vec32 &a) {
        return *this = *this * a;
    }

    /* Shift Logical Operators */
    I16vec32 operator<<(const M512vec &a) {
        return _mm512_sllv_epi16(vec,a);
    }
    I16vec32 operator<<(int count) {
        return _mm512_slli_epi16(vec,count);
    }
    I16vec32& operator<<=(const M512vec &a) {
        return *this = *this << a;
    }
    I16vec32& operator<<=(int count) {
        return *this = *this << count;
    }
};


inline I16vec32 unpack_low(const I16vec32 &a, const I16vec32 &b) {
    return _mm512_unpacklo_epi16(a,b);
}
inline I16vec32 unpack_high(const I16vec32 &a, const I16vec32 &b) {
    return _mm512_unpackhi_epi16(a,b);
}

/* Is16vec32 Class:
 * 32 elements, each element signed short
 */
class Is16vec32 : public I16vec32
{
public:
    Is16vec32() { }
    Is16vec32(__m512i mm) : I16vec32(mm) { }
    Is16vec32(signed short s31, signed short s30,
              signed short s29, signed short s28, signed short s27,
              signed short s26, signed short s25, signed short s24,
              signed short s23, signed short s22, signed short s21,
              signed short s20, signed short s19, signed short s18,
              signed short s17, signed short s16, signed short s15,
              signed short s14, signed short s13, signed short s12,
              signed short s11, signed short s10, signed short s9,
              signed short s8, signed short s7, signed short s6,
              signed short s5, signed short s4, signed short s3,
              signed short s2, signed short s1, signed short s0)
        : I16vec32(s31, s30, s29, s28, s27, s26, s25, s24,
                   s23, s22, s21, s20, s19, s18, s17, s16,
                   s15, s14, s13, s12, s11, s10, s9, s8,
                   s7, s6, s5, s4, s3, s2, s1, s0) { }

    /* Constructor */
    Is16vec32(const M512vec &m) : I16vec32(m) {}

    /* Shift Arithmetic Operators */
    Is16vec32 operator>>(const M512vec &a) {
        return _mm512_srav_epi16(*this,a);
    }
    Is16vec32 operator>>(int count) {
        return _mm512_srai_epi16(*this,count);
    }
    Is16vec32& operator>>=(const M512vec &a) {
        return *this = *this >> a;
    }
    Is16vec32& operator>>=(int count) {
        return *this = *this >> count;
    }
    Is16vec32 operator*(const Is16vec32 &a) {
        return _mm512_mullo_epi16(*this, a);
    }

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output for Debug */
    friend DVEC_STD ostream& operator<< (DVEC_STD ostream &os,
                                         const Is16vec32 &a)
    {
        os << "[31]:" << a[31]
            << " [30]:" << a[30]
            << " [29]:" << a[29]
            << " [28]:" << a[28]
            << " [27]:" << a[27]
            << " [26]:" << a[26]
            << " [25]:" << a[25]
            << " [24]:" << a[24]
            << " [23]:" << a[23]
            << " [22]:" << a[22]
            << " [21]:" << a[21]
            << " [20]:" << a[20]
            << " [19]:" << a[19]
            << " [18]:" << a[18]
            << " [17]:" << a[17]
            << " [16]:" << a[16]
            << " [15]:" << a[15]
            << " [14]:" << a[14]
            << " [13]:" << a[13]
            << " [12]:" << a[12]
            << " [11]:" << a[11]
            << " [10]:" << a[10]
            << " [9]:" << a[9]
            << " [8]:" << a[8]
            << " [7]:" << a[7]
            << " [6]:" << a[6]
            << " [5]:" << a[5]
            << " [4]:" << a[4]
            << " [3]:" << a[3]
            << " [2]:" << a[2]
            << " [1]:" << a[1]
            << " [0]:" << a[0];
            return os;
    }
#endif

    /* Element Access for Debug, No data modified */
    const signed short& operator[](int i)const
    {
        assert(static_cast<unsigned int>(i) < 32);
        /* Only 32 elements to access */
        return _MM_32W(i,vec);
    }

    /* Element Access and Assignment for Debug */
    signed short& operator[](int i)
    {
        assert(static_cast<unsigned int>(i) < 32);
        /* Only 32 elements to access */
        return _MM_32W(i,vec);
    }
};

/* Additional Is16vec32 functions: compares, unpacks, sat add/sub */
inline __mmask32 cmpeq(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_cmpeq_epi16_mask(a,b);
}
inline __mmask32 cmpneq(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_cmpneq_epi16_mask(a,b);
}
inline __mmask32 cmpgt(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_cmpgt_epi16_mask(a,b);
}
inline __mmask32 cmplt(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_cmpgt_epi16_mask(b,a);
}

inline Is16vec32 unpack_low(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_unpacklo_epi16(a,b);
}
inline Is16vec32 unpack_high(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_unpackhi_epi16(a,b);
}

inline Is16vec32 mul_high(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_mulhi_epi16(a,b);
}
inline Is16vec32 sat_add(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_adds_epi16(a,b);
}
inline Is16vec32 sat_sub(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_subs_epi16(a,b);
}

inline Is16vec32 simd_max(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_max_epi16(a,b);
}
inline Is16vec32 simd_min(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_min_epi16(a,b);
}

/* Iu16vec32 Class:
 * 32 elements, each element unsigned short
 */
class Iu16vec32 : public I16vec32
{
public:
    Iu16vec32() { }
    Iu16vec32(__m512i mm) : I16vec32(mm) { }
    Iu16vec32(unsigned short s31, unsigned short s30, unsigned short s29,
              unsigned short s28, unsigned short s27, unsigned short s26,
              unsigned short s25, unsigned short s24, unsigned short s23,
              unsigned short s22, unsigned short s21, unsigned short s20,
              unsigned short s19, unsigned short s18, unsigned short s17,
              unsigned short s16, unsigned short s15, unsigned short s14,
              unsigned short s13, unsigned short s12, unsigned short s11,
              unsigned short s10, unsigned short s9, unsigned short s8,
              unsigned short s7, unsigned short s6, unsigned short s5,
              unsigned short s4, unsigned short s3, unsigned short s2,
              unsigned short s1, unsigned short s0)
        : I16vec32(s31, s30, s29, s28, s27, s26, s25, s24,
                   s23, s22, s21, s20, s19, s18, s17, s16,
                   s15, s14, s13, s12, s11, s10, s9, s8,
                   s7, s6, s5, s4, s3, s2, s1, s0) { }

    /* Constructor */
    Iu16vec32(const M512vec &m) : I16vec32(m) {}

    /* Shift Logical Operators */
    Iu16vec32 operator>>(const M512vec &a) {
        return _mm512_srlv_epi16(vec,a);
    }
    Iu16vec32 operator>>(int count) {
        return _mm512_srli_epi16(vec,count);
    }
    Iu16vec32& operator>>=(const M512vec &a) {
        return *this = (Iu16vec32) _mm512_srlv_epi16(vec,a);
    }
    Iu16vec32& operator>>=(int count) {
        return *this = (Iu16vec32) _mm512_srli_epi16(vec,count);
    }
    Iu16vec32 operator*(const Iu16vec32 &a) {
        return _mm512_mullo_epi16(*this, a);
    }

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output for Debug */
    friend DVEC_STD ostream& operator<< (DVEC_STD ostream &os,
                                         const Iu16vec32 &a)
    {
        os << "[31]:" << a[31]
            << " [30]:" << a[30]
            << " [29]:" << a[29]
            << " [28]:" << a[28]
            << " [27]:" << a[27]
            << " [26]:" << a[26]
            << " [25]:" << a[25]
            << " [24]:" << a[24]
            << " [23]:" << a[23]
            << " [22]:" << a[22]
            << " [21]:" << a[21]
            << " [20]:" << a[20]
            << " [19]:" << a[19]
            << " [18]:" << a[18]
            << " [17]:" << a[17]
            << " [16]:" << a[16]
            << " [15]:" << a[15]
            << " [14]:" << a[14]
            << " [13]:" << a[13]
            << " [12]:" << a[12]
            << " [11]:" << a[11]
            << " [10]:" << a[10]
            << " [9]:" << a[9]
            << " [8]:" << a[8]
            << " [7]:" << a[7]
            << " [6]:" << a[6]
            << " [5]:" << a[5]
            << " [4]:" << a[4]
            << " [3]:" << a[3]
            << " [2]:" << a[2]
            << " [1]:" << a[1]
            << " [0]:" << a[0];
            return os;
    }
#endif

    /* Element Access for Debug, No data modified */
    const unsigned short& operator[](int i)const
    {
        assert(static_cast<unsigned int>(i) < 32);
        /* Only 32 elements to access */
        return _MM_32UW(i,vec);
    }

    /* Element Access for Debug */
    unsigned short& operator[](int i)
    {
        assert(static_cast<unsigned int>(i) < 32);
        /* Only 32 elements to access */
        return _MM_32UW(i,vec);
    }
};

/* Additional Iu16vec32 functions: cmpeq, cmpneq, unpacks, sat add/sub */
inline __mmask32 cmpeq(const Iu16vec32 &a, const Iu16vec32 &b) {
    return _mm512_cmpeq_epu16_mask(a,b);
}
inline __mmask32 cmpneq(const Iu16vec32 &a, const Iu16vec32 &b) {
    return _mm512_cmpneq_epu16_mask(a,b);
}

inline Iu16vec32 unpack_low(const Iu16vec32 &a, const Iu16vec32 &b) {
    return _mm512_unpacklo_epi16(a,b);
}
inline Iu16vec32 unpack_high(const Iu16vec32 &a, const Iu16vec32 &b) {
    return _mm512_unpackhi_epi16(a,b);
}

inline Iu16vec32 sat_add(const Iu16vec32 &a, const Iu16vec32 &b) {
    return _mm512_adds_epu16(a,b);
}
inline Iu16vec32 sat_sub(const Iu16vec32 &a, const Iu16vec32 &b) {
    return _mm512_subs_epu16(a,b);
}

inline Iu16vec32 simd_avg(const Iu16vec32 &a, const Iu16vec32 &b) {
    return _mm512_avg_epu16(a,b);
}
inline Iu16vec32 mul_high(const Iu16vec32 &a, const Iu16vec32 &b) {
    return _mm512_mulhi_epu16(a,b);
}

/* I8vec64 Class:
 * 64 elements, each element either unsigned or signed char
 */
class I8vec64 : public M512vec
{
public:
    I8vec64() { }
    I8vec64(__m512i mm) : M512vec(mm) { }
    I8vec64(char s63, char s62, char s61, char s60, char s59, char s58,
            char s57, char s56, char s55, char s54, char s53, char s52,
            char s51, char s50, char s49, char s48, char s47, char s46,
            char s45, char s44, char s43, char s42, char s41, char s40,
            char s39, char s38, char s37, char s36, char s35, char s34,
            char s33, char s32, char s31, char s30, char s29, char s28,
            char s27, char s26, char s25, char s24, char s23, char s22,
            char s21, char s20, char s19, char s18, char s17, char s16,
            char s15, char s14, char s13, char s12, char s11, char s10,
            char s9, char s8, char s7, char s6, char s5, char s4,
            char s3, char s2, char s1, char s0)
    {
        vec = _mm512_set_epi8(s63, s62, s61, s60, s59, s58, s57, s56,
                              s55, s54, s53, s52, s51, s50, s49, s48,
                              s47, s46, s45, s44, s43, s42, s41, s40,
                              s39, s38, s37, s36, s35, s34, s33, s32,
                              s31, s30, s29, s28, s27, s26, s25, s24,
                              s23, s22, s21, s20, s19, s18, s17, s16,
                              s15, s14, s13, s12, s11, s10, s9, s8,
                              s7, s6, s5, s4, s3, s2, s1, s0);
    }

    /* Constructor */
    I8vec64(const M512vec &m) : M512vec(m) {}

    /* Addition & Subtraction Assignment Operators */
    friend I8vec64 operator +(const I8vec64 &a, const I8vec64 &b) {
        return (I8vec64)_mm512_add_epi8(a, b);
    }
    I8vec64& operator +=(const I8vec64 &a) {
        return *this = *this + a;
    }
    friend I8vec64 operator -(const I8vec64 &a, const I8vec64 &b) {
        return (I8vec64)_mm512_sub_epi8(a, b);
    }
    I8vec64& operator -=(const I8vec64 &a) {
        return *this = *this - a;
    }
};

inline I8vec64 unpack_low(const I8vec64 &a, const I8vec64 &b) {
    return _mm512_unpacklo_epi8(a,b);
}
inline I8vec64 unpack_high(const I8vec64 &a, const I8vec64 &b) {
    return _mm512_unpackhi_epi8(a,b);
}

/* Is8vec64 Class:
 * 64 elements, each element a signed char
 */
class Is8vec64 : public I8vec64
{
public:
    Is8vec64() { }
    Is8vec64(__m512i mm) : I8vec64(mm) { }
    Is8vec64(char s63, char s62, char s61, char s60, char s59, char s58,
             char s57, char s56, char s55, char s54, char s53, char s52,
             char s51, char s50, char s49, char s48, char s47, char s46,
             char s45, char s44, char s43, char s42, char s41, char s40,
             char s39, char s38, char s37, char s36, char s35, char s34,
             char s33, char s32, char s31, char s30, char s29, char s28,
             char s27, char s26, char s25, char s24, char s23, char s22,
             char s21, char s20, char s19, char s18, char s17, char s16,
             char s15, char s14, char s13, char s12, char s11, char s10,
             char s9, char s8, char s7, char s6, char s5, char s4,
             char s3, char s2, char s1, char s0) :
        I8vec64 (s63, s62, s61, s60, s59, s58, s57, s56,
                 s55, s54, s53, s52, s51, s50, s49, s48,
                 s47, s46, s45, s44, s43, s42, s41, s40,
                 s39, s38, s37, s36, s35, s34, s33, s32,
                 s31, s30, s29, s28, s27, s26, s25, s24,
                 s23, s22, s21, s20, s19, s18, s17, s16,
                 s15, s14, s13, s12, s11, s10, s9, s8,
                 s7, s6, s5, s4, s3, s2, s1, s0) {}

    /* Constructor */
    Is8vec64(const M512vec &m) : I8vec64(m) {}

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output for Debug */
    friend DVEC_STD ostream& operator << (DVEC_STD ostream &os,
                                          const Is8vec64 &a)
    {
        os << " [63]:" << (int)a[63]
            << " [62]:" << (int)a[62]
            << " [61]:" << (int)a[61]
            << " [60]:" << (int)a[60]
            << " [59]:" << (int)a[59]
            << " [58]:" << (int)a[58]
            << " [57]:" << (int)a[57]
            << " [56]:" << (int)a[56]
            << " [55]:" << (int)a[55]
            << " [54]:" << (int)a[54]
            << " [53]:" << (int)a[53]
            << " [52]:" << (int)a[52]
            << " [51]:" << (int)a[51]
            << " [50]:" << (int)a[50]
            << " [49]:" << (int)a[49]
            << " [48]:" << (int)a[48]
            << " [47]:" << (int)a[47]
            << " [46]:" << (int)a[46]
            << " [45]:" << (int)a[45]
            << " [44]:" << (int)a[44]
            << " [43]:" << (int)a[43]
            << " [42]:" << (int)a[42]
            << " [41]:" << (int)a[41]
            << " [40]:" << (int)a[40]
            << " [39]:" << (int)a[39]
            << " [38]:" << (int)a[38]
            << " [37]:" << (int)a[37]
            << " [36]:" << (int)a[36]
            << " [35]:" << (int)a[35]
            << " [34]:" << (int)a[34]
            << " [33]:" << (int)a[33]
            << " [32]:" << (int)a[32]
            << " [31]:" << (int)a[31]
            << " [30]:" << (int)a[30]
            << " [29]:" << (int)a[29]
            << " [28]:" << (int)a[28]
            << " [27]:" << (int)a[27]
            << " [26]:" << (int)a[26]
            << " [25]:" << (int)a[25]
            << " [24]:" << (int)a[24]
            << " [23]:" << (int)a[23]
            << " [22]:" << (int)a[22]
            << " [21]:" << (int)a[21]
            << " [20]:" << (int)a[20]
            << " [19]:" << (int)a[19]
            << " [18]:" << (int)a[18]
            << " [17]:" << (int)a[17]
            << " [16]:" << (int)a[16]
            << " [15]:" << (int)a[15]
            << " [14]:" << (int)a[14]
            << " [13]:" << (int)a[13]
            << " [12]:" << (int)a[12]
            << " [11]:" << (int)a[11]
            << " [10]:" << (int)a[10]
            << " [9]:" << (int)a[9]
            << " [8]:" << (int)a[8]
            << " [7]:" << (int)a[7]
            << " [6]:" << (int)a[6]
            << " [5]:" << (int)a[5]
            << " [4]:" << (int)a[4]
            << " [3]:" << (int)a[3]
            << " [2]:" << (int)a[2]
            << " [1]:" << (int)a[1]
            << " [0]:" << (int)a[0];

        return os;
    }
#endif

    /* Element Access for Debug, No data modified */
    const signed char& operator[](int i)const
    {
        assert(static_cast<unsigned int>(i) < 64);
        /* Only 64 elements to access */
        return _MM_64B(i,vec);
    }

    /* Element Access for Debug */
    signed char& operator[](int i)
    {
        assert(static_cast<unsigned int>(i) < 64);
        /* Only 64 elements to access */
        return _MM_64B(i,vec);
    }
};

inline __mmask64 cmpeq(const Is8vec64 &a, const Is8vec64 &b) {
    return _mm512_cmpeq_epi8_mask(a,b);
}
inline __mmask64 cmpneq(const Is8vec64 &a, const Is8vec64 &b) {
    return _mm512_cmpneq_epi8_mask(a,b);
}
inline __mmask64 cmpgt(const Is8vec64 &a, const Is8vec64 &b) {
    return _mm512_cmpgt_epi8_mask(a,b);
}

inline __mmask64 cmplt(const Is8vec64 &a, const Is8vec64 &b) {
    return _mm512_cmplt_epi8_mask(a,b);
}

inline Is8vec64 unpack_low(const Is8vec64 &a, const Is8vec64 &b) {
    return _mm512_unpacklo_epi8(a,b);
}
inline Is8vec64 unpack_high(const Is8vec64 &a, const Is8vec64 &b) {
    return _mm512_unpackhi_epi8(a,b);
}

inline Is8vec64 sat_add(const Is8vec64 &a, const Is8vec64 &b) {
    return _mm512_adds_epi8(a,b);
}
inline Is8vec64 sat_sub(const Is8vec64 &a, const Is8vec64 &b) {
    return _mm512_subs_epi8(a,b);
}


/* Iu8vec64 Class:
 * 64 elements, each element a unsigned char
 */
class Iu8vec64 : public I8vec64
{
public:
    Iu8vec64() { }
    Iu8vec64(__m512i mm) : I8vec64(mm) { }
    Iu8vec64(unsigned char u63, unsigned char u62, unsigned char u61,
             unsigned char u60, unsigned char u59, unsigned char u58,
             unsigned char u57, unsigned char u56, unsigned char u55,
             unsigned char u54, unsigned char u53, unsigned char u52,
             unsigned char u51, unsigned char u50, unsigned char u49,
             unsigned char u48, unsigned char u47, unsigned char u46,
             unsigned char u45, unsigned char u44, unsigned char u43,
             unsigned char u42, unsigned char u41, unsigned char u40,
             unsigned char u39, unsigned char u38, unsigned char u37,
             unsigned char u36, unsigned char u35, unsigned char u34,
             unsigned char u33, unsigned char u32, unsigned char u31,
             unsigned char u30, unsigned char u29, unsigned char u28,
             unsigned char u27, unsigned char u26, unsigned char u25,
             unsigned char u24, unsigned char u23, unsigned char u22,
             unsigned char u21, unsigned char u20, unsigned char u19,
             unsigned char u18, unsigned char u17, unsigned char u16,
             unsigned char u15, unsigned char u14, unsigned char u13,
             unsigned char u12, unsigned char u11, unsigned char u10,
             unsigned char u9, unsigned char u8, unsigned char u7,
             unsigned char u6, unsigned char u5, unsigned char u4,
             unsigned char u3, unsigned char u2, unsigned char u1,
             unsigned char u0) :
        I8vec64 (u63, u62, u61, u60, u59, u58, u57, u56,
                 u55, u54, u53, u52, u51, u50, u49, u48,
                 u47, u46, u45, u44, u43, u42, u41, u40,
                 u39, u38, u37, u36, u35, u34, u33, u32,
                 u31, u30, u29, u28, u27, u26, u25, u24,
                 u23, u22, u21, u20, u19, u18, u17, u16,
                 u15, u14, u13, u12, u11, u10, u9, u8,
                 u7, u6, u5, u4, u3, u2, u1, u0) {}


    /* Constructor */
    Iu8vec64(const M512vec &m) : I8vec64(m) {}

#if defined(DVEC_DEFINE_OUTPUT_OPERATORS)
    /* Output for Debug */
    friend DVEC_STD ostream& operator << (DVEC_STD ostream &os,
                                          const Iu8vec64 &a)
    {
        os << " [63]:" << (unsigned int)a[63]
            << " [62]:" << (unsigned int)a[62]
            << " [61]:" << (unsigned int)a[61]
            << " [60]:" << (unsigned int)a[60]
            << " [59]:" << (unsigned int)a[59]
            << " [58]:" << (unsigned int)a[58]
            << " [57]:" << (unsigned int)a[57]
            << " [56]:" << (unsigned int)a[56]
            << " [55]:" << (unsigned int)a[55]
            << " [54]:" << (unsigned int)a[54]
            << " [53]:" << (unsigned int)a[53]
            << " [52]:" << (unsigned int)a[52]
            << " [51]:" << (unsigned int)a[51]
            << " [50]:" << (unsigned int)a[50]
            << " [49]:" << (unsigned int)a[49]
            << " [48]:" << (unsigned int)a[48]
            << " [47]:" << (unsigned int)a[47]
            << " [46]:" << (unsigned int)a[46]
            << " [45]:" << (unsigned int)a[45]
            << " [44]:" << (unsigned int)a[44]
            << " [43]:" << (unsigned int)a[43]
            << " [42]:" << (unsigned int)a[42]
            << " [41]:" << (unsigned int)a[41]
            << " [40]:" << (unsigned int)a[40]
            << " [39]:" << (unsigned int)a[39]
            << " [38]:" << (unsigned int)a[38]
            << " [37]:" << (unsigned int)a[37]
            << " [36]:" << (unsigned int)a[36]
            << " [35]:" << (unsigned int)a[35]
            << " [34]:" << (unsigned int)a[34]
            << " [33]:" << (unsigned int)a[33]
            << " [32]:" << (unsigned int)a[32]
            << " [31]:" << (unsigned int)a[31]
            << " [30]:" << (unsigned int)a[30]
            << " [29]:" << (unsigned int)a[29]
            << " [28]:" << (unsigned int)a[28]
            << " [27]:" << (unsigned int)a[27]
            << " [26]:" << (unsigned int)a[26]
            << " [25]:" << (unsigned int)a[25]
            << " [24]:" << (unsigned int)a[24]
            << " [23]:" << (unsigned int)a[23]
            << " [22]:" << (unsigned int)a[22]
            << " [21]:" << (unsigned int)a[21]
            << " [20]:" << (unsigned int)a[20]
            << " [19]:" << (unsigned int)a[19]
            << " [18]:" << (unsigned int)a[18]
            << " [17]:" << (unsigned int)a[17]
            << " [16]:" << (unsigned int)a[16]
            << " [15]:" << (unsigned int)a[15]
            << " [14]:" << (unsigned int)a[14]
            << " [13]:" << (unsigned int)a[13]
            << " [12]:" << (unsigned int)a[12]
            << " [11]:" << (unsigned int)a[11]
            << " [10]:" << (unsigned int)a[10]
            << " [9]:" << (unsigned int)a[9]
            << " [8]:" << (unsigned int)a[8]
            << " [7]:" << (unsigned int)a[7]
            << " [6]:" << (unsigned int)a[6]
            << " [5]:" << (unsigned int)a[5]
            << " [4]:" << (unsigned int)a[4]
            << " [3]:" << (unsigned int)a[3]
            << " [2]:" << (unsigned int)a[2]
            << " [1]:" << (unsigned int)a[1]
            << " [0]:" << (unsigned int)a[0];

        return os;
    }
#endif

    /* Element Access for Debug, No data modified */
    const unsigned char& operator[](int i)const
    {
        assert(static_cast<unsigned int>(i) < 64);
        /* Only 64 elements to access */
        return _MM_64UB(i,vec);
    }

    /* Element Access for Debug */
    unsigned char& operator[](int i)
    {
        assert(static_cast<unsigned int>(i) < 64);
        /* Only 64 elements to access */
        return _MM_64UB(i,vec);
    }
};

inline __mmask64 cmpeq(const Iu8vec64 &a, const Iu8vec64 &b) {
    return _mm512_cmpeq_epu8_mask(a,b);
}
inline __mmask64 cmpneq(const Iu8vec64 &a, const Iu8vec64 &b) {
    return _mm512_cmpneq_epu8_mask(a,b);
}

inline Iu8vec64 unpack_low(const Iu8vec64 &a, const Iu8vec64 &b) {
    return _mm512_unpacklo_epi8(a,b);
}
inline Iu8vec64 unpack_high(const Iu8vec64 &a, const Iu8vec64 &b) {
    return _mm512_unpackhi_epi8(a,b);
}

inline Iu8vec64 sat_add(const Iu8vec64 &a, const Iu8vec64 &b) {
    return _mm512_adds_epu8(a,b);
}
inline Iu8vec64 sat_sub(const Iu8vec64 &a, const Iu8vec64 &b) {
    return _mm512_subs_epu8(a,b);
}

inline Iu8vec64 sum_abs(const Iu8vec64 &a, const Iu8vec64 &b) {
    return _mm512_sad_epu8(a,b);
}

inline Iu8vec64 simd_avg(const Iu8vec64 &a, const Iu8vec64 &b) {
    return _mm512_avg_epu8(a,b);
}
inline Iu8vec64 simd_max(const Iu8vec64 &a, const Iu8vec64 &b) {
    return _mm512_max_epu8(a,b);
}
inline Iu8vec64 simd_min(const Iu8vec64 &a, const Iu8vec64 &b) {
    return _mm512_min_epu8(a,b);
}
inline Is8vec64 pack_sat(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_packs_epi16(a,b);
}
inline Iu8vec64 packu_sat(const Is16vec32 &a, const Is16vec32 &b) {
    return _mm512_packus_epi16(a,b);
}

#define IVEC512_SELECT(vect12,vect34,element,selop,cmpop,cmpsign)    \
    inline I##vect34##vec##element select_##selop (                  \
            const I##vect34##vec##element &a,                        \
            const I##vect34##vec##element &b,                        \
            const I##vect34##vec##element &c,                        \
            const I##vect34##vec##element &d)                        \
{                                                                    \
    return _mm512_mask_blend_epi##vect12(                            \
            _mm512_cmp_ep##cmpsign##vect12##_mask(a, b, cmpop),      \
                                                  d, c);             \
}

IVEC512_SELECT(8,s8,64,eq,_MM_CMPINT_EQ,i)
IVEC512_SELECT(8,u8,64,eq,_MM_CMPINT_EQ,u)
IVEC512_SELECT(8,s8,64,lt,_MM_CMPINT_LT,i)
IVEC512_SELECT(8,u8,64,lt,_MM_CMPINT_LT,u)
IVEC512_SELECT(8,s8,64,le,_MM_CMPINT_LE,i)
IVEC512_SELECT(8,u8,64,le,_MM_CMPINT_LE,u)
IVEC512_SELECT(8,s8,64,gt,_MM_CMPINT_GT,i)
IVEC512_SELECT(8,u8,64,gt,_MM_CMPINT_GT,u)
IVEC512_SELECT(8,s8,64,ge,_MM_CMPINT_GE,i)
IVEC512_SELECT(8,u8,64,ge,_MM_CMPINT_GE,u)
IVEC512_SELECT(8,s8,64,neq,_MM_CMPINT_NE,i)
IVEC512_SELECT(8,u8,64,neq,_MM_CMPINT_NE,u)
IVEC512_SELECT(8,s8,64,nlt,_MM_CMPINT_NLT,i)
IVEC512_SELECT(8,u8,64,nlt,_MM_CMPINT_NLT,u)
IVEC512_SELECT(8,s8,64,nle,_MM_CMPINT_NLE,i)
IVEC512_SELECT(8,u8,64,nle,_MM_CMPINT_NLE,u)
IVEC512_SELECT(8,s8,64,ngt,_MM_CMPINT_LE,i)
IVEC512_SELECT(8,u8,64,ngt,_MM_CMPINT_LE,u)
IVEC512_SELECT(8,s8,64,nge,_MM_CMPINT_LT,i)
IVEC512_SELECT(8,u8,64,nge,_MM_CMPINT_LT,u)
IVEC512_SELECT(16,s16,32,eq,_MM_CMPINT_GE,i)
IVEC512_SELECT(16,u16,32,eq,_MM_CMPINT_GE,u)
IVEC512_SELECT(16,s16,32,lt,_MM_CMPINT_LT,i)
IVEC512_SELECT(16,u16,32,lt,_MM_CMPINT_LT,u)
IVEC512_SELECT(16,s16,32,le,_MM_CMPINT_LE,i)
IVEC512_SELECT(16,u16,32,le,_MM_CMPINT_LE,u)
IVEC512_SELECT(16,s16,32,gt,_MM_CMPINT_GT,i)
IVEC512_SELECT(16,u16,32,gt,_MM_CMPINT_GT,u)
IVEC512_SELECT(16,s16,32,ge,_MM_CMPINT_GE,i)
IVEC512_SELECT(16,u16,32,ge,_MM_CMPINT_GE,u)
IVEC512_SELECT(16,s16,32,neq,_MM_CMPINT_NE,i)
IVEC512_SELECT(16,u16,32,neq,_MM_CMPINT_NE,u)
IVEC512_SELECT(16,s16,32,nlt,_MM_CMPINT_NLT,i)
IVEC512_SELECT(16,u16,32,nlt,_MM_CMPINT_NLT,u)
IVEC512_SELECT(16,s16,32,nle,_MM_CMPINT_NLE,i)
IVEC512_SELECT(16,u16,32,nle,_MM_CMPINT_NLE,u)
IVEC512_SELECT(16,s16,32,ngt,_MM_CMPINT_LE,i)
IVEC512_SELECT(16,u16,32,ngt,_MM_CMPINT_LE,u)
IVEC512_SELECT(16,s16,32,nge,_MM_CMPINT_LT,i)
IVEC512_SELECT(16,u16,32,nge,_MM_CMPINT_LT,u)

/* The Microsoft compiler (version VS2008 or older) cannot handle the #pragma pack(push,32) */
#if !defined(_MSC_VER) || (_MSC_VER >= 1600)
#pragma pack(pop) /* 32-B aligned */
#endif

#undef DVEC_DEFINE_OUTPUT_OPERATORS
#undef DVEC_STD

#endif // DVEC_H_INCLUDED

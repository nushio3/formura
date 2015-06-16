/* COPYRIGHT FUJITSU LIMITED 2014 */

#if !defined(_MXINTRIN_H_INCLUDED)
# define _MXINTRIN_H_INCLUDED

# if defined(_ISOC99_SOURCE) || defined(__cplusplus)
#  define __INLINE__ inline
# else
#  define __INLINE__ static
# endif

# if defined(__cplusplus)
extern "C" {
# endif /* __cplusplus */

# if defined(__HPC_ACE2__)
typedef __builtin_v4r8 __m256d;
typedef __builtin_v4r8 _fjsp_v4r8;
# else
# error "HPC-ACE2 instruction set not enabled"
# endif

# if defined(__HPC_ACE2__)

__INLINE__ __m256d _fjsp_set_v4r8           (double w, double x, double y, double z)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_set_v4r8           (double w, double x, double y, double z) { return __builtin_fj_set_v4r8(z, y, x, w); }
__INLINE__ __m256d _fjsp_set_v4r4           (float w, float x, float y, float z)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_set_v4r4           (float w, float x, float y, float z) { return __builtin_fj_set_v4r4(z, y, x, w); }
__INLINE__ __m256d _fjsp_set_v8r4           (float s, float t, float u, float v, float w, float x, float y, float z)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_set_v8r4           (float s, float t, float u, float v, float w, float x, float y, float z) { return __builtin_fj_set_v8r4(z, y, x, w, v, u, t, s); }
__INLINE__ __m256d _fjsp_set_v4i8           (long long int w, long long int x, long long int y, long long int z)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_set_v4i8           (long long int w, long long int x, long long int y, long long int z) { return __builtin_fj_set_v4i8(z, y, x, w); }
__INLINE__ __m256d _fjsp_set_v4i4           (int w, int x, int y, int z)                __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_set_v4i4           (int w, int x, int y, int z)       { return __builtin_fj_set_v4i4(z, y, x, w); }
__INLINE__ __m256d _fjsp_set_v4u8           (unsigned long long int w, unsigned long long int x, unsigned long long int y, unsigned long long int z)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_set_v4u8           (unsigned long long int w, unsigned long long int x, unsigned long long int y, unsigned long long int z) { return __builtin_fj_set_v4u8(z, y, x, w); }
__INLINE__ __m256d _fjsp_set_v4u4           (unsigned int w, unsigned int x, unsigned int y, unsigned int z)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_set_v4u4           (unsigned int w, unsigned int x, unsigned int y, unsigned int z) { return __builtin_fj_set_v4u4(z, y, x, w); }
#define            _fjsp_extract_v4r8(a, pos)                                  __builtin_fj_extract_v4r8(a, pos)
#define            _fjsp_extract_v4r4(a, pos)                                  __builtin_fj_extract_v4r4(a, pos)
#define            _fjsp_extract_v8r4(a, pos)                                  __builtin_fj_extract_v8r4(a, pos)
#define            _fjsp_extract_v4i8(a, pos)                                  __builtin_fj_extract_v4i8(a, pos)
#define            _fjsp_extract_v4i4(a, pos)                                  __builtin_fj_extract_v4i4(a, pos)
#define            _fjsp_extract_v4u8(a, pos)                                  __builtin_fj_extract_v4u8(a, pos)
#define            _fjsp_extract_v4u4(a, pos)                                  __builtin_fj_extract_v4u4(a, pos)
__INLINE__ __m256d _fjsp_setzero_v4r8       ()                                          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_setzero_v4r8       ()                                 { return __builtin_fj_setzero_v4r8() ; }
__INLINE__ __m256d _fjsp_setzero_v4r4       ()                                          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_setzero_v4r4       ()                                 { return __builtin_fj_setzero_v4r4() ; }
#define            _fjsp_setzero_v4i8()                                        __builtin_fj_setzero_v4r8()
#define            _fjsp_setzero_v4i4()                                        __builtin_fj_setzero_v4r8()
#define            _fjsp_setzero_v4u8()                                        __builtin_fj_setzero_v4r8()
#define            _fjsp_setzero_v4u4()                                        __builtin_fj_setzero_v4r8() 
__INLINE__ __m256d _fjsp_setone_v4r8        ()                                          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_setone_v4r8        ()                                 { return __builtin_fj_setone_v4r8() ; }
__INLINE__ __m256d _fjsp_setone_v4r4        ()                                          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_setone_v4r4        ()                                 { return __builtin_fj_setone_v4r4() ; }
#define            _fjsp_setone_v4i8()                                         __builtin_fj_setone_v4r8() 
#define            _fjsp_setone_v4i4()                                         __builtin_fj_setone_v4r8() 
#define            _fjsp_setone_v4u8()                                         __builtin_fj_setone_v4r8() 
#define            _fjsp_setone_v4u4()                                         __builtin_fj_setone_v4r8() 
__INLINE__ __m256d _fjsp_load_v4r8          (double const * p)                          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_load_v4r8          (double const * p)                 { return __builtin_fj_load_v4r8(p) ; }
__INLINE__ __m256d _fjsp_load_v4r4          (float const * p)                           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_load_v4r4          (float const * p)                  { return __builtin_fj_load_v4r4(p) ; }
__INLINE__ __m256d _fjsp_load_v8r4          (float const * p)                           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_load_v8r4          (float const * p)                  { return __builtin_fj_load_v8r4(p) ; }
__INLINE__ __m256d _fjsp_load_v4i8          (long long const * p)                       __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_load_v4i8          (long long const * p)              { return __builtin_fj_load_v4r8((double const *)p) ; }
__INLINE__ __m256d _fjsp_load_v4i4          (int const * p)                             __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_load_v4i4          (int const * p)                    { return __builtin_fj_load_v4i4(p) ; }
__INLINE__ __m256d _fjsp_load_v4u8          (unsigned long long int const * p)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_load_v4u8          (unsigned long long int const * p) { return __builtin_fj_load_v4r8((double const *)p) ; }
__INLINE__ __m256d _fjsp_load_v4u4          (unsigned int const * p)                    __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_load_v4u4          (unsigned int const * p)           { return __builtin_fj_load_v4u4(p) ; }
#define            _fjsp_strideload_v4r8(p, pos)                               __builtin_fj_strideload_v4r8(p, pos)
#define            _fjsp_strideload_v4r4(p, pos)                               __builtin_fj_strideload_v4r4(p, pos)
#define            _fjsp_strideload_v4i8(p, pos)                               __builtin_fj_strideload_v4i8(p, pos)
#define            _fjsp_strideload_v4i4(p, pos)                               __builtin_fj_strideload_v4i4(p, pos)
#define            _fjsp_strideload_v4u8(p, pos)                               __builtin_fj_strideload_v4u8(p, pos)
#define            _fjsp_strideload_v4u4(p, pos)                               __builtin_fj_strideload_v4u4(p, pos)
__INLINE__ __m256d _fjsp_indirectload_v4r8  (__m256d p)                        __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_indirectload_v4r8  (__m256d p)                        { return __builtin_fj_indirectload_v4r8(p) ; }
__INLINE__ __m256d _fjsp_indirectload_v4r4  (__m256d p)                        __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_indirectload_v4r4  (__m256d p)                        { return __builtin_fj_indirectload_v4r4(p) ; }
#define            _fjsp_indirectload_v4i8(p)                                  __builtin_fj_indirectload_v4r8(p) 
__INLINE__ __m256d _fjsp_indirectload_v4i4  (__m256d p)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_indirectload_v4i4  (__m256d p)                        { return __builtin_fj_indirectload_v4i4(p) ; }
#define            _fjsp_indirectload_v4u8(p)                                  __builtin_fj_indirectload_v4r8(p) 
__INLINE__ __m256d _fjsp_indirectload_v4u4  (__m256d p)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_indirectload_v4u4  (__m256d p)                        { return __builtin_fj_indirectload_v4u4(p) ; }
__INLINE__ __m256d _fjsp_broadcastload_v4r8 (double const * p)                          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_broadcastload_v4r8 (double const * p)                 { return __builtin_fj_broadcastload_v4r8(p) ; }
__INLINE__ __m256d _fjsp_broadcastload_v4r4 (float const * p)                           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_broadcastload_v4r4 (float const * p)                  { return __builtin_fj_broadcastload_v4r4(p) ; }
__INLINE__ __m256d _fjsp_broadcastload_v8r4 (float const * p)                           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_broadcastload_v8r4 (float const * p)                  { return __builtin_fj_broadcastload_v8r4(p) ; }
__INLINE__ __m256d _fjsp_broadcastload_v4i8 (long long const * p)                       __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_broadcastload_v4i8 (long long const * p)              { return __builtin_fj_broadcastload_v4r8((double *)(p)) ; }
__INLINE__ __m256d _fjsp_broadcastload_v4i4 (int const * p)                             __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_broadcastload_v4i4 (int const * p)                    { return __builtin_fj_broadcastload_v4i4(p) ; }
__INLINE__ __m256d _fjsp_broadcastload_v4u8 (unsigned long long const * p)              __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_broadcastload_v4u8 (unsigned long long const * p)     { return __builtin_fj_broadcastload_v4r8((double *)(p)) ; }
__INLINE__ __m256d _fjsp_broadcastload_v4u4 (unsigned int const * p)                    __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_broadcastload_v4u4 (unsigned int const * p)           { return __builtin_fj_broadcastload_v4u4(p) ; }
__INLINE__ void    _fjsp_store_v4r8         (double * p, __m256d a)              __attribute((simd_mode_4));
__INLINE__ void    _fjsp_store_v4r8         (double * p, __m256d a)            { __builtin_fj_store_v4r8(p, a) ; }
__INLINE__ void    _fjsp_store_v4r4         (float * p, __m256d a)               __attribute((simd_mode_4));
__INLINE__ void    _fjsp_store_v4r4         (float * p, __m256d a)             { __builtin_fj_store_v4r4(p, a) ; }
__INLINE__ void    _fjsp_store_v8r4         (float * p, __m256d a)               __attribute((simd_mode_4));
__INLINE__ void    _fjsp_store_v8r4         (float * p, __m256d a)             { __builtin_fj_store_v8r4(p, a) ; }
#define            _fjsp_store_v4i8(p, a)                                      __builtin_fj_store_v4r8((double *)(p), (a)) 
#define            _fjsp_store_v4i4(p, a)                                      __builtin_fj_store_v4u4((unsigned *)(p), (a)) 
#define            _fjsp_store_v4u8(p, a)                                      __builtin_fj_store_v4r8((double *)(p), (a)) 
__INLINE__ void    _fjsp_store_v4u4         (unsigned int * p, __m256d a)        __attribute((simd_mode_4));
__INLINE__ void    _fjsp_store_v4u4         (unsigned int * p, __m256d a)      { __builtin_fj_store_v4u4(p, a) ; }
#define            _fjsp_stridestore_v4r8(p, a, pos)                           __builtin_fj_stridestore_v4r8(p, a, pos)
#define            _fjsp_stridestore_v4r4(p, a, pos)                           __builtin_fj_stridestore_v4r4(p, a, pos)
#define            _fjsp_stridestore_v4i8(p, a, pos)                           __builtin_fj_stridestore_v4i8(p, a, pos)
#define            _fjsp_stridestore_v4i4(p, a, pos)                           __builtin_fj_stridestore_v4i4(p, a, pos)
#define            _fjsp_stridestore_v4u8(p, a, pos)                           __builtin_fj_stridestore_v4u8(p, a, pos)
#define            _fjsp_stridestore_v4u4(p, a, pos)                           __builtin_fj_stridestore_v4u4(p, a, pos)
__INLINE__ void    _fjsp_indirectstore_v4r8 (__m256d p, __m256d a)             __attribute((simd_mode_4));
__INLINE__ void    _fjsp_indirectstore_v4r8 (__m256d p, __m256d a)             { __builtin_fj_indirectstore_v4r8(p, a) ; }
__INLINE__ void    _fjsp_indirectstore_v4r4 (__m256d p, __m256d a)               __attribute((simd_mode_4));
__INLINE__ void    _fjsp_indirectstore_v4r4 (__m256d p, __m256d a)             { __builtin_fj_indirectstore_v4r4(p, a) ; }
#define            _fjsp_indirectstore_v4i8(p, a)                              __builtin_fj_indirectstore_v4r8(p, a) 
#define            _fjsp_indirectstore_v4i4(p, a)                              __builtin_fj_indirectstore_v4u4(p, a) 
#define            _fjsp_indirectstore_v4u8(p, a)                              __builtin_fj_indirectstore_v4r8(p, a) 
__INLINE__ void    _fjsp_indirectstore_v4u4 (__m256d p, __m256d a)               __attribute((simd_mode_4));
__INLINE__ void    _fjsp_indirectstore_v4u4 (__m256d p, __m256d a)             { __builtin_fj_indirectstore_v4u4(p, a) ; }
__INLINE__ void    _fjsp_selstore_v4r8      (double * p, __m256d a, __m256d b)   __attribute((simd_mode_4));
__INLINE__ void    _fjsp_selstore_v4r8      (double * p, __m256d a, __m256d b) { __builtin_fj_selstore_v4r8(p, a, b) ; }
__INLINE__ void    _fjsp_selstore_v4r4      (float * p, __m256d a, __m256d b)    __attribute((simd_mode_4));
__INLINE__ void    _fjsp_selstore_v4r4      (float * p, __m256d a, __m256d b)  { __builtin_fj_selstore_v4r4(p, a, b) ; }
__INLINE__ void    _fjsp_selstore_v4i8      (long long * p, __m256d a, __m256d b)   __attribute((simd_mode_4));
__INLINE__ void    _fjsp_selstore_v4i8      (long long * p, __m256d a, __m256d b) { __builtin_fj_selstore_v4r8(((double *)p), a, b) ; }
__INLINE__ void    _fjsp_selstore_v4i4      (int * p, __m256d a, __m256d b)    __attribute((simd_mode_4));
__INLINE__ void    _fjsp_selstore_v4i4      (int * p, __m256d a, __m256d b)  { __builtin_fj_selstore_v4u4(((unsigned int *)p), a, b) ; }
__INLINE__ void    _fjsp_selstore_v4u8      (unsigned long long * p, __m256d a, __m256d b)   __attribute((simd_mode_4));
__INLINE__ void    _fjsp_selstore_v4u8      (unsigned long long * p, __m256d a, __m256d b) { __builtin_fj_selstore_v4r8(((double *)p), a, b) ; }
__INLINE__ void    _fjsp_selstore_v4u4(unsigned int * p, __m256d a, __m256d b)   __attribute((simd_mode_4));
__INLINE__ void    _fjsp_selstore_v4u4(unsigned int * p, __m256d a, __m256d b) { __builtin_fj_selstore_v4u4(p, a, b) ; }
#define            _fjsp_strideselstore_v4r8(p, a, b, pos)                     __builtin_fj_strideselstore_v4r8(p, a, b, pos)
#define            _fjsp_strideselstore_v4r4(p, a, b, pos)                     __builtin_fj_strideselstore_v4r4(p, a, b, pos)
#define            _fjsp_strideselstore_v4i8(p, a, b, pos)                     __builtin_fj_strideselstore_v4i8(p, a, b, pos)
#define            _fjsp_strideselstore_v4i4(p, a, b, pos)                     __builtin_fj_strideselstore_v4i4(p, a, b, pos)
#define            _fjsp_strideselstore_v4u8(p, a, b, pos)                     __builtin_fj_strideselstore_v4u8(p, a, b, pos)
#define            _fjsp_strideselstore_v4u4(p, a, b, pos)                     __builtin_fj_strideselstore_v4u4(p, a, b, pos)
__INLINE__ void    _fjsp_indirectselstore_v4r8(__m256d p, __m256d a, __m256d b)   __attribute((simd_mode_4));
__INLINE__ void    _fjsp_indirectselstore_v4r8(__m256d p, __m256d a, __m256d b) { __builtin_fj_indirectselstore_v4r8(p, a, b) ; }
__INLINE__ void    _fjsp_indirectselstore_v4r4(__m256d p, __m256d a, __m256d b)   __attribute((simd_mode_4));
__INLINE__ void    _fjsp_indirectselstore_v4r4(__m256d p, __m256d a, __m256d b) { __builtin_fj_indirectselstore_v4r4(p, a, b) ; }
#define            _fjsp_indirectselstore_v4i8(p, a, b)                        __builtin_fj_indirectselstore_v4r8(p, a, b)
#define            _fjsp_indirectselstore_v4i4(p, a, b)                        __builtin_fj_indirectselstore_v4u4(p, a, b)
#define            _fjsp_indirectselstore_v4u8(p, a, b)                        __builtin_fj_indirectselstore_v4r8(p, a, b)
__INLINE__ void    _fjsp_indirectselstore_v4u4(__m256d p, __m256d a, __m256d b)   __attribute((simd_mode_4));
__INLINE__ void    _fjsp_indirectselstore_v4u4(__m256d p, __m256d a, __m256d b) { __builtin_fj_indirectselstore_v4u4(p, a, b) ; }
__INLINE__ __m256d _fjsp_add_v4r8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_add_v4r8           (__m256d a, __m256d b)             { return __builtin_fj_add_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_add_v4r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_add_v4r4           (__m256d a, __m256d b)             { return __builtin_fj_add_v4r4(a, b) ; }
__INLINE__ __m256d _fjsp_add_v8r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_add_v8r4           (__m256d a, __m256d b)             { return __builtin_fj_add_v8r4(a, b) ; }
__INLINE__ __m256d _fjsp_add_v4u8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_add_v4u8           (__m256d a, __m256d b)             { return __builtin_fj_add_v4u8(a, b) ; }
#define            _fjsp_add_v4i8(a, b)                                        __builtin_fj_add_v4u8(a, b)
#define            _fjsp_add_v4i4(a, b)                                        __builtin_fj_add_v4u8(a, b)
#define            _fjsp_add_v4u4(a, b)                                        __builtin_fj_add_v4u8(a, b)
__INLINE__ __m256d _fjsp_sub_v4r8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_sub_v4r8           (__m256d a, __m256d b)             { return __builtin_fj_sub_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_sub_v4r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_sub_v4r4           (__m256d a, __m256d b)             { return __builtin_fj_sub_v4r4(a, b) ; }
__INLINE__ __m256d _fjsp_sub_v8r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_sub_v8r4           (__m256d a, __m256d b)             { return __builtin_fj_sub_v8r4(a, b) ; }
#define            _fjsp_sub_v4i8(a, b)                                        __builtin_fj_sub_v4u8(a, b)
#define            _fjsp_sub_v4i4(a, b)                                        __builtin_fj_sub_v4u8(a, b)
__INLINE__ __m256d _fjsp_sub_v4u8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_sub_v4u8           (__m256d a, __m256d b)             { return __builtin_fj_sub_v4u8(a, b) ; }
#define            _fjsp_sub_v4u4(a, b)                                        __builtin_fj_sub_v4u8(a, b)
__INLINE__ __m256d _fjsp_mul_v4r8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_mul_v4r8           (__m256d a, __m256d b)             { return __builtin_fj_mul_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_mul_v4r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_mul_v4r4           (__m256d a, __m256d b)             { return __builtin_fj_mul_v4r4(a, b) ; }
__INLINE__ __m256d _fjsp_mul_v8r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_mul_v8r4           (__m256d a, __m256d b)             { return __builtin_fj_mul_v8r4(a, b) ; }
#define            _fjsp_mul_v4i8(a, b)                                        __builtin_fj_mul_v4u8(a, b) 
#define            _fjsp_mul_v4i4(a, b)                                        __builtin_fj_mul_v4u8(a, b) 
__INLINE__ __m256d _fjsp_mul_v4u8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_mul_v4u8           (__m256d a, __m256d b)             { return __builtin_fj_mul_v4u8(a, b) ; }
#define            _fjsp_mul_v4u4(a, b)                                        __builtin_fj_mul_v4u8(a, b) 
__INLINE__ __m256d _fjsp_div_v4r8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_div_v4r8           (__m256d a, __m256d b)             { return __builtin_fj_div_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_div_v4r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_div_v4r4           (__m256d a, __m256d b)             { return __builtin_fj_div_v4r4(a, b) ; }
__INLINE__ __m256d _fjsp_div_v8r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_div_v8r4           (__m256d a, __m256d b)             { return __builtin_fj_div_v8r4(a, b) ; }
__INLINE__ __m256d _fjsp_div_v4i8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_div_v4i8           (__m256d a, __m256d b)             { return __builtin_fj_div_v4i8(a, b) ; }
__INLINE__ __m256d _fjsp_div_v4i4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_div_v4i4           (__m256d a, __m256d b)             { return __builtin_fj_div_v4i4(a, b) ; }
__INLINE__ __m256d _fjsp_div_v4u8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_div_v4u8           (__m256d a, __m256d b)             { return __builtin_fj_div_v4u8(a, b) ; }
__INLINE__ __m256d _fjsp_div_v4u4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_div_v4u4           (__m256d a, __m256d b)             { return __builtin_fj_div_v4u4(a, b) ; }
__INLINE__ __m256d _fjsp_rcpa_v4r8          (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_rcpa_v4r8          (__m256d a)                        { return __builtin_fj_rcpa_v4r8(a) ; }
__INLINE__ __m256d _fjsp_rcpa_v4r4          (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_rcpa_v4r4          (__m256d a)                        { return __builtin_fj_rcpa_v4r4(a) ; }
__INLINE__ __m256d _fjsp_rcpa_v8r4          (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_rcpa_v8r4          (__m256d a)                        { return __builtin_fj_rcpa_v8r4(a) ; }
__INLINE__ __m256d _fjsp_sqrt_v4r8          (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_sqrt_v4r8          (__m256d a)                        { return __builtin_fj_sqrt_v4r8(a) ; }
__INLINE__ __m256d _fjsp_sqrt_v4r4          (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_sqrt_v4r4          (__m256d a)                        { return __builtin_fj_sqrt_v4r4(a) ; }
__INLINE__ __m256d _fjsp_sqrt_v8r4          (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_sqrt_v8r4          (__m256d a)                        { return __builtin_fj_sqrt_v8r4(a) ; }
__INLINE__ __m256d _fjsp_rsqrta_v4r8        (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_rsqrta_v4r8        (__m256d a)                        { return __builtin_fj_rsqrta_v4r8(a) ; }
__INLINE__ __m256d _fjsp_rsqrta_v4r4        (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_rsqrta_v4r4        (__m256d a)                        { return __builtin_fj_rsqrta_v4r4(a) ; }
__INLINE__ __m256d _fjsp_rsqrta_v8r4        (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_rsqrta_v8r4        (__m256d a)                        { return __builtin_fj_rsqrta_v8r4(a) ; }
__INLINE__ __m256d _fjsp_and_v4r8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_and_v4r8           (__m256d a, __m256d b)             { return __builtin_fj_and_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_and_v4r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_and_v4r4           (__m256d a, __m256d b)             { return __builtin_fj_and_v4r4(a, b) ; }
#define            _fjsp_and_v4i8(a, b)                                        __builtin_fj_and_v4r8(a, b) 
#define            _fjsp_and_v4i4(a, b)                                        __builtin_fj_and_v4r8(a, b) 
#define            _fjsp_and_v4u8(a, b)                                        __builtin_fj_and_v4r8(a, b) 
#define            _fjsp_and_v4u4(a, b)                                        __builtin_fj_and_v4r8(a, b) 
__INLINE__ __m256d _fjsp_andnot1_v4r8       (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_andnot1_v4r8       (__m256d a, __m256d b)             { return __builtin_fj_andnot1_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_andnot1_v4r4       (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_andnot1_v4r4       (__m256d a, __m256d b)             { return __builtin_fj_andnot1_v4r4(a, b) ; }
#define            _fjsp_andnot1_v4i8(a, b)                                    __builtin_fj_andnot1_v4r8(a, b) 
#define            _fjsp_andnot1_v4i4(a, b)                                    __builtin_fj_andnot1_v4r8(a, b) 
#define            _fjsp_andnot1_v4u8(a, b)                                    __builtin_fj_andnot1_v4r8(a, b) 
#define            _fjsp_andnot1_v4u4(a, b)                                    __builtin_fj_andnot1_v4r8(a, b) 
__INLINE__ __m256d _fjsp_or_v4r8            (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_or_v4r8            (__m256d a, __m256d b)             { return __builtin_fj_or_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_or_v4r4            (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_or_v4r4            (__m256d a, __m256d b)             { return __builtin_fj_or_v4r4(a, b) ; }
#define            _fjsp_or_v4i8(a, b)                                         __builtin_fj_or_v4r8(a, b) 
#define            _fjsp_or_v4i4(a, b)                                         __builtin_fj_or_v4r8(a, b) 
#define            _fjsp_or_v4u8(a, b)                                         __builtin_fj_or_v4r8(a, b) 
#define            _fjsp_or_v4u4(a, b)                                         __builtin_fj_or_v4r8(a, b) 
__INLINE__ __m256d _fjsp_xor_v4r8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_xor_v4r8           (__m256d a, __m256d b)             { return __builtin_fj_xor_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_xor_v4r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_xor_v4r4           (__m256d a, __m256d b)             { return __builtin_fj_xor_v4r4(a, b) ; }
#define            _fjsp_xor_v4i8(a, b)                                        __builtin_fj_xor_v4r8(a, b) 
#define            _fjsp_xor_v4i4(a, b)                                        __builtin_fj_xor_v4r8(a, b) 
#define            _fjsp_xor_v4u8(a, b)                                        __builtin_fj_xor_v4r8(a, b) 
#define            _fjsp_xor_v4u4(a, b)                                        __builtin_fj_xor_v4r8(a, b) 
__INLINE__ __m256d _fjsp_nand_v4r8          (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nand_v4r8          (__m256d a, __m256d b)             { return __builtin_fj_nand_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_nand_v4r4          (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nand_v4r4          (__m256d a, __m256d b)             { return __builtin_fj_nand_v4r4(a, b) ; }
#define            _fjsp_nand_v4i8(a, b)                                       __builtin_fj_nand_v4r8(a, b) 
#define            _fjsp_nand_v4i4(a, b)                                       __builtin_fj_nand_v4r8(a, b) 
#define            _fjsp_nand_v4u8(a, b)                                       __builtin_fj_nand_v4r8(a, b) 
#define            _fjsp_nand_v4u4(a, b)                                       __builtin_fj_nand_v4r8(a, b) 
__INLINE__ __m256d _fjsp_nor_v4r8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nor_v4r8           (__m256d a, __m256d b)             { return __builtin_fj_nor_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_nor_v4r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nor_v4r4           (__m256d a, __m256d b)             { return __builtin_fj_nor_v4r4(a, b) ; }
#define            _fjsp_nor_v4i8(a, b)                                        __builtin_fj_nor_v4r8(a, b) 
#define            _fjsp_nor_v4i4(a, b)                                        __builtin_fj_nor_v4r8(a, b) 
#define            _fjsp_nor_v4u8(a, b)                                        __builtin_fj_nor_v4r8(a, b) 
#define            _fjsp_nor_v4u4(a, b)                                        __builtin_fj_nor_v4r8(a, b) 
__INLINE__ __m256d _fjsp_xnor_v4r8          (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_xnor_v4r8          (__m256d a, __m256d b)             { return __builtin_fj_xnor_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_xnor_v4r4          (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_xnor_v4r4          (__m256d a, __m256d b)             { return __builtin_fj_xnor_v4r4(a, b) ; }
#define            _fjsp_xnor_v4i8(a, b)                                       __builtin_fj_xnor_v4r8(a, b) 
#define            _fjsp_xnor_v4i4(a, b)                                       __builtin_fj_xnor_v4r8(a, b) 
#define            _fjsp_xnor_v4u8(a, b)                                       __builtin_fj_xnor_v4r8(a, b) 
#define            _fjsp_xnor_v4u4(a, b)                                       __builtin_fj_xnor_v4r8(a, b) 
__INLINE__ __m256d _fjsp_max_v4r8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_max_v4r8           (__m256d a, __m256d b)             { return __builtin_fj_max_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_max_v4r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_max_v4r4           (__m256d a, __m256d b)             { return __builtin_fj_max_v4r4(a, b) ; }
__INLINE__ __m256d _fjsp_max_v4i8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_max_v4i8           (__m256d a, __m256d b)             { return __builtin_fj_max_v4i8(a, b) ; }
__INLINE__ __m256d _fjsp_max_v4i4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_max_v4i4           (__m256d a, __m256d b)             { return __builtin_fj_max_v4i4(a, b) ; }
__INLINE__ __m256d _fjsp_max_v4u8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_max_v4u8           (__m256d a, __m256d b)             { return __builtin_fj_max_v4u8(a, b) ; }
__INLINE__ __m256d _fjsp_max_v4u4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_max_v4u4           (__m256d a, __m256d b)             { return __builtin_fj_max_v4u4(a, b) ; }
__INLINE__ __m256d _fjsp_min_v4r8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_min_v4r8           (__m256d a, __m256d b)             { return __builtin_fj_min_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_min_v4r4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_min_v4r4           (__m256d a, __m256d b)             { return __builtin_fj_min_v4r4(a, b) ; }
__INLINE__ __m256d _fjsp_min_v4i8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_min_v4i8           (__m256d a, __m256d b)             { return __builtin_fj_min_v4i8(a, b) ; }
__INLINE__ __m256d _fjsp_min_v4i4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_min_v4i4           (__m256d a, __m256d b)             { return __builtin_fj_min_v4i4(a, b) ; }
__INLINE__ __m256d _fjsp_min_v4u8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_min_v4u8           (__m256d a, __m256d b)             { return __builtin_fj_min_v4u8(a, b) ; }
__INLINE__ __m256d _fjsp_min_v4u4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_min_v4u4           (__m256d a, __m256d b)             { return __builtin_fj_min_v4u4(a, b) ; }
__INLINE__ __m256d _fjsp_cmpeq_v4r8         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpeq_v4r8         (__m256d a, __m256d b)             { return __builtin_fj_cmpeq_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_cmpeq_v4r4         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpeq_v4r4         (__m256d a, __m256d b)             { return __builtin_fj_cmpeq_v4r4(a, b) ; }
#define            _fjsp_cmpeq_v4i8(a, b)                                      __builtin_fj_cmpeq_v4u8(a, b) 
#define            _fjsp_cmpeq_v4i4(a, b)                                      __builtin_fj_cmpeq_v4u4(a, b) 
__INLINE__ __m256d _fjsp_cmpeq_v4u8         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpeq_v4u8         (__m256d a, __m256d b)             { return __builtin_fj_cmpeq_v4u8(a, b) ; }
__INLINE__ __m256d _fjsp_cmpeq_v4u4         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpeq_v4u4         (__m256d a, __m256d b)             { return __builtin_fj_cmpeq_v4u4(a, b) ; }
__INLINE__ __m256d _fjsp_cmpgee_v4r8        (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpgee_v4r8        (__m256d a, __m256d b)             { return __builtin_fj_cmpgee_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_cmpgee_v4r4        (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpgee_v4r4        (__m256d a, __m256d b)             { return __builtin_fj_cmpgee_v4r4(a, b) ; }
#define            _fjsp_cmpge_v4i8(a, b)                                      __builtin_fj_cmple_v4i8(b, a) 
#define            _fjsp_cmpge_v4i4(a, b)                                      __builtin_fj_cmple_v4i4(b, a) 
#define            _fjsp_cmpge_v4u8(a, b)                                      __builtin_fj_cmple_v4u8(b, a) 
#define            _fjsp_cmpge_v4u4(a, b)                                      __builtin_fj_cmple_v4u4(b, a) 
__INLINE__ __m256d _fjsp_cmpgte_v4r8        (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpgte_v4r8        (__m256d a, __m256d b)             { return __builtin_fj_cmpgte_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_cmpgte_v4r4        (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpgte_v4r4        (__m256d a, __m256d b)             { return __builtin_fj_cmpgte_v4r4(a, b) ; }
__INLINE__ __m256d _fjsp_cmpgt_v4i8         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpgt_v4i8         (__m256d a, __m256d b)             { return __builtin_fj_cmpgt_v4i8(a, b) ; }
__INLINE__ __m256d _fjsp_cmpgt_v4i4         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpgt_v4i4         (__m256d a, __m256d b)             { return __builtin_fj_cmpgt_v4i4(a, b) ; }
__INLINE__ __m256d _fjsp_cmpgt_v4u8         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpgt_v4u8         (__m256d a, __m256d b)             { return __builtin_fj_cmpgt_v4u8(a, b) ; }
__INLINE__ __m256d _fjsp_cmpgt_v4u4         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpgt_v4u4         (__m256d a, __m256d b)             { return __builtin_fj_cmpgt_v4u4(a, b) ; }
__INLINE__ __m256d _fjsp_cmplee_v4r8        (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmplee_v4r8        (__m256d a, __m256d b)             { return __builtin_fj_cmplee_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_cmplee_v4r4        (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmplee_v4r4        (__m256d a, __m256d b)             { return __builtin_fj_cmplee_v4r4(a, b) ; }
__INLINE__ __m256d _fjsp_cmple_v4i8         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmple_v4i8         (__m256d a, __m256d b)             { return __builtin_fj_cmple_v4i8(a, b) ; }
__INLINE__ __m256d _fjsp_cmple_v4i4         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmple_v4i4         (__m256d a, __m256d b)             { return __builtin_fj_cmple_v4i4(a, b) ; }
__INLINE__ __m256d _fjsp_cmple_v4u8         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmple_v4u8         (__m256d a, __m256d b)             { return __builtin_fj_cmple_v4u8(a, b) ; }
__INLINE__ __m256d _fjsp_cmple_v4u4         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmple_v4u4         (__m256d a, __m256d b)             { return __builtin_fj_cmple_v4u4(a, b) ; }
__INLINE__ __m256d _fjsp_cmplte_v4r8        (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmplte_v4r8        (__m256d a, __m256d b)             { return __builtin_fj_cmplte_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_cmplte_v4r4        (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmplte_v4r4        (__m256d a, __m256d b)             { return __builtin_fj_cmplte_v4r4(a, b) ; }
#define            _fjsp_cmplt_v4i8(a, b)                                      __builtin_fj_cmpgt_v4i8(b, a) 
#define            _fjsp_cmplt_v4i4(a, b)                                      __builtin_fj_cmpgt_v4i4(b, a) 
#define            _fjsp_cmplt_v4u8(a, b)                                      __builtin_fj_cmpgt_v4u8(b, a) 
#define            _fjsp_cmplt_v4u4(a, b)                                      __builtin_fj_cmpgt_v4u4(b, a) 
__INLINE__ __m256d _fjsp_cmpne_v4r8         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpne_v4r8         (__m256d a, __m256d b)             { return __builtin_fj_cmpne_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_cmpne_v4r4         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpne_v4r4         (__m256d a, __m256d b)             { return __builtin_fj_cmpne_v4r4(a, b) ; }
#define            _fjsp_cmpne_v4i8(a, b)                                      __builtin_fj_cmpne_v4u8(a, b) 
#define            _fjsp_cmpne_v4i4(a, b)                                      __builtin_fj_cmpne_v4u8(a, b) 
__INLINE__ __m256d _fjsp_cmpne_v4u8         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpne_v4u8         (__m256d a, __m256d b)             { return __builtin_fj_cmpne_v4u8(a, b) ; }
__INLINE__ __m256d _fjsp_cmpne_v4u4         (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_cmpne_v4u4         (__m256d a, __m256d b)             { return __builtin_fj_cmpne_v4u4(a, b) ; }
__INLINE__ __m256d _fjsp_selmov_v4r8        (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_selmov_v4r8        (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_selmov_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_selmov_v4r4        (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_selmov_v4r4        (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_selmov_v4r4(a, b, c) ; }
#define            _fjsp_selmov_v4i8(a, b, c)                                  __builtin_fj_selmov_v4r8(a, b, c) 
#define            _fjsp_selmov_v4i4(a, b, c)                                  __builtin_fj_selmov_v4r8(a, b, c) 
#define            _fjsp_selmov_v4u8(a, b, c)                                  __builtin_fj_selmov_v4r8(a, b, c) 
#define            _fjsp_selmov_v4u4(a, b, c)                                  __builtin_fj_selmov_v4r8(a, b, c) 
#define            _fjsp_trimadd_v4r8(a, b, index)                             __builtin_fj_trimadd_v4r8(a, b, index)
__INLINE__ __m256d _fjsp_trismul_v4r8       (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_trismul_v4r8       (__m256d a, __m256d b)             { return __builtin_fj_trismul_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_trissel_v4r8       (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_trissel_v4r8       (__m256d a, __m256d b)             { return __builtin_fj_trissel_v4r8(a, b) ; }
__INLINE__ __m256d _fjsp_abs_v4r8           (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_abs_v4r8           (__m256d a)                        { return __builtin_fj_abs_v4r8(a) ; }
__INLINE__ __m256d _fjsp_abs_v4r4           (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_abs_v4r4           (__m256d a)                        { return __builtin_fj_abs_v4r4(a) ; }
__INLINE__ __m256d _fjsp_neg_v4r8           (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_neg_v4r8           (__m256d a)                        { return __builtin_fj_neg_v4r8(a) ; }
__INLINE__ __m256d _fjsp_neg_v4r4           (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_neg_v4r4           (__m256d a)                        { return __builtin_fj_neg_v4r4(a) ; }
__INLINE__ __m256d _fjsp_dtoi_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_dtoi_v4            (__m256d a)                        { return __builtin_fj_dtoi_v4(a) ; }
__INLINE__ __m256d _fjsp_dtos_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_dtos_v4            (__m256d a)                        { return __builtin_fj_dtos_v4(a) ; }
__INLINE__ __m256d _fjsp_dtow_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_dtow_v4            (__m256d a)                        { return __builtin_fj_dtow_v4(a) ; }
__INLINE__ __m256d _fjsp_dtox_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_dtox_v4            (__m256d a)                        { return __builtin_fj_dtox_v4(a) ; }
__INLINE__ __m256d _fjsp_itod_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_itod_v4            (__m256d a)                        { return __builtin_fj_itod_v4(a) ; }
__INLINE__ __m256d _fjsp_itos_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_itos_v4            (__m256d a)                        { return __builtin_fj_itos_v4(a) ; }
__INLINE__ __m256d _fjsp_stod_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_stod_v4            (__m256d a)                        { return __builtin_fj_stod_v4(a) ; }
__INLINE__ __m256d _fjsp_stoi_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_stoi_v4            (__m256d a)                        { return __builtin_fj_stoi_v4(a) ; }
__INLINE__ __m256d _fjsp_stow_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_stow_v4            (__m256d a)                        { return __builtin_fj_stow_v4(a) ; }
__INLINE__ __m256d _fjsp_stox_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_stox_v4            (__m256d a)                        { return __builtin_fj_stox_v4(a) ; }
__INLINE__ __m256d _fjsp_wtod_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_wtod_v4            (__m256d a)                        { return __builtin_fj_wtod_v4(a) ; }
__INLINE__ __m256d _fjsp_wtos_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_wtos_v4            (__m256d a)                        { return __builtin_fj_wtos_v4(a) ; }
__INLINE__ __m256d _fjsp_xtod_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_xtod_v4            (__m256d a)                        { return __builtin_fj_xtod_v4(a) ; }
__INLINE__ __m256d _fjsp_xtos_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_xtos_v4            (__m256d a)                        { return __builtin_fj_xtos_v4(a) ; }
__INLINE__ __m256d _fjsp_madd_v4r8          (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_v4r8          (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_v4r4          (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_v4r4          (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_v8r4          (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_v8r4          (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_v8r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_v4r8          (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_v4r8          (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_v4r4          (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_v4r4          (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_v8r4          (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_v8r4          (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_v8r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_v4r8         (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_v4r8         (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_v4r4         (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_v4r4         (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_v8r4         (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_v8r4         (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_v8r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_v4r8         (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_v4r8         (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_v4r4         (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_v4r4         (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_v8r4         (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_v8r4         (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_v8r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_v4r8       (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_v4r8       (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_cp_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_v4r4       (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_v4r4       (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_cp_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_v4r8       (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_v4r8       (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_cp_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_v4r4       (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_v4r4       (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_cp_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_v4r8      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_v4r8      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_cp_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_v4r4      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_v4r4      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_cp_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_v4r8      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_v4r8      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_cp_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_v4r4      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_v4r4      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_cp_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_neg_v4r8      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_neg_v4r8      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_neg_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_neg_v4r4      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_neg_v4r4      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_neg_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_neg_v4r8      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_neg_v4r8      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_neg_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_neg_v4r4      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_neg_v4r4      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_neg_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_neg_v4r8     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_neg_v4r8     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_neg_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_neg_v4r4     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_neg_v4r4     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_neg_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_neg_v4r8     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_neg_v4r8     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_neg_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_neg_v4r4     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_neg_v4r4     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_neg_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_neg_v4r8   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_neg_v4r8   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_cp_neg_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_neg_v4r4   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_neg_v4r4   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_cp_neg_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_neg_v4r8   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_neg_v4r8   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_cp_neg_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_neg_v4r4   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_neg_v4r4   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_cp_neg_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_neg_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_neg_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_cp_neg_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_neg_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_neg_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_cp_neg_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_neg_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_neg_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_cp_neg_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_neg_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_neg_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_cp_neg_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_sr1_v4r8      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_sr1_v4r8      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_sr1_v4r4      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_sr1_v4r4      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_sr1_v4r8      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_sr1_v4r8      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_sr1_v4r4      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_sr1_v4r4      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_sr1_v4r8     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_sr1_v4r8     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_sr1_v4r4     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_sr1_v4r4     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_sr1_v4r8     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_sr1_v4r8     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_sr1_v4r4     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_sr1_v4r4     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_sr1_v4r8   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_sr1_v4r8   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_cp_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_sr1_v4r4   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_sr1_v4r4   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_cp_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_sr1_v4r8   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_sr1_v4r8   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_cp_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_sr1_v4r4   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_sr1_v4r4   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_cp_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_sr1_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_sr1_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_cp_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_sr1_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_sr1_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_cp_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_sr1_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_sr1_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_cp_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_sr1_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_sr1_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_cp_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_neg_sr1_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_neg_sr1_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_neg_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_neg_sr1_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_neg_sr1_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_neg_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_neg_sr1_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_neg_sr1_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_neg_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_neg_sr1_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_neg_sr1_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_neg_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_neg_sr1_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_neg_sr1_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_neg_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_neg_sr1_v4r4 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_neg_sr1_v4r4 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_neg_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_neg_sr1_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_neg_sr1_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_neg_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_neg_sr1_v4r4 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_neg_sr1_v4r4 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_neg_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_neg_sr1_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_neg_sr1_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_madd_cp_neg_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_neg_sr1_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_neg_sr1_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_madd_cp_neg_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_neg_sr1_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_neg_sr1_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_msub_cp_neg_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_neg_sr1_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_neg_sr1_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_msub_cp_neg_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr1_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr1_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmadd_cp_neg_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr1_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr1_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmadd_cp_neg_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr1_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr1_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmsub_cp_neg_sr1_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr1_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr1_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmsub_cp_neg_sr1_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_sr2_v4r8      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_sr2_v4r8      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_sr2_v4r4      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_sr2_v4r4      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_sr2_v4r8      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_sr2_v4r8      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_sr2_v4r4      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_sr2_v4r4      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_sr2_v4r8     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_sr2_v4r8     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_sr2_v4r4     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_sr2_v4r4     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_sr2_v4r8     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_sr2_v4r8     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_sr2_v4r4     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_sr2_v4r4     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_sr2_v4r8   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_sr2_v4r8   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_cp_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_sr2_v4r4   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_sr2_v4r4   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_cp_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_sr2_v4r8   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_sr2_v4r8   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_cp_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_sr2_v4r4   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_sr2_v4r4   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_cp_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_sr2_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_sr2_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_cp_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_sr2_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_sr2_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_cp_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_sr2_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_sr2_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_cp_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_sr2_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_sr2_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_cp_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_neg_sr2_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_neg_sr2_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_neg_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_neg_sr2_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_neg_sr2_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_neg_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_neg_sr2_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_neg_sr2_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_neg_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_neg_sr2_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_neg_sr2_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_neg_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_neg_sr2_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_neg_sr2_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_neg_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_neg_sr2_v4r4 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_neg_sr2_v4r4 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_neg_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_neg_sr2_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_neg_sr2_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_neg_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_neg_sr2_v4r4 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_neg_sr2_v4r4 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_neg_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_neg_sr2_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_neg_sr2_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_madd_cp_neg_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_neg_sr2_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_neg_sr2_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_madd_cp_neg_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_neg_sr2_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_neg_sr2_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_msub_cp_neg_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_neg_sr2_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_neg_sr2_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_msub_cp_neg_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr2_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr2_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmadd_cp_neg_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr2_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr2_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmadd_cp_neg_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr2_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr2_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmsub_cp_neg_sr2_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr2_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr2_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmsub_cp_neg_sr2_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_sr12_v4r8     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_sr12_v4r8     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_sr12_v4r4     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_sr12_v4r4     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_sr12_v4r8     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_sr12_v4r8     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_sr12_v4r4     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_sr12_v4r4     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_sr12_v4r8    (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_sr12_v4r8    (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_sr12_v4r4    (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_sr12_v4r4    (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_sr12_v4r8    (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_sr12_v4r8    (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_sr12_v4r4    (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_sr12_v4r4    (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_sr12_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_sr12_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_cp_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_sr12_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_sr12_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_cp_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_sr12_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_sr12_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_cp_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_sr12_v4r4  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_sr12_v4r4  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_cp_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_sr12_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_sr12_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_cp_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_sr12_v4r4 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_sr12_v4r4 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_cp_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_sr12_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_sr12_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_cp_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_sr12_v4r4 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_sr12_v4r4 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_cp_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_neg_sr12_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_neg_sr12_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_neg_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_neg_sr12_v4r4 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_neg_sr12_v4r4 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_madd_neg_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_neg_sr12_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_neg_sr12_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_neg_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_neg_sr12_v4r4 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_neg_sr12_v4r4 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_msub_neg_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_neg_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmadd_neg_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_neg_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c)  { return __builtin_fj_nmsub_neg_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_madd_cp_neg_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_madd_cp_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_madd_cp_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_madd_cp_neg_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_msub_cp_neg_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_msub_cp_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_msub_cp_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_msub_cp_neg_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmadd_cp_neg_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmadd_cp_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmadd_cp_neg_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr12_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmsub_cp_neg_sr12_v4r8(a, b, c) ; }
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_nmsub_cp_neg_sr12_v4r4(__m256d a, __m256d b, __m256d c) { return __builtin_fj_nmsub_cp_neg_sr12_v4r4(a, b, c) ; }
__INLINE__ __m256d _fjsp_pmaddx_v4r8        (__m256d a, __m256d b, __m256d c)  __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddx_v4r8        (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddx_v4r8(a, b, c) ; }
#define            _fjsp_pmaddx_v4i8(a, b, c)                                  __builtin_fj_pmaddx_v4r8(a, b, c) 
#define            _fjsp_pmaddx_v4i4(a, b, c)                                  __builtin_fj_pmaddx_v4r8(a, b, c) 
#define            _fjsp_pmaddx_v4u8(a, b, c)                                  __builtin_fj_pmaddx_v4r8(a, b, c) 
#define            _fjsp_pmaddx_v4u4(a, b, c)                                  __builtin_fj_pmaddx_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddx_cp_v4r8     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddx_cp_v4r8     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddx_cp_v4r8(a, b, c) ; }
#define            _fjsp_pmaddx_cp_v4i8(a, b, c)                               __builtin_fj_pmaddx_cp_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_v4i4(a, b, c)                               __builtin_fj_pmaddx_cp_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_v4u8(a, b, c)                               __builtin_fj_pmaddx_cp_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_v4u4(a, b, c)                               __builtin_fj_pmaddx_cp_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddx_sr1_v4r8    (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddx_sr1_v4r8    (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddx_sr1_v4r8(a, b, c) ; }
#define            _fjsp_pmaddx_sr1_v4i8(a, b, c)                              __builtin_fj_pmaddx_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddx_sr1_v4i4(a, b, c)                              __builtin_fj_pmaddx_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddx_sr1_v4u8(a, b, c)                              __builtin_fj_pmaddx_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddx_sr1_v4u4(a, b, c)                              __builtin_fj_pmaddx_sr1_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddx_cp_sr1_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddx_cp_sr1_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddx_cp_sr1_v4r8(a, b, c) ; }
#define            _fjsp_pmaddx_cp_sr1_v4i8(a, b, c)                           __builtin_fj_pmaddx_cp_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_sr1_v4i4(a, b, c)                           __builtin_fj_pmaddx_cp_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_sr1_v4u8(a, b, c)                           __builtin_fj_pmaddx_cp_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_sr1_v4u4(a, b, c)                           __builtin_fj_pmaddx_cp_sr1_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddx_sr2_v4r8    (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddx_sr2_v4r8    (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddx_sr2_v4r8(a, b, c) ; }
#define            _fjsp_pmaddx_sr2_v4i8(a, b, c)                              __builtin_fj_pmaddx_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddx_sr2_v4i4(a, b, c)                              __builtin_fj_pmaddx_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddx_sr2_v4u8(a, b, c)                              __builtin_fj_pmaddx_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddx_sr2_v4u4(a, b, c)                              __builtin_fj_pmaddx_sr2_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddx_cp_sr2_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddx_cp_sr2_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddx_cp_sr2_v4r8(a, b, c) ; }
#define            _fjsp_pmaddx_cp_sr2_v4i8(a, b, c)                           __builtin_fj_pmaddx_cp_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_sr2_v4i4(a, b, c)                           __builtin_fj_pmaddx_cp_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_sr2_v4u8(a, b, c)                           __builtin_fj_pmaddx_cp_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_sr2_v4u4(a, b, c)                           __builtin_fj_pmaddx_cp_sr2_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddx_sr12_v4r8   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddx_sr12_v4r8   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddx_sr12_v4r8(a, b, c) ; }
#define            _fjsp_pmaddx_sr12_v4i8(a, b, c)                             __builtin_fj_pmaddx_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddx_sr12_v4i4(a, b, c)                             __builtin_fj_pmaddx_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddx_sr12_v4u8(a, b, c)                             __builtin_fj_pmaddx_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddx_sr12_v4u4(a, b, c)                             __builtin_fj_pmaddx_sr12_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddx_cp_sr12_v4r8(__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddx_cp_sr12_v4r8(__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddx_cp_sr12_v4r8(a, b, c) ; }
#define            _fjsp_pmaddx_cp_sr12_v4i8(a, b, c)                          __builtin_fj_pmaddx_cp_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_sr12_v4i4(a, b, c)                          __builtin_fj_pmaddx_cp_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_sr12_v4u8(a, b, c)                          __builtin_fj_pmaddx_cp_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddx_cp_sr12_v4u4(a, b, c)                          __builtin_fj_pmaddx_cp_sr12_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddxhi_v4r8      (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddxhi_v4r8      (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddxhi_v4r8(a, b, c) ; }
#define            _fjsp_pmaddxhi_v4i8(a, b, c)                                __builtin_fj_pmaddxhi_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_v4i4(a, b, c)                                __builtin_fj_pmaddxhi_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_v4u8(a, b, c)                                __builtin_fj_pmaddxhi_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_v4u4(a, b, c)                                __builtin_fj_pmaddxhi_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddxhi_cp_v4r8   (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddxhi_cp_v4r8   (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddxhi_cp_v4r8(a, b, c) ; }
#define            _fjsp_pmaddxhi_cp_v4i8(a, b, c)                             __builtin_fj_pmaddxhi_cp_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_v4i4(a, b, c)                             __builtin_fj_pmaddxhi_cp_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_v4u8(a, b, c)                             __builtin_fj_pmaddxhi_cp_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_v4u4(a, b, c)                             __builtin_fj_pmaddxhi_cp_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddxhi_sr1_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddxhi_sr1_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddxhi_sr1_v4r8(a, b, c) ; }
#define            _fjsp_pmaddxhi_sr1_v4i8(a, b, c)                            __builtin_fj_pmaddxhi_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_sr1_v4i4(a, b, c)                            __builtin_fj_pmaddxhi_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_sr1_v4u8(a, b, c)                            __builtin_fj_pmaddxhi_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_sr1_v4u4(a, b, c)                            __builtin_fj_pmaddxhi_sr1_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddxhi_cp_sr1_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddxhi_cp_sr1_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_pmaddxhi_cp_sr1_v4r8(a, b, c) ; }
#define            _fjsp_pmaddxhi_cp_sr1_v4i8(a, b, c)                         __builtin_fj_pmaddxhi_cp_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_sr1_v4i4(a, b, c)                         __builtin_fj_pmaddxhi_cp_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_sr1_v4u8(a, b, c)                         __builtin_fj_pmaddxhi_cp_sr1_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_sr1_v4u4(a, b, c)                         __builtin_fj_pmaddxhi_cp_sr1_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddxhi_sr2_v4r8  (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddxhi_sr2_v4r8  (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddxhi_sr2_v4r8(a, b, c) ; }
#define            _fjsp_pmaddxhi_sr2_v4i8(a, b, c)                            __builtin_fj_pmaddxhi_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_sr2_v4i4(a, b, c)                            __builtin_fj_pmaddxhi_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_sr2_v4u8(a, b, c)                            __builtin_fj_pmaddxhi_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_sr2_v4u4(a, b, c)                            __builtin_fj_pmaddxhi_sr2_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddxhi_cp_sr2_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddxhi_cp_sr2_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_pmaddxhi_cp_sr2_v4r8(a, b, c) ; }
#define            _fjsp_pmaddxhi_cp_sr2_v4i8(a, b, c)                         __builtin_fj_pmaddxhi_cp_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_sr2_v4i4(a, b, c)                         __builtin_fj_pmaddxhi_cp_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_sr2_v4u8(a, b, c)                         __builtin_fj_pmaddxhi_cp_sr2_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_sr2_v4u4(a, b, c)                         __builtin_fj_pmaddxhi_cp_sr2_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddxhi_sr12_v4r8 (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddxhi_sr12_v4r8 (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_pmaddxhi_sr12_v4r8(a, b, c) ; }
#define            _fjsp_pmaddxhi_sr12_v4i8(a, b, c)                           __builtin_fj_pmaddxhi_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_sr12_v4i4(a, b, c)                           __builtin_fj_pmaddxhi_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_sr12_v4u8(a, b, c)                           __builtin_fj_pmaddxhi_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_sr12_v4u4(a, b, c)                           __builtin_fj_pmaddxhi_sr12_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_pmaddxhi_cp_sr12_v4r8(__m256d a, __m256d b, __m256d c)          __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_pmaddxhi_cp_sr12_v4r8(__m256d a, __m256d b, __m256d c) { return __builtin_fj_pmaddxhi_cp_sr12_v4r8(a, b, c) ; }
#define            _fjsp_pmaddxhi_cp_sr12_v4i8(a, b, c)                        __builtin_fj_pmaddxhi_cp_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_sr12_v4i4(a, b, c)                        __builtin_fj_pmaddxhi_cp_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_sr12_v4u8(a, b, c)                        __builtin_fj_pmaddxhi_cp_sr12_v4r8(a, b, c) 
#define            _fjsp_pmaddxhi_cp_sr12_v4u4(a, b, c)                        __builtin_fj_pmaddxhi_cp_sr12_v4r8(a, b, c) 
__INLINE__ __m256d _fjsp_sll_v4i8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_sll_v4i8           (__m256d a, __m256d b)             { return __builtin_fj_sll_v4i8(a, b) ; }
#define            _fjsp_sll_v4i4(a, b)                                        __builtin_fj_sll_v4i8(a, b) 
#define            _fjsp_sll_v4u8(a, b)                                        __builtin_fj_sll_v4i8(a, b) 
#define            _fjsp_sll_v4u4(a, b)                                        __builtin_fj_sll_v4i8(a, b) 
__INLINE__ __m256d _fjsp_srl_v4i8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_srl_v4i8           (__m256d a, __m256d b)             { return __builtin_fj_srl_v4i8(a, b) ; }
#define            _fjsp_srl_v4i4(a, b)                                        __builtin_fj_srl_v4i8(a, b) 
#define            _fjsp_srl_v4u8(a, b)                                        __builtin_fj_srl_v4i8(a, b) 
#define            _fjsp_srl_v4u4(a, b)                                        __builtin_fj_srl_v4i8(a, b) 
__INLINE__ __m256d _fjsp_sra_v4i8           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_sra_v4i8           (__m256d a, __m256d b)             { return __builtin_fj_sra_v4i8(a, b) ; }
#define            _fjsp_sra_v4i4(a, b)                                        __builtin_fj_sra_v4i8(a, b) 
#define            _fjsp_sra_v4u8(a, b)                                        __builtin_fj_sra_v4i8(a, b) 
#define            _fjsp_sra_v4u4(a, b)                                        __builtin_fj_sra_v4i8(a, b) 
__INLINE__ __m256d _fjsp_sext_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_sext_v4            (__m256d a)                        { return __builtin_fj_sext_v4(a) ; }
__INLINE__ __m256d _fjsp_zext_v4            (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_zext_v4            (__m256d a)                        { return __builtin_fj_zext_v4(a) ; }
__INLINE__ __m256d _fjsp_eperm_v4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_eperm_v4           (__m256d a, __m256d b)             { return __builtin_fj_eperm_v4(a, b) ; }
#define            _fjsp_ecsl_v4(a, b, pos)                                    __builtin_fj_ecsl_v4(a, b, pos)
__INLINE__ __m256d _fjsp_esumm_v4           (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_esumm_v4           (__m256d a)                        { return __builtin_fj_esumm_v4(a) ; }
__INLINE__ __m256d _fjsp_ecp_v4             (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_ecp_v4             (__m256d a, __m256d b)             { return __builtin_fj_ecp_v4(a, b) ; }
__INLINE__ __m256d _fjsp_shiftor_v4         (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_shiftor_v4         (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_shiftor_v4(a, b, c) ; }
__INLINE__ __m256d _fjsp_shiftor_sr1_v4     (__m256d a, __m256d b, __m256d c)           __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_shiftor_sr1_v4     (__m256d a, __m256d b, __m256d c)  { return __builtin_fj_shiftor_sr1_v4(a, b, c) ; }
#define            _fjsp_rd_v4r8(a, pos)                                                __builtin_fj_rd_v4r8(a, pos)
#define            _fjsp_rd_v4r4(a, pos)                                                __builtin_fj_rd_v4r4(a, pos)
__INLINE__ __m256d _fjsp_expa_v4r8          (__m256d a)                                 __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_expa_v4r8          (__m256d a)                        { return __builtin_fj_expa_v4r8(a) ; }
__INLINE__ __m256d _fjsp_smuld_v4           (__m256d a, __m256d b)                      __attribute((simd_mode_4));
__INLINE__ __m256d _fjsp_smuld_v4           (__m256d a, __m256d b)             { return __builtin_fj_smuld_v4(a, b) ; }
#define            _fjsp_simd_mode_4()                                                  __builtin_fj_simd_mode_4()
#define            _fjsp_simd_mode_2()                                                  __builtin_fj_simd_mode_2()

# endif

# if defined(__cplusplus)
} /* extern "C" */
# endif /* __cplusplus */

#undef __INLINE__

#endif /* _MXINTRIN_H_INCLUDED */

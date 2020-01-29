#ifndef GLM_DETAIL_SETUP_H
#define GLM_DETAIL_SETUP_H

#include <stdarg.h>
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdbool.h>

<<<<<<< HEAD
typedef float glm_float32;
typedef double glm_float64;

typedef unsigned char glm_uint8;
typedef unsigned short glm_uint16;
typedef unsigned int glm_uint32;
typedef unsigned long glm_uint64;

typedef char glm_int8;
typedef short glm_int16;
typedef int glm_int32;
typedef long glm_int64;

typedef unsigned int uint;
=======
#define GLM_ENABLE 1
#define GLM_RIGHT_HANDED

#include "../simd/platform.h"

#if defined(GLM_FORCE_INLINE)
#	if GLM_COMPILER & GLM_COMPILER_VC
#		define GLM_INLINE __forceinline
#		define GLM_NEVER_INLINE __declspec((noinline))
#	elif GLM_COMPILER & (GLM_COMPILER_GCC | GLM_COMPILER_CLANG)
#		define GLM_INLINE inline __attribute__((__always_inline__))
#		define GLM_NEVER_INLINE __attribute__((__noinline__))
#	elif GLM_COMPILER & GLM_COMPILER_CUDA
#		define GLM_INLINE __forceinline__
#		define GLM_NEVER_INLINE __noinline__
#	else
#		define GLM_INLINE inline
#		define GLM_NEVER_INLINE
#	endif/*GLM_COMPILER*/
#else
#	define GLM_INLINE inline
#	define GLM_NEVER_INLINE
#endif/*defined(GLM_FORCE_INLINE)*/

#define GLM_FUNC_DECL GLM_CUDA_FUNC_DECL
#define GLM_FUNC_QUALIFIER GLM_INLINE
#	define GLM_NEVER_INLINE static
#endif

//#define GLM_FUNC_QUALIFIER static GLM_INLINE
#define GLM_API GLM_INLINE

#define GLM_ENABLE 1
#define GLM_RIGHT_HANDED

#define GLM_CONFIG_SIMD GLM_ENABLE
>>>>>>> 07172df52eedc227d46f7aa6adb083aeb7767f99

#undef bool
typedef _Bool bool;
typedef _Bool glm_bool;

typedef size_t glm_length_t;

typedef float glm_highp_float;

#define GLM_FUNC_QUALIFIER inline
#define GLM_CONSTEXPR

enum glm_qualifier
{
    lowp,
    mediump,
    highp,
    defaultp
};

inline double rsqrt(double x)
{
	return 1.0 / sqrt(x);
}

static double (*_sin)(double) = &sin;
static double (*_cos)(double) = &cos;
static double (*_tan)(double) = &tan;
static double (*_asin)(double) = &asin;
static double (*_acos)(double) = &acos;
static double (*_atan)(double) = &atan;
static double (*_atan2)(double, double) = &atan2;
static double (*_sinh)(double) = &sinh;
static double (*_cosh)(double) = &cosh;
static double (*_tanh)(double) = &tanh;
static double (*_sqrt)(double) = &sqrt;
static double (*_inversesqrt)(double) = &rsqrt;
static double (*_pow)(double, double) = &pow;
static double (*_exp)(double) = &exp;
static double (*_log)(double) = &log;
static double (*_exp2)(double) = &exp2;
static double (*_log2)(double) = &log2;

#endif /* GLM_DETAIL_SETUP_H */

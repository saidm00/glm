#ifndef GLM_DETAIL_SETUP_H
#define GLM_DETAIL_SETUP_H

#include <math.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

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

#undef bool
typedef _Bool bool;
typedef unsigned int uint;


inline
float Q_rsqrt( float x )
{
	long i;
	float x2, y;

	x2 = x * 0.5F;
	y  = x;
	i  = * ( long * ) &y;                       // evil floating point bit level hacking
	i  = 0x5F3759DF - ( i >> 1 );               // what the fuck? 
	y  = * ( float * ) &i;
	y  = y * ( 1.5F - ( x2 * y * y ) );   // 1st iteration
//	y  = y * ( 1.5F - ( x2 * y * y ) );   // 2nd iteration, this can be removed

	return y;
}





#endif /* GLM_DETAIL_SETUP_H */
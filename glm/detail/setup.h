#ifndef GLM_DETAIL_SETUP_H
#define GLM_DETAIL_SETUP_H

#include <math.h>

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
#	endif
#else
#	define GLM_INLINE inline
#	define GLM_NEVER_INLINE
#endif

//#define GLM_FUNC_QUALIFIER static GLM_INLINE
#define GLM_FUNC_QUALIFIER static GLM_NEVER_INLINE

#define GLM_ENABLE 1

#define GLM_CONFIG_SIMD GLM_ENABLE

#define true (1)
#define false (0)
typedef unsigned char bool;
typedef unsigned int uint;

#endif /* GLM_DETAIL_SETUP_H */
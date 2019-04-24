#ifndef GLM_DETAIL_SETUP_H
#define GLM_DETAIL_SETUP_H

#include <tgmath.h>

#define GLM_COMPILER_GCC   (0x00000001)
#define GLM_COMPILER_CLANG (0x00000002)
#define GLM_COMPILER_VC    (0x00000004)

#if defined(__clang__)
#	define GLM_COMPILER GLM_COMPILER_CLANG
#elif defined(__GNUC__) || defined(__GNUG__)
#	define GLM_COMPILER GLM_COMPILER_GCC
#elif defined(__MSVC)
#	define GLM_COMPILER GLM_COMPILER_VC
#endif

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

#define true (1)
#define false (0)
typedef unsigned char bool;
typedef unsigned int uint;

#endif /* GLM_DETAIL_SETUP_H */
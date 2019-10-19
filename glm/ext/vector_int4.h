#ifndef GLM_EXT_VECTOR_INT4_H
#define GLM_EXT_VECTOR_INT4_H

#include "../detail/type_vec4.h"
#include "./vector_int1.h"
#include "./vector_int2.h"
#include "./vector_int3.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(4, int);
	
	GLM_SWIZZLE_XYZW(int);
	GLM_SWIZZLE_STPQ(int);
	GLM_SWIZZLE_RGBA(int);
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128i _simd;
#endif
} glm_int4, glm_ivec4;

#define glm_int4(...) glm_tvec4(int, __VA_ARGS__)
#define glm_ivec4(...) glm_tvec4(int, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_INT4_H */

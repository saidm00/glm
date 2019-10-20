#ifndef GLM_EXT_VECTOR_UINT4_H
#define GLM_EXT_VECTOR_UINT4_H

#include "../detail/type_vec4.h"
#include "./vector_uint1.h"
#include "./vector_uint2.h"
#include "./vector_uint3.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(4, uint);
	
	GLM_SWIZZLE_XYZW(uint);
	GLM_SWIZZLE_STPQ(uint);
	GLM_SWIZZLE_RGBA(uint);
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128i _simd;
#endif
} glm_uint4, glm_uvec4;

#define glm_uint4(...) glm_tvec4(uint, __VA_ARGS__)
#define glm_uvec4(...) glm_tvec4(uint, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_UINT4_H */

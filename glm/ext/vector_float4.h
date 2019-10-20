#ifndef GLM_EXT_VECTOR_FLOAT4_H
#define GLM_EXT_VECTOR_FLOAT4_H

#include "../detail/type_vec4.h"
#include "./vector_float1.h"
#include "./vector_float2.h"
#include "./vector_float3.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(4, float);
	
	GLM_SWIZZLE_XYZW(float);
	GLM_SWIZZLE_STPQ(float);
	GLM_SWIZZLE_RGBA(float);
	
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128 _simd;
#endif
} glm_float4, glm_vec4;

#define glm_float4(...) glm_tvec4(float, __VA_ARGS__)
#define glm_vec4(...) glm_tvec4(float, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_FLOAT4_H */

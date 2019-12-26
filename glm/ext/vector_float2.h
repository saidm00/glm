#ifndef GLM_EXT_VECTOR_FLOAT2_H
#define GLM_EXT_VECTOR_FLOAT2_H

#include "../detail/type_vec2.h"
#include "./vector_float1.h"

typedef union glm_float2
{
	GLM_VEC_DEFAULT_BASE(2, float);

	GLM_SWIZZLE_XY(float);
	GLM_SWIZZLE_ST(float);
	GLM_SWIZZLE_RG(float);
	
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m64 _simd;
#endif
} glm_float2, glm_vec2;

#define glm_float2(...) glm_tvec2(float, __VA_ARGS__)
#define glm_vec2(...) glm_tvec2(float, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_FLOAT2_H */
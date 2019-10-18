#ifndef GLM_EXT_VECTOR_FLOAT4_H
#define GLM_EXT_VECTOR_FLOAT4_H

#include "../detail/type_vec4.h"

typedef union
{
	float _data[4];
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128 _simd;
#endif

	float e[4];
	struct { float x, y, z, w; };
	struct { float s, t, p, q; };
	struct { float r, g, b, a; };
} glm_float4, glm_vec4;

#define glm_float4(...) glm_tvec4(float, __VA_ARGS__)
#define glm_vec4(...) glm_tvec4(float, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_FLOAT4_H */

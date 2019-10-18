#ifndef GLM_EXT_VECTOR_FLOAT2_H
#define GLM_EXT_VECTOR_FLOAT2_H

#include "../detail/type_vec2.h"

typedef union
{
	float _data[2];
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m64 _simd;
#endif
	
	struct { float x, y; };
	struct { float r, g; };
	struct { float s, t; };
} glm_float2, glm_vec2;

#define glm_float2(...) glm_tvec2(float, __VA_ARGS__)
#define glm_vec2(...) glm_tvec2(float, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_FLOAT2_H */
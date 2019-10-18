#ifndef GLM_EXT_VECTOR_UINT4_H
#define GLM_EXT_VECTOR_UINT4_H

#include "../detail/type_vec4.h"

typedef union
{
	uint _data[4];
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128i _simd;
#endif
	
	uint e[4];
	struct { uint x, y, z, w; };
	struct { uint s, t, p, q; };
	struct { uint r, g, b, a; };
} glm_uint4, glm_uvec4;

#define glm_uint4(...) glm_tvec4(uint, __VA_ARGS__)
#define glm_uvec4(...) glm_tvec4(uint, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_UINT4_H */

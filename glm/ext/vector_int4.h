#ifndef GLM_EXT_VECTOR_INT4_H
#define GLM_EXT_VECTOR_INT4_H

#include "../detail/type_vec4.h"

typedef union
{
	int _data[4];
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128i _simd;
#endif

	int e[4];	
	struct { int x, y, z, w; };
	struct { int r, g, b, a; };
	struct { int s, t, p, q; };

} glm_int4, glm_ivec4;

#define glm_int4(...) glm_tvec4(int, __VA_ARGS__)
#define glm_ivec4(...) glm_tvec4(int, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_INT4_H */

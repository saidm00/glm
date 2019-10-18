#ifndef GLM_EXT_VECTOR_INT2_H
#define GLM_EXT_VECTOR_INT2_H

#include "../detail/type_vec2.h"

typedef union
{
	int _data[2];
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
#endif
	
	struct { int x, y; };
	struct { int r, g; };
	struct { int s, t; };
} glm_int2, glm_ivec2;

#define glm_int2(...) glm_tvec2(int, __VA_ARGS__)
#define glm_ivec2(...) glm_tvec2(int, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_INT2_H */
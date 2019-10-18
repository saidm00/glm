#ifndef GLM_EXT_VECTOR_UINT2_H
#define GLM_EXT_VECTOR_UINT2_H

#include "../detail/type_vec2.h"

typedef union
{
	uint _data[2];
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
#endif
	
	uint e[2];
	struct { uint x, y; };
	struct { uint r, g; };
	struct { uint s, t; };
} glm_uint2, glm_uvec2;

#define uint2(...) _tvec2(uint, __VA_ARGS__)
#define uvec2 vec(2, uint)

#endif /* GLM_EXT_VECTOR_UINT2_H */
#ifndef GLM_EXT_VECTOR_UINT2_H
#define GLM_EXT_VECTOR_UINT2_H

#include "../detail/type_vec2.h"
#include "./vector_uint1.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(2, uint);

	GLM_SWIZZLE_XY(uint);
	GLM_SWIZZLE_ST(uint);
	GLM_SWIZZLE_RG(uint);
	
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
#endif
} glm_uint2, glm_uvec2;

#define uint2(...) _tvec2(uint, __VA_ARGS__)
#define uvec2 vec(2, uint)

#endif /* GLM_EXT_VECTOR_UINT2_H */
#ifndef GLM_EXT_VECTOR_UINT2_H
#define GLM_EXT_VECTOR_UINT2_H

#include "../detail/type_vec2.h"

GLM_DECLARE_VEC(2, uint)
GLM_DECLARE_TVEC2_CONSTRUCTORS(uint)

union vec(2, uint)
{
	uint e[2];
	struct { union { uint x, r, s; }; union { uint y, g, t; }; };
	
	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
	#endif
};

GLM_DEFINE_TVEC2(uint)
GLM_DEFINE_TVEC2_CONSTRUCTORS(uint)

typedef vec(2, uint) uvec2;

#define uint2(...) tvec2_(uint, __VA_ARGS__)
#define uvec2(...) uint2(__VA_ARGS__)

#endif /* GLM_EXT_VECTOR_INT2_H */
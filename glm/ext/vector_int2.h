#ifndef GLM_EXT_VECTOR_INT2_H
#define GLM_EXT_VECTOR_INT2_H

#include "../detail/type_vec2.h"

GLM_DECLARE_VEC(2, int)
GLM_DECLARE_TVEC2_CONSTRUCTORS(int)

union vec(2, int)
{
	int e[2];
	struct { union { int x, r, s; }; union { int y, g, t; }; };
	
	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
	#endif
};

GLM_DEFINE_TVEC2(int)
GLM_DEFINE_TVEC2_CONSTRUCTORS(int)

typedef vec(2, int) ivec2;

#define int2(...) tvec2_(int, __VA_ARGS__)
#define ivec2(...) int2(__VA_ARGS__)

#endif /* GLM_EXT_VECTOR_INT2_H */
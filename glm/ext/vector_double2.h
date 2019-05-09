#ifndef GLM_EXT_VECTOR_DOUBLE2_H
#define GLM_EXT_VECTOR_DOUBLE2_H

#include "../detail/type_vec2.h"

GLM_DECLARE_VEC(2, double)
GLM_DECLARE_TVEC2_CONSTRUCTORS(double)

union vec(2, double)
{
	double e[2];
	struct { union { double x, r, s; }; union { double y, g, t; }; };

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128d _simd;
	#endif
};

GLM_DEFINE_TVEC2(double)
GLM_DEFINE_TVEC2_CONSTRUCTORS(double)

typedef vec(2, double) dvec2;

#define double2(...) tvec2_(double, __VA_ARGS__)
#define dvec2(...) double2(__VA_ARGS__)

#endif /* GLM_EXT_VECTOR_DOUBLE2_H */
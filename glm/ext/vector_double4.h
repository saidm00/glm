
#ifndef GLM_EXT_VECTOR_DOUBLE4_H
#define GLM_EXT_VECTOR_DOUBLE4_H

#include "../detail/type_vec4.h"

typedef union
{
	double _data[4];
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_AVX_BIT
	__m256d _simd;
#endif
	
	double e[4];
	struct { double x, y, z, w; };
	struct { double s, t, p, q; };
	struct { double r, g, b, a; };
} glm_double4, glm_dvec4;

#define glm_double4(...) glm_tvec4(double, __VA_ARGS__)
#define glm_dvec4(...) glm_tvec4(double, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_DOUBLE4_H */

#ifndef GLM_EXT_VECTOR_DOUBLE2_H
#define GLM_EXT_VECTOR_DOUBLE2_H

#include "../detail/type_vec2.h"

typedef union
{
	double _data[2];
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128d _simd;
#endif
	
	struct { double x, y; };
	struct { double r, g; };
	struct { double s, t; };
} glm_double2, glm_dvec2;

#define glm_double2(...) glm_tvec2(double, __VA_ARGS__)
#define glm_dvec2(...) glm_tvec2(double, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_DOUBLE2_H */
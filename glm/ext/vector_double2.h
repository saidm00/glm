#ifndef GLM_EXT_VECTOR_DOUBLE2_H
#define GLM_EXT_VECTOR_DOUBLE2_H

#include "../detail/type_vec2.h"
#include "./vector_double1.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(2, double);
	
	GLM_SWIZZLE_XY(double);
	GLM_SWIZZLE_ST(double);
	GLM_SWIZZLE_RG(double);
	
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128d _simd;
#endif
} glm_double2, glm_dvec2;

#define glm_double2(...) glm_tvec2(double, __VA_ARGS__)
#define glm_dvec2(...) glm_tvec2(double, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_DOUBLE2_H */
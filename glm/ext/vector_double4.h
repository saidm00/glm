#ifndef GLM_EXT_VECTOR_DOUBLE4_H
#define GLM_EXT_VECTOR_DOUBLE4_H

#include "../detail/type_vec4.h"
#include "./vector_double1.h"
#include "./vector_double2.h"
#include "./vector_double3.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(4, double);
	
	GLM_SWIZZLE_XYZW(double);
	GLM_SWIZZLE_STPQ(double);
	GLM_SWIZZLE_RGBA(double);
	
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_AVX_BIT
	__m256d _simd;
#endif
} glm_double4, glm_dvec4;

#define glm_double4(...) glm_tvec4(double, __VA_ARGS__)
#define glm_dvec4(...) glm_tvec4(double, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_DOUBLE4_H */

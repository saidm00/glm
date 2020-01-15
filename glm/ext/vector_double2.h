#ifndef GLM_EXT_VECTOR_DOUBLE2_H
#define GLM_EXT_VECTOR_DOUBLE2_H

#include "../detail/type_vec2.h"
#include "./vector_double1.h"

struct glm_double2
{
	union
	{
		GLM_VEC_DEFAULT_BASE(2, float);

		GLM_SWIZZLE_XY(float);
		GLM_SWIZZLE_ST(float);
		GLM_SWIZZLE_RG(float);

#if (GLM_CONFIG_SIMD == GLM_ENABLE) && (GLM_ARCH & GLM_ARCH_SSE_BIT)
		__m128 _simd;
#endif
	};
};

typedef struct glm_double2 glm_double2, glm_dvec2;

glm_dvec2 glm_add_dvec2(glm_dvec2 x, glm_dvec2 y);
glm_dvec2 glm_sub_dvec2(glm_dvec2 x, glm_dvec2 y);
glm_dvec2 glm_mul_dvec2(glm_dvec2 x, glm_dvec2 y);
glm_dvec2 glm_div_dvec2(glm_dvec2 x, glm_dvec2 y);
glm_dvec2 glm_sadd_dvec2(glm_dvec2 x, double y);
glm_dvec2 glm_ssub_dvec2(glm_dvec2 x, double y);
glm_dvec2 glm_smul_dvec2(glm_dvec2 x, double y);
glm_dvec2 glm_sdiv_dvec2(glm_dvec2 x, double y);
glm_dvec2 glm_min_dvec2(glm_dvec2 x, glm_dvec2 y);
glm_dvec2 glm_max_dvec2(glm_dvec2 x, glm_dvec2 y);
glm_dvec2 glm_smin_dvec2(glm_dvec2 x, double y);
glm_dvec2 glm_smax_dvec2(glm_dvec2 x, double y);
glm_dvec2 glm_clamp_dvec2(glm_dvec2 x, glm_dvec2 minVal, glm_dvec2 maxVal);
glm_dvec2 glm_sclamp_dvec2(glm_dvec2 x, double minVal, double maxVal);
glm_dvec2 glm_mix_dvec2(glm_dvec2 x, glm_dvec2 y, double a);
double glm_dot_dvec2(glm_dvec2 x, glm_dvec2 y);
double glm_length_dvec2(glm_dvec2 x);
glm_dvec2 glm_normalize_dvec2(glm_dvec2 x);
glm_dvec2 glm_reflect_dvec2(glm_dvec2 I, glm_dvec2 N);
glm_dvec2 glm_refract_dvec2(glm_dvec2 I, glm_dvec2 N, double eta);

#include "./vector_double2.inl"

#endif /* GLM_EXT_VECTOR_DOUBLE2_H */
#ifndef GLM_EXT_VECTOR_FLOAT2_H
#define GLM_EXT_VECTOR_FLOAT2_H

#include "../detail/type_vec2.h"
#include "./vector_float1.h"

struct glm_float2
{
	union
	{
		GLM_VEC_DEFAULT_BASE(2, float);

		GLM_SWIZZLE_XY(float);
		GLM_SWIZZLE_ST(float);
		GLM_SWIZZLE_RG(float);
	};
};

typedef struct glm_float2 glm_float2, glm_vec2;

glm_vec2 glm_add_vec2(glm_vec2 x, glm_vec2 y);
glm_vec2 glm_sub_vec2(glm_vec2 x, glm_vec2 y);
glm_vec2 glm_mul_vec2(glm_vec2 x, glm_vec2 y);
glm_vec2 glm_div_vec2(glm_vec2 x, glm_vec2 y);
glm_vec2 glm_sadd_vec2(glm_vec2 x, float y);
glm_vec2 glm_ssub_vec2(glm_vec2 x, float y);
glm_vec2 glm_smul_vec2(glm_vec2 x, float y);
glm_vec2 glm_sdiv_vec2(glm_vec2 x, float y);
glm_vec2 glm_min_vec2(glm_vec2 x, glm_vec2 y);
glm_vec2 glm_max_vec2(glm_vec2 x, glm_vec2 y);
glm_vec2 glm_smin_vec2(glm_vec2 x, float y);
glm_vec2 glm_smax_vec2(glm_vec2 x, float y);
glm_vec2 glm_clamp_vec2(glm_vec2 x, glm_vec2 minVal, glm_vec2 maxVal);
glm_vec2 glm_sclamp_vec2(glm_vec2 x, float minVal, float maxVal);
glm_vec2 glm_mix_vec2(glm_vec2 x, glm_vec2 y, float a);
float glm_dot_vec2(glm_vec2 x, glm_vec2 y);
float glm_length_vec2(glm_vec2 x);
glm_vec2 glm_normalize_vec2(glm_vec2 x);
glm_vec2 glm_reflect_vec2(glm_vec2 I, glm_vec2 N);
glm_vec2 glm_refract_vec2(glm_vec2 I, glm_vec2 N, float eta);


#include "./vector_float2.inl"

#endif /* GLM_EXT_VECTOR_FLOAT2_H */
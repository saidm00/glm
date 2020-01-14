#ifndef GLM_EXT_VECTOR_FLOAT3_H
#define GLM_EXT_VECTOR_FLOAT3_H

#include "../detail/type_vec3.h"
#include "./vector_float1.h"
#include "./vector_float2.h"

struct glm_float3
{
	union
	{
		GLM_VEC_DEFAULT_BASE(3, float);	
		GLM_SWIZZLE_XYZ(float);
		GLM_SWIZZLE_STP(float);
		GLM_SWIZZLE_RGB(float);
	};
};

typedef struct glm_float3 glm_float3, glm_vec3;

glm_vec3 glm_add_vec3(glm_vec3 x, glm_vec3 y);
glm_vec3 glm_sub_vec3(glm_vec3 x, glm_vec3 y);
glm_vec3 glm_mul_vec3(glm_vec3 x, glm_vec3 y);
glm_vec3 glm_div_vec3(glm_vec3 x, glm_vec3 y);
glm_vec3 glm_sadd_vec3(glm_vec3 x, float y);
glm_vec3 glm_ssub_vec3(glm_vec3 x, float y);
glm_vec3 glm_smul_vec3(glm_vec3 x, float y);
glm_vec3 glm_sdiv_vec3(glm_vec3 x, float y);
glm_vec3 glm_min_vec3(glm_vec3 x, glm_vec3 y);
glm_vec3 glm_max_vec3(glm_vec3 x, glm_vec3 y);
glm_vec3 glm_smin_vec3(glm_vec3 x, float y);
glm_vec3 glm_smax_vec3(glm_vec3 x, float y);
glm_vec3 glm_clamp_vec3(glm_vec3 x, glm_vec3 minVal, glm_vec3 maxVal);
glm_vec3 glm_sclamp_vec3(glm_vec3 x, float minVal, float maxVal);
glm_vec3 glm_mix_vec3(glm_vec3 x, glm_vec3 y, float a);
float glm_dot_vec3(glm_vec3 x, glm_vec3 y);
glm_vec3 glm_cross_vec3(glm_vec3 x, glm_vec3 y);
float glm_length_vec3(glm_vec3 x);
glm_vec3 glm_normalize_vec3(glm_vec3 x);
glm_vec3 glm_reflect_vec3(glm_vec3 I, glm_vec3 N);
glm_vec3 glm_refract_vec3(glm_vec3 I, glm_vec3 N, float eta);

#include "./vector_float3.inl"

#endif /* GLM_EXT_VECTOR_FLOAT3_H */
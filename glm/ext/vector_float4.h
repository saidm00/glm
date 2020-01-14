#ifndef GLM_EXT_VECTOR_FLOAT4_H
#define GLM_EXT_VECTOR_FLOAT4_H

#include "../detail/type_vec4.h"
#include "./vector_float1.h"
#include "./vector_float2.h"
#include "./vector_float3.h"

struct glm_float4
{
	union
	{
		GLM_VEC_DEFAULT_BASE(4, float);
		
		GLM_SWIZZLE_XYZW(float);
		GLM_SWIZZLE_STPQ(float);
		GLM_SWIZZLE_RGBA(float);

		#if (GLM_CONFIG_SIMD == GLM_ENABLE) && (GLM_ARCH & GLM_ARCH_SSE_BIT)
		__m128 _simd;
		#endif
	};
};

typedef struct glm_float4 glm_float4, glm_vec4;

glm_vec4 glm_add_vec4(glm_vec4 x, glm_vec4 y);
glm_vec4 glm_sub_vec4(glm_vec4 x, glm_vec4 y);
glm_vec4 glm_mul_vec4(glm_vec4 x, glm_vec4 y);
glm_vec4 glm_div_vec4(glm_vec4 x, glm_vec4 y);
glm_vec4 glm_sadd_vec4(glm_vec4 x, float y);
glm_vec4 glm_ssub_vec4(glm_vec4 x, float y);
glm_vec4 glm_smul_vec4(glm_vec4 x, float y);
glm_vec4 glm_sdiv_vec4(glm_vec4 x, float y);
glm_vec4 glm_min_vec4(glm_vec4 x, glm_vec4 y);
glm_vec4 glm_max_vec4(glm_vec4 x, glm_vec4 y);
glm_vec4 glm_smin_vec4(glm_vec4 x, float y);
glm_vec4 glm_smax_vec4(glm_vec4 x, float y);
glm_vec4 glm_clamp_vec4(glm_vec4 x, glm_vec4 minVal, glm_vec4 maxVal);
glm_vec4 glm_sclamp_vec4(glm_vec4 x, float minVal, float maxVal);
glm_vec4 glm_mix_vec4(glm_vec4 x, glm_vec4 y, glm_vec4 a);
glm_vec4 glm_smix_vec4(glm_vec4 x, glm_vec4 y, float a);
float glm_dot_vec4(glm_vec4 x, glm_vec4 y);
float glm_length_vec4(glm_vec4 x);
glm_vec4 glm_normalize_vec4(glm_vec4 x);
glm_vec4 glm_reflect_vec4(glm_vec4 I, glm_vec4 N);
glm_vec4 glm_refract_vec4(glm_vec4 I, glm_vec4 N, float eta);

#include "./vector_float4.inl"

#endif /* GLM_EXT_VECTOR_FLOAT4_H */

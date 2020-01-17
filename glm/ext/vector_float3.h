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


GLM_API glm_float3 glm_cross_float3(glm_float3 a, glm_float3 b)
{
	glm_float3 s;
#ifdef GLM_RIGHT_HANDED
	s.e[0] = a.e[1] * b.e[2] - a.e[2] * b.e[1];
	s.e[1] = a.e[2] * b.e[0] - a.e[0] * b.e[2];
	s.e[2] = a.e[0] * b.e[1] - a.e[1] * b.e[0];
#else
#endif

	return s;
}

GLM_API glm_float3 glm_negate_float3(glm_float3 v)
{
	return (glm_float3){-v.x, -v.y, -v.z};
}

GLM_API float glm_dot_float3(glm_float3 a, glm_float3 b)
{
	return a.x * b.x + a.y * b.y + a.z * b.z;
}

GLM_API float glm_length_float3(glm_float3 v)
{
	return sqrtf(v.x*v.x + v.y*v.y + v.z*v.z);
}

GLM_API glm_float3 glm_normalize_float3(glm_float3 v)
{
	float len = glm_length_float3(v);
	return (glm_float3) { v.x / len, v.y / len, v.z / len };
}

GLM_API glm_float3 glm_max_float3(glm_float3 v, float lim)
{
	return (glm_float3)
	{
		v.x > lim ? v.x : lim,
		v.y > lim ? v.y : lim,
		v.z > lim ? v.z : lim,
	};
}

GLM_API glm_float3 glm_add_float3(glm_float3 a, glm_float3 b)
{
	return (glm_float3) { a.x + b.x, a.y + b.y,	a.z + b.z };
}

GLM_API glm_float3 glm_sub_float3(glm_float3 a, glm_float3 b)
{
	return (glm_float3) { a.x - b.x, a.y - b.y,	a.z - b.z };
}

GLM_API glm_float3 glm_mul_float3(glm_float3 a, glm_float3 b)
{
	return (glm_float3) { a.x * b.x, a.y * b.y,	a.z * b.z };
}

GLM_API glm_float3 glm_div_float3(glm_float3 a, glm_float3 b)
{
	return (glm_float3) { a.x / b.x, a.y / b.y,	a.z / b.z };
}

GLM_API glm_float3 glm_adds_float3(glm_float3 a, float b)
{
	return (glm_float3) { a.x + b, a.y + b,	a.z + b };
}

GLM_API glm_float3 glm_subs_float3(glm_float3 a, float b)
{
	return (glm_float3) { a.x - b, a.y - b,	a.z - b };
}

GLM_API glm_float3 glm_muls_float3(glm_float3 a, float b)
{
	return (glm_float3) { a.x * b, a.y * b,	a.z * b };
}

GLM_API glm_float3 glm_divs_float3(glm_float3 a, float b)
{
	return (glm_float3) { a.x / b, a.y / b,	a.z / b };
}

GLM_API glm_float3 glm_mix_float3(glm_float3 p0, glm_float3 p1, float t)
{
	float t0 = 1.0f - t;
	float t1 = t;
	return (glm_float3)
	{
		p0.x * t0 + p1.x * t1,
		p0.y * t0 + p1.y * t1,
		p0.z * t0 + p1.z * t1,
	};
}

#endif /* GLM_EXT_VECTOR_FLOAT3_H */
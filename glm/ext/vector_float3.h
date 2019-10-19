#ifndef GLM_EXT_VECTOR_FLOAT3_H
#define GLM_EXT_VECTOR_FLOAT3_H

#include "../detail/type_vec3.h"
#include "./vector_float1.h"
#include "./vector_float2.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(3, float);	
	GLM_SWIZZLE_XYZ(float);
	GLM_SWIZZLE_STP(float);
	GLM_SWIZZLE_RGB(float);
} glm_float3, glm_vec3;

#define glm_float3(...) glm_tvec3(float, __VA_ARGS__)
#define glm_vec3(...) glm_tvec3(float, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_FLOAT3_H */
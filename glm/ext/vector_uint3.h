#ifndef GLM_EXT_VECTOR_UINT3_H
#define GLM_EXT_VECTOR_UINT3_H

#include "../detail/type_vec3.h"
#include "./vector_uint1.h"
#include "./vector_uint2.h"

typedef union glm_uint3
{
	GLM_VEC_DEFAULT_BASE(3, uint);
	GLM_SWIZZLE_XYZ(uint);
	GLM_SWIZZLE_STP(uint);
	GLM_SWIZZLE_RGB(uint);
} glm_uint3, glm_uvec3;

#define glm_uint3(...) glm_tvec3(uint, __VA_ARGS__)
#define glm_uvec3(...) glm_tvec3(uint, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_UINT3_H */
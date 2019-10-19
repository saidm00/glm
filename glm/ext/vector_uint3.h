#ifndef GLM_EXT_VECTOR_UINT3_H
#define GLM_EXT_VECTOR_UINT3_H

#include "../detail/type_vec3.h"
#include "./vector_uint2.h"

typedef union
{
	uint _data[3];
	uint e[3];
	struct { uint x, y, z; };
	struct { uint s, t, p; };
	struct { uint r, g, b; };
	struct { glm_uint2 xy; };
	struct { bool _x, glm_uint2 yz; };
} glm_uint3, glm_uvec3;

#define glm_uint3(...) glm_tvec3(uint, __VA_ARGS__)
#define glm_uvec3(...) glm_tvec3(uint, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_UINT3_H */
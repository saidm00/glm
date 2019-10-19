#ifndef GLM_EXT_VECTOR_FLOAT3_H
#define GLM_EXT_VECTOR_FLOAT3_H

#include "../detail/type_vec3.h"
#include "./vector_float2.h"

typedef union
{
	float _data[3];
	float e[3];
	struct { float x, y, z; };
	struct { float s, t, p; };
	struct { float r, g, b; };
	struct { glm_float2 xy; };
	struct { bool _x; glm_float2 yz; };
} glm_float3, glm_vec3;

#define glm_float3(...) glm_tvec3(float, __VA_ARGS__)
#define glm_vec3(...) glm_tvec3(float, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_FLOAT3_H */
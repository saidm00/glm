#ifndef GLM_EXT_VECTOR_INT3_H
#define GLM_EXT_VECTOR_INT3_H

#include "../detail/type_vec3.h"
#include "./vector_int1.h"
#include "./vector_int2.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(3, int);	
	GLM_SWIZZLE_XYZ(int);
	GLM_SWIZZLE_STP(int);
	GLM_SWIZZLE_RGB(int);
} glm_int3, glm_ivec3;

#define glm_int3(...) glm_tvec3(int, __VA_ARGS__)
#define glm_ivec3(...) glm_tvec3(int, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_INT3_H */
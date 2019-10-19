#ifndef GLM_EXT_VECTOR_BOOL3_H
#define GLM_EXT_VECTOR_BOOL3_H

#include "../detail/type_vec3.h"
#include "./vector_bool1.h"
#include "./vector_bool2.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(3, bool);
	GLM_SWIZZLE_XYZ(bool);
	GLM_SWIZZLE_STP(bool);
	GLM_SWIZZLE_RGB(bool);
} glm_bool3, glm_bvec3;

#define glm_bool3(...) glm_tvec3(bool, __VA_ARGS__)
#define glm_bvec3(...) glm_tvec3(bool, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_BOOL3_H */
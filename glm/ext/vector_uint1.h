#ifndef GLM_EXT_VECTOR_UINT1_H
#define GLM_EXT_VECTOR_UINT1_H

#include "../detail/type_vec1.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(1, uint);
	GLM_SWIZZLE_X(uint);
	GLM_SWIZZLE_S(uint);
	GLM_SWIZZLE_R(uint);
} glm_uint1, glm_uvec1;

#define glm_uint1(...) glm_tvec1(uint, __VA_ARGS__)
#define glm_uvec1(...) glm_tvec1(uint, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_UINT1_H */
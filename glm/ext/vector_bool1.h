#ifndef GLM_EXT_VECTOR_BOOL1_H
#define GLM_EXT_VECTOR_BOOL1_H

#include "../detail/type_vec1.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(1, bool);
	GLM_SWIZZLE_X(bool);
	GLM_SWIZZLE_S(bool);
	GLM_SWIZZLE_R(bool);
} glm_bool1, glm_bvec1;

#define glm_bool1(...) glm_tvec1(bool, __VA_ARGS__)
#define glm_bvec1(...) glm_tvec1(bool, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_BOOL1_H */
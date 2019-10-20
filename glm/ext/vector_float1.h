#ifndef GLM_EXT_VECTOR_FLOAT1_H
#define GLM_EXT_VECTOR_FLOAT1_H

#include "../detail/type_vec1.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(1, float);
	GLM_SWIZZLE_X(float);
	GLM_SWIZZLE_S(float);
	GLM_SWIZZLE_R(float);
} glm_float1, glm_vec1;

#define glm_float1(...) glm_tvec1(float, __VA_ARGS__)
#define glm_vec1(...) glm_tvec1(float, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_FLOAT1_H */
#ifndef GLM_EXT_VECTOR_INT1_H
#define GLM_EXT_VECTOR_INT1_H

#include "../detail/type_vec1.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(1, int);
	GLM_SWIZZLE_X(int);
	GLM_SWIZZLE_S(int);
	GLM_SWIZZLE_R(int);
} glm_int1, glm_ivec1;

#define glm_int1(...) glm_tvec1(int, __VA_ARGS__)
#define glm_ivec1(...) glm_tvec1(int, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_INT1_H */
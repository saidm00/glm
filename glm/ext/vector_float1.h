#ifndef GLM_EXT_VECTOR_FLOAT1
#define GLM_EXT_VECTOR_FLOAT1

#include "../detail/type_vec1.h"

typedef union
{
	float _data[1];
	float e[1];
	float x, r, s;
} glm_float1, glm_vec1;

#define glm_float1(...) glm_tvec1(float, __VA_ARGS__)
#define glm_vec1(...) glm_tvec1(float, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_FLOAT1 */
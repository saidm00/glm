#ifndef GLM_EXT_VECTOR_UINT1
#define GLM_EXT_VECTOR_UINT1

#include "../detail/type_vec1.h"

typedef union
{
	uint _data[1];
	uint e[1];
	uint x, r, s;
} glm_uint1, glm_uvec1;

#define glm_uint1(...) glm_tvec1(uint, __VA_ARGS__)
#define glm_uvec1(...) glm_tvec1(uint, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_UINT1 */
#ifndef GLM_EXT_VECTOR_INT1
#define GLM_EXT_VECTOR_INT1

#include "../detail/type_vec1.h"

typedef union
{
	int _data[1];
	int e[1];
	int x, r, s;
} glm_int1, glm_ivec1;

#define glm_int1(...) glm_tvec1(int, __VA_ARGS__)
#define glm_ivec1(...) glm_tvec1(int, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_INT1 */
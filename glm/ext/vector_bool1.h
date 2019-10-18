#ifndef GLM_EXT_VECTOR_BOOL1
#define GLM_EXT_VECTOR_BOOL1

#include "../detail/type_vec1.h"

typedef union
{
	bool _data[1];
	bool e[1];
	bool x, r, s;
} glm_bool1, glm_bvec1;

#define glm_bool1(...) glm_tvec1(bool, __VA_ARGS__)
#define glm_bvec1(...) glm_tvec1(bool, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_BOOL1 */
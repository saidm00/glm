#ifndef GLM_EXT_VECTOR_UINT1_H
#define GLM_EXT_VECTOR_UINT1_H

#include "../detail/type_vec.h"
#include "../detail/type_vec1.h"

#define glm_uvec1(...) glm_tvec1(uint, defaultp, __VA_ARGS__)

#include "vector_bool1.h"

#include "../detail/namespace_begin.c"
#include "vector_uint1.c"
#include "../detail/namespace_end.c"

#endif /* GLM_EXT_VECTOR_UINT1_H */
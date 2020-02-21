#ifndef GLM_EXT_VECTOR_BOOL1_H
#define GLM_EXT_VECTOR_BOOL1_H

#include "../detail/type_vec.h"
#include "../detail/type_vec1.h"

#define glm_bvec1(...) glm_tvec1(bool, defaultp, __VA_ARGS__)

#include "../detail/namespace_begin.c"
#include "vector_bool1.c"
#include "../detail/namespace_end.c"

#endif /* GLM_EXT_VECTOR_BOOL1_H */

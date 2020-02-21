#ifndef GLM_EXT_VECTOR_UINT2_H
#define GLM_EXT_VECTOR_UINT2_H

#include "../detail/type_vec.h"
#include "../detail/type_vec2.h"

#define glm_uvec2(...) glm_tvec2(uint, defaultp, __VA_ARGS__)

#include "vector_bool2.h"

#include "../detail/namespace_begin.c"
#include "vector_uint2.c"
#include "../detail/namespace_end.c"

#endif /* GLM_EXT_VECTOR_UINT2_H */
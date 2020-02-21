#ifndef GLM_EXT_VECTOR_BOOL3_H
#define GLM_EXT_VECTOR_BOOL3_H

#include "../detail/type_vec.h"
#include "../detail/type_vec3.h"

#define glm_bvec3(...) glm_tvec3(bool, defaultp, __VA_ARGS__)

#include "../detail/namespace_begin.inl"
#include "vector_bool3.c"
#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_VECTOR_BOOL3_H */

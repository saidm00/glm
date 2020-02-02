#ifndef GLM_EXT_TYPE_INT3_H
#define GLM_EXT_TYPE_INT3_H

#include "../detail/type_vec.h"
#include "../detail/type_vec3.h"

#define glm_ivec3(...) glm_tvec3(int, defaultp, __VA_ARGS__)

#include "type_bool3.h"
#include "../detail/namespace_begin.inl"

#define L 3
#define T int
#define Q defaultp
#include "../detail/func_vector_common.inl"
#include "../detail/func_vector_trigonometric.inl"
#include "../detail/func_vector_exponential.inl"
#include "../detail/func_vector_relational.inl"
#include "../detail/func_vector_geometric.inl"
#undef L
#undef T
#undef Q

#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_TYPE_INT3_H */
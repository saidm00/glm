#ifndef GLM_EXT_TYPE_UINT3_H
#define GLM_EXT_TYPE_UINT3_H

#include "../detail/type_vec.h"
#include "../detail/type_vec3.h"

#define glm_uvec3(...) glm_tvec3(uint, defaultp, __VA_ARGS__)

#include "type_bool3.h"
#include "../detail/namespace_begin.inl"

#define L 3
#define T uint
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

#endif /* GLM_EXT_TYPE_UINT3_H */
#ifndef GLM_EXT_VECTOR_UINT4_H
#define GLM_EXT_VECTOR_UINT4_H

#include "../detail/type_vec.h"
#include "../detail/type_vec4.h"

#define glm_uvec4(...) glm_tvec4(uint, defaultp, __VA_ARGS__)

#include "vector_bool4.h"
#include "../detail/namespace_begin.inl"

#define L 4
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

#endif /* GLM_EXT_VECTOR_UINT4_H */
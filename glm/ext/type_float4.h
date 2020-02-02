#ifndef GLM_EXT_TYPE_FLOAT4_H
#define GLM_EXT_TYPE_FLOAT4_H

#include "../detail/type_vec.h"
#include "../detail/type_vec4.h"

#define glm_vec4(...) glm_tvec4(float, defaultp, __VA_ARGS__)

#include "type_bool4.h"
#include "../detail/namespace_begin.inl"

#define L 4
#define T float
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

#endif /* GLM_EXT_TYPE_FLOAT4_H */
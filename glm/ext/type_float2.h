#ifndef GLM_EXT_TYPE_FLOAT2_H
#define GLM_EXT_TYPE_FLOAT2_H

#include "../detail/type_vec.h"
#include "../detail/type_vec2.h"

#define glm_vec2(...) glm_tvec2(float, defaultp, __VA_ARGS__)

#include "type_bool2.h"
#include "../detail/namespace_begin.inl"

#define L 2
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

#endif /* GLM_EXT_TYPE_FLOAT2_H */
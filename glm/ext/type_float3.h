#ifndef GLM_EXT_TYPE_FLOAT3_H
#define GLM_EXT_TYPE_FLOAT3_H

#include "../detail/type_vec.h"
#include "../detail/type_vec3.h"
#define glm_vec3(...)   glm_tvec3(float, defaultp, __VA_ARGS__)

#include "type_bool3.h"
#include "../detail/namespace_begin.inl"

#define L 3
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

typedef vec(3, float, defaultp) vec3;

#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_TYPE_FLOAT3_H */
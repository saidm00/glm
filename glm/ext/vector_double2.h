#ifndef GLM_EXT_VECTOR_DOUBLE2_H
#define GLM_EXT_VECTOR_DOUBLE2_H

#include "../detail/type_vec.h"
#include "../detail/type_vec2.h"

#define glm_dvec2(...) glm_tvec2(double, defaultp, __VA_ARGS__)

#include "vector_bool2.h"
#include "../detail/namespace_begin.inl"

#define L 2
#define T double
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

#endif /* GLM_EXT_VECTOR_DOUBLE2_H */
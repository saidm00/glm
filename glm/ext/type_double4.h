#ifndef GLM_EXT_TYPE_DOUBLE4_H
#define GLM_EXT_TYPE_DOUBLE4_H

#include "../detail/type_vec.h"
#include "../detail/type_vec4.h"
#define glm_double4(...) glm_tvec4(double, defaultp, __VA_ARGS__)
#define glm_dvec4(...)   glm_tvec4(double, defaultp, __VA_ARGS__)

#include "type_bool4.h"
#include "../detail/namespace_begin.inl"

#define L 4
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

typedef vec(4, double, defaultp) dvec4;

#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_TYPE_DOUBLE4_H */
#ifndef GLM_EXT_TYPE_DOUBLE3_H
#define GLM_EXT_TYPE_DOUBLE3_H

#include "../detail/qualifier.h"
#include "type_bool3.h"
#include "../detail/namespace_begin.inl"

#define L 3
#define T double
#define Q defaultp
#include "../detail/type_vec3.inl"
#include "../detail/func_vector_common.inl"
#include "../detail/func_vector_trigonometric.inl"
#include "../detail/func_vector_exponential.inl"
#include "../detail/func_vector_rational.inl"
#undef L
#undef T
#undef Q

typedef vec(3, double, defaultp) dvec3;

#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_TYPE_DOUBLE3_H */
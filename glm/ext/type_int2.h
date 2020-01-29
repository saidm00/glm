#ifndef GLM_EXT_TYPE_INT2_H
#define GLM_EXT_TYPE_INT2_H

#include "../detail/qualifier.h"
#include "type_bool2.h"
#include "../detail/namespace_begin.inl"

#define L 2
#define T int
#define Q defaultp
#include "../detail/type_vec2.inl"
#include "../detail/func_vector_common.inl"
#include "../detail/func_vector_trigonometric.inl"
#include "../detail/func_vector_exponential.inl"
#include "../detail/func_vector_rational.inl"
#undef L
#undef T
#undef Q

typedef vec(2, int, defaultp) ivec2;

#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_TYPE_INT2_H */
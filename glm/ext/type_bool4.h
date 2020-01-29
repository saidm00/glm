#ifndef GLM_EXT_TYPE_BOOL4_H
#define GLM_EXT_TYPE_BOOL4_H

#include "../detail/qualifier.h"
#include "../detail/namespace_begin.inl"

#define L 4
#define T bool
#define Q defaultp
#include "../detail/type_vec4.inl"
#include "../detail/func_vector_bool.inl"
#undef L
#undef T
#undef Q

typedef vec(4, bool, defaultp) bvec4;

#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_TYPE_BOOL4_H */

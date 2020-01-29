#ifndef GLM_EXT_TYPE_BOOL2_H
#define GLM_EXT_TYPE_BOOL2_H

#include "../detail/qualifier.h"
#include "../detail/namespace_begin.inl"

#define L 2
#define T bool
#define Q defaultp
#include "../detail/type_vec2.inl"
#include "../detail/func_vector_bool.inl"
#undef L
#undef T
#undef Q

typedef vec(2, bool, defaultp) bvec2;

#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_TYPE_BOOL2_H */

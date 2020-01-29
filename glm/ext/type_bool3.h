#ifndef GLM_EXT_TYPE_BOOL3_H
#define GLM_EXT_TYPE_BOOL3_H

#include "../detail/type_vec.h"
#include "../detail/namespace_begin.inl"

#define L 3
#define T bool
#define Q defaultp
#include "../detail/type_vec3.inl"
#include "../detail/func_vector_bool.inl"
#undef L
#undef T
#undef Q

typedef vec(3, bool, defaultp) bvec3;

#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_TYPE_BOOL3_H */

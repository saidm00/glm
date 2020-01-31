#ifndef GLM_EXT_TYPE_BOOL3_H
#define GLM_EXT_TYPE_BOOL3_H

#include "../detail/type_vec.h"
#include "../detail/type_vec3.h"
#define glm_bvec3(...) glm_tvec3(bool, defaultp, __VA_ARGS__)

#include "../detail/namespace_begin.inl"

#define L 3
#define T bool
#define Q defaultp
#include "../detail/func_vector_bool.inl"
#undef L
#undef T
#undef Q

typedef vec(3, bool, defaultp) bvec3;

#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_TYPE_BOOL3_H */

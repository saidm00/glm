#ifndef GLM_EXT_TYPE_BOOL2_H
#define GLM_EXT_TYPE_BOOL2_H

#include "../detail/type_vec.h"
#include "../detail/type_vec2.h"
#define glm_bool2(...) glm_tvec2(bool, defaultp, __VA_ARGS__)
#define glm_bvec2(...) glm_tvec2(bool, defaultp, __VA_ARGS__)

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

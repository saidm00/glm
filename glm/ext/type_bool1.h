#ifndef GLM_EXT_TYPE_BOOL1_H
#define GLM_EXT_TYPE_BOOL1_H

#include "../detail/type_vec.h"
#include "../detail/type_vec1.h"
#define glm_bool1(...) glm_tvec1(bool, defaultp, __VA_ARGS__)
#define glm_bvec1(...) glm_tvec1(bool, defaultp, __VA_ARGS__)

#include "../detail/namespace_begin.inl"

#define L 1
#define T bool
#define Q defaultp
#include "../detail/func_vector_bool.inl"
#undef L
#undef T
#undef Q

typedef vec(1, bool, defaultp) bvec1;

#include "../detail/namespace_end.inl"

#endif /* GLM_EXT_TYPE_BOOL1_H */

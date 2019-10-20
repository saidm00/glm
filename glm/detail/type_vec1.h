#ifndef GLM_DETAIL_TYPE_VEC1_H
#define GLM_DETAIL_TYPE_VEC1_H

#include "./qualifier.h"

#define GLM_CONVERT_TVEC1(T, IN) GLM_CONVERT_VEC(1, T, IN)

#define GLM_CREATE_TVEC1_0(T, ...) ((glm_vec(1, T)) { 0 })
#define GLM_CREATE_TVEC1_1(T, _1, ...) ((glm_vec(1, T)) { _1._data[0] })

#define GLM_CREATE_TVEC1(T, _1, N, ...) GLM_CREATE_TVEC1_##N(T, _1)
#define glm_tvec1(T, ...) GLM_CREATE_TVEC1(T, __VA_ARGS__, 1, 0)

#define GLM_SWIZZLE1(T, E0) T E0;

#define GLM_SWIZZLE_X(T) GLM_SWIZZLE1(T, x)
#define GLM_SWIZZLE_S(T) GLM_SWIZZLE1(T, s)
#define GLM_SWIZZLE_R(T) GLM_SWIZZLE1(T, r)

#endif /* GLM_DETAIL_TYPE_VEC1_H */
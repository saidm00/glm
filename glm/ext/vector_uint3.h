#ifndef GLM_EXT_VECTOR_UINT3_H
#define GLM_EXT_VECTOR_UINT3_H

#include "../detail/type_vec3.h"

GLM_TVEC3_DEF(uint)

#define uint3(...) _tvec3(uint, __VA_ARGS__)
#define uvec3 vec(3, uint)

#endif /* GLM_EXT_VECTOR_UINT3_H */
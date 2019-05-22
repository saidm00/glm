#ifndef GLM_EXT_VECTOR_UINT4_H
#define GLM_EXT_VECTOR_UINT4_H

#include "../detail/type_vec4.h"

GLM_TVEC4_DEF(uint)

#define uint4(...) _tvec4(uint, __VA_ARGS__)
#define uvec4 vec(4, uint)

#endif /* GLM_EXT_VECTOR_UINT4_H */

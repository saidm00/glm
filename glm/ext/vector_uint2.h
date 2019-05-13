#ifndef GLM_EXT_VECTOR_UINT2_H
#define GLM_EXT_VECTOR_UINT2_H

#include "../detail/type_vec2.h"

GLM_TVEC2_DEF(uint)
GLM_TVEC2_CAST_DEF(uint, float)
GLM_TVEC2_CAST_DEF(uint, double)
GLM_TVEC2_CAST_DEF(uint, int)
GLM_TVEC2_CAST_DEF(uint, bool)

#define uint2(...) _tvec2(uint, __VA_ARGS__)
#define uvec2 vec(2, uint)

#endif /* GLM_EXT_VECTOR_UINT2_H */
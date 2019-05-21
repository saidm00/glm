#ifndef GLM_EXT_VECTOR_FLOAT2_H
#define GLM_EXT_VECTOR_FLOAT2_H

#include "../detail/type_vec2.h"

GLM_TVEC2_DEF(float)

#define float2(...) _tvec2(float, __VA_ARGS__)
#define vec2 vec(2, float)

#endif /* GLM_EXT_VECTOR_FLOAT2_H */
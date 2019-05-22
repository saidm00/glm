#ifndef GLM_EXT_VECTOR_FLOAT4_H
#define GLM_EXT_VECTOR_FLOAT4_H

#include "../detail/type_vec4.h"

GLM_TVEC4_DEF(float)

#define float4(...) _tvec4(float, __VA_ARGS__)
#define vec4 vec(4, float)

#endif /* GLM_EXT_VECTOR_FLOAT4_H */

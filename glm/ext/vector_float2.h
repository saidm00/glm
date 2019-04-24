#ifndef GLM_EXT_VECTOR_FLOAT2_H
#define GLM_EXT_VECTOR_FLOAT2_H

#include "../detail/type_vec2.h"

GLM_TEMPLATE_DECLARE_TVEC2(float, defaultp)
typedef float2_defaultp float2, vec2;

#define vec2(...) GLM_CREATE_TVEC2(float, defaultp, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_FLOAT2_H */
#ifndef GLM_EXT_VECTOR_INT2_H
#define GLM_EXT_VECTOR_INT2_H

#include "../detail/type_vec2.h"

GLM_TEMPLATE_DECLARE_TVEC2(int, defaultp)
typedef int2_defaultp int2, ivec2;

#define ivec2(...) GLM_CREATE_TVEC2(int, defaultp, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_INT2_H */
#ifndef GLM_EXT_VECTOR_FLOAT4_H
#define GLM_EXT_VECTOR_FLOAT4_H

#include "../detail/type_vec.h"
#include "../detail/type_vec4.h"

#define glm_vec4(...) glm_tvec4(float, defaultp, __VA_ARGS__)

#include "vector_bool4.h"

#include "../detail/namespace_begin.c"
#include "vector_float4.c"
#include "../detail/namespace_end.c"

#endif /* GLM_EXT_VECTOR_FLOAT4_H */
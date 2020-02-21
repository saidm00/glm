#ifndef GLM_EXT_VECTOR_FLOAT3_H
#define GLM_EXT_VECTOR_FLOAT3_H

#include "../detail/type_vec.h"
#include "../detail/type_vec3.h"

#define glm_vec3(...) glm_tvec3(float, defaultp, __VA_ARGS__)

#include "vector_bool3.h"

#include "../detail/namespace_begin.c"
#include "vector_float3.c"
#include "../detail/namespace_end.c"

#endif /* GLM_EXT_VECTOR_FLOAT3_H */
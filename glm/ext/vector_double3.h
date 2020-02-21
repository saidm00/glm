#ifndef GLM_EXT_VECTOR_DOUBLE3_H
#define GLM_EXT_VECTOR_DOUBLE3_H

#include "../detail/type_vec.h"
#include "../detail/type_vec3.h"

#define glm_dvec3(...) glm_tvec3(double, defaultp, __VA_ARGS__)

#include "vector_bool3.h"

#include "../detail/namespace_begin.c"
#include "vector_double3.c"
#include "../detail/namespace_end.c"

#endif /* GLM_EXT_VECTOR_DOUBLE3_H */
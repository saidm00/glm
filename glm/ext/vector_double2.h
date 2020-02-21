#ifndef GLM_EXT_VECTOR_DOUBLE2_H
#define GLM_EXT_VECTOR_DOUBLE2_H

#include "../detail/type_vec.h"
#include "../detail/type_vec2.h"

#define glm_dvec2(...) glm_tvec2(double, defaultp, __VA_ARGS__)

#include "vector_bool2.h"

#include "../detail/namespace_begin.c"
#include "vector_double2.c"
#include "../detail/namespace_end.c"

#endif /* GLM_EXT_VECTOR_DOUBLE2_H */
#ifndef GLM_EXT_VECTOR_INT2_H
#define GLM_EXT_VECTOR_INT2_H

#include "../detail/type_vec.h"
#include "../detail/type_vec2.h"

#define glm_ivec2(...) glm_tvec2(int, defaultp, __VA_ARGS__)

#include "vector_bool2.h"

#include "../detail/namespace_begin.c"
#include "vector_int2.c"
#include "../detail/namespace_end.c"

#endif /* GLM_EXT_VECTOR_INT2_H */
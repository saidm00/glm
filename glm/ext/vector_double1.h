#ifndef GLM_EXT_VECTOR_DOUBLE1_H
#define GLM_EXT_VECTOR_DOUBLE1_H

#include "../detail/type_vec.h"
#include "../detail/type_vec1.h"

#define glm_dvec1(...) glm_tvec1(double, defaultp, __VA_ARGS__)

#include "vector_bool1.h"

#include "../detail/namespace_begin.c"
#include "vector_double1.c"
#include "../detail/namespace_end.c"

#endif /* GLM_EXT_VECTOR_DOUBLE1_H */
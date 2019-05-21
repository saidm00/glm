#ifndef GLM_EXT_VECTOR_DOUBLE2_H
#define GLM_EXT_VECTOR_DOUBLE2_H

#include "../detail/type_vec2.h"

GLM_TVEC2_DEF(double)

#define double2(...) _tvec2(double, __VA_ARGS__)
#define dvec2 vec(2, double)

#endif /* GLM_EXT_VECTOR_DOUBLE2_H */
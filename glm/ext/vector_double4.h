
#ifndef GLM_EXT_VECTOR_DOUBLE4_H
#define GLM_EXT_VECTOR_DOUBLE4_H

#include "../detail/type_vec4.h"

GLM_TVEC4_DEF(double)

#define double4(...) _tvec4(double, __VA_ARGS__)
#define dvec4 vec(4, double)

#endif /* GLM_EXT_VECTOR_DOUBLE4_H */

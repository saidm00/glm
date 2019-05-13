#ifndef GLM_EXT_VECTOR_DOUBLE3_H
#define GLM_EXT_VECTOR_DOUBLE3_H

#include "../detail/type_vec3.h"

/*
GLM_TVEC3_DEF(double)
GLM_TVEC3_CAST_DEF(double, float)
GLM_TVEC3_CAST_DEF(double, int)
GLM_TVEC3_CAST_DEF(double, uint)
GLM_TVEC3_CAST_DEF(double, bool)
*/
#define double3(...) _tvec3(double, __VA_ARGS__)
#define dvec3 vec(3, double)

#endif /* GLM_EXT_VECTOR_DOUBLE3_H */
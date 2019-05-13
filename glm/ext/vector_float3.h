#ifndef GLM_EXT_VECTOR_FLOAT3_H
#define GLM_EXT_VECTOR_FLOAT3_H

#include "../detail/type_vec3.h"

/*
GLM_TVEC3_DEF(float)
GLM_TVEC3_CAST_DEF(float, double)
GLM_TVEC3_CAST_DEF(float, int)
GLM_TVEC3_CAST_DEF(float, uint)
GLM_TVEC3_CAST_DEF(float, bool)
*/
#define float3(...) _tvec3(float, __VA_ARGS__)
#define vec3 vec(3, float)

#endif /* GLM_EXT_VECTOR_FLOAT3_H */
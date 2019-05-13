#ifndef GLM_EXT_VECTOR_UINT3_H
#define GLM_EXT_VECTOR_UINT3_H

#include "../detail/type_vec3.h"

GLM_METHOD_DECL(cast, vec(3, uint), vec(3, float));
GLM_METHOD_DECL(cast, vec(3, uint), vec(3, double));
GLM_METHOD_DECL(cast, vec(3, uint), vec(3, int));
GLM_METHOD_DECL(cast, vec(3, uint), vec(3, bool));
/*
GLM_TVEC3_DEF(uint)
GLM_TVEC3_CAST_DEF(uint, float)
GLM_TVEC3_CAST_DEF(uint, double)
GLM_TVEC3_CAST_DEF(uint, int)
GLM_TVEC3_CAST_DEF(uint, bool)
*/
#define uint3(...) _tvec3(uint, __VA_ARGS__)
#define uvec3 vec(3, uint)

#endif /* GLM_EXT_VECTOR_UINT3_H */
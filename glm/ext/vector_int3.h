#ifndef GLM_EXT_VECTOR_INT3_H
#define GLM_EXT_VECTOR_INT3_H

#include "../detail/type_vec3.h"

GLM_METHOD_DECL(cast, vec(3, int), vec(3, float));
GLM_METHOD_DECL(cast, vec(3, int), vec(3, double));
GLM_METHOD_DECL(cast, vec(3, int), vec(3, uint));
GLM_METHOD_DECL(cast, vec(3, int), vec(3, bool));
/*
GLM_TVEC3_DEF(int)
GLM_TVEC3_CAST_DEF(int, float)
GLM_TVEC3_CAST_DEF(int, double)
GLM_TVEC3_CAST_DEF(int, uint)
GLM_TVEC3_CAST_DEF(int, bool)
*/
#define int3(...) _tvec3(int, __VA_ARGS__)
#define ivec3 vec(3, int)

#endif /* GLM_EXT_VECTOR_INT3_H */
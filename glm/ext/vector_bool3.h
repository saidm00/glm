#ifndef GLM_EXT_VECTOR_BOOL3_H
#define GLM_EXT_VECTOR_BOOL3_H

#include "../detail/type_vec3.h"

GLM_METHOD_DECL(cast, vec(3, bool), vec(3, float));
GLM_METHOD_DECL(cast, vec(3, bool), vec(3, double));
GLM_METHOD_DECL(cast, vec(3, bool), vec(3, int));
GLM_METHOD_DECL(cast, vec(3, bool), vec(3, uint));
/*
GLM_TVEC3_DEF(bool)
GLM_TVEC3_CAST_DEF(bool, float)
GLM_TVEC3_CAST_DEF(bool, double)
GLM_TVEC3_CAST_DEF(bool, int)
GLM_TVEC3_CAST_DEF(bool, uint)
*/
#define bool3(...) _tvec3(bool, __VA_ARGS__)
#define bvec3 vec(3, bool)

#endif /* GLM_EXT_VECTOR_BOOL3_H */
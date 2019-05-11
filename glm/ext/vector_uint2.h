#ifndef GLM_EXT_VECTOR_UINT2_H
#define GLM_EXT_VECTOR_UINT2_H

#include "../detail/type_vec2.h"

GLM_METHOD_DECL(cast, vec(2, uint), vec(2, float));
GLM_METHOD_DECL(cast, vec(2, uint), vec(2, double));
GLM_METHOD_DECL(cast, vec(2, uint), vec(2, int));
GLM_METHOD_DECL(cast, vec(2, uint), vec(2, bool));

GLM_TVEC2_DEF(uint)
GLM_TVEC2_CAST_DEF(uint, float)
GLM_TVEC2_CAST_DEF(uint, double)
GLM_TVEC2_CAST_DEF(uint, int)
GLM_TVEC2_CAST_DEF(uint, bool)

#define uint2(...) tvec2_(uint, __VA_ARGS__)
#define uvec2 vec(2, uint)

#endif /* GLM_EXT_VECTOR_INT2_H */
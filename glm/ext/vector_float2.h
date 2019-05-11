#ifndef GLM_EXT_VECTOR_FLOAT2_H
#define GLM_EXT_VECTOR_FLOAT2_H

#include "../detail/type_vec2.h"

GLM_METHOD_DECL(cast, vec(2, float), vec(2, double));
GLM_METHOD_DECL(cast, vec(2, float), vec(2, int));
GLM_METHOD_DECL(cast, vec(2, float), vec(2, uint));
GLM_METHOD_DECL(cast, vec(2, float), vec(2, bool));

GLM_TVEC2_DEF(float)
GLM_TVEC2_CAST_DEF(float, double)
GLM_TVEC2_CAST_DEF(float, int)
GLM_TVEC2_CAST_DEF(float, uint)
GLM_TVEC2_CAST_DEF(float, bool)

#define float2(...) tvec2_(float, __VA_ARGS__)
#define vec2 vec(2, float)

#endif /* GLM_EXT_VECTOR_FLOAT2_H */
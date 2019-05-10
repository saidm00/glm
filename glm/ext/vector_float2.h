#ifndef GLM_EXT_VECTOR_FLOAT2_H
#define GLM_EXT_VECTOR_FLOAT2_H

#include "../detail/type_vec2.h"

GLM_DECLARE_VEC(2, float)
GLM_DECLARE_TVEC2_CONSTRUCTORS(float)

union vec(2, float)
{
	float e[2];
	struct { union { float x, r, s; }; union { float y, g, t; }; };
};

GLM_DEFINE_TVEC2(float)
GLM_DEFINE_TVEC2_CONSTRUCTORS(float)

#define float2(...) tvec2_(float, __VA_ARGS__)
#define vec2 vec(2, float)

#endif /* GLM_EXT_VECTOR_FLOAT2_H */
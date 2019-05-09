#ifndef GLM_EXT_VECTOR_BOOL2_H
#define GLM_EXT_VECTOR_BOOL2_H

#include "../detail/type_vec2.h"

GLM_DECLARE_VEC(2, bool)
GLM_DECLARE_TVEC2_CONSTRUCTORS(bool)

union vec(2, bool)
{
	bool e[2];
	struct { union { bool x, r, s; }; union { bool y, g, t; }; };
};

GLM_DEFINE_TVEC2(bool)
GLM_DEFINE_TVEC2_CONSTRUCTORS(bool)

typedef vec(2, bool) bvec2;

#define bool2(...) tvec2_(bool, __VA_ARGS__)
#define bvec2(...) bool2(__VA_ARGS__)

#endif /* GLM_EXT_VECTOR_BOOL2_H */
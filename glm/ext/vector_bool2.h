#ifndef GLM_EXT_VECTOR_BOOL2_H
#define GLM_EXT_VECTOR_BOOL2_H

#include "../detail/type_vec2.h"
#include "./vector_bool1.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(2, bool);
	GLM_SWIZZLE_XY(bool);
	GLM_SWIZZLE_ST(bool);
	GLM_SWIZZLE_RG(bool);
} glm_bool2, glm_bvec2;

#define glm_bool2(...) glm_tvec2(bool, __VA_ARGS__)
#define glm_bvec2(...) glm_tvec2(bool, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_BOOL2_H */
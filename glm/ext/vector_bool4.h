#ifndef GLM_EXT_VECTOR_BOOL4_H
#define GLM_EXT_VECTOR_BOOL4_H

#include "../detail/type_vec4.h"
#include "./vector_bool1.h"
#include "./vector_bool2.h"
#include "./vector_bool3.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(4, bool);
	GLM_SWIZZLE_XYZW(bool);
	GLM_SWIZZLE_STPQ(bool);
	GLM_SWIZZLE_RGBA(bool);
} glm_bool4, glm_bvec4;

#define glm_bool4(...) glm_tvec4(bool, __VA_ARGS__)
#define glm_bvec4(...) glm_tvec4(bool, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_BOOL4_H */

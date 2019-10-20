#ifndef GLM_EXT_VECTOR_DOUBLE1_H
#define GLM_EXT_VECTOR_DOUBLE1_H

#include "../detail/type_vec1.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(1, double);
	GLM_SWIZZLE_X(double);
	GLM_SWIZZLE_S(double);
	GLM_SWIZZLE_R(double);
} glm_double1, glm_dvec1;

#define glm_double1(...) glm_tvec1(double, __VA_ARGS__)
#define glm_dvec1(...) glm_tvec1(double, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_DOUBLE1_H */
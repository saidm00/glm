#ifndef GLM_EXT_VECTOR_DOUBLE1
#define GLM_EXT_VECTOR_DOUBLE1

#include "../detail/type_vec1.h"

typedef union
{
	double _data[1];
	double e[1];
	double x, r, s;
} glm_double1, glm_dvec1;

#define glm_double1(...) glm_tvec1(double, __VA_ARGS__)
#define glm_dvec1(...) glm_tvec1(double, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_DOUBLE1 */
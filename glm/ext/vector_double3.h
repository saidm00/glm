#ifndef GLM_EXT_VECTOR_DOUBLE3_H
#define GLM_EXT_VECTOR_DOUBLE3_H

#include "../detail/type_vec3.h"
#include "./vector_double1.h"
#include "./vector_double2.h"

typedef union
{
	GLM_VEC_DEFAULT_BASE(3, double);	
	GLM_SWIZZLE_XYZ(double);
	GLM_SWIZZLE_STP(double);
	GLM_SWIZZLE_RGB(double);
} glm_double3, glm_dvec3;

#define glm_double3(...) glm_tvec3(double, __VA_ARGS__)
#define glm_dvec3(...) glm_tvec3(double, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_DOUBLE3_H */
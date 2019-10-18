#ifndef GLM_EXT_VECTOR_DOUBLE3_H
#define GLM_EXT_VECTOR_DOUBLE3_H

#include "../detail/type_vec3.h"

typedef union
{
	double _data[3];
	double e[3];
	struct { double x, y, z; };
	struct { double s, t, p; };
	struct { double r, g, b; };
} glm_double3, glm_dvec3;

#define glm_double3(...) glm_tvec3(double, __VA_ARGS__)
#define glm_dvec3(...) glm_tvec3(double, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_DOUBLE3_H */
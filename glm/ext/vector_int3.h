#ifndef GLM_EXT_VECTOR_INT3_H
#define GLM_EXT_VECTOR_INT3_H

#include "../detail/type_vec3.h"

typedef union
{
	int _data[3];
	int e[3];
	struct { int x, y, z; };
	struct { int s, t, p; };
	struct { int r, g, b; };
} glm_int3, glm_ivec3;

#define glm_int3(...) glm_tvec3(int, __VA_ARGS__)
#define glm_ivec3(...) glm_tvec3(int, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_INT3_H */
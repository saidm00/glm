#ifndef GLM_EXT_VECTOR_BOOL3_H
#define GLM_EXT_VECTOR_BOOL3_H

#include "../detail/type_vec3.h"
#include "./vector_bool2.h"

typedef union
{
	bool _data[3];
	bool e[3];
	struct { bool x, y, z; };
	struct { bool s, t, p; };
	struct { bool r, g, b; };
	struct { glm_bool2 xy; };
	struct { bool _x; glm_bool2 yz; };
} glm_bool3, glm_bvec3;

#define glm_bool3(...) glm_tvec3(bool, __VA_ARGS__)
#define glm_bvec3(...) glm_tvec3(bool, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_BOOL3_H */
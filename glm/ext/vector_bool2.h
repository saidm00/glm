#ifndef GLM_EXT_VECTOR_BOOL2_H
#define GLM_EXT_VECTOR_BOOL2_H

#include "../detail/type_vec2.h"

typedef union
{
	bool _data[2];
	
	bool e[2];
	struct { bool x, y; };
	struct { bool r, g; };
	struct { bool s, t; };
} glm_bool2, glm_bvec2;

#define glm_bool2(...) glm_tvec2(bool, __VA_ARGS__)
#define glm_bvec2(...) glm_tvec2(bool, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_BOOL2_H */
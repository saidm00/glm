#ifndef GLM_EXT_VECTOR_BOOL4_H
#define GLM_EXT_VECTOR_BOOL4_H

#include "../detail/type_vec4.h"

typedef union
{
	bool _data[4];
	bool e[4];
	
	struct { bool x, y, z, w; };
	struct { bool s, t, p, q; };
	struct { bool r, g, b, a; };
} glm_bool4, glm_bvec4;

#define glm_bool4(...) glm_tvec4(bool, __VA_ARGS__)
#define glm_bvec4(...) glm_tvec4(bool, __VA_ARGS__)

#endif /* GLM_EXT_VECTOR_BOOL4_H */

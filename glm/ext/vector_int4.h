#ifndef GLM_EXT_VECTOR_INT4_H
#define GLM_EXT_VECTOR_INT4_H

#include "../detail/type_vec4.h"

GLM_TVEC4_DEF(int)

#define int4(...) _tvec4(int, __VA_ARGS__)
#define ivec4 vec(4, int)

#endif /* GLM_EXT_VECTOR_INT4_H */

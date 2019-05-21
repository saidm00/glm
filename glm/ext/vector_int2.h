#ifndef GLM_EXT_VECTOR_INT2_H
#define GLM_EXT_VECTOR_INT2_H

#include "../detail/type_vec2.h"

GLM_TVEC2_DEF(int)

#define int2(...) _tvec2(int, __VA_ARGS__)
#define ivec2 vec(2, int)

#endif /* GLM_EXT_VECTOR_INT2_H */
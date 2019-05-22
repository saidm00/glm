#ifndef GLM_EXT_VECTOR_BOOL4_H
#define GLM_EXT_VECTOR_BOOL4_H

#include "../detail/type_vec4.h"

GLM_TVEC2_DEF(bool)

#define bool4(...) _tvec4(bool, __VA_ARGS__)
#define bvec4 vec(4, bool)

#endif /* GLM_EXT_VECTOR_BOOL4_H */

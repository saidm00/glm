#ifndef GLM_EXT_VECTOR_BOOL2_H
#define GLM_EXT_VECTOR_BOOL2_H

#include "../detail/type_vec2.h"

GLM_TVEC2_DEF(bool)

#define bool2(...) _tvec2(bool, __VA_ARGS__)
#define bvec2 vec(2, bool)

#endif /* GLM_EXT_VECTOR_BOOL2_H */
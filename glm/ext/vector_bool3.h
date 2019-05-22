#ifndef GLM_EXT_VECTOR_BOOL3_H
#define GLM_EXT_VECTOR_BOOL3_H

#include "../detail/type_vec3.h"

GLM_TVEC3_DEF(bool)

#define bool3(...) _tvec3(bool, __VA_ARGS__)
#define bvec3 vec(3, bool)

#endif /* GLM_EXT_VECTOR_BOOL3_H */
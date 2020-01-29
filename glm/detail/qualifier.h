#ifndef GLM_DETAIL_QUALIFIER_H
#define GLM_DETAIL_QUALIFIER_H

#include "setup.h"
//#include "type_float.h"

#define GLM_VECTOR_LENGTH(v) (sizeof(v)/sizeof(v.e[0]))

#define GLM_PASTE_(A, B) A ## B
#define GLM_PASTE(...) GLM_PASTE_(__VA_ARGS__)

#define glm_vec_(L, T, Q) glm_ ## T ## L
#define glm_vec(...) glm_vec_(__VA_ARGS__)

#endif /* GLM_DETAIL_QUALIFIER_H */

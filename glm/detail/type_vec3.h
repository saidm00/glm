#ifndef GLM_DETAIL_TYPE_VEC3_H
#define GLM_DETAIL_TYPE_VEC3_H

#include "qualifier.h"

#define GLM_TEMPLATE_TVEC3(T, Q)\
GLM_INLINE vec(3, T, Q) T##3_1(void);\
GLM_INLINE vec(3, T, Q) T##3_2(T const scalar);\
GLM_INLINE vec(3, T, Q) T##3_3(vec(2, T, Q) const _xy, T const _z);\
GLM_INLINE vec(3, T, Q) T##3_4(T const _x, vec(2, T, Q) const _yz);\
GLM_INLINE vec(3, T, Q) T##3_5(T const _x, T const _y, T const _z, T const _w);


#endif /* GLM_DETAIL_TYPE_VEC3_H */
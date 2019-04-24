#ifndef GLM_DETAIL_TYPE_VEC4_H
#define GLM_DETAIL_TYPE_VEC4_H

#include "qualifier.h"

#define GLM_TEMPLATE_TVEC4(T, Q)\
GLM_INLINE vec(4, T, Q) T##4_1 (void);\
GLM_INLINE vec(4, T, Q) T##4_2 (T const scalar);\
GLM_INLINE vec(4, T, Q) T##4_3 (vec(2, T, Q) const _xy, vec(2, T, Q) const _zw);\
GLM_INLINE vec(4, T, Q) T##4_4 (vec(3, T, Q) const _xyz, T const _w);\
GLM_INLINE vec(4, T, Q) T##4_5 (T const _x, vec(3, T, Q) const _yzw);\
GLM_INLINE vec(4, T, Q) T##4_6 (vec(2, T, Q) const _xy, T const _z, T const _w);\
GLM_INLINE vec(4, T, Q) T##4_7 (T const _x, vec(2, T, Q) const _yz, T const _w);\
GLM_INLINE vec(4, T, Q) T##4_8 (T const _x, T const _y, vec(2, T, Q) const _zw);\
GLM_INLINE vec(4, T, Q) T##4_9 (T const _x, T const _y, T const _z, T const _w);


#endif /* GLM_DETAIL_TYPE_VEC4_H */
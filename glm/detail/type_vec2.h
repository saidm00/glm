#ifndef GLM_DETAIL_TYPE_VEC2_H
#define GLM_DETAIL_TYPE_VEC2_H

#include "qualifier.h"

#define GLM_TEMPLATE_DECLARE_TVEC2(T, Q)\
GLM_INLINE vec(2, T, Q) T##2_##Q##_1(void);\
GLM_INLINE vec(2, T, Q) T##2_##Q##_2(T const scalar);\
GLM_INLINE vec(2, T, Q) T##2_##Q##_3(vec(2, T, Q) const vector);\
GLM_INLINE vec(2, T, Q) T##2_##Q##_4(vec(3, T, Q) const vector);\
GLM_INLINE vec(2, T, Q) T##2_##Q##_5(vec(4, T, Q) const vector);\
GLM_INLINE vec(2, T, Q) T##2_##Q##_6(T const x, T const y);

#define GLM_GENERIC_CAST_CASE(L, T1, T2, Q) T2##L##_##Q: cast_##T1##L##_##Q##_from_##T2##L##_##Q

#define GLM_GENERIC_CAST_CASES(L, T, Q)\
GLM_GENERIC_CAST_CASE(L, T, float, Q),\
GLM_GENERIC_CAST_CASE(L, T, double, Q),\
GLM_GENERIC_CAST_CASE(L, T, int, Q),\
GLM_GENERIC_CAST_CASE(L, T, uint, Q),\
GLM_GENERIC_CAST_CASE(L, T, bool, Q)

#define GLM_GENERIC_FOREACH_VEC_CASES(L, Q, x) float##L##_##Q: x, double##L##_##Q: x, int##L##_##Q: x, uint##L##_##Q: x, bool##L##_##Q: x

#define GLM_CREATE_TVEC2_0(T, Q, ...) T##2_##Q##_1()
#define GLM_CREATE_TVEC2_1(T, Q, p, ...) _Generic(p, \
GLM_GENERIC_FOREACH_VEC_CASES(2, Q, T##2_##Q##_3 ), \
GLM_GENERIC_FOREACH_VEC_CASES(3, Q, T##2_##Q##_4 ), \
GLM_GENERIC_FOREACH_VEC_CASES(4, Q, T##2_##Q##_5 ), \
default: T##2_##Q##_2)\
(_Generic(p, T##2_##Q: p, default: _Generic(p, GLM_GENERIC_CAST_CASES(2, T, Q), GLM_GENERIC_CAST_CASES(3, T, Q), GLM_GENERIC_CAST_CASES(4, T, Q))(p)))

#define GLM_CREATE_TVEC2_2(T, Q, x, y, ...) T##2_##Q##_6(x, y)

#define GLM_CREATE_TVEC2_(T, Q, p1, p2, N, ...) GLM_CREATE_TVEC2_##N(T, Q, p1, p2,)
#define GLM_CREATE_TVEC2(T, Q, ...) GLM_CREATE_TVEC2_(T, Q, __VA_ARGS__, 2, 1, 0)

#include "type_vec2.inl"

#endif /* GLM_DETAIL_TYPE_VEC2_H */
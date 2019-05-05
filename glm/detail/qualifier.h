#ifndef GLM_DETAIL_QUALIFIER_H
#define GLM_DETAIL_QUALIFIER_H

#include "setup.h"

/*
lowp float color;
out mediump vec2 P;
lowp ivec2 foo(lowp mat3);

#define vec(L, T)
#define mat(C, R, T)
#define qua(T)

#define tvec2(T, Q) vec(2, T, Q)
#define tvec3(T, Q) vec(3, T, Q)
#define tvec4(T, Q) vec(4, T, Q)
#define tmat2x2(T, Q) mat(2, 2, T)
#define tmat2x3(T, Q) mat(2, 3, T)
#define tmat2x4(T, Q) mat(2, 4, T)
#define tmat3x2(T, Q) mat(3, 2, T)
#define tmat3x3(T, Q) mat(3, 3, T)
#define tmat3x4(T, Q) mat(3, 4, T)
#define tmat4x2(T, Q) mat(4, 2, T)
#define tmat4x3(T, Q) mat(4, 3, T)
#define tmat4x4(T, Q) mat(4, 4, T)

*/
/*
#define GLM_DECLARE_VEC(L, T)\
GLM_INLINE T##L add_##T##L (T##L const x, T##L const y);
GLM_INLINE T##L sub_##T##L (T##L const x, T##L const y);
GLM_INLINE T##L mul_##T##L (T##L const x, T##L const y);
GLM_INLINE T##L div_##T##L (T##L const x, T##L const y);
GLM_INLINE T##L add_##T##L (T##L const x, T##L const y);
GLM_INLINE T##L sub_##T##L (T##L const x, T##L const y);
GLM_INLINE T##L mul_##T##L (T##L const x, T##L const y);
GLM_INLINE T##L div_##T##L (T##L const x, T##L const y);

GLM_INLINE T##L min_##T##L (T##L const x, T##L const y);\
GLM_INLINE T##L max_##T##L (T##L const x, T##L const y);\
GLM_INLINE T##L sqrt_##T##L (T##L const x);\
GLM_INLINE T##L normalize_##T##L (T##L const x);\
GLM_INLINE T dot_##T##L (T##L const x, T##L const y);\
GLM_INLINE T length_##T##L (T##L const x);\
GLM_INLINE T distance_##T##L (T##L const p0, T##L const p1);\
GLM_INLINE T##L sin_##T##L (T##L const angle);\
GLM_INLINE T##L cos_##T##L (T##L const angle);\
GLM_INLINE T##L tan_##T##L (T##L const angle);\
GLM_INLINE T##L asin_##T##L (T##L const x);\
GLM_INLINE T##L acos_##T##L (T##L const x);\
GLM_INLINE T##L atan_##T##L (T##L const x);
*/
/*
typedef vec(2, float, defaultp) float2_defaultp;
typedef vec(2, double, defaultp) double2_defaultp;
typedef vec(2, int, defaultp) int2_defaultp;
typedef vec(2, uint, defaultp) uint2_defaultp;
typedef vec(2, bool, defaultp) bool2_defaultp;

typedef vec(3, float, defaultp) float3_defaultp;
typedef vec(3, double, defaultp) double3_defaultp;
typedef vec(3, int, defaultp) int3_defaultp;
typedef vec(3, uint, defaultp) uint3_defaultp;
typedef vec(3, bool, defaultp) bool3_defaultp;

typedef vec(4, float, defaultp) float4_defaultp;
typedef vec(4, double, defaultp) double4_defaultp;
typedef vec(4, int, defaultp) int4_defaultp;
typedef vec(4, uint, defaultp) uint4_defaultp;
typedef vec(4, bool, defaultp) bool4_defaultp;*/
/*
#define GLM_TEMPLATE_DECLARE_VEC_CAST(L, T1, T2, Q) GLM_INLINE T1##L##_##Q cast_##T1##L##_##Q##_from_##T2##L##_##Q (T2##L##_##Q const);

#define GLM_TEMPLATE_DECLARE_VEC_CASTS(L, T, Q)\
GLM_TEMPLATE_DECLARE_VEC_CAST(L, T, float, Q)\
GLM_TEMPLATE_DECLARE_VEC_CAST(L, T, double, Q)\
GLM_TEMPLATE_DECLARE_VEC_CAST(L, T, int, Q)\
GLM_TEMPLATE_DECLARE_VEC_CAST(L, T, uint, Q)\
GLM_TEMPLATE_DECLARE_VEC_CAST(L, T, bool, Q)

GLM_TEMPLATE_DECLARE_VEC_CASTS(2, float, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(2, double, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(2, int, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(2, uint, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(2, bool, defaultp)

GLM_TEMPLATE_DECLARE_VEC_CASTS(3, float, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(3, double, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(3, int, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(3, uint, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(3, bool, defaultp)

GLM_TEMPLATE_DECLARE_VEC_CASTS(4, float, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(4, double, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(4, int, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(4, uint, defaultp)
GLM_TEMPLATE_DECLARE_VEC_CASTS(4, bool, defaultp)

#define GLM_GENERIC_CAST_CASE(L1, L2, T1, T2, Q1, Q2) T2##L2##_##Q2: cast_##T1##L1##_##Q1##_from_##T2##L2##_##Q2
*/

#define GLM_MANGLE(NAME, L, T) NAME##_##T##L
/* Name mangle all types with vector length. */
#define GLM_MANGLE_ALL_TYPES(NAME, L) \
GLM_MANGLE(NAME, L, float), \
GLM_MANGLE(NAME, L, double), \
GLM_MANGLE(NAME, L, int), \
GLM_MANGLE(NAME, L, uint), \
GLM_MANGLE(NAME, L, bool)

#define GLM_GENERIC_MANGLE_CASES(NAME)\
GLM_MANGLE_ALL_TYPES(NAME, ), \
GLM_MANGLE_ALL_TYPES(NAME, 2), \
GLM_MANGLE_ALL_TYPES(NAME, 3), \
GLM_MANGLE_ALL_TYPES(NAME, 4)

#define GLM_GENERIC_CALL_1ARG(NAME, _) _Generic(_, GLM_GENERIC_MANGLE_CASES(NAME))(_)

#define          sqrt(x) GLM_GENERIC_CALL_1ARG(sqrt, x)
#define        length(x) GLM_GENERIC_CALL_1ARG(length, x)
#define       sin(angle) GLM_GENERIC_CALL_1ARG(sin, angle)
#define       cos(angle) GLM_GENERIC_CALL_1ARG(cos, angle)
#define       tan(angle) GLM_GENERIC_CALL_1ARG(tan, angle)
#define          asin(x) GLM_GENERIC_CALL_1ARG(asin, x)
#define          acos(x) GLM_GENERIC_CALL_1ARG(acos, x)
#define          atan(x) GLM_GENERIC_CALL_1ARG(atan, x)
#define radians(degrees) GLM_GENERIC_CALL_1ARG(radians, degrees)
#define degrees(radians) GLM_GENERIC_CALL_1ARG(degrees, radians)


#endif /* GLM_DETAIL_QUALIFIER_H */
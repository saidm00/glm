#ifndef GLM_DETAIL_QUALIFIER_H
#define GLM_DETAIL_QUALIFIER_H

#include "setup.h"

typedef enum {
	packed_lowp,
	packed_mediump,
	packed_highp,

	lowp = packed_lowp,
	mediump = packed_mediump,
	highp = packed_highp,

	defaultp = packed_highp
} qualifier;

typedef qualifier precision;

/*
template<length_t L, typename T, qualifier Q> struct vec;
template<length_t C, length_t R, typename T, qualifier Q> struct mat;
template<typename T, qualifier Q> struct qua;
*/

#define vec(L, T, Q) T __attribute__((__vector_size__((L-L%2) * sizeof(T))))
#define mat(C, R, T, Q)
#define qua(T, Q)

#define GLM_HAS_TEMPLATE_ALIASES 1

#if GLM_HAS_TEMPLATE_ALIASES

#define tvec2(T, Q) vec(2, T, Q)
#define tvec3(T, Q) vec(3, T, Q)
#define tvec4(T, Q) vec(4, T, Q)
#define tmat2x2(T, Q) mat(2, 2, T, Q)
#define tmat2x3(T, Q) mat(2, 3, T, Q)
#define tmat2x4(T, Q) mat(2, 4, T, Q)
#define tmat3x2(T, Q) mat(3, 2, T, Q)
#define tmat3x3(T, Q) mat(3, 3, T, Q)
#define tmat3x4(T, Q) mat(3, 4, T, Q)
#define tmat4x2(T, Q) mat(4, 2, T, Q)
#define tmat4x3(T, Q) mat(4, 3, T, Q)
#define tmat4x4(T, Q) mat(4, 4, T, Q)

#endif

/*
#define GLM_DECLARE_FUNC_VEC(L, T, Q)\
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
typedef vec(4, bool, defaultp) bool4_defaultp;

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

#endif /* GLM_DETAIL_QUALIFIER_H */
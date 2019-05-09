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

#define GLM_FUNCNAME(NAME, L, T) NAME##_##T##L



/*
	vec(4, float) -> float4
	mat(2, 3, int) -> int2x3
	tmat2x2(float) -> float2x2

	vec(4, float)(1.0f) -> float4(1.0f) -> float4_1(1.0f)
*/
#define vec(L, T) T##L
#define mat(C, R, T) T##C##x##R
#define qua(T) qua_##T

#define tvec3(T) vec(3, T)
#define tvec4(T) vec(4, T)
#define tmat2x2(T) mat(2, 2, T)
#define tmat2x3(T) mat(2, 3, T)
#define tmat2x4(T) mat(2, 4, T)
#define tmat3x2(T) mat(3, 2, T)
#define tmat3x3(T) mat(3, 3, T)
#define tmat3x4(T) mat(3, 4, T)
#define tmat4x2(T) mat(4, 2, T)
#define tmat4x3(T) mat(4, 3, T)
#define tmat4x4(T) mat(4, 4, T)

#define _vec(L, T, ...) _tvec##L(T, __VA_ARGS__)
#define _mat(C, R, T, ...) _tmat##C##x##R(T, __VA_ARGS__)
#define _qua(T, ...)

#define _tvec3(T, ...)
#define _tvec4(T, ...)
#define _tmat2x2(T, ...)
#define _tmat2x3(T, ...)
#define _tmat2x4(T, ...)
#define _tmat3x2(T, ...)
#define _tmat3x3(T, ...)
#define _tmat3x4(T, ...)
#define _tmat4x2(T, ...)
#define _tmat4x3(T, ...)
#define _tmat4x4(T, ...)



#define GLM_DECLARE_VEC(L, T)\
typedef union vec(L, T) vec(L, T);\
\
vec(L, T) GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(vadd, L, T)   (const register vec(L, T), const register vec(L, T)),\
GLM_FUNCNAME(vsub, L, T)   (const register vec(L, T), const register vec(L, T)),\
GLM_FUNCNAME(vmul, L, T)   (const register vec(L, T), const register vec(L, T)),\
GLM_FUNCNAME(vdiv, L, T)   (const register vec(L, T), const register vec(L, T)),\
GLM_FUNCNAME(sqrt, L, T)   (const register vec(L, T) x),\
GLM_FUNCNAME(rsqrt, L, T)  (const register vec(L, T) x);\
\
T GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(dot, L, T)      (const register vec(L, T) x, const register vec(L, T) y),\
GLM_FUNCNAME(length, L, T)   (const register vec(L, T) x),\
GLM_FUNCNAME(distance, L, T) (const register vec(L, T) p0, const register vec(L, T) p1);\
\
vec(L, T) GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(normalize, L, T) (const register vec(L, T) v),\
GLM_FUNCNAME(min, L, T)       (const register vec(L, T) x, const register vec(L, T) y),\
GLM_FUNCNAME(max, L, T)       (const register vec(L, T) x, const register vec(L, T) y),\
GLM_FUNCNAME(floor, L, T)     (const register vec(L, T) x),\
GLM_FUNCNAME(ceil, L, T)      (const register vec(L, T) x),\
GLM_FUNCNAME(round, L, T)     (const register vec(L, T) x);


#define GLM_MANGLE_ALL_TYPES(NAME, L) \
vec(L, float): GLM_FUNCNAME(NAME, L, float), \
vec(L, double): GLM_FUNCNAME(NAME, L, double), \
vec(L, int): GLM_FUNCNAME(NAME, L, int), \
vec(L, uint): GLM_FUNCNAME(NAME, L, uint), \
vec(L, bool): GLM_FUNCNAME(NAME, L, bool)

#define GLM_GENERIC_MANGLE_CASES(NAME)\
GLM_MANGLE_ALL_TYPES(NAME, 2)

#define GLM_GENERIC_CALL(NAME, _) _Generic(_, GLM_GENERIC_MANGLE_CASES(NAME))(_)

#define          _sqrt(x) _Generic(x, float: sqrtf, double: sqrt, int: sqrtl, uint: sqrtl, GLM_GENERIC_MANGLE_CASES(sqrt))(x)
#define        _length(x) GLM_GENERIC_CALL(length, x)
#define         _floor(x) GLM_GENERIC_CALL(floor, x)
#define          _ceil(x) GLM_GENERIC_CALL(ceil, x)
#define         _round(x) GLM_GENERIC_CALL(round, x)
#define _radians(degrees) GLM_GENERIC_CALL(radians, degrees)
#define _degrees(radians) GLM_GENERIC_CALL(degrees, radians)



#endif /* GLM_DETAIL_QUALIFIER_H */
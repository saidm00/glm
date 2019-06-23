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
	vec
	---
	vector type
	L -> element count
	T -> type of element

	mat
	---
	matrix type
	C -> columns
	R -> rows
	T -> type of element

	qua
	---
	quaternion type
	T -> type of element


	vec(4, float) -> float4
	mat(2, 3, int) -> int2x3
	tmat2x2(float) -> float2x2

	vec(4, float)(1.0f) -> float4(1.0f) -> float4_1(1.0f)
*/
#define vec(L, T) T##L
#define mat(C, R, T) T##C##x##R
#define qua(T) qua_##T

#define _vec(L, T, ...) _tvec##L(T, __VA_ARGS__)
#define _mat(C, R, T, ...) _tmat##C##x##R(T, __VA_ARGS__)
#define _qua(T, ...) _qua_##T(T, __VA_ARGS__)

#define tmat2x2(T) mat(2, 2, T)
#define tmat2x3(T) mat(2, 3, T)
#define tmat2x4(T) mat(2, 4, T)
#define tmat3x2(T) mat(3, 2, T)
#define tmat3x3(T) mat(3, 3, T)
#define tmat3x4(T) mat(3, 4, T)
#define tmat4x2(T) mat(4, 2, T)
#define tmat4x3(T) mat(4, 3, T)
#define tmat4x4(T) mat(4, 4, T)

#define _tmat2x2(T, ...)
#define _tmat2x3(T, ...)
#define _tmat2x4(T, ...)
#define _tmat3x2(T, ...)
#define _tmat3x3(T, ...)
#define _tmat3x4(T, ...)
#define _tmat4x2(T, ...)
#define _tmat4x3(T, ...)
#define _tmat4x4(T, ...)




#define GLM_CONVERT_FUNC_DECL(A, B) A GLM_FUNC_QUALIFIER GLM_FUNC_NAME(convert, A, B) (const register B);

#define GLM_VEC_DECL(L, T)\
GLM_CONVERT_FUNC_DECL(vec(L, T), vec(L, float)) \
GLM_CONVERT_FUNC_DECL(vec(L, T), vec(L, double)) \
GLM_CONVERT_FUNC_DECL(vec(L, T), vec(L, int)) \
GLM_CONVERT_FUNC_DECL(vec(L, T), vec(L, uint)) \
GLM_CONVERT_FUNC_DECL(vec(L, T), vec(L, bool)) \
 \
vec(L, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(add, vec(L, T), vec(L, T), vec(L, T)) (const register vec(L, T), const register vec(L, T)), \
GLM_FUNC_NAME(sub, vec(L, T), vec(L, T), vec(L, T)) (const register vec(L, T), const register vec(L, T)), \
GLM_FUNC_NAME(mul, vec(L, T), vec(L, T), vec(L, T)) (const register vec(L, T), const register vec(L, T)), \
GLM_FUNC_NAME(div, vec(L, T), vec(L, T), vec(L, T)) (const register vec(L, T), const register vec(L, T)), \
GLM_FUNC_NAME(sqrt, vec(L, T), vec(L, T)) (const register vec(L, T) x), \
GLM_FUNC_NAME(rsqrt, vec(L, T), vec(L, T)) (const register vec(L, T) x); \
 \
T GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(dot, T, vec(L, T), vec(L, T)) (const register vec(L, T) x, const register vec(L, T) y), \
GLM_FUNC_NAME(length, T, vec(L, T)) (const register vec(L, T) x), \
GLM_FUNC_NAME(distance, T, vec(L, T), vec(L, T)) (const register vec(L, T) p0, const register vec(L, T) p1); \
 \
vec(L, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(normalize, vec(L, T), vec(L, T)) (const register vec(L, T) v), \
GLM_FUNC_NAME(min, vec(L, T), vec(L, T), vec(L, T)) (const register vec(L, T) x, const register vec(L, T) y), \
GLM_FUNC_NAME(max, vec(L, T), vec(L, T), vec(L, T)) (const register vec(L, T) x, const register vec(L, T) y), \
GLM_FUNC_NAME(floor, vec(L, T), vec(L, T)) (const register vec(L, T) x), \
GLM_FUNC_NAME(ceil, vec(L, T), vec(L, T)) (const register vec(L, T) x), \
GLM_FUNC_NAME(round, vec(L, T), vec(L, T)) (const register vec(L, T) x);

#define GLM_MANGLE_ALL_TYPES(NAME, L) \
vec(L, float): GLM_FUNC_NAME(NAME, float, vec(L, float)), \
vec(L, double): GLM_FUNC_NAME(NAME, double, vec(L, double)), \
vec(L, int): GLM_FUNC_NAME(NAME, int, vec(L, int)), \
vec(L, uint): GLM_FUNC_NAME(NAME, uint, vec(L, uint)), \
vec(L, bool): GLM_FUNC_NAME(NAME, bool, vec(L, bool))

#define GLM_GENERIC_MANGLE_CASES(NAME)\
GLM_MANGLE_ALL_TYPES(NAME, 2)


#define GLM_MANGLE_ALL_TYPES_VEC(NAME, L) \
vec(L, float): GLM_FUNC_NAME(NAME, vec(L, float), vec(L, float)), \
vec(L, double): GLM_FUNC_NAME(NAME, vec(L, double), vec(L, double)), \
vec(L, int): GLM_FUNC_NAME(NAME, vec(L, int), vec(L, int)), \
vec(L, uint): GLM_FUNC_NAME(NAME, vec(L, uint), vec(L, uint)), \
vec(L, bool): GLM_FUNC_NAME(NAME, vec(L, bool), vec(L, bool))

#define GLM_GENERIC_MANGLE_VEC_CASES(NAME)\
GLM_MANGLE_ALL_TYPES_VEC(NAME, 2)


#define GLM_GENERIC_CALL(NAME, ARG) _Generic(ARG, GLM_GENERIC_MANGLE_CASES(NAME))(ARG)
#define GLM_GENERIC_CALL_VEC(NAME, ARG) _Generic(ARG, GLM_GENERIC_MANGLE_VEC_CASES(NAME))(ARG)

#define          sqrt(x) _Generic(x, float: sqrtf, double: sqrt, int: sqrtl, uint: sqrtl, GLM_GENERIC_MANGLE_VEC_CASES(sqrt))(x)
#define         rsqrt(x) GLM_GENERIC_CALL_VEC(rsqrt, x)
#define        length(x) GLM_GENERIC_CALL(length, x)
#define         floor(x) GLM_GENERIC_CALL_VEC(floor, x)
#define          ceil(x) GLM_GENERIC_CALL_VEC(ceil, x)
#define         round(x) GLM_GENERIC_CALL_VEC(round, x)
#define radians(degrees) GLM_GENERIC_CALL_VEC(radians, degrees)
#define degrees(radians) GLM_GENERIC_CALL_VEC(degrees, radians)



/*
	foreach macro

	allows loop-like control with the preprocessor
*/

#define GLM_TRIM_0(...)
#define GLM_TRIM_1(A1, ...)                             A1
#define GLM_TRIM_2(A1, A2, ...)                         A1, A2
#define GLM_TRIM_3(A1, A2, A3, ...)                     A1, A2, A3
#define GLM_TRIM_4(A1, A2, A3, A4, ...)                 A1, A2, A3, A4
#define GLM_TRIM_5(A1, A2, A3, A4, A5, ...)             A1, A2, A3, A4, A5
#define GLM_TRIM_6(A1, A2, A3, A4, A5, A6, ...)         A1, A2, A3, A4, A5, A6
#define GLM_TRIM_7(A1, A2, A3, A4, A5, A6, A7, ...)     A1, A2, A3, A4, A5, A6, A7
#define GLM_TRIM_8(A1, A2, A3, A4, A5, A6, A7, A8, ...) A1, A2, A3, A4, A5, A6, A7, A8

#define ___GLM_FOREACH_1(MACRO, N, A1, A2, A3, A4, A5, A6, A7, A8) GLM_TRIM_##N(MACRO(A1), A2, A3, A4, A5, A6, A7, A8)
#define ___GLM_FOREACH_2(MACRO, N, A1, A2, A3, A4, A5, A6, A7, A8) ___GLM_FOREACH_1(MACRO, N, A1, MACRO(A2), A3, A4, A5, A6, A7, A8)
#define ___GLM_FOREACH_3(MACRO, N, A1, A2, A3, A4, A5, A6, A7, A8) ___GLM_FOREACH_2(MACRO, N, A1, A2, MACRO(A3), A4, A5, A6, A7, A8)
#define ___GLM_FOREACH_4(MACRO, N, A1, A2, A3, A4, A5, A6, A7, A8) ___GLM_FOREACH_3(MACRO, N, A1, A2, A3, MACRO(A4), A5, A6, A7, A8)
#define ___GLM_FOREACH_5(MACRO, N, A1, A2, A3, A4, A5, A6, A7, A8) ___GLM_FOREACH_4(MACRO, N, A1, A2, A3, A4, MACRO(A5), A6, A7, A8)
#define ___GLM_FOREACH_6(MACRO, N, A1, A2, A3, A4, A5, A6, A7, A8) ___GLM_FOREACH_5(MACRO, N, A1, A2, A3, A4, A5, MACRO(A6), A7, A8)
#define ___GLM_FOREACH_7(MACRO, N, A1, A2, A3, A4, A5, A6, A7, A8) ___GLM_FOREACH_6(MACRO, N, A1, A2, A3, A4, A5, A6, MACRO(A7), A8)
#define ___GLM_FOREACH_8(MACRO, N, A1, A2, A3, A4, A5, A6, A7, A8) ___GLM_FOREACH_7(MACRO, N, A1, A2, A3, A4, A5, A6, A7, MACRO(A8))

#define ___GLM_FOREACH(MACRO, A1, A2, A3, A4, A5, A6, A7, A8, N, ...) ___GLM_FOREACH_##N(MACRO, N, A1, A2, A3, A4, A5, A6, A7, A8)
#define GLM_FOREACH(MACRO, ...) ___GLM_FOREACH(MACRO, __VA_ARGS__, 8, 7, 6, 5, 4, 3, 2, 1, 0)

/*
#define ___GLM_CONCAT_0(...)
#define ___GLM_CONCAT_1(A1, ...)                         A1
#define ___GLM_CONCAT_2(A1, A2 ...)                      A1##A2
#define ___GLM_CONCAT_3(A1, A2, A3, ...)                 A1##A2##A3
#define ___GLM_CONCAT_4(A1, A2, A3, A4, ...)             A1##A2##A3##A4
#define ___GLM_CONCAT_5(A1, A2, A3, A4, A5, ...)         A1##A2##A3##A4##A5
#define ___GLM_CONCAT_6(A1, A2, A3, A4, A5, A6, ...)     A1##A2##A3##A4##A5##A6
#define ___GLM_CONCAT_7(A1, A2, A3, A4, A5, A6, A7, ...) A1##A2##A3##A4##A5##A6##A7
#define ___GLM_CONCAT_8(A1, A2, A3, A4, A5, A6, A7, A8)  A1##A2##A3##A4##A5##A6##A7##A8
*/

#define GLM_EVAL(ARG) ARG
#define GLM_PASTE(A, B) A##B

#define ___GLM_CONCAT_0(...)
#define ___GLM_CONCAT_1(A1, ...)                         A1
#define ___GLM_CONCAT_2(A1, A2 ...)                      A1##A2
#define ___GLM_CONCAT_3(A1, A2, A3, ...)                 A1##A2##A3
#define ___GLM_CONCAT_4(A1, A2, A3, A4, ...)             A1##A2##A3##A4
#define ___GLM_CONCAT_5(A1, A2, A3, A4, A5, ...)         A1##A2##A3##A4##A5
#define ___GLM_CONCAT_6(A1, A2, A3, A4, A5, A6, ...)     A1##A2##A3##A4##A5##A6
#define ___GLM_CONCAT_7(A1, A2, A3, A4, A5, A6, A7, ...) A1##A2##A3##A4##A5##A6##A7
#define ___GLM_CONCAT_8(A1, A2, A3, A4, A5, A6, A7, A8)  A1##A2##A3##A4##A5##A6##A7##A8


#define ___GLM_CONCAT(A1, A2, A3, A4, A5, A6, A7, A8, N, ...) ___GLM_CONCAT_##N(A1, A2, A3, A4, A5, A6, A7, A8)
#define GLM_CONCAT(...) ___GLM_CONCAT(__VA_ARGS__, 8, 7, 6, 5, 4, 3, 2, 1, 0)


#define GLM_ARG_QUALIFIER const register
#define GLM_ARG_QUALIFY(ARG) GLM_ARG_QUALIFIER ARG

/*
	NAME -> method name
	T -> return type
	... -> argument types
*/
#define GLM_UNDERSCORE_PREFIX(x) _ ## x
#define GLM_FUNC_NAME(NAME, ...) GLM_CONCAT(NAME, GLM_FOREACH(GLM_UNDERSCORE_PREFIX, __VA_ARGS__))
#define GLM_METHOD_DECL(NAME, T, ...) T GLM_FUNC_QUALIFIER GLM_FUNC_NAME(NAME, T, __VA_ARGS__) (GLM_FOREACH(GLM_ARG_QUALIFY, __VA_ARGS__))


#define GLM_BINARY_OPERATOR_SCALAR_DEF(T, OPERATOR_NAME)\
T GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(OPERATOR_NAME, T, T, T) (const register T x, const register T y) \
{ \
	return x + y; \
}

#define GLM_SCALAR_DEF(T)\
T GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(convert, T, float) (const register float x) \
{ \
	return x; \
} \
T GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(convert, T, double) (const register double x) \
{ \
	return x; \
} \
T GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(convert, T, int) (const register int x) \
{ \
	return x; \
} \
T GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(convert, T, uint) (const register uint x) \
{ \
	return x; \
} \
T GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(convert, T, bool) (const register bool x) \
{ \
	return x; \
} \
GLM_BINARY_OPERATOR_SCALAR_DEF(T, add) \
GLM_BINARY_OPERATOR_SCALAR_DEF(T, sub) \
GLM_BINARY_OPERATOR_SCALAR_DEF(T, mul) \
GLM_BINARY_OPERATOR_SCALAR_DEF(T, div)

GLM_SCALAR_DEF(float)
GLM_SCALAR_DEF(double)
GLM_SCALAR_DEF(int)
GLM_SCALAR_DEF(uint)
GLM_SCALAR_DEF(bool)

typedef union vec(2, float)  float2;
typedef union vec(2, double) double2;
typedef union vec(2, int)    int2;
typedef union vec(2, uint)   uint2;
typedef union vec(2, bool)   bool2;

typedef union vec(3, float)  float3;
typedef union vec(3, double) double3;
typedef union vec(3, int)    int3;
typedef union vec(3, uint)   uint3;
typedef union vec(3, bool)   bool3;

typedef union vec(4, float)  float4;
typedef union vec(4, double) double4;
typedef union vec(4, int)    int4;
typedef union vec(4, uint)   uint4;
typedef union vec(4, bool)   bool4;

#define OPERATOR_add +
#define OPERATOR_sub -
#define OPERATOR_mul *
#define OPERATOR_div /
#define OPERATOR(OPERATOR_NAME) OPERATOR_ ## OPERATOR_NAME


#define GLM_CONVERT_VEC_FUNC_SELECT(L1, T1, L2) \
vec(L2, float):  GLM_FUNC_NAME(convert, vec(L1, T1), vec(L2, float)), \
vec(L2, double): GLM_FUNC_NAME(convert, vec(L1, T1), vec(L2, double)), \
vec(L2, int):    GLM_FUNC_NAME(convert, vec(L1, T1), vec(L2, int)), \
vec(L2, uint):   GLM_FUNC_NAME(convert, vec(L1, T1), vec(L2, uint)), \
vec(L2, bool):   GLM_FUNC_NAME(convert, vec(L1, T1), vec(L2, bool))




#define GLM_BINARY_OPERATOR_VECTOR_FUNC_CASE(L, T, OPERATOR_NAME, _2) \
vec(L, T): \
	_Generic(_2, \
	vec(L, T): & GLM_FUNC_NAME(OPERATOR_NAME, vec(L, T), vec(L, T), vec(L, T)), \
	default:   & GLM_FUNC_NAME(OPERATOR_NAME, vec(L, T), vec(L, T), T))


#define GLM_BINARY_OPERATOR_VECTOR_FUNC_SELECT(L, OPERATOR_NAME, _2) \
GLM_BINARY_OPERATOR_VECTOR_FUNC_CASE(L, float,  OPERATOR_NAME, _2), \
GLM_BINARY_OPERATOR_VECTOR_FUNC_CASE(L, double, OPERATOR_NAME, _2), \
GLM_BINARY_OPERATOR_VECTOR_FUNC_CASE(L, int,    OPERATOR_NAME, _2), \
GLM_BINARY_OPERATOR_VECTOR_FUNC_CASE(L, uint,   OPERATOR_NAME, _2), \
GLM_BINARY_OPERATOR_VECTOR_FUNC_CASE(L, bool,   OPERATOR_NAME, _2)


/*
	Could have operators only be between equivalent vector types.
	Could use variadic functions instead of _Generic logic but that has runtime cost.
	Maybe could adapt _Generic method

*/


#define GLM_GENERIC_BINARY_OPERATOR(OPERATOR_NAME, _1, _2) \
_Generic(_1, \
GLM_BINARY_OPERATOR_VECTOR_FUNC_SELECT(2, OPERATOR_NAME, _2), \
GLM_BINARY_OPERATOR_VECTOR_FUNC_SELECT(3, OPERATOR_NAME, _2), \
GLM_BINARY_OPERATOR_VECTOR_FUNC_SELECT(4, OPERATOR_NAME, _2) \
)(_1, _2)


#define add(_1, _2) GLM_GENERIC_BINARY_OPERATOR(add, _1, _2)
//#define sub(_1, _2) GLM_GENERIC_BINARY_OPERATOR(sub, _1, _2)
#define mul(_1, _2) GLM_GENERIC_BINARY_OPERATOR(mul, _1, _2)
//#define div(_1, _2) GLM_GENERIC_BINARY_OPERATOR(div, _1, _2)


//#define sub(a, b) _Generic(a, vec(2, float): GLM_CONCAT(sub, vec(2, float)) )

/*

#include <assert.h>
#include <stdarg.h>
#include <string.h>

typedef enum glm_type
{
	GLM_TYPE_FLOAT,
	GLM_TYPE_DOUBLE,
	GLM_TYPE_INT,
	GLM_TYPE_UINT,
	GLM_TYPE_BOOL,
	GLM_TYPE_FLOAT1,
	GLM_TYPE_DOUBLE1,
	GLM_TYPE_INT1,
	GLM_TYPE_UINT1,
	GLM_TYPE_BOOL1,
	GLM_TYPE_FLOAT2,
	GLM_TYPE_DOUBLE2,
	GLM_TYPE_INT2,
	GLM_TYPE_UINT2,
	GLM_TYPE_BOOL2,
	GLM_TYPE_FLOAT3,
	GLM_TYPE_DOUBLE3,
	GLM_TYPE_INT3,
	GLM_TYPE_UINT3,
	GLM_TYPE_BOOL3,
	GLM_TYPE_FLOAT4,
	GLM_TYPE_DOUBLE4,
	GLM_TYPE_INT4,
	GLM_TYPE_UINT4,
	GLM_TYPE_BOOL4
} glm_type;

#define GLM_TYPENAME_UPPER_float2 FLOAT2
#define GLM_TYPENAME_UPPER_double2 DOUBLE2
#define GLM_TYPENAME_UPPER_int2 INT2
#define GLM_TYPENAME_UPPER_uint2 UINT2
#define GLM_TYPENAME_UPPER_bool2 BOOL2

#define GLM_TYPENAME_UPPER(TYPENAME)

#define GLM_TYPE_ENUM_(TYPENAME) GLM_TYPE_ ## TYPENAME
#define GLM_TYPE_ENUM(TYPENAME) GLM_TYPE_ENUM (GLM_TYPENAME_UPPER(TYPENAME))


#define GLM_DEFINE_VECTOR_BINARY_OPERATOR_VARIADIC_FUNC(L, T, OPEARTOR_NAME) \
vec(L, T) GLM_FUNC_QUALIFIER \
GLM_CONCAT(OPEARTOR_NAME, format, vec(L, T)) (glm_type types[2], ...) \
{ \
	vec(L, T) dst; \
	va_list args; \
	va_start(args, types); \
	 \
	assert(types[0] == GLM_TYPE_ENUM(vec(L, T)) || types[1] == GLM_TYPE_ENUM(vec(L, T))); \
	 \
	if (types[0] == GLM_TYPE_ENUM(vec(L, T))) \
	{ \
		vec(L, T) _1 = va_arg(args, vec(L, T)); \
		if (types[1] == GLM_TYPE_ENUM(vec(L, T))) \
		{ \
			vec(L, T) _2 = va_arg(args, vec(L, T)); \
			dst = GLM_FUNC_NAME(OPEARTOR_NAME, vec(L, T), vec(L, T), vec(L, T)) (_1, _2); \
		} \
		else if (types[1] == GLM_TYPE_ENUM(T)) \
		{ \
			T _2 = va_arg(args, T); \
			dst = GLM_FUNC_NAME(OPEARTOR_NAME, vec(L, T), vec(L, T), T) (_1, _2); \
		} \
	} \
	else if (types[0] == GLM_TYPE_ENUM(T) && \
		types[1] == GLM_TYPE_ENUM(vec(L, T)) ) \
	{ \
		T         _1 = va_arg(args, T); \
		vec(L, T) _2 = va_arg(args, vec(L, T)); \
		dst = GLM_FUNC_NAME(OPEARTOR_NAME, vec(L, T), T, vec(L, T)) (_1, _2); \
	} \
	 \
	va_end(args); \
	return dst; \
}
*/

typedef unsigned int length_t;
typedef enum
{
    GLM_TYPE_FLOAT,
    GLM_TYPE_VEC1,
    GLM_TYPE_VEC2,
    GLM_TYPE_VEC3,
    GLM_TYPE_VEC4,
    GLM_TYPE_DOUBLE,
    GLM_TYPE_DVEC1,
    GLM_TYPE_DVEC2,
    GLM_TYPE_DVEC3,
    GLM_TYPE_DVEC4,
    GLM_TYPE_INT,
    GLM_TYPE_IVEC1,
    GLM_TYPE_IVEC2,
    GLM_TYPE_IVEC3,
    GLM_TYPE_IVEC4,
    GLM_TYPE_UINT,
    GLM_TYPE_UVEC1,
    GLM_TYPE_UVEC2,
    GLM_TYPE_UVEC3,
    GLM_TYPE_UVEC4,
    GLM_TYPE_BOOL,
    GLM_TYPE_BVEC1,
    GLM_TYPE_BVEC2,
    GLM_TYPE_BVEC3,
    GLM_TYPE_BVEC4
} type_t;

#define GLM_TYPEOF(x) _Generic(x,\
float: GLM_TYPE_FLOAT,\
vec1: GLM_TYPE_VEC1, \
vec2: GLM_TYPE_VEC2, \
vec3: GLM_TYPE_VEC3, \
vec4: GLM_TYPE_VEC4, \
double: GLM_TYPE_DOUBLE, \
dvec1: GLM_TYPE_DVEC1, \
dvec2: GLM_TYPE_DVEC2, \
dvec3: GLM_TYPE_DVEC3, \
dvec4: GLM_TYPE_DVEC4, \
int: GLM_TYPE_INT, \
ivec1: GLM_TYPE_IVEC1, \
ivec2: GLM_TYPE_IVEC2, \
ivec3: GLM_TYPE_IVEC3, \
ivec4: GLM_TYPE_IVEC4, \
uint: GLM_TYPE_UINT, \
uvec1: GLM_TYPE_UVEC1, \
uvec2: GLM_TYPE_UVEC2, \
uvec3: GLM_TYPE_UVEC3, \
uvec4: GLM_TYPE_UVEC4, \
bool: GLM_TYPE_BOOL, \
bvec1: GLM_TYPE_BVEC1, \
bvec2: GLM_TYPE_BVEC2, \
bvec3: GLM_TYPE_BVEC3, \
bvec4: GLM_TYPE_BVEC4 \
)

bool GLM_FUNC_QUALIFIER
IsScalarType (type_t type)
{
    return (type == GLM_TYPE_FLOAT) ||
           (type == GLM_TYPE_DOUBLE) ||
           (type == GLM_TYPE_INT) ||
           (type == GLM_TYPE_UINT) ||
           (type == GLM_TYPE_BOOL);
}

bool GLM_FUNC_QUALIFIER
IsVec1Type (type_t type)
{
    return (type == GLM_TYPE_VEC1)  ||
           (type == GLM_TYPE_DVEC1) ||
           (type == GLM_TYPE_IVEC1) ||
           (type == GLM_TYPE_UVEC1) ||
		   (type == GLM_TYPE_BVEC1);
}

bool GLM_FUNC_QUALIFIER
IsVec2Type (type_t type)
{
    return (type == GLM_TYPE_VEC2)  ||
           (type == GLM_TYPE_DVEC2) ||
           (type == GLM_TYPE_IVEC2) ||
           (type == GLM_TYPE_UVEC2) ||
		   (type == GLM_TYPE_BVEC2);
}

bool GLM_FUNC_QUALIFIER
IsVec3Type (type_t type)
{
    return (type == GLM_TYPE_VEC3)  ||
           (type == GLM_TYPE_DVEC3) ||
           (type == GLM_TYPE_IVEC3) ||
           (type == GLM_TYPE_UVEC3) ||
		   (type == GLM_TYPE_BVEC3);
}

bool GLM_FUNC_QUALIFIER
IsVec4Type (type_t type)
{
    return (type == GLM_TYPE_VEC4)  ||
           (type == GLM_TYPE_DVEC4) ||
           (type == GLM_TYPE_IVEC4) ||
           (type == GLM_TYPE_UVEC4) ||
		   (type == GLM_TYPE_BVEC4);
}

bool GLM_FUNC_QUALIFIER
IsVecLType (length_t L, type_t type)
{
	switch (L)
	{
		case 1: return IsVec1Type(type);
		case 2: return IsVec2Type(type);
		case 3: return IsVec3Type(type);
		case 4: return IsVec4Type(type);
	}
}

#include <stdarg.h>
#include <stdint.h>

#define GLM_DEFINE_VEC_CONSTRUCTOR(L, T)\
vec(L, T) GLM_FUNC_QUALIFIER \
GLM_CONCAT(v,T,L) (uint8_t n, ...) \
{\
    vec(L, T) v = {};\
    type_t type;\
    \
    va_list ap;\
    va_start(ap, n);\
    \
    if (n == 1)\
    {\
        type = va_arg(ap, type_t);\
        if (IsScalarType(type))\
        {\
            float x;\
            switch (t)\
            {\
                case GLM_TYPE_FLOAT:  x = va_arg(ap, float);  break;\
                case GLM_TYPE_DOUBLE: x = va_arg(ap, double); break;\
                case GLM_TYPE_INT:    x = va_arg(ap, int);    break;\
                case GLM_TYPE_UINT:   x = va_arg(ap, uint);   break;\
                case GLM_TYPE_BOOL:   x = va_arg(ap, bool);   break;\
            }\
    		length_t i = 0;\
			while (i < L) v.e[i++] = x;\
        }\
        else if (IsVecLType(L, type))\
        {\
            switch (type)\
            {\
                case  GLM_TYPE_VEC ## L: v = GLM_FUNC_NAME(convert, vec(L, T), vec(L, float)) (va_arg(ap, vec(L, float))) break;\
                case GLM_TYPE_DVEC ## L: v = GLM_FUNC_NAME(convert, vec(L, T), vec(L, double)) (va_arg(ap, vec(L, double))); break;\
                case GLM_TYPE_IVEC ## L: v = GLM_FUNC_NAME(convert, vec(L, T), vec(L, int)) (va_arg(ap, vec(L, int))); break;\
				case GLM_TYPE_UVEC ## L: v = GLM_FUNC_NAME(convert, vec(L, T), vec(L, uint)) (va_arg(ap, vec(L, uint))); break;\
				case GLM_TYPE_BVEC ## L: v = GLM_FUNC_NAME(convert, vec(L, T), vec(L, bool)) (va_arg(ap, vec(L, bool))); break;\
            }\
		}\
    }\
	\
    va_end(ap);\
    return v;\
}

#endif /* GLM_DETAIL_QUALIFIER_H */
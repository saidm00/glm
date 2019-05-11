#ifndef GLM_DETAIL_TYPE_VEC2_H
#define GLM_DETAIL_TYPE_VEC2_H

#include "qualifier.h"

#define GLM_TVEC2_DECL(T)\
vec(2, T) GLM_FUNC_QUALIFIER \
T##2_0(void), \
T##2_1(const register T), \
T##2_2(const register vec(2, T)), \
T##2_3(const register T, const register T);

float sqrt_float(float x)
{
	return sqrtf(x);
}

double sqrt_double(double x)
{
	return sqrt(x);
}

int sqrt_int(int x)
{
	return sqrtl(x);
}

uint sqrt_uint(uint x)
{
	return sqrtl(x);
}

bool sqrt_bool(bool x)
{
	return sqrtl(x);
}

#define GLM_TVEC2_DEF(T)\
vec(2, T) GLM_FUNC_QUALIFIER \
T##2_0(void)\
{\
	vec(2, T) dst;\
	dst.e[0] = (T)0;\
	dst.e[1] = (T)0;\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER \
T##2_1(const register T s)\
{\
	vec(2, T) dst;\
	dst.e[0] = s;\
	dst.e[1] = s;\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER \
T##2_2(const register vec(2, T) v)\
{\
	vec(2, T) dst;\
	dst.e[0] = v.e[0];\
	dst.e[1] = v.e[1];\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER \
T##2_3(const register T x, const register T y)\
{\
	vec(2, T) dst;\
	dst.e[0] = x;\
	dst.e[1] = y;\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(vadd, 2, T) (const register vec(2, T) a, const register vec(2, T) b)\
{\
	register vec(2, T) dst;\
	dst.e[0] = a.e[0] + b.e[0];\
	dst.e[1] = a.e[1] + b.e[1];\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(vsub, 2, T) (const register vec(2, T) a, const register vec(2, T) b)\
{\
	register vec(2, T) dst;\
	dst.e[0] = a.e[0] - b.e[0];\
	dst.e[1] = a.e[1] - b.e[1];\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(vmul, 2, T) (const register vec(2, T) a, const register vec(2, T) b)\
{\
	register vec(2, T) dst;\
	dst.e[0] = a.e[0] * b.e[0];\
	dst.e[1] = a.e[1] * b.e[1];\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(vdiv, 2, T) (const register vec(2, T) a, const register vec(2, T) b)\
{\
	register vec(2, T) dst;\
	dst.e[0] = a.e[0] / b.e[0];\
	dst.e[1] = a.e[1] / b.e[1];\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(sqrt, 2, T) (const register vec(2, T) x)\
{\
	register vec(2, T) dst;\
	dst.e[0] = sqrt_##T(x.e[0]);\
	dst.e[1] = sqrt_##T(x.e[1]);\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(rsqrt, 2, T) (const register vec(2, T) x)\
{\
	register vec(2, T) dst;\
	dst.e[0] = ((T)1)/sqrt_##T(x.e[0]);\
	dst.e[1] = ((T)1)/sqrt_##T(x.e[1]);\
	return dst;\
}\
T GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(length, 2, T) (const register vec(2, T) x)\
{\
	return sqrt_##T(x.x*x.x + x.y*x.y);\
}

/*
#define GLM_CAST_FUNC_NAME(L, T, U) cast_##T##L##_##U##L

#define ___GLM_DECL_cast(L, T, U) vec(L, T) GLM_FUNC_QUALIFIER GLM_CAST_FUNC_NAME(L, T, U) (const register vec(L, U));

#define ___GLM_DEF_cast(T, U)\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_CAST_FUNC_NAME(2, T, U) (const register vec(2, U) v)\
{\
	return vec(2, T)((T)v.x, (T)v.y);\
}
#define ___GLM_1ARG_FUNC_DECL(PREFIX, T, P) T GLM_FUNC_QUALIFIER PREFIX##_##T (P);

#define ___GLM_CAST_DECL(P1, P2) P1 GLM_FUNC_QUALIFIER cast##_##P1##_##P2 (P2);

#define ___GLMDECL_FLOATL_CASTS(L)

#define GLM_CAST_DECL(P1, P2) ___GLM_CAST_DECL(P1, P2)
*/

#define GLM_GENERIC_VEC_CAST_CASE(L, T1, T2) vec(L, T2): GLM_METHOD_NAME(cast, vec(L, T1), vec(L, T2))


#define GLM_ASSOCIATION_LIST_VECTOR_cast_float(L)\
                GLM_GENERIC_VEC_CAST_CASE(L, float, double), \
                GLM_GENERIC_VEC_CAST_CASE(L, float, int), \
                GLM_GENERIC_VEC_CAST_CASE(L, float, uint), \
                GLM_GENERIC_VEC_CAST_CASE(L, float, bool)

#define GLM_ASSOCIATION_LIST_VECTOR_cast_double(L)\
                GLM_GENERIC_VEC_CAST_CASE(L, double, float), \
                GLM_GENERIC_VEC_CAST_CASE(L, double, int), \
                GLM_GENERIC_VEC_CAST_CASE(L, double, uint), \
                GLM_GENERIC_VEC_CAST_CASE(L, double, bool)

#define GLM_ASSOCIATION_LIST_VECTOR_cast_int(L)\
                GLM_GENERIC_VEC_CAST_CASE(L, int, float), \
                GLM_GENERIC_VEC_CAST_CASE(L, int, double), \
                GLM_GENERIC_VEC_CAST_CASE(L, int, uint), \
                GLM_GENERIC_VEC_CAST_CASE(L, int, bool)

#define GLM_ASSOCIATION_LIST_VECTOR_cast_uint(L)\
                GLM_GENERIC_VEC_CAST_CASE(L, uint, float), \
                GLM_GENERIC_VEC_CAST_CASE(L, uint, double), \
                GLM_GENERIC_VEC_CAST_CASE(L, uint, int), \
                GLM_GENERIC_VEC_CAST_CASE(L, uint, bool)

#define GLM_ASSOCIATION_LIST_VECTOR_cast_bool(L)\
                GLM_GENERIC_VEC_CAST_CASE(L, bool, float), \
                GLM_GENERIC_VEC_CAST_CASE(L, bool, double), \
                GLM_GENERIC_VEC_CAST_CASE(L, bool, int), \
                GLM_GENERIC_VEC_CAST_CASE(L, bool, uint)

#define GLM_ASSOCIATION_LIST_SCALAR(x) float: x, double: x, int: x, uint: x, bool: x

#define GLM_ASSOCIATION_LIST_VECTOR_SELECT(NAME, L, T) GLM_ASSOCIATION_LIST_VECTOR_##NAME##_##T(L)

#define GLM_GENERIC_FUNC(NAME, L, T, ARG) _Generic(ARG, GLM_ASSOCIATION_LIST_VECTOR_SELECT(NAME, L, T))

/*
	int2 x = cast_vec(2, int, y);
*/
#define cast_vec(L, T, ARG) GLM_GENERIC_FUNC(cast, L, T, ARG)(ARG)

#define tvec2(T) vec(2, T)

#define tvec2_0(T, ...) T##2_1()
#define tvec2_1(T, a, ...) _Generic( a, default: T##2_1, vec(2, T): T##2_2, GLM_ASSOCIATION_LIST_VECTOR_SELECT(cast, 2, T))(a)
#define tvec2_2(T, x, y) T##2_3(x, y)

#define tvec2__(T, a1, a2, N, ...) tvec2_##N(T, a1, a2)
#define tvec2_(T, ...) tvec2__(T, __VA_ARGS__, 2, 1, 0)

#define GLM_TVEC2_CAST_DEF(T1, T2)\
vec(2, T1) GLM_FUNC_QUALIFIER \
GLM_METHOD_NAME(cast, vec(2, T1), vec(2, T2)) (GLM_ARG_QUALIFIER vec(2, T2) src)\
{\
	vec(2, T1) dst;\
	dst.e[0] = (T1)src.e[0];\
	dst.e[1] = (T1)src.e[1];\
	return dst;\
}

GLM_VEC_DECL(2, float)
GLM_VEC_DECL(2, double)
GLM_VEC_DECL(2, int)
GLM_VEC_DECL(2, uint)
GLM_VEC_DECL(2, bool)

GLM_TVEC2_DECL(float)
GLM_TVEC2_DECL(double)
GLM_TVEC2_DECL(int)
GLM_TVEC2_DECL(uint)
GLM_TVEC2_DECL(bool)

#include "type_vec2.inl"

#endif /* GLM_DETAIL_TYPE_VEC2_H */
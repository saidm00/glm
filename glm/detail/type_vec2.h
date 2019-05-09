#ifndef GLM_DETAIL_TYPE_VEC2_H
#define GLM_DETAIL_TYPE_VEC2_H

#include "qualifier.h"

#define GLM_DECLARE_TVEC2_CONSTRUCTORS(T)\
vec(2, T) GLM_FUNC_QUALIFIER T##2_1(void), T##2_2(const register T), T##2_3(const register T, const register T);

#define GLM_DEFINE_TVEC2_CONSTRUCTORS(T)\
vec(2, T) GLM_FUNC_QUALIFIER T##2_1(void)\
{\
	vec(2, T) dst;\
	dst.e[0] = (T)0;\
	dst.e[1] = (T)0;\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER T##2_2(const register T s)\
{\
	vec(2, T) dst;\
	dst.e[0] = s;\
	dst.e[1] = s;\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER T##2_3(const register T x, const register T y)\
{\
	vec(2, T) dst;\
	dst.e[0] = x;\
	dst.e[1] = y;\
	return dst;\
}

#define GLM_DEFINE_TVEC2(T)\
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
	dst.e[0] = sqrt(x.e[0]);\
	dst.e[1] = sqrt(x.e[1]);\
	return dst;\
}\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(rsqrt, 2, T) (const register vec(2, T) x)\
{\
	register vec(2, T) dst;\
	dst.e[0] = ((T)1)/sqrt(x.e[0]);\
	dst.e[1] = ((T)1)/sqrt(x.e[1]);\
	return dst;\
}\
T GLM_FUNC_QUALIFIER \
GLM_FUNCNAME(length, 2, T) (const register vec(2, T) x)\
{\
	return sqrt(x.x*x.x + x.y*x.y);\
}

#define tvec2(T) vec(2, T)

#define tvec2_0(T, ...) T##2_1()
#define tvec2_1(T, s, ...) T##2_2(s)
#define tvec2_2(T, x, y) T##2_3(x, y)

#define tvec2__(T, a1, a2, N, ...) tvec2_##N(T, a1, a2)
#define tvec2_(T, ...) tvec2__(T, __VA_ARGS__, 2, 1, 0)


/*
#define double2(...) tvec2_(double, __VA_ARGS__)
#define int2(...) tvec2_(int, __VA_ARGS__)
#define uint2(...) tvec2_(uint, __VA_ARGS__)
#define bool2(...) tvec2_(bool, __VA_ARGS__)

#define dvec2 double2
#define ivec2 int2
#define uvec2 uint2
#define bvec2 bool2
*/

#include "type_vec2.inl"

#endif /* GLM_DETAIL_TYPE_VEC2_H */
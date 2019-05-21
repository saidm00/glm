#ifndef GLM_DETAIL_TYPE_VEC2_H
#define GLM_DETAIL_TYPE_VEC2_H

#include "qualifier.h"
#include "type_vec3.h"
#include "type_vec4.h"

#define GLM_TEMPLATE_CREATE_TVEC2_DECL(T, L)\
GLM_FUNC_NAME(create, vec(2, T), vec(L, float)) (const register vec(L, float)), \
GLM_FUNC_NAME(create, vec(2, T), vec(L, double)) (const register vec(L, double)), \
GLM_FUNC_NAME(create, vec(2, T), vec(L, int)) (const register vec(L, int)), \
GLM_FUNC_NAME(create, vec(2, T), vec(L, uint)) (const register vec(L, uint)), \
GLM_FUNC_NAME(create, vec(2, T), vec(L, bool)) (const register vec(L, bool))

#define GLM_TEMPLATE_CREATE_TVEC2_DEF1(A, L, B) \
vec(2, A) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(2, A), vec(L, B)) (const register vec(L, B) v) \
{ \
	vec(2, A) dst; \
	dst.e[0] = (A)v.e[0]; \
	dst.e[1] = (A)v.e[1]; \
	return dst; \
}

#define GLM_TEMPLATE_CREATE_TVEC2_DEF5(A, L)\
GLM_TEMPLATE_CREATE_TVEC2_DEF1(A, L, float) \
GLM_TEMPLATE_CREATE_TVEC2_DEF1(A, L, double) \
GLM_TEMPLATE_CREATE_TVEC2_DEF1(A, L, int) \
GLM_TEMPLATE_CREATE_TVEC2_DEF1(A, L, uint) \
GLM_TEMPLATE_CREATE_TVEC2_DEF1(A, L, bool)

#define GLM_TEMPLATE_CREATE_TVEC2_DEF(T) \
GLM_TEMPLATE_CREATE_TVEC2_DEF5(T, 2) \
GLM_TEMPLATE_CREATE_TVEC2_DEF5(T, 3) \
GLM_TEMPLATE_CREATE_TVEC2_DEF5(T, 4)


/*
template <typename A, typename B>
vec<2, A>(vec<2, B>);

template <typename A, typename B>
vec<2, A>(vec<3, B>);

template <typename A, typename B>
vec<2, A>(vec<4, B>);
*/
#define GLM_TVEC2_DECL(T)\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(2, T), void) (void), \
GLM_FUNC_NAME(create, vec(2, T), T) (const register T), \
GLM_TEMPLATE_CREATE_TVEC2_DECL(T, 2), \
GLM_TEMPLATE_CREATE_TVEC2_DECL(T, 3), \
GLM_TEMPLATE_CREATE_TVEC2_DECL(T, 4), \
GLM_FUNC_NAME(create, vec(2, T), T, T) (const register T, const register T);

GLM_TVEC2_DECL(float)
GLM_TVEC2_DECL(double)
GLM_TVEC2_DECL(int)
GLM_TVEC2_DECL(uint)
GLM_TVEC2_DECL(bool)

#define GLM_TVEC2_DEF(T)\
vec(2, T) GLM_FUNC_QUALIFIER GLM_FUNC_NAME(create, vec(2, T), void) (void)\
{\
	return (vec(2, T)){};\
}\
vec(2, T) GLM_FUNC_QUALIFIER GLM_FUNC_NAME(create, vec(2, T), T) (const register T s)\
{\
	return (vec(2, T)){s, s};\
}\
GLM_TEMPLATE_CREATE_TVEC2_DEF(T)\
vec(2, T) GLM_FUNC_QUALIFIER GLM_FUNC_NAME(create, vec(2, T), T, T) (const register T x, const register T y)\
{\
	return (vec(2, T)){x, y};\
}

/*
	int3 -> float2
	either you int3 -> float3 and then access xy member
	or you access xy member, then cast int2 -> float2

	second one is more economic
*/

#define _create_tvec2_0(T, ...) GLM_FUNC_NAME(create, vec(2, T), void) ()

#define GLM_GENERIC_TVEC2(L, T)\
vec(L, float): GLM_FUNC_NAME(create, vec(2, T), vec(L, float)), \
vec(L, double): GLM_FUNC_NAME(create, vec(2, T), vec(L, double)), \
vec(L, int): GLM_FUNC_NAME(create, vec(2, T), vec(L, int)), \
vec(L, uint): GLM_FUNC_NAME(create, vec(2, T), vec(L, uint)), \
vec(L, bool): GLM_FUNC_NAME(create, vec(2, T), vec(L, bool))

#define _create_tvec2_1(T, a, ...) _Generic(a, default: GLM_FUNC_NAME(create, vec(2, T), T), GLM_GENERIC_TVEC2(2, T), GLM_GENERIC_TVEC2(3, T), GLM_GENERIC_TVEC2(4, T))(a)

#define _create_tvec2_2(T, x, y) GLM_FUNC_NAME(create, vec(2, T), T, T) (x, y)

#define tvec2(T) vec(2, T)
#define _create_tvec2(T, a1, a2, N, ...) _create_tvec2_##N(T, a1, a2)
#define _tvec2(T, ...) _create_tvec2(T, __VA_ARGS__, 2, 1, 0)

#include "type_vec2.inl"

#endif /* GLM_DETAIL_TYPE_VEC2_H */
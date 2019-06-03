#ifndef GLM_DETAIL_TYPE_VEC3_H
#define GLM_DETAIL_TYPE_VEC3_H

#include "qualifier.h"
#include "type_vec2.h"
#include "type_vec4.h"

#define GLM_TVEC3_DECL(T)\
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(3, T), void)         (void), \
GLM_FUNC_NAME(create, vec(3, T), T)            (const register T), \
GLM_FUNC_NAME(create, vec(3, T), vec(3, T))    (const register vec(3, T)), \
GLM_FUNC_NAME(create, vec(3, T), vec(4, T))    (const register vec(4, T)), \
GLM_FUNC_NAME(create, vec(3, T), vec(2, T), T) (const register vec(2, T), const register T), \
GLM_FUNC_NAME(create, vec(3, T), T, vec(2, T)) (const register T, const register vec(2, T)), \
GLM_FUNC_NAME(create, vec(3, T), T, T, T)      (const register T, const register T, const register T);

GLM_VEC_DECL(3, float)
GLM_VEC_DECL(3, double)
GLM_VEC_DECL(3, int)
GLM_VEC_DECL(3, uint)
GLM_VEC_DECL(3, bool)

GLM_TVEC3_DECL(float)
GLM_TVEC3_DECL(double)
GLM_TVEC3_DECL(int)
GLM_TVEC3_DECL(uint)
GLM_TVEC3_DECL(bool)



#define GLM_TVEC3_BINARY_OPERATOR_FUNCS_DEF(T, OPERATOR_NAME)\
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(OPERATOR_NAME, vec(3, T), vec(3, T), vec(3, T)) (const register vec(3, T) a, const register vec(3, T) b) \
{ \
	vec(3, T) dst; \
	dst.e[0] = a.e[0] OPERATOR(OPERATOR_NAME) b.e[0]; \
	dst.e[1] = a.e[1] OPERATOR(OPERATOR_NAME) b.e[1]; \
	dst.e[2] = a.e[2] OPERATOR(OPERATOR_NAME) b.e[2]; \
	return dst; \
} \
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(OPERATOR_NAME, vec(3, T), vec(3, T), T) (const register vec(3, T) a, const register T b) \
{ \
	vec(3, T) dst; \
	dst.e[0] = a.e[0] OPERATOR(OPERATOR_NAME) b; \
	dst.e[1] = a.e[1] OPERATOR(OPERATOR_NAME) b; \
	dst.e[2] = a.e[2] OPERATOR(OPERATOR_NAME) b; \
	return dst; \
} \
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(OPERATOR_NAME, vec(3, T), T, vec(3, T)) (const register T a, const register vec(3, T) b) \
{ \
	vec(3, T) dst; \
	dst.e[0] = a OPERATOR(OPERATOR_NAME) b.e[0]; \
	dst.e[1] = a OPERATOR(OPERATOR_NAME) b.e[1]; \
	dst.e[2] = a OPERATOR(OPERATOR_NAME) b.e[2]; \
	return dst; \
}

#define GLM_TVEC3_CONVERT_FUNC_DEF(TYPE1, TYPE2)\
vec(3, TYPE1) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(convert, vec(3, TYPE1), vec(3, TYPE2))  (const register vec(3, TYPE2) src) \
{ \
	vec(3, TYPE1) dst; \
	dst.e[0] = (TYPE1) src.e[0]; \
	dst.e[1] = (TYPE1) src.e[1]; \
	dst.e[2] = (TYPE1) src.e[2]; \
	return dst; \
}



#define GLM_TVEC3_DEF(T)\
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(3, T), void) (void) \
{ \
	return (vec(3,T)){}; \
} \
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(3, T), T) (const register T s) \
{ \
	return (vec(3, T)) {s, s}; \
} \
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(3, T), vec(3, T)) (const register vec(3, T) v) \
{ \
	return v; \
} \
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(3, T), vec(4, T)) (const register vec(4, T) v) \
{ \
	vec(3, T) dst; \
	dst.e[0] = v.e[0]; \
	dst.e[1] = v.e[1]; \
	dst.e[2] = v.e[2]; \
	return dst; \
} \
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(3, T), vec(2, T), T) (const register vec(2, T) e01, const register T e2) \
{ \
	vec(3, T) dst; \
	dst.e[0] = e01.e[0]; \
	dst.e[1] = e01.e[1]; \
	dst.e[2] = e2; \
	return dst; \
} \
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(3, T), T, vec(2, T)) (const register T e0, const register vec(2, T) e12) \
{ \
	vec(3, T) dst; \
	dst.e[0] = e0; \
	dst.e[1] = e12.e[0]; \
	dst.e[2] = e12.e[1]; \
	return dst; \
} \
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(3, T), T, T, T) (const register T e0, const register T e1, const register T e2) \
{ \
	vec(3, T) dst; \
	dst.e[0] = e0; \
	dst.e[1] = e1; \
	dst.e[2] = e2; \
	return dst; \
} \
GLM_TVEC3_CONVERT_FUNC_DEF(T, float) \
GLM_TVEC3_CONVERT_FUNC_DEF(T, double) \
GLM_TVEC3_CONVERT_FUNC_DEF(T, uint) \
GLM_TVEC3_CONVERT_FUNC_DEF(T, int) \
GLM_TVEC3_CONVERT_FUNC_DEF(T, bool) \
GLM_TVEC3_BINARY_OPERATOR_FUNCS_DEF(T, add) \
GLM_TVEC3_BINARY_OPERATOR_FUNCS_DEF(T, sub) \
GLM_TVEC3_BINARY_OPERATOR_FUNCS_DEF(T, mul) \
GLM_TVEC3_BINARY_OPERATOR_FUNCS_DEF(T, div)



#define GLM_CREATE_TVEC3_FUNC_SELECT1(L, T)\
vec(L, float):  GLM_FUNC_NAME(create, vec(3, T), vec(L, T)), \
vec(L, double): GLM_FUNC_NAME(create, vec(3, T), vec(L, T)), \
vec(L, int):    GLM_FUNC_NAME(create, vec(3, T), vec(L, T)), \
vec(L, uint):   GLM_FUNC_NAME(create, vec(3, T), vec(L, T)), \
vec(L, bool):   GLM_FUNC_NAME(create, vec(3, T), vec(L, T))

#define GLM_CREATE_TVEC3_FUNC_SELECT2(T)\
vec(2, float):  GLM_FUNC_NAME(create, vec(3, T), vec(2, T), T), \
vec(2, double): GLM_FUNC_NAME(create, vec(3, T), vec(2, T), T), \
vec(2, int):    GLM_FUNC_NAME(create, vec(3, T), vec(2, T), T), \
vec(2, uint):   GLM_FUNC_NAME(create, vec(3, T), vec(2, T), T), \
vec(2, bool):   GLM_FUNC_NAME(create, vec(3, T), vec(2, T), T)




#define _create_tvec3_0(T, ...) GLM_FUNC_NAME(create, vec(3, T), void) ()

#define _create_tvec3_1(T, a, ...)\
_Generic(a, \
float:  GLM_FUNC_NAME(create, vec(3, T), T), \
double: GLM_FUNC_NAME(create, vec(3, T), T), \
int:    GLM_FUNC_NAME(create, vec(3, T), T), \
uint:   GLM_FUNC_NAME(create, vec(3, T), T), \
bool:   GLM_FUNC_NAME(create, vec(3, T), T), \
GLM_CREATE_TVEC3_FUNC_SELECT1(3, T), \
GLM_CREATE_TVEC3_FUNC_SELECT1(4, T) \
)(_Generic(a, \
GLM_CONVERT_VEC_FUNC_SELECT(,T,), \
GLM_CONVERT_VEC_FUNC_SELECT(3, T, 3), \
GLM_CONVERT_VEC_FUNC_SELECT(4, T, 4) \
)(a))

#define _create_tvec3_2(T, a1, a2, ...)\
_Generic(a1, \
float:  GLM_FUNC_NAME(create, vec(3, T), T, vec(2, T)), \
double: GLM_FUNC_NAME(create, vec(3, T), T, vec(2, T)), \
int:    GLM_FUNC_NAME(create, vec(3, T), T, vec(2, T)), \
uint:   GLM_FUNC_NAME(create, vec(3, T), T, vec(2, T)), \
bool:   GLM_FUNC_NAME(create, vec(3, T), T, vec(2, T)), \
GLM_CREATE_TVEC3_FUNC_SELECT2(T) \
)( \
_Generic(a1, GLM_CONVERT_VEC_FUNC_SELECT(,T,), GLM_CONVERT_VEC_FUNC_SELECT(2, T, 2))(a1), \
_Generic(a2, GLM_CONVERT_VEC_FUNC_SELECT(,T,), GLM_CONVERT_VEC_FUNC_SELECT(2, T, 2))(a2) \
)

#define _create_tvec3_3(T, x, y, z) GLM_FUNC_NAME(create, vec(3, T), T, T, T)(x, y, z) 

#define _create_tvec3(T, a1, a2, a3, N, ...) _create_tvec3_##N(T, a1, a2, a3)



#define tvec3(T) vec(3, T)
#define _tvec3(T, ...) _create_tvec3(T, __VA_ARGS__, 3, 2, 1, 0)

#include "type_vec3.inl"

#endif /* GLM_DETAIL_TYPE_VEC3_H */
#ifndef GLM_DETAIL_TYPE_VEC4_H
#define GLM_DETAIL_TYPE_VEC4_H

#include "qualifier.h"
#include "type_vec2.h"
#include "type_vec3.h"

#define GLM_TVEC4_DECL(T)\
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(4, T), void)               (void), \
GLM_FUNC_NAME(create, vec(4, T), T)                  (const register T), \
GLM_FUNC_NAME(create, vec(4, T), vec(4, T))          (const register vec(4, T)), \
GLM_FUNC_NAME(create, vec(4, T), vec(3, T), T)       (const register vec(3, T), const register T), \
GLM_FUNC_NAME(create, vec(4, T), T, vec(3, T))       (const register T, const register vec(3, T)), \
GLM_FUNC_NAME(create, vec(4, T), T, vec(2, T), T, T) (const register vec(2, T), const register T, const register T), \
GLM_FUNC_NAME(create, vec(4, T), T, T, vec(2, T), T) (const register T, const register vec(2, T), const register T), \
GLM_FUNC_NAME(create, vec(4, T), T, T, T, vec(2, T)) (const register T, const register T, const register vec(2, T)), \
GLM_FUNC_NAME(create, vec(4, T), T, T, T, T)         (const register T, const register T, const register T, const register T);

GLM_VEC_DECL(4, float)
GLM_VEC_DECL(4, double)
GLM_VEC_DECL(4, int)
GLM_VEC_DECL(4, uint)
GLM_VEC_DECL(4, bool)

GLM_TVEC4_DECL(float)
GLM_TVEC4_DECL(double)
GLM_TVEC4_DECL(int)
GLM_TVEC4_DECL(uint)
GLM_TVEC4_DECL(bool)


#define GLM_TVEC4_BINARY_OPERATOR_FUNCS_DEF(T, OPERATOR_NAME)\
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(OPERATOR_NAME, vec(4, T), vec(4, T), vec(4, T)) (const register vec(4, T) a, const register vec(4, T) b) \
{ \
	vec(4, T) dst; \
	dst.e[0] = a.e[0] OPERATOR(OPERATOR_NAME) b.e[0]; \
	dst.e[1] = a.e[1] OPERATOR(OPERATOR_NAME) b.e[1]; \
	dst.e[2] = a.e[2] OPERATOR(OPERATOR_NAME) b.e[2]; \
	dst.e[3] = a.e[3] OPERATOR(OPERATOR_NAME) b.e[3]; \
	return dst; \
} \
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(OPERATOR_NAME, vec(4, T), vec(4, T), T) (const register vec(4, T) a, const register T b) \
{ \
	vec(4, T) dst; \
	dst.e[0] = a.e[0] OPERATOR(OPERATOR_NAME) b; \
	dst.e[1] = a.e[1] OPERATOR(OPERATOR_NAME) b; \
	dst.e[2] = a.e[2] OPERATOR(OPERATOR_NAME) b; \
	dst.e[3] = a.e[3] OPERATOR(OPERATOR_NAME) b; \
	return dst; \
} \
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(OPERATOR_NAME, vec(4, T), T, vec(4, T)) (const register T a, const register vec(4, T) b) \
{ \
	vec(4, T) dst; \
	dst.e[0] = a OPERATOR(OPERATOR_NAME) b.e[0]; \
	dst.e[1] = a OPERATOR(OPERATOR_NAME) b.e[1]; \
	dst.e[2] = a OPERATOR(OPERATOR_NAME) b.e[2]; \
	dst.e[3] = a OPERATOR(OPERATOR_NAME) b.e[3]; \
	return dst; \
}

#define GLM_TVEC4_CONVERT_FUNC_DEF(TYPE1, TYPE2)\
vec(4, TYPE1) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(convert, vec(4, TYPE1), vec(4, TYPE2))  (const register vec(4, TYPE2) src) \
{ \
	vec(4, TYPE1) dst; \
	dst.e[0] = (TYPE1) src.e[0]; \
	dst.e[1] = (TYPE1) src.e[1]; \
	dst.e[2] = (TYPE1) src.e[2]; \
	dst.e[3] = (TYPE1) src.e[3]; \
	return dst; \
}


#define GLM_TVEC4_DEF(T)\
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(4, T), void) (void) \
{ \
	vec(4, T) dst; \
	return dst; \
} \
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(4, T), T) (const register T s) \
{ \
	vec(4, T) dst; \
	dst.e[0] = s; \
	dst.e[1] = s; \
	dst.e[2] = s; \
	dst.e[3] = s; \
	return dst; \
} \
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(4, T), vec(4, T)) (const register vec(4, T) v) \
{ \
	return v; \
} \
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(4, T), vec(3, T), T) (const register vec(3, T) e012, const register T e3) \
{ \
	vec(4, T) dst; \
	dst.e[0] = e012.e[0]; \
	dst.e[1] = e012.e[1]; \
	dst.e[2] = e012.e[2]; \
	dst.e[3] = e3; \
	return dst; \
} \
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(4, T), T, vec(3, T)) (const register T e0, const register vec(3, T) e123) \
{ \
	vec(4, T) dst; \
	dst.e[0] = e0; \
	dst.e[1] = e123.e[0]; \
	dst.e[2] = e123.e[1]; \
	dst.e[3] = e123.e[2]; \
	return dst; \
} \
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(4, T), T, vec(2, T), T, T) (const register vec(2, T) e01, const register T e2, const register T e3) \
{ \
	vec(4, T) dst; \
	dst.e[0] = e01.e[0]; \
	dst.e[1] = e01.e[1]; \
	dst.e[2] = e2; \
	dst.e[3] = e3; \
	return dst; \
} \
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(4, T), T, T, vec(2, T), T) (const register T e0, const register vec(2, T) e12, const register T e3) \
{ \
	vec(4, T) dst; \
	dst.e[0] = e0; \
	dst.e[1] = e12.e[0]; \
	dst.e[2] = e12.e[1]; \
	dst.e[3] = e3; \
	return dst; \
} \
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(4, T), T, T, T, vec(2, T)) (const register T e0, const register T e1, const register vec(2, T) e23) \
{ \
	vec(4, T) dst; \
	dst.e[0] = e0; \
	dst.e[1] = e1; \
	dst.e[2] = e23.e[0]; \
	dst.e[3] = e23.e[1]; \
	return dst; \
} \
vec(4, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(4, T), T, T, T, T) (const register T e0, const register T e1, const register T e2, const register T e3) \
{ \
	vec(4, T) dst; \
	dst.e[0] = e0; \
	dst.e[1] = e1; \
	dst.e[2] = e2; \
	dst.e[3] = e3; \
	return dst; \
} \
GLM_TVEC4_CONVERT_FUNC_DEF(T, float) \
GLM_TVEC4_CONVERT_FUNC_DEF(T, double) \
GLM_TVEC4_CONVERT_FUNC_DEF(T, uint) \
GLM_TVEC4_CONVERT_FUNC_DEF(T, int) \
GLM_TVEC4_CONVERT_FUNC_DEF(T, bool) \
GLM_TVEC4_BINARY_OPERATOR_FUNCS_DEF(T, add) \
GLM_TVEC4_BINARY_OPERATOR_FUNCS_DEF(T, sub) \
GLM_TVEC4_BINARY_OPERATOR_FUNCS_DEF(T, mul) \
GLM_TVEC4_BINARY_OPERATOR_FUNCS_DEF(T, div)

#define GLM_CREATE_TVEC4_FUNC_SELECT1(L, T)\
vec(L, float):  GLM_FUNC_NAME(create, vec(4, T), vec(L, T)), \
vec(L, double): GLM_FUNC_NAME(create, vec(4, T), vec(L, T)), \
vec(L, int):    GLM_FUNC_NAME(create, vec(4, T), vec(L, T)), \
vec(L, uint):   GLM_FUNC_NAME(create, vec(4, T), vec(L, T)), \
vec(L, bool):   GLM_FUNC_NAME(create, vec(4, T), vec(L, T))

#define GLM_CREATE_TVEC4_FUNC_SELECT2(T)\
vec(3, float):  GLM_FUNC_NAME(create, vec(4, T), vec(3, T), T), \
vec(3, double): GLM_FUNC_NAME(create, vec(4, T), vec(3, T), T), \
vec(3, int):    GLM_FUNC_NAME(create, vec(4, T), vec(3, T), T), \
vec(3, uint):   GLM_FUNC_NAME(create, vec(4, T), vec(3, T), T), \
vec(3, bool):   GLM_FUNC_NAME(create, vec(4, T), vec(3, T), T)

#define _create_tvec4_0(T, ...) GLM_FUNC_NAME(create, vec(4, T), void)()

//#define _create_tvec4_1(T, a, ...) v##T##4 ( 1, GLM_TYPEOF(a), a )


#define _create_tvec4_1(T, a, ...) \
_Generic(a, \
float:  GLM_FUNC_NAME(create, vec(4, T), T), \
double: GLM_FUNC_NAME(create, vec(4, T), T), \
int:    GLM_FUNC_NAME(create, vec(4, T), T), \
uint:   GLM_FUNC_NAME(create, vec(4, T), T), \
bool:   GLM_FUNC_NAME(create, vec(4, T), T), \
GLM_CREATE_TVEC4_FUNC_SELECT1(4, T) \
)(_Generic(a, \
GLM_CONVERT_VEC_FUNC_SELECT(,T,), \
GLM_CONVERT_VEC_FUNC_SELECT(4, T, 4) \
)(a))


#define _create_tvec4_2(T, a1, a2, ...)\
_Generic(a1, \
float:  GLM_FUNC_NAME(create, vec(4, T), T, vec(3, T)), \
double: GLM_FUNC_NAME(create, vec(4, T), T, vec(3, T)), \
int:    GLM_FUNC_NAME(create, vec(4, T), T, vec(3, T)), \
uint:   GLM_FUNC_NAME(create, vec(4, T), T, vec(3, T)), \
bool:   GLM_FUNC_NAME(create, vec(4, T), T, vec(3, T)), \
GLM_CREATE_TVEC4_FUNC_SELECT2(T) \
)( \
_Generic(a1, GLM_CONVERT_VEC_FUNC_SELECT(,T,), GLM_CONVERT_VEC_FUNC_SELECT(3, T, 3))(a1), \
_Generic(a2, GLM_CONVERT_VEC_FUNC_SELECT(,T,), GLM_CONVERT_VEC_FUNC_SELECT(3, T, 3))(a2) \
)

#define _create_tvec4_3(T, a1, a2, a3, ...)

#define _create_tvec4_4(T, x, y, z, w) GLM_FUNC_NAME(create, vec(4, T), T, T, T, T)(x, y, z, w)

#define _create_tvec4(T, a1, a2, a3, a4, N, ...) _create_tvec4_##N(T, a1, a2, a3, a4)




#define tvec4(T) vec(4, T)
#define _tvec4(T, ...) _create_tvec4(T, __VA_ARGS__, 4, 3, 2, 1, 0)

#include "type_vec4.inl"

#endif /* GLM_DETAIL_TYPE_VEC4_H */
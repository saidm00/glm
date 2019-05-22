#ifndef GLM_DETAIL_TYPE_VEC2_H
#define GLM_DETAIL_TYPE_VEC2_H

#include "qualifier.h"
#include "type_vec3.h"
#include "type_vec4.h"

#define GLM_TVEC2_DECL(T)\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(2, T), void)      (void), \
GLM_FUNC_NAME(create, vec(2, T), T)         (const register T), \
GLM_FUNC_NAME(create, vec(2, T), vec(2, T)) (const register vec(2, T)), \
GLM_FUNC_NAME(create, vec(2, T), vec(3, T)) (const register vec(3, T)), \
GLM_FUNC_NAME(create, vec(2, T), vec(4, T)) (const register vec(4, T)), \
GLM_FUNC_NAME(create, vec(2, T), T, T)      (const register T, const register T);

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




#define GLM_TVEC2_OPERATION_DEF(T, OP)\
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(OP, vec(2, T), vec(2, T), vec(2, T)) (const register vec(2, T) a, const register vec(2, T) b) \
{ \
	vec(2, T) dst; \
	dst.e[0] = a.e[0] OPERATOR(OP) b.e[0]; \
	dst.e[1] = a.e[1] OPERATOR(OP) b.e[1]; \
	return dst; \
}




#define GLM_TVEC2_DEF(T)\
vec(2, T) GLM_FUNC_QUALIFIER GLM_FUNC_NAME(create, vec(2, T), void) (void) \
{ \
	vec(2, T) dst; \
	return dst; \
} \
vec(2, T) GLM_FUNC_QUALIFIER GLM_FUNC_NAME(create, vec(2, T), T) (const register T s) \
{ \
	vec(2, T) dst; \
	dst.e[0] = s;\
	dst.e[1] = s;\
	return dst; \
} \
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(2, T), vec(2, T)) (const register vec(2, T) v) \
{ \
	return v; \
} \
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(2, T), vec(3, T)) (const register vec(3, T) v) \
{ \
	vec(2, T) dst; \
	dst.e[0] = v.e[0];\
	dst.e[1] = v.e[1];\
	return dst; \
} \
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(2, T), vec(4, T)) (const register vec(4, T) v) \
{ \
	vec(2, T) dst; \
	dst.e[0] = v.e[0];\
	dst.e[1] = v.e[1];\
	return dst; \
} \
vec(2, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(2, T), T, T) (const register T e0, const register T e1) \
{ \
	vec(2, T) dst; \
	dst.e[0] = e0;\
	dst.e[1] = e1;\
	return dst; \
}




#define GLM_CREATE_TVEC2_FUNC_SELECT(L, T)\
vec(L, float):  GLM_FUNC_NAME(create, vec(2, T), vec(L, T)), \
vec(L, double): GLM_FUNC_NAME(create, vec(2, T), vec(L, T)), \
vec(L, int):    GLM_FUNC_NAME(create, vec(2, T), vec(L, T)), \
vec(L, uint):   GLM_FUNC_NAME(create, vec(2, T), vec(L, T)), \
vec(L, bool):   GLM_FUNC_NAME(create, vec(2, T), vec(L, T))




#define _create_tvec2_0(T, ...) GLM_FUNC_NAME(create, vec(2, T), void) ()

#define _create_tvec2_1(T, a, ...) _Generic(a, \
float: GLM_FUNC_NAME(create, vec(2, T), T), \
double: GLM_FUNC_NAME(create, vec(2, T), T), \
int: GLM_FUNC_NAME(create, vec(2, T), T), \
uint: GLM_FUNC_NAME(create, vec(2, T), T), \
bool: GLM_FUNC_NAME(create, vec(2, T), T), \
GLM_CREATE_TVEC2_FUNC_SELECT(2, T), \
GLM_CREATE_TVEC2_FUNC_SELECT(3, T), \
GLM_CREATE_TVEC2_FUNC_SELECT(4, T) \
)(_Generic(a, \
GLM_CONVERT_VEC_FUNC_SELECT(,T,), \
GLM_CONVERT_VEC_FUNC_SELECT(2, T, 2), \
GLM_CONVERT_VEC_FUNC_SELECT(3, T, 3), \
GLM_CONVERT_VEC_FUNC_SELECT(4, T, 4) \
)(a))

#define _create_tvec2_2(T, x, y) GLM_FUNC_NAME(create, vec(2, T), T, T) (x, y)

#define _create_tvec2(T, a1, a2, N, ...) _create_tvec2_##N(T, a1, a2)




#define tvec2(T) vec(2, T)
#define _tvec2(T, ...) _create_tvec2(T, __VA_ARGS__, 2, 1, 0)


#include "type_vec2.inl"

#endif /* GLM_DETAIL_TYPE_VEC2_H */
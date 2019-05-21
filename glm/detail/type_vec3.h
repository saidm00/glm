#ifndef GLM_DETAIL_TYPE_VEC3_H
#define GLM_DETAIL_TYPE_VEC3_H

#include "qualifier.h"
#include "type_vec2.h"
#include "type_vec4.h"

#define GLM_TVEC3_DECL(T)\
vec(3, T) GLM_FUNC_QUALIFIER \
GLM_FUNC_NAME(create, vec(3, T), void) (void), \
GLM_FUNC_NAME(create, vec(3, T), T) (const register T), \
GLM_TEMPLATE_CREATE_TVECL(T, 3, 3), \
GLM_TEMPLATE_CREATE_TVECL(T, 3, 4), \
GLM_FUNC_NAME(create, vec(3, T), vec(2, T), T) (const register vec(2, T), const register T), \
GLM_FUNC_NAME(create, vec(3, T), T, vec(2, T)) (const register T, const register vec(2, T)), \
GLM_FUNC_NAME(create, vec(3, T), T, T, T) (const register T, const register T, const register T);

GLM_TVEC3_DECL(float)
GLM_TVEC3_DECL(double)
GLM_TVEC3_DECL(int)
GLM_TVEC3_DECL(uint)
GLM_TVEC3_DECL(bool)

#define tvec3(T) vec(3, T)
#define _tvec3(T, ...)

#include "type_vec3.inl"

#endif /* GLM_DETAIL_TYPE_VEC3_H */
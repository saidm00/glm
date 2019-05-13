#ifndef GLM_DETAIL_TYPE_VEC3_H
#define GLM_DETAIL_TYPE_VEC3_H

#include "qualifier.h"

#include "type_vec2.h"

#define GLM_TVEC3_DECL(T)\
vec(3, T) GLM_FUNC_QUALIFIER \
T##3_0(void), \
T##3_1(const register T), \
T##3_2(const register vec(2, T), const register T), \
T##3_3(const register T, const register vec(2, T)), \
T##3_4(const register T, const register T, const register T);

GLM_TVEC3_DECL(float)
GLM_TVEC3_DECL(double)
GLM_TVEC3_DECL(int)
GLM_TVEC3_DECL(uint)
GLM_TVEC3_DECL(bool)

#define tvec3(T) vec(3, T)
#define _tvec3(T, ...)

#include "type_vec3.inl"

#endif /* GLM_DETAIL_TYPE_VEC3_H */
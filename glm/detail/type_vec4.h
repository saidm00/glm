#ifndef GLM_DETAIL_TYPE_VEC4_H
#define GLM_DETAIL_TYPE_VEC4_H

#include "qualifier.h"

#include "type_vec2.h"
#include "type_vec3.h"

#define GLM_TVEC4_DECL(T)\
vec(4, T) GLM_FUNC_QUALIFIER \
T##4_0 (void), \
T##4_1 (T const), \
T##4_2 (const register vec(2, T), const register vec(2, T)), \
T##4_3 (const register vec(3, T), const register T), \
T##4_4 (const register T, const register vec(3, T)), \
T##4_5 (const register vec(2, T), const register T, const register T), \
T##4_6 (const register T, const register vec(2, T), const register T), \
T##4_7 (const register T, const register T, const register vec(2, T)), \
T##4_8 (const register T, const register T, const register T, const register T);

GLM_TVEC4_DECL(float)
GLM_TVEC4_DECL(double)
GLM_TVEC4_DECL(int)
GLM_TVEC4_DECL(uint)
GLM_TVEC4_DECL(bool)

#define tvec4(T) vec(4, T)
#define _tvec4(T, ...)

#include "type_vec4.inl"

#endif /* GLM_DETAIL_TYPE_VEC4_H */
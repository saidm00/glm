#ifndef GLM_DETAIL_TYPE_VEC3_H
#define GLM_DETAIL_TYPE_VEC3_H

#include "qualifier.h"

#define GLM_DECLARE_TVEC3_CONSTRUCTORS(T)\
vec(3, T) GLM_FUNC_QUALIFIER T##3_1(void);\
vec(3, T) GLM_FUNC_QUALIFIER T##3_2(const register T);\
vec(3, T) GLM_FUNC_QUALIFIER T##3_3(const register vec(2, T), const register T);\
vec(3, T) GLM_FUNC_QUALIFIER T##3_4(const register T, const register vec(2, T));\
vec(3, T) GLM_FUNC_QUALIFIER T##3_5(const register T, const register T, const register T);


#include "type_vec3.inl"

#endif /* GLM_DETAIL_TYPE_VEC3_H */
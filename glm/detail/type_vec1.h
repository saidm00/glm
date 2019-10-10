#ifndef GLM_DETAIL_TYPE_VEC1_H
#define GLM_DETAIL_TYPE_VEC1_H

#include "qualifier.h"

#define GLM_DECLARE_TVEC1(T) \
GLM_API glm_vec(1, T) \
glm(convert, T##1) (glm_type _type0, va_list _ap), \
glm(create, T##1) (size_t _n, ...);

GLM_DECLARE_TVEC1(float)
GLM_DECLARE_TVEC1(double)
GLM_DECLARE_TVEC1(int)
GLM_DECLARE_TVEC1(uint)
GLM_DECLARE_TVEC1(bool)

#define GLM_TVEC1_ARG_LIST_0(_type0, _arg0) 0
#define GLM_TVEC1_ARG_LIST_1(_type0, _arg0) 1, _type0, _arg0
#define GLM_TVEC1_N(T, _1, N, ...) glm(create, T##1) ( GLM_TVEC1_ARG_LIST_##N(GLM_TYPEOF(_1), _1) )
#define GLM_TVEC1(T, ...) GLM_TVEC1_N(T, __VA_ARGS__, 1, 0)

#define  glm_float1(...) GLM_TVEC1(float,  __VA_ARGS__)
#define glm_double1(...) GLM_TVEC1(double, __VA_ARGS__)
#define    glm_int1(...) GLM_TVEC1(int,    __VA_ARGS__)
#define   glm_uint1(...) GLM_TVEC1(uint,   __VA_ARGS__)
#define   glm_bool1(...) GLM_TVEC1(bool,   __VA_ARGS__)

#ifdef USING_NAMESPACE_GLM
#define  float(...) glm_float (__VA_ARGS__)
#define double(...) glm_double(__VA_ARGS__)
#define    int(...) glm_int   (__VA_ARGS__)
#define   uint(...) glm_uint  (__VA_ARGS__)
#define   bool(...) glm_bool  (__VA_ARGS__)
#define  create_float1(...) glm_create_float1(__VA_ARGS__)
#define create_double1(...) glm_create_double1(__VA_ARGS__)
#define    create_int1(...) glm_create_int1(__VA_ARGS__)
#define   create_uint1(...) glm_create_uint1(__VA_ARGS__)
#define   create_bool1(...) glm_create_bool1(__VA_ARGS__)
#define  convert_float1(...) glm_convert_float1  (__VA_ARGS__)
#define convert_double1(...) glm_convert_double1 (__VA_ARGS__)
#define    convert_int1(...) glm_convert_int1   (__VA_ARGS__)
#define   convert_uint1(...) glm_convert_uint1  (__VA_ARGS__)
#define   convert_bool1(...) glm_convert_bool1  (__VA_ARGS__)
#endif

#include "type_vec1.inl"

#endif /* GLM_DETAIL_TYPE_VEC1_H */
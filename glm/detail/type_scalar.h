#ifndef GLM_DETAIL_TYPE_SCALAR_H
#define GLM_DETAIL_TYPE_SCALAR_H

#include "qualifier.h"

#define GLM_DECLARE_SCALAR(T) \
glm(T) GLM_API \
glm(convert, T) (glm_type _type0, va_list _ap), \
glm(create, T) (size_t _n, ...);

GLM_DECLARE_SCALAR(float)
GLM_DECLARE_SCALAR(double)
GLM_DECLARE_SCALAR(int)
GLM_DECLARE_SCALAR(uint)
GLM_DECLARE_SCALAR(bool)

#define GLM_SCALAR_ARG_LIST_0(_type0, _arg0) 0
#define GLM_SCALAR_ARG_LIST_1(_type0, _arg0) 1, _type0, _arg0
#define GLM_SCALAR_N(T, _1, N, ...) glm(create, T) ( GLM_SCALAR_ARG_LIST_##N (GLM_TYPEOF(_1), _1) )
#define GLM_SCALAR(T, ...) GLM_SCALAR_N (T, __VA_ARGS__, 1, 0)

#define  glm_float(...) GLM_SCALAR(float,  __VA_ARGS__)
#define glm_double(...) GLM_SCALAR(double, __VA_ARGS__)
#define    glm_int(...) GLM_SCALAR(int,    __VA_ARGS__)
#define   glm_uint(...) GLM_SCALAR(uint,   __VA_ARGS__)
#define   glm_bool(...) GLM_SCALAR(bool,   __VA_ARGS__)

#ifdef USING_NAMESPACE_GLM
#define  float(...) glm_float (__VA_ARGS__)
#define double(...) glm_double(__VA_ARGS__)
#define    int(...) glm_int   (__VA_ARGS__)
#define   uint(...) glm_uint  (__VA_ARGS__)
#define   bool(...) glm_bool  (__VA_ARGS__)
#define  create_float(...) glm_create_float (__VA_ARGS__)
#define create_double(...) glm_create_double(__VA_ARGS__)
#define    create_int(...) glm_create_int   (__VA_ARGS__)
#define   create_uint(...) glm_create_uint  (__VA_ARGS__)
#define   create_bool(...) glm_create_bool  (__VA_ARGS__)
#define  convert_float(...) glm_convert_float (__VA_ARGS__)
#define convert_double(...) glm_convert_double(__VA_ARGS__)
#define    convert_int(...) glm_convert_int   (__VA_ARGS__)
#define   convert_uint(...) glm_convert_uint  (__VA_ARGS__)
#define   convert_bool(...) glm_convert_bool  (__VA_ARGS__)
#endif

#include "type_scalar.inl"

#endif /* GLM_DETAIL_TYPE_SCALAR_H */
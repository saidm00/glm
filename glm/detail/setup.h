#ifndef GLM_DETAIL_SETUP_H
#define GLM_DETAIL_SETUP_H

#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>

#define GLM_FUNC_QUALIFIER
#define GLM_CONSTEXPR

#define GLM_VECTOR_LENGTH(v) (sizeof(v)/sizeof(v.e[0]))

#define GLM_EVAL(...) __VA_ARGS__


#define GLM_PREFIX_(x) glm_ ## x
#define GLM_PREFIX(...) GLM_PREFIX_(__VA_ARGS__)

//#define GLM_NAMESPACE(...) GLM_NAMESPACE_(__VA_ARGS__)
/*
#define glm_vec_(L, T, Q) glm_ ## T ## L
#define glm_vec(...) glm_vec_(__VA_ARGS__)
*/

//#define glm_vec(...) glm_typename_vec_(__VA_ARGS__)/*glm_nameof_vec_(__VA_ARGS__)*/

#define GLM_EVAL(...) __VA_ARGS__
#define GLM_PASTE_(A, B) A ## B
#define GLM_PASTE(...) GLM_PASTE_(__VA_ARGS__)
#define GLM_CALL_FUNC_(Func, Type)  GLM_PASTE(Func, _## Type)
#define GLM_CALL_FUNC(...) GLM_PREFIX(GLM_CALL_FUNC_(__VA_ARGS__))
/*
enum glm_qualifier
{
    lowp,
    mediump,
    highp,
    defaultp
};*/

#endif /* GLM_DETAIL_SETUP_H */

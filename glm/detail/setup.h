#ifndef GLM_DETAIL_SETUP_H
#define GLM_DETAIL_SETUP_H

#include <stdarg.h>
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

typedef float glm_float32;
typedef double glm_float64;

typedef uint8_t  glm_uint8;
typedef uint16_t glm_uint16;
typedef uint32_t glm_uint32;
typedef uint64_t glm_uint64;

typedef int8_t   glm_int8;
typedef int16_t  glm_int16;
typedef int32_t  glm_int32;
typedef int64_t  glm_int64;

typedef glm_uint32 uint;

#undef bool
typedef _Bool bool;
typedef _Bool glm_bool;

typedef size_t glm_length_t;

typedef float glm_highp_float;

#define GLM_FUNC_QUALIFIER inline
#define GLM_CONSTEXPR
/*
enum glm_qualifier
{
    lowp,
    mediump,
    highp,
    defaultp
};*/

#endif /* GLM_DETAIL_SETUP_H */

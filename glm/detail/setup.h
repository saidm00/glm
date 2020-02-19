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

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _sin(double x)
{
	return sin(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _cos(double x)
{
	return cos(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _tan(double x)
{
	return tan(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _asin(double x)
{
	return asin(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _acos(double x)
{
	return acos(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _atan(double x)
{
	return atan(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _atan2(double y, double x)
{
	return atan2(y, x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _sinh(double x)
{
	return sinh(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _cosh(double x)
{
	return cosh(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _tanh(double x)
{
	return tanh(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _sqrt(double x)
{
	return sqrt(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _inversesqrt(double x)
{
	return 1.0 / sqrt(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _pow(double x, double y)
{
	return pow(x, y);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _exp(double x)
{
	return exp(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _log(double x)
{
	return log(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _exp2(double x)
{
	return exp2(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _log2(double x)
{
	return log2(x);
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _abs(double x)
{
	return abs(x);
}
GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _floor(double x)
{
	return floor(x);
}
GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _trunc(double x)
{
	return trunc(x);
}
GLM_FUNC_QUALIFIER GLM_CONSTEXPR double _round(double x)
{
	return round(x);
}

#endif /* GLM_DETAIL_SETUP_H */

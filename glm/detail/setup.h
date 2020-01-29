#ifndef GLM_DETAIL_SETUP_H
#define GLM_DETAIL_SETUP_H

#include <stdarg.h>
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdbool.h>

typedef float glm_float32;
typedef double glm_float64;

typedef unsigned char glm_uint8;
typedef unsigned short glm_uint16;
typedef unsigned int glm_uint32;
typedef unsigned long glm_uint64;

typedef char glm_int8;
typedef short glm_int16;
typedef int glm_int32;
typedef long glm_int64;

typedef unsigned int uint;

#undef bool
typedef _Bool bool;
typedef _Bool glm_bool;

typedef size_t glm_length_t;

typedef float glm_highp_float;

#define GLM_FUNC_QUALIFIER inline
#define GLM_CONSTEXPR

enum glm_qualifier
{
    lowp,
    mediump,
    highp,
    defaultp
};

inline double _sin(double x)
{
	return sin(x);
}

inline double _cos(double x)
{
	return cos(x);
}

inline double _tan(double x)
{
	return tan(x);
}

inline double _asin(double x)
{
	return asin(x);
}

inline double _acos(double x)
{
	return acos(x);
}

inline double _atan(double x)
{
	return atan(x);
}

inline double _atan2(double y, double x)
{
	return atan2(y, x);
}

inline double _sinh(double x)
{
	return sinh(x);
}

inline double _cosh(double x)
{
	return cosh(x);
}

inline double _tanh(double x)
{
	return tanh(x);
}

inline double _sqrt(double x)
{
	return sqrt(x);
}

inline double _inversesqrt(double x)
{
	return 1.0 / sqrt(x);
}

inline double _pow(double x, double y)
{
	return pow(x, y);
}

inline double _exp(double x)
{
	return exp(x);
}

inline double _log(double x)
{
	return log(x);
}

inline double _exp2(double x)
{
	return exp2(x);
}

inline double _log2(double x)
{
	return log2(x);
}

#endif /* GLM_DETAIL_SETUP_H */

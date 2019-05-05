#ifndef GLM_DETAIL_TYPE_VEC2_H
#define GLM_DETAIL_TYPE_VEC2_H

#include "qualifier.h"

union float2;
union double2;
union int2;
union uint2;
union bool2;

typedef union float2 float2;
typedef union double2 double2;
typedef union int2 int2;
typedef union uint2 uint2;
typedef union bool2 bool2;

double2 GLM_FUNC_QUALIFIER
add_double2(const register double2 a, register double2 b);

double2 GLM_FUNC_QUALIFIER
sub_double2(const register double2 a, register double2 b);

double2 GLM_FUNC_QUALIFIER
mul_double2(const register double2 a, register double2 b);

double2 GLM_FUNC_QUALIFIER
div_double2(const register double2 a, register double2 b);

double2 GLM_FUNC_QUALIFIER
sqrt_double2(register double2 x);

double GLM_FUNC_QUALIFIER
dot_double2(const register double2 x, const register double2 y);

double GLM_FUNC_QUALIFIER
length_double2(register double2 x);

double GLM_FUNC_QUALIFIER
distance_double2(const register double2 p0, const register double2 p1);

double2 GLM_FUNC_QUALIFIER
normalize_double2(register double2 v);

double2 GLM_FUNC_QUALIFIER
min_double2(const register double2 x, const register double2 y);

double2 GLM_FUNC_QUALIFIER
max_double2(const register double2 x, const register double2 y);

#include "type_vec2.inl"

#endif /* GLM_DETAIL_TYPE_VEC2_H */
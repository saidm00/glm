#ifndef GLM_DETAIL_VARIADIC_PARAM_H
#define GLM_DETAIL_VARIADIC_PARAM_H

//#include "type_scalar.h"
#include "type_vector.h"
#include "type_matrix.h"

#define GLM_VARIADIC_PARAM_TYPE(A)\
_Generic(A,\
bool : GLM_TYPE_BOOL,\
float : GLM_TYPE_FLOAT,\
double : GLM_TYPE_DOUBLE,\
int : GLM_TYPE_INT,\
uint : GLM_TYPE_UINT,\
glm_vec(1, bool, defaultp): GLM_TYPE_BOOL1,\
glm_vec(2, bool, defaultp): GLM_TYPE_BOOL2,\
glm_vec(3, bool, defaultp): GLM_TYPE_BOOL3,\
glm_vec(4, bool, defaultp): GLM_TYPE_BOOL4,\
glm_vec(1, float, defaultp): GLM_TYPE_FLOAT1,\
glm_vec(2, float, defaultp): GLM_TYPE_FLOAT2,\
glm_vec(3, float, defaultp): GLM_TYPE_FLOAT3,\
glm_vec(4, float, defaultp): GLM_TYPE_FLOAT4,\
glm_vec(1, double, defaultp): GLM_TYPE_DOUBLE1,\
glm_vec(2, double, defaultp): GLM_TYPE_DOUBLE2,\
glm_vec(3, double, defaultp): GLM_TYPE_DOUBLE3,\
glm_vec(4, double, defaultp): GLM_TYPE_DOUBLE4,\
glm_vec(1, int, defaultp): GLM_TYPE_INT1,\
glm_vec(2, int, defaultp): GLM_TYPE_INT2,\
glm_vec(3, int, defaultp): GLM_TYPE_INT3,\
glm_vec(4, int, defaultp): GLM_TYPE_INT4,\
glm_vec(1, uint, defaultp): GLM_TYPE_UINT1,\
glm_vec(2, uint, defaultp): GLM_TYPE_UINT2,\
glm_vec(3, uint, defaultp): GLM_TYPE_UINT3,\
glm_vec(4, uint, defaultp): GLM_TYPE_UINT4,\
glm_mat(2, 2, float, defaultp): GLM_TYPE_FLOAT2X2,\
glm_mat(2, 3, float, defaultp): GLM_TYPE_FLOAT2X3,\
glm_mat(2, 4, float, defaultp): GLM_TYPE_FLOAT2X4,\
glm_mat(3, 2, float, defaultp): GLM_TYPE_FLOAT3X2,\
glm_mat(3, 3, float, defaultp): GLM_TYPE_FLOAT3X3,\
glm_mat(3, 4, float, defaultp): GLM_TYPE_FLOAT3X4,\
glm_mat(4, 2, float, defaultp): GLM_TYPE_FLOAT4X2,\
glm_mat(4, 3, float, defaultp): GLM_TYPE_FLOAT4X3,\
glm_mat(4, 4, float, defaultp): GLM_TYPE_FLOAT4X4,\
glm_mat(2, 2, double, defaultp): GLM_TYPE_DOUBLE2X2,\
glm_mat(2, 3, double, defaultp): GLM_TYPE_DOUBLE2X3,\
glm_mat(2, 4, double, defaultp): GLM_TYPE_DOUBLE2X4,\
glm_mat(3, 2, double, defaultp): GLM_TYPE_DOUBLE3X2,\
glm_mat(3, 3, double, defaultp): GLM_TYPE_DOUBLE3X3,\
glm_mat(3, 4, double, defaultp): GLM_TYPE_DOUBLE3X4,\
glm_mat(4, 2, double, defaultp): GLM_TYPE_DOUBLE4X2,\
glm_mat(4, 3, double, defaultp): GLM_TYPE_DOUBLE4X3,\
glm_mat(4, 4, double, defaultp): GLM_TYPE_DOUBLE4X4\
)

#define GLM_VARIADIC_PARAM_VAL(A) A
#define GLM_VARIADIC_PARAM(A) GLM_VARIADIC_PARAM_TYPE(A), GLM_VARIADIC_PARAM_VAL(A)

#endif /* GLM_DETAIL_VARIADIC_PARAM_H */
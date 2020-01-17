#ifndef GLM_EXT_MATRIX_FLOAT3X3_H
#define GLM_EXT_MATRIX_FLOAT3X3_H

#include "../detail/qualifier.h"
#include "./vector_float3.h"

typedef union glm_float3x3
{
	GLM_MAT_DATA(3, 3, float);
	glm_vec(3, float) v[3];
} glm_float3x3, glm_mat3x3, glm_mat3;

glm_mat3 glm_transpose_mat3(glm_mat3 m);

glm_vec3 glm_mul_mat3_vec3(glm_mat3 m, glm_vec3 v);

#include "./matrix_float3x3.inl"

#endif /* GLM_EXT_MATRIX_FLOAT3X3_H */

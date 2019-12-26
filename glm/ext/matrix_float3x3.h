#ifndef GLM_MATRIX_FLOAT3X3_H
#define GLM_MATRIX_FLOAT3X3_H

#include "../detail/qualifier.h"
#include "./vector_float3.h"

typedef union glm_float3x3
{
	GLM_MAT_DATA(3, 3, float);
	glm_vec(3, float) v[3];
} glm_float3x3, glm_mat3x3, glm_mat3;

GLM_API glm_float3x3 glm_transpose_float3x3(glm_float3x3 m)
{
	return (glm_float3x3)
	{
		m.e[0][0], m.e[1][0], m.e[2][0],
		m.e[0][1], m.e[1][1], m.e[2][1],
		m.e[0][2], m.e[1][2], m.e[2][2],
	};
}

GLM_API glm_float3 glm_mul_float3x3_float3(glm_float3x3 m, glm_float3 v)
{
	//m = glm_transpose_float3x3(m);
	glm_float3 s;
	s.x = m.e[0][0] * v.x + m.e[1][0] * v.y + m.e[2][0] * v.z;
	s.y = m.e[0][1] * v.x + m.e[1][1] * v.y + m.e[2][1] * v.z;
	s.z = m.e[0][2] * v.x + m.e[1][2] * v.y + m.e[2][2] * v.z;
	return s;
}



#endif /* GLM_MATRIX_FLOAT3X3_H */
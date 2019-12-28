
glm_mat3 glm_transpose_mat3(glm_mat3 m)
{
	m.e[0][0] = m.e[0][0];
	m.e[0][1] = m.e[1][0];
	m.e[0][2] = m.e[2][0];

	m.e[1][0] = m.e[0][1];
	m.e[1][1] = m.e[1][1];
	m.e[1][2] = m.e[2][1];

	m.e[2][0] = m.e[0][2];
	m.e[2][1] = m.e[1][2];
	m.e[2][2] = m.e[2][2];

	return m;	
}

glm_vec3 glm_mul_mat3_vec3(glm_mat3 m, glm_vec3 v)
{
	v.x = m.e[0][0] * v.x + m.e[1][0] * v.y + m.e[2][0] * v.z;
	v.y = m.e[0][1] * v.x + m.e[1][1] * v.y + m.e[2][1] * v.z;
	v.z = m.e[0][2] * v.x + m.e[1][2] * v.y + m.e[2][2] * v.z;
	return v;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_add_vec3(glm_vec3 x, glm_vec3 y)
{
	x.e[0] += y.e[0];
	x.e[1] += y.e[1];
	x.e[2] += y.e[2];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_sub_vec3(glm_vec3 x, glm_vec3 y)
{
	x.e[0] -= y.e[0];
	x.e[1] -= y.e[1];
	x.e[2] -= y.e[2];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_mul_vec3(glm_vec3 x, glm_vec3 y)
{
	x.e[0] *= y.e[0];
	x.e[1] *= y.e[1];
	x.e[2] *= y.e[2];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_div_vec3(glm_vec3 x, glm_vec3 y)
{
	x.e[0] /= y.e[0];
	x.e[1] /= y.e[1];
	x.e[2] /= y.e[2];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_sadd_vec3(glm_vec3 x, float y)
{
	x.e[0] += y;
	x.e[1] += y;
	x.e[2] += y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_ssub_vec3(glm_vec3 x, float y)
{
	x.e[0] -= y;
	x.e[1] -= y;
	x.e[2] -= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_smul_vec3(glm_vec3 x, float y)
{
	x.e[0] *= y;
	x.e[1] *= y;
	x.e[2] *= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_sdiv_vec3(glm_vec3 x, float y)
{
	x.e[0] /= y;
	x.e[1] /= y;
	x.e[2] /= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_min_vec3(glm_vec3 x, glm_vec3 y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] < y.e[0] ? y.e[0] : x.e[0];
	s.e[1] = x.e[1] < y.e[1] ? y.e[1] : x.e[1];
	s.e[2] = x.e[2] < y.e[2] ? y.e[2] : x.e[2];
	return s;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_max_vec3(glm_vec3 x, glm_vec3 y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] > y.e[0] ? y.e[0] : x.e[0];
	s.e[1] = x.e[1] > y.e[1] ? y.e[1] : x.e[1];
	s.e[2] = x.e[2] > y.e[2] ? y.e[2] : x.e[2];
	return s;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_smin_vec3(glm_vec3 x, float y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] < y ? y : x.e[0];
	s.e[1] = x.e[1] < y ? y : x.e[1];
	s.e[2] = x.e[2] < y ? y : x.e[2];
	return s;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_smax_vec3(glm_vec3 x, float y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] > y ? y : x.e[0];
	s.e[1] = x.e[1] > y ? y : x.e[1];
	s.e[2] = x.e[2] > y ? y : x.e[2];
	return s;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_clamp_vec3(glm_vec3 x, glm_vec3 minVal, glm_vec3 maxVal)
{
	glm_vec3 s;
	s.e[0] = x.e[0] < minVal.e[0] ? minVal.e[0] : (x.e[0] > maxVal.e[0] ? maxVal.e[0] : x.e[0]);
	s.e[1] = x.e[1] < minVal.e[1] ? minVal.e[1] : (x.e[1] > maxVal.e[1] ? maxVal.e[1] : x.e[1]);
	s.e[2] = x.e[2] < minVal.e[2] ? minVal.e[2] : (x.e[2] > maxVal.e[2] ? maxVal.e[2] : x.e[2]);
	return s;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_sclamp_vec3(glm_vec3 x, float minVal, float maxVal)
{
	glm_vec3 s;
	s.e[0] = x.e[0] < minVal ? minVal : (x.e[0] > maxVal ? maxVal : x.e[0]);
	s.e[1] = x.e[1] < minVal ? minVal : (x.e[1] > maxVal ? maxVal : x.e[1]);
	s.e[2] = x.e[2] < minVal ? minVal : (x.e[2] > maxVal ? maxVal : x.e[2]);
	return s;
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_mix_vec3(glm_vec3 x, glm_vec3 y, float a)
{
	glm_vec3 s;
	s.e[0] = x.e[0] * (1.0f - a) + y.e[0] * a;
	s.e[1] = x.e[1] * (1.0f - a) + y.e[1] * a;
	s.e[2] = x.e[2] * (1.0f - a) + y.e[2] * a;
	return s;
}

GLM_FUNC_QUALIFIER
float glm_dot_vec3(glm_vec3 x, glm_vec3 y)
{
	return x.e[0] * y.e[0] + x.e[1] * y.e[1] + x.e[2] * y.e[2];
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_cross_vec3(glm_vec3 x, glm_vec3 y)
{
	glm_vec3 s;
	s.e[0] = x.e[1] * y.e[2] - x.e[2] * y.e[1];
	s.e[1] = x.e[2] * y.e[0] - x.e[0] * y.e[2];
	s.e[2] = x.e[0] * y.e[1] - x.e[1] * y.e[0];
	return s;
}

GLM_FUNC_QUALIFIER
float glm_length_vec3(glm_vec3 x)
{
	return (float)sqrt(x.e[0] * x.e[0] + x.e[1] * x.e[1] + x.e[2] * x.e[2]);
}

GLM_FUNC_QUALIFIER
glm_vec3 glm_normalize_vec3(glm_vec3 x)
{
	float len = glm_length_vec3(x);
	x.e[0] /= len;
	x.e[1] /= len;
	x.e[2] /= len;
	return x;
}

/*
	I - 2 * dot(N, I) * N
*/
GLM_FUNC_QUALIFIER
glm_vec3 glm_reflect_vec3(glm_vec3 I, glm_vec3 N)
{
	return glm_sub_vec3(I, glm_smul_vec3(N, 2.0f * glm_dot_vec3(N, I)));
}

/*
	if (k < 0)
		result = genType(0.0)
	else
		result = eta * I - (eta * dot(N, I) + sqrtf(k)) * N
*/
GLM_FUNC_QUALIFIER
glm_vec3 glm_refract_vec3(glm_vec3 I, glm_vec3 N, float eta)
{
	glm_vec3 result;
	float dotNI = glm_dot_vec3(N, I);
	float k = 1.0f - eta * eta * (1.0f - dotNI * dotNI);
	
	if (k < 0.0f)
	{
		result.x = 0.0f;
		result.y = 0.0f;
		result.z = 0.0f;
	}
	else
	{
		result = glm_sub_vec3(glm_smul_vec3(I, eta), glm_smul_vec3(N, eta * dotNI + sqrtf(k)));
	}
	
	return result;
}
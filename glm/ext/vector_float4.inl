
GLM_FUNC_QUALIFIER
glm_vec4 glm_add_vec4(glm_vec4 x, glm_vec4 y)
{
	x.e[0] += y.e[0];
	x.e[1] += y.e[1];
	x.e[2] += y.e[2];
	x.e[3] += y.e[3];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_sub_vec4(glm_vec4 x, glm_vec4 y)
{
	x.e[0] -= y.e[0];
	x.e[1] -= y.e[1];
	x.e[2] -= y.e[2];
	x.e[3] -= y.e[3];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_mul_vec4(glm_vec4 x, glm_vec4 y)
{
	x.e[0] *= y.e[0];
	x.e[1] *= y.e[1];
	x.e[2] *= y.e[2];
	x.e[3] *= y.e[3];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_div_vec4(glm_vec4 x, glm_vec4 y)
{
	x.e[0] /= y.e[0];
	x.e[1] /= y.e[1];
	x.e[2] /= y.e[2];
	x.e[3] /= y.e[3];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_adds_vec4(glm_vec4 x, float y)
{
	x.e[0] += y;
	x.e[1] += y;
	x.e[2] += y;
	x.e[3] += y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_subs_vec4(glm_vec4 x, float y)
{
	x.e[0] -= y;
	x.e[1] -= y;
	x.e[2] -= y;
	x.e[3] -= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_muls_vec4(glm_vec4 x, float y)
{
	x.e[0] *= y;
	x.e[1] *= y;
	x.e[2] *= y;
	x.e[3] *= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_divs_vec4(glm_vec4 x, float y)
{
	x.e[0] /= y;
	x.e[1] /= y;
	x.e[2] /= y;
	x.e[3] /= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_min_vec4(glm_vec4 x, glm_vec4 y)
{
	glm_vec4 s;
	s.e[0] = x.e[0] < y.e[0] ? y.e[0] : x.e[0];
	s.e[1] = x.e[1] < y.e[1] ? y.e[1] : x.e[1];
	s.e[2] = x.e[2] < y.e[2] ? y.e[2] : x.e[2];
	s.e[3] = x.e[3] < y.e[3] ? y.e[3] : x.e[3];
	return s;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_max_vec4(glm_vec4 x, glm_vec4 y)
{
	glm_vec4 s;
	s.e[0] = x.e[0] > y.e[0] ? y.e[0] : x.e[0];
	s.e[1] = x.e[1] > y.e[1] ? y.e[1] : x.e[1];
	s.e[2] = x.e[2] > y.e[2] ? y.e[2] : x.e[2];
	s.e[3] = x.e[3] > y.e[3] ? y.e[3] : x.e[3];
	return s;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_clamp_vec4(glm_vec4 x, glm_vec4 minVal, glm_vec4 maxVal)
{
	glm_vec4 s;
	s.e[0] = x.e[0] < minVal.e[0] ? minVal.e[0] : (x.e[0] > maxVal.e[0] ? maxVal.e[0] : x.e[0]);
	s.e[1] = x.e[1] < minVal.e[1] ? minVal.e[1] : (x.e[1] > maxVal.e[1] ? maxVal.e[1] : x.e[1]);
	s.e[2] = x.e[2] < minVal.e[2] ? minVal.e[2] : (x.e[2] > maxVal.e[2] ? maxVal.e[2] : x.e[2]);
	s.e[3] = x.e[3] < minVal.e[3] ? minVal.e[3] : (x.e[3] > maxVal.e[3] ? maxVal.e[3] : x.e[3]);
	return s;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_mix_vec4(glm_vec4 x, glm_vec4 y, float a)
{
	glm_vec4 s;
	s.e[0] = x.e[0] * (1.0f - a) + y.e[0] * a;
	s.e[1] = x.e[1] * (1.0f - a) + y.e[1] * a;
	s.e[2] = x.e[2] * (1.0f - a) + y.e[2] * a;
	s.e[3] = x.e[3] * (1.0f - a) + y.e[3] * a;
	return s;
}

GLM_FUNC_QUALIFIER
float glm_dot_vec4(glm_vec4 x, glm_vec4 y)
{
	return x.e[0]*y.e[0] + x.e[1]*y.e[1] + x.e[2]*y.e[2] + x.e[3]*y.e[3];
}

GLM_FUNC_QUALIFIER
float glm_length_vec4(glm_vec4 x)
{
	return (float)sqrt(x.e[0]*x.e[0] + x.e[1]*x.e[1] + x.e[2]*x.e[2] + x.e[3]*x.e[3]);
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_normalize_vec4(glm_vec4 x)
{
	float len = glm_length_vec4(x);
	x.e[0] /= len;
	x.e[1] /= len;
	x.e[2] /= len;
	x.e[3] /= len;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_reflect_vec4(glm_vec4 I, glm_vec4 N)
{
	/*
		I - 2 * dot(N, I)
	*/
	return glm_subs_vec4(I, 2.0f * glm_dot_vec4(N, I));
}

GLM_FUNC_QUALIFIER
glm_vec4 glm_refract_vec4(glm_vec4 I, glm_vec4 N, float eta)
{
	glm_vec4 result;
	float dotNI = glm_dot_vec4(N, I);
	float k = 1.0f - eta * eta * (1.0f - dotNI * dotNI);
	/*
		if (k < 0)
			result = genDType(0.0)
		else
			result = eta * I - (eta * dot(N, I) + sqrt(k)) * N
	*/
	if (k < 0.0f)
	{
		result.x = 0.0f;
		result.y = 0.0f;
		result.z = 0.0f;
		result.w = 0.0f;
	}
	else
	{
		result = glm_mul_vec4(glm_subs_vec4(glm_muls_vec4(I, eta), (eta * dotNI + (float)sqrt(k))), N);
	}
	
	return result;
}
glm_vec3 glm_add_vec3(glm_vec3 x, glm_vec3 y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] + y.e[0];
	s.e[1] = x.e[1] + y.e[1];
	s.e[2] = x.e[2] + y.e[2];
	return s;
}

glm_vec3 glm_sub_vec3(glm_vec3 x, glm_vec3 y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] - y.e[0];
	s.e[1] = x.e[1] - y.e[1];
	s.e[2] = x.e[2] - y.e[2];
	return s;
}

glm_vec3 glm_mul_vec3(glm_vec3 x, glm_vec3 y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] * y.e[0];
	s.e[1] = x.e[1] * y.e[1];
	s.e[2] = x.e[2] * y.e[2];
	return s;
}

glm_vec3 glm_div_vec3(glm_vec3 x, glm_vec3 y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] / y.e[0];
	s.e[1] = x.e[1] / y.e[1];
	s.e[2] = x.e[2] / y.e[2];
	return s;
}

glm_vec3 glm_adds_vec3(glm_vec3 x, float y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] + y;
	s.e[1] = x.e[1] + y;
	s.e[2] = x.e[2] + y;
	return s;
}

glm_vec3 glm_subs_vec3(glm_vec3 x, float y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] - y;
	s.e[1] = x.e[1] - y;
	s.e[2] = x.e[2] - y;
	return s;
}

glm_vec3 glm_muls_vec3(glm_vec3 x, float y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] * y;
	s.e[1] = x.e[1] * y;
	s.e[2] = x.e[2] * y;
	return s;
}

glm_vec3 glm_divs_vec3(glm_vec3 x, float y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] / y;
	s.e[1] = x.e[1] / y;
	s.e[2] = x.e[2] / y;
	return s;
}

glm_vec3 glm_min_vec3(glm_vec3 x, glm_vec3 y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] < y.e[0] ? y.e[0] : x.e[0];
	s.e[1] = x.e[1] < y.e[1] ? y.e[1] : x.e[1];
	s.e[2] = x.e[2] < y.e[2] ? y.e[2] : x.e[2];
	return s;
}


glm_vec3 glm_max_vec3(glm_vec3 x, glm_vec3 y)
{
	glm_vec3 s;
	s.e[0] = x.e[0] > y.e[0] ? y.e[0] : x.e[0];
	s.e[1] = x.e[1] > y.e[1] ? y.e[1] : x.e[1];
	s.e[2] = x.e[2] > y.e[2] ? y.e[2] : x.e[2];
	return s;
}

glm_vec3 glm_clamp_vec3(glm_vec3 x, glm_vec3 minVal, glm_vec3 maxVal)
{
	glm_vec3 s;
	s.e[0] = x.e[0] < minVal.e[0] ? minVal.e[0] : (x.e[0] > maxVal.e[0] ? maxVal.e[0] : x.e[0]);
	s.e[1] = x.e[1] < minVal.e[1] ? minVal.e[1] : (x.e[1] > maxVal.e[1] ? maxVal.e[1] : x.e[1]);
	s.e[2] = x.e[2] < minVal.e[2] ? minVal.e[2] : (x.e[2] > maxVal.e[2] ? maxVal.e[2] : x.e[2]);
	return s;
}

glm_vec3 glm_mix_vec3(glm_vec3 x, glm_vec3 y, float a)
{
	glm_vec3 s;
	s.e[0] = x..e[0] * (1.0F - a) + y.e[0] * a;
	s.e[1] = x..e[1] * (1.0F - a) + y.e[1] * a;
	s.e[2] = x..e[2] * (1.0F - a) + y.e[2] * a;
	return s;
}

float glm_dot_vec3(glm_vec3 x, glm_vec3 y)
{
	return x.e[0] * y.e[0] + x.e[1] * y.e[1] + x.e[2] * y.e[2];
}

glm_vec3 glm_cross_vec3(glm_vec3 x, glm_vec3 y)
{
	glm_vec3 s;
	s.e[0] = x.e[1] * y.e[2] - x.e[2] * y.e[1];
	s.e[1] = x.e[2] * y.e[0] - x.e[0] * y.e[2];
	s.e[2] = x.e[0] * y.e[1] - x.e[1] * y.e[0];
	return s;
}

float glm_length_vec3(glm_vec3 x)
{
	return sqrtf(x.e[0] * x.e[0] + x.e[1] * x.e[1] + x.e[2] * x.e[2]);
}

glm_vec3 glm_normalize_vec3(glm_vec3 x)
{
	float len = glm_length_vec3(x);
	x.e[0] /= len;
	x.e[1] /= len;
	x.e[2] /= len;
	return x;
}

glm_vec3 glm_reflect_vec3(glm_vec3 I, glm_vec3 N)
{
	/*
		I - 2 * dot(N, I)
	*/
	return glm_subs_vec3(I, 2.0F * glm_dot_vec3(N, I));
}

glm_vec3 glm_refract_vec3(glm_vec3 I, glm_vec3 N, float eta)
{
	float dotNI = glm_dot_vec3(N, I);
	float k = 1.0F - eta * eta * (1.0F - dotNI * dotNI);
	/*
		if (k < 0)
			result = genFType(0.0)
		else
			result = eta * I - (eta * dot(N, I) + sqrt(k)) * N
	*/
	glm_vec3 result = (k < 0.0F) ? {0.0F, 0.0F, 0.0F} : glm_mul_vec3(glm_subs_vec3(glm_muls_vec3(I, eta), (eta * dotNI + sqrtf(k))), N);
	
	return result;
}
glm_dvec3 glm_add_dvec3(glm_dvec3 x, glm_dvec3 y)
{
	glm_dvec3 s;
	s.e[0] = x.e[0] + y.e[0];
	s.e[1] = x.e[1] + y.e[1];
	s.e[2] = x.e[2] + y.e[2];
	return s;
}

glm_dvec3 glm_sub_dvec3(glm_dvec3 x, glm_dvec3 y)
{
	glm_dvec3 s;
	s.e[0] = x.e[0] - y.e[0];
	s.e[1] = x.e[1] - y.e[1];
	s.e[2] = x.e[2] - y.e[2];
	return s;
}

glm_dvec3 glm_mul_dvec3(glm_dvec3 x, glm_dvec3 y)
{
	glm_dvec3 s;
	s.e[0] = x.e[0] * y.e[0];
	s.e[1] = x.e[1] * y.e[1];
	s.e[2] = x.e[2] * y.e[2];
	return s;
}

glm_dvec3 glm_div_dvec3(glm_dvec3 x, glm_dvec3 y)
{
	glm_dvec3 s;
	s.e[0] = x.e[0] / y.e[0];
	s.e[1] = x.e[1] / y.e[1];
	s.e[2] = x.e[2] / y.e[2];
	return s;
}

glm_dvec3 glm_adds_dvec3(glm_dvec3 x, double y)
{
	x.e[0] += y;
	x.e[1] += y;
	x.e[2] += y;
	return x;
}

glm_dvec3 glm_subs_dvec3(glm_dvec3 x, double y)
{
	x.e[0] -= y;
	x.e[1] -= y;
	x.e[2] -= y;
	return x;
}

glm_dvec3 glm_muls_dvec3(glm_dvec3 x, double y)
{
	x.e[0] *= y;
	x.e[1] *= y;
	x.e[2] *= y;
	return x;
}

glm_dvec3 glm_divs_dvec3(glm_dvec3 x, double y)
{
	x.e[0] /= y;
	x.e[1] /= y;
	x.e[2] /= y;
	return x;
}

glm_dvec3 glm_min_dvec3(glm_dvec3 x, glm_dvec3 y)
{
	glm_dvec3 s;
	s.e[0] = x.e[0] < y.e[0] ? y.e[0] : x.e[0];
	s.e[1] = x.e[1] < y.e[1] ? y.e[1] : x.e[1];
	s.e[2] = x.e[2] < y.e[2] ? y.e[2] : x.e[2];
	return s;
}

glm_dvec3 glm_max_dvec3(glm_dvec3 x, glm_dvec3 y)
{
	glm_dvec3 s;
	s.e[0] = x.e[0] > y.e[0] ? y.e[0] : x.e[0];
	s.e[1] = x.e[1] > y.e[1] ? y.e[1] : x.e[1];
	s.e[2] = x.e[2] > y.e[2] ? y.e[2] : x.e[2];
	return s;
}

glm_dvec3 glm_clamp_dvec3(glm_dvec3 x, glm_dvec3 minVal, glm_dvec3 maxVal)
{
	glm_dvec3 s;
	s.e[0] = x.e[0] < minVal.e[0] ? minVal.e[0] : (x.e[0] > maxVal.e[0] ? maxVal.e[0] : x.e[0]);
	s.e[1] = x.e[1] < minVal.e[1] ? minVal.e[1] : (x.e[1] > maxVal.e[1] ? maxVal.e[1] : x.e[1]);
	s.e[2] = x.e[2] < minVal.e[2] ? minVal.e[2] : (x.e[2] > maxVal.e[2] ? maxVal.e[2] : x.e[2]);
	return s;
}

glm_dvec3 glm_mix_dvec3(glm_dvec3 x, glm_dvec3 y, double a)
{
	glm_dvec3 s;
	s.e[0] = x.e[0] * (1.0 - a) + y.e[0] * a;
	s.e[1] = x.e[1] * (1.0 - a) + y.e[1] * a;
	s.e[2] = x.e[2] * (1.0 - a) + y.e[2] * a;
	return s;
}

double glm_dot_dvec3(glm_dvec3 x, glm_dvec3 y)
{
	return x.e[0] * y.e[0] + x.e[1] * y.e[1] + x.e[2] * y.e[2];
}

glm_dvec3 glm_cross_dvec3(glm_dvec3 x, glm_dvec3 y)
{
	glm_dvec3 s;
	s.e[0] = x.e[1] * y.e[2] - x.e[2] * y.e[1];
	s.e[1] = x.e[2] * y.e[0] - x.e[0] * y.e[2];
	s.e[2] = x.e[0] * y.e[1] - x.e[1] * y.e[0];
	return s;
}

double glm_length_dvec3(glm_dvec3 x)
{
	return sqrt(x.e[0] * x.e[0] + x.e[1] * x.e[1] + x.e[2] * x.e[2]);
}

glm_dvec3 glm_normalize_dvec3(glm_dvec3 x)
{
	float len = glm_length_dvec3(x);
	x.e[0] /= len;
	x.e[1] /= len;
	x.e[2] /= len;
	return x;
}

glm_dvec3 glm_reflect_dvec3(glm_dvec3 I, glm_dvec3 N)
{
	/*
		I - 2 * dot(N, I)
	*/
	return glm_subs_dvec3(I, 2.0 * glm_dot_dvec3(N, I));
}

glm_dvec3 glm_refract_dvec3(glm_dvec3 I, glm_dvec3 N, double eta)
{
	glm_dvec3 result;
	double dotNI = glm_dot_dvec3(N, I);
	double k = 1.0 - eta * eta * (1.0 - dotNI * dotNI);
	/*
		if (k < 0)
			result = genDType(0.0)
		else
			result = eta * I - (eta * dot(N, I) + sqrt(k)) * N
	*/
	if (k < 0.0)
	{
		result.x = 0.0;
		result.y = 0.0;
		result.z = 0.0;
	}
	else
	{
		result = glm_mul_dvec3(glm_subs_dvec3(glm_muls_dvec3(I, eta), (eta * dotNI + sqrt(k))), N);
	}
	
	return result;
}
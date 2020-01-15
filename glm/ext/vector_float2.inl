GLM_FUNC_QUALIFIER
glm_vec2 glm_add_vec2(register glm_vec2 x, register glm_vec2 y)
{
	x.e[0] += y.e[0];
	x.e[1] += y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_sub_vec2(register glm_vec2 x, register glm_vec2 y)
{
	x.e[0] -= y.e[0];
	x.e[1] -= y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_mul_vec2(register glm_vec2 x, register glm_vec2 y)
{
	x.e[0] *= y.e[0];
	x.e[1] *= y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_div_vec2(register glm_vec2 x, register glm_vec2 y)
{
	x.e[0] /= y.e[0];
	x.e[1] /= y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_sadd_vec2(register glm_vec2 x, register float y)
{
	x.e[0] += y;
	x.e[1] += y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_ssub_vec2(register glm_vec2 x, register float y)
{
	x.e[0] -= y;
	x.e[1] -= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_smul_vec2(register glm_vec2 x, register float y)
{
	x.e[0] /= y;
	x.e[1] /= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_sdiv_vec2(register glm_vec2 x, register float y)
{
	register glm_vec2 v;
	v.e[0] = x.e[0] / y;
	v.e[1] = x.e[1] / y;
	return v;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_min_vec2(register glm_vec2 x, register glm_vec2 y)
{
	if (x.e[0] > y.e[0]) x.e[0] = y.e[0];
	if (x.e[1] > y.e[1]) x.e[1] = y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_max_vec2(register glm_vec2 x, register glm_vec2 y)
{
	if (y.e[0] > x.e[0]) x.e[0] = y.e[0];
	if (y.e[1] > x.e[1]) x.e[1] = y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_smin_vec2(register glm_vec2 x, register float y)
{
	if (x.e[0] > y) x.e[0] = y;
	if (x.e[1] > y) x.e[1] = y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_smax_vec2(register glm_vec2 x, register float y)
{
	if (y > x.e[0]) x.e[0] = y;
	if (y > x.e[1]) x.e[1] = y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_clamp_vec2(register glm_vec2 x, register glm_vec2 minVal, register glm_vec2 maxVal)
{
	if (x.e[0] < minVal.e[0]) x.e[0] = minVal.e[0];
	else if (x.e[0] > maxVal.e[0]) x.e[0] = maxVal.e[0];
	if (x.e[1] < minVal.e[1]) x.e[1] = minVal.e[1];
	else if (x.e[1] > maxVal.e[1]) x.e[1] = maxVal.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_sclamp_vec2(register glm_vec2 x, register float minVal, register float maxVal)
{
	if (x.e[0] < minVal) x.e[0] = minVal;
	else if (x.e[0] > maxVal) x.e[0] = maxVal;
	if (x.e[1] < minVal) x.e[1] = minVal;
	else if (x.e[1] > maxVal) x.e[1] = maxVal;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_mix_vec2(register glm_vec2 x, register glm_vec2 y, register float a)
{
	x.e[0] = x.e[0] * (1 - a) + y.e[0] * a;
	x.e[1] = x.e[1] * (1 - a) + y.e[1] * a;
	return x;
}

GLM_FUNC_QUALIFIER
float glm_dot_vec2(const register glm_vec2 x, const register glm_vec2 y)
{
	return x.e[0]*y.e[0] + x.e[1]*y.e[1];
}

GLM_FUNC_QUALIFIER
float glm_length_vec2(const register glm_vec2 x)
{
	return 1 / Q_rsqrt( x.e[0]*x.e[0] + x.e[1]*x.e[1] );
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_normalize_vec2(register glm_vec2 x)
{
	const register float len2 = x.e[0]*x.e[0] + x.e[1]*x.e[1];
	const register float rlen = Q_rsqrt( len2 );
	x.e[0] *= rlen;
	x.e[1] *= rlen;
	return x;
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_reflect_vec2(const register glm_vec2 I, const register glm_vec2 N)
{
	return glm_sub_vec2(I, glm_smul_vec2(N, 2 * glm_dot_vec2(N, I)));
}

GLM_FUNC_QUALIFIER
glm_vec2 glm_refract_vec2(const register glm_vec2 I, const register glm_vec2 N, const register float eta)
{
	register glm_vec2 v;

	const register float cosT = glm_dot_vec2(N, I);
	const register float k = 1.0f - eta * eta * (1.0f - cosT * cosT);
	
	if (k < 0.0f)
	{
		v.e[0] = 0.0f;
		v.e[1] = 0.0f;
	}
	else
	{
		v = glm_sub_vec2(glm_smul_vec2(I, eta), glm_smul_vec2(N, eta * cosT + 1.0f / Q_rsqrt(k)));	
	}
	
	return v;
}

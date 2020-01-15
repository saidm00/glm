GLM_FUNC_QUALIFIER
glm_dvec2 glm_add_dvec2(register glm_dvec2 x, register glm_dvec2 y)
{
	x.e[0] += y.e[0];
	x.e[1] += y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_sub_dvec2(register glm_dvec2 x, register glm_dvec2 y)
{
	x.e[0] -= y.e[0];
	x.e[1] -= y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_mul_dvec2(register glm_dvec2 x, register glm_dvec2 y)
{
	x.e[0] *= y.e[0];
	x.e[1] *= y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_div_dvec2(register glm_dvec2 x, register glm_dvec2 y)
{
	x.e[0] /= y.e[0];
	x.e[1] /= y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_sadd_dvec2(register glm_dvec2 x, register double y)
{
	x.e[0] += y;
	x.e[1] += y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_ssub_dvec2(register glm_dvec2 x, register double y)
{
	x.e[0] -= y;
	x.e[1] -= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_smul_dvec2(register glm_dvec2 x, register double y)
{
	x.e[0] *= y;
	x.e[1] *= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_sdiv_dvec2(register glm_dvec2 x, register double y)
{
	x.e[0] /= y;
	x.e[1] /= y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_min_dvec2(register glm_dvec2 x, register glm_dvec2 y)
{
	if (x.e[0] > y.e[0]) x.e[0] = y.e[0];
	if (x.e[1] > y.e[1]) x.e[1] = y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_max_dvec2(register glm_dvec2 x, register glm_dvec2 y)
{
	if (y.e[0] > x.e[0]) x.e[0] = y.e[0];
	if (y.e[1] > x.e[1]) x.e[1] = y.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_smin_dvec2(register glm_dvec2 x, register double y)
{
	if (x.e[0] > y) x.e[0] = y;
	if (x.e[1] > y) x.e[1] = y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_smax_dvec2(register glm_dvec2 x, register double y)
{
	if (y > x.e[0]) x.e[0] = y;
	if (y > x.e[1]) x.e[1] = y;
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_clamp_dvec2(register glm_dvec2 x, register glm_dvec2 minVal, register glm_dvec2 maxVal)
{
	if (x.e[0] < minVal.e[0]) x.e[0] = minVal.e[0];
	else if (x.e[0] > maxVal.e[0]) x.e[0] = maxVal.e[0];
	if (x.e[1] < minVal.e[1]) x.e[1] = minVal.e[1];
	else if (x.e[1] > maxVal.e[1]) x.e[1] = maxVal.e[1];
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_sclamp_dvec2(register glm_dvec2 x, register double minVal, register double maxVal)
{
	if (x.e[0] < minVal) x.e[0] = minVal;
	else if (x.e[0] > maxVal) x.e[0] = maxVal;
	if (x.e[1] < minVal) x.e[1] = minVal;
	else if (x.e[1] > maxVal) x.e[1] = maxVal;
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_mix_dvec2(register glm_dvec2 x, register glm_dvec2 y, register double a)
{
	x.e[0] = x.e[0] * (1 - a) + y.e[0] * a;
	x.e[1] = x.e[1] * (1 - a) + y.e[1] * a;
	return x;
}

GLM_FUNC_QUALIFIER
double glm_dot_dvec2(const register glm_dvec2 x, const register glm_dvec2 y)
{
	return x.e[0]*y.e[0] + x.e[1]*y.e[1];
}

GLM_FUNC_QUALIFIER
double glm_length_dvec2(const register glm_dvec2 x)
{
	return 1 / Q_rsqrt( x.e[0]*x.e[0] + x.e[1]*x.e[1] );
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_normalize_dvec2(register glm_dvec2 x)
{
	const register double len2 = x.e[0]*x.e[0] + x.e[1]*x.e[1];
	const register double rlen = Q_rsqrt( len2 );
	x.e[0] *= rlen;
	x.e[1] *= rlen;
	return x;
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_reflect_dvec2(const register glm_dvec2 I, const register glm_dvec2 N)
{
	return glm_sub_dvec2(I, glm_smul_dvec2(N, 2 * glm_dot_dvec2(N, I)));
}

GLM_FUNC_QUALIFIER
glm_dvec2 glm_refract_dvec2(const register glm_dvec2 I, const register glm_dvec2 N, const register double eta)
{
	register glm_dvec2 v;

	const register double cosT = glm_dot_dvec2(N, I);
	const register double k = 1.0 - eta * eta * (1.0 - cosT * cosT);

	if (k < 0.0)
	{
		v.e[0] = 0.0;
		v.e[1] = 0.0;
	}
	else
	{
		v = glm_sub_dvec2(glm_smul_dvec2(I, eta), glm_smul_dvec2(N, eta * cosT + 1.0 / (double)Q_rsqrt(k)));	
	}
	
	return v;
}
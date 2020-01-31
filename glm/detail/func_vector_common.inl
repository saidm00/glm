GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
abs(vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = _abs(x.elem[i]);

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
sign(vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
	{
		if (x.elem[0] > (T)0)
		{
			Result.elem[i] = (T)1;
		}
		else if (x.elem[0] < (T)0)
		{
			Result.elem[i] = (T)-1;
		}
		else
		{
			Result.elem[i] = (T)0;
		}
	}

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
floor(vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = _floor(x.elem[i]);

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
trunc(vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = _trunc(x.elem[i]);

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
round(vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = _round(x.elem[i]);

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
roundEven(vec(L, T, Q) const x)
{
	/* TODO */
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
ceil(vec(L, T, Q) const x)
{

}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
fract(vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] - _floor(x.elem[i]);

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
mod_vector(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = _mod(x.elem[i], y);

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
mod_scalar(vec(L, T, Q) const x, T const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = _mod(x.elem[i], y);

	return Result;
}
/*
GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
modf(vec(L, T, Q) const x, vec(L, T, Q) *y)
{
	
}*/

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
min_vector(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = y.elem[i] < x.elem[i] ? y.elem[i] : x.elem[i];

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
min_scalar(vec(L, T, Q) const x, T const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = y < x.elem[i] ? y : x.elem[i];

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
max_vector(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] < y.elem[i] ? y.elem[i] : x.elem[i];

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
max_scalar(vec(L, T, Q) const x, T const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] < y ? y : x.elem[i];

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
clamp_vector(vec(L, T, Q) const x, vec(L, T, Q) const minVal, vec(L, T, Q) const maxVal)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
	{
		Result.elem[i] = x.elem[i] < minVal.elem[i] ? minVal.elem[i]
		: (x.elem[i] > maxVal.elem[i] ? maxVal.elem[i] : x.elem[i]);
	}

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
clamp_scalar(vec(L, T, Q) const x, T const minVal, T const maxVal)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
	{
		Result.elem[i] = x.elem[i] < minVal ? minVal
		: (x.elem[i] > maxVal ? maxVal : x.elem[i]);
	}

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
mix_vector(vec(L, T, Q) const x, vec(L, T, Q) const y, vec(L, T, Q) const a)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
	{
		Result.elem[i] = x.elem[i] * a.elem[i] + y.elem[i] * (1.0 - a.elem[i]);
	}

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
mix_scalar(vec(L, T, Q) const x, vec(L, T, Q) const y, T const a)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
	{
		Result.elem[i] = x.elem[i] * a + y.elem[i] * (1.0 - a);
	}

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
step_vector(vec(L, T, Q) const edge, vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] < edge.elem[i] ? (T)0 : (T)1;

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
step_scalar(T const edge, vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] < edge ? (T)0 : (T)1;

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
smoothstep_vector(vec(L, T, Q) const edge0, vec(L, T, Q) const edge1, vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
	{
		T const tmp = (x.elem[i] - edge0.elem[i])
			/ (edge1.elem[i] - edge0.elem[i]);

		Result.elem[i] = tmp * tmp * ((T)3 - (T)2 * tmp);
	}

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
smoothstep_scalar(T const edge0, T const edge1, vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
	{
		T const tmp = (x.elem[i] - edge0) / (edge1 - edge0);
		Result.elem[i] = tmp * tmp * ((T)3 - (T)2 * tmp);
	}

	return Result;
}
/*
GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
isnan()
{

}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
isinf()
{

}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
fma()
{

}
*/
/*
floatBitsToInt
floatBitsToUint
intBitsToFloat
uintBitsToFloat
frexp
ldexp
*/
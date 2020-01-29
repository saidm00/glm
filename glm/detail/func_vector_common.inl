#define abs                  GLM_PASTE(vec(L, T, Q), _abs)
#define sign                 GLM_PASTE(vec(L, T, Q), _sign)
#define floor                GLM_PASTE(vec(L, T, Q), _floor)
#define trunc                GLM_PASTE(vec(L, T, Q), _trunc)
#define round                GLM_PASTE(vec(L, T, Q), _round)
#define roundEven            GLM_PASTE(vec(L, T, Q), _roundEven)
#define ceil                 GLM_PASTE(vec(L, T, Q), _ceil)
#define fract                GLM_PASTE(vec(L, T, Q), _fract)
#define mod_vector           GLM_PASTE(vec(L, T, Q), _mod_vector)
#define mod_scalar           GLM_PASTE(vec(L, T, Q), _mod_scalar)
#define modf                 GLM_PASTE(vec(L, T, Q), _modf)
#define min_vector           GLM_PASTE(vec(L, T, Q), _min_vector)
#define min_scalar           GLM_PASTE(vec(L, T, Q), _min_scalar)
#define max_vector           GLM_PASTE(vec(L, T, Q), _max_vector)
#define max_scalar           GLM_PASTE(vec(L, T, Q), _max_scalar)
#define clamp_vector         GLM_PASTE(vec(L, T, Q), _clamp_vector)
#define clamp_scalar         GLM_PASTE(vec(L, T, Q), _clamp_scalar)
#define mix_vector           GLM_PASTE(vec(L, T, Q), _mix_vector)
#define mix_scalar           GLM_PASTE(vec(L, T, Q), _mix_scalar)
#define step_vector          GLM_PASTE(vec(L, T, Q), _step_vector)
#define step_scalar          GLM_PASTE(vec(L, T, Q), _step_scalar)
#define smoothstep_vector    GLM_PASTE(vec(L, T, Q), _smoothstep_vector)
#define smoothstep_scalar    GLM_PASTE(vec(L, T, Q), _smoothstep_scalar)
#define isnan                GLM_PASTE(vec(L, T, Q), _isnan)
#define isinf                GLM_PASTE(vec(L, T, Q), _isinf)
#define fma                  GLM_PASTE(vec(L, T, Q), _fma)

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


#undef abs
#undef sign
#undef floor
#undef trunc
#undef round
#undef roundEven
#undef ceil
#undef fract
#undef mod_vector
#undef mod_scalar
#undef modf
#undef min_vector
#undef min_scalar
#undef max_vector
#undef max_scalar
#undef clamp_vector
#undef clamp_scalar
#undef mix_vector
#undef mix_scalar
#undef step_vector
#undef step_scalar
#undef smoothstep_vector
#undef smoothstep_scalar
#undef isnan
#undef isinf
#undef fma
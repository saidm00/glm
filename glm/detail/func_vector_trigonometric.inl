#define sin   GLM_CALL_FUNC(vec(L, T, Q), sin)
#define cos   GLM_CALL_FUNC(vec(L, T, Q), cos)
#define tan   GLM_CALL_FUNC(vec(L, T, Q), tan)
#define asin  GLM_CALL_FUNC(vec(L, T, Q), asin)
#define acos  GLM_CALL_FUNC(vec(L, T, Q), acos)
#define atan  GLM_CALL_FUNC(vec(L, T, Q), atan)
#define atan2 GLM_CALL_FUNC(vec(L, T, Q), atan2)
#define sinh  GLM_CALL_FUNC(vec(L, T, Q), sinh)
#define cosh  GLM_CALL_FUNC(vec(L, T, Q), cosh)
#define tanh  GLM_CALL_FUNC(vec(L, T, Q), tanh)
#define asinh GLM_CALL_FUNC(vec(L, T, Q), asinh)
#define acosh GLM_CALL_FUNC(vec(L, T, Q), acosh)
#define atanh GLM_CALL_FUNC(vec(L, T, Q), atanh)

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
sin(vec(L, T, Q) const angle)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
		Result.elem[i] = _sin( angle.elem[i] );
    
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
cos(vec(L, T, Q) const angle)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
		Result.elem[i] = _cos( angle.elem[i] );
    
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
tan(vec(L, T, Q) const angle)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
		Result.elem[i] = _tan( angle.elem[i] );
    
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
asin(vec(L, T, Q) const x)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
		Result.elem[i] = _asin( x.elem[i] );
    
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
acos(vec(L, T, Q) const x)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
		Result.elem[i] = _acos( x.elem[i] );
    
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
atan(vec(L, T, Q) const y_over_x)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
		Result.elem[i] = _atan( y_over_x.elem[i] );
    
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
atan2(vec(L, T, Q) const y, vec(L, T, Q) const x)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
		Result.elem[i] = _atan2( y.elem[i], x.elem[i] );
    
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
sinh(vec(L, T, Q) const x)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
		Result.elem[i] = (_exp(x.elem[i]) - _exp(-x.elem[i])) / (T)2;
    
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
cosh(vec(L, T, Q) const x)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
		Result.elem[i] = (_exp(x.elem[i]) + _exp(-x.elem[i])) / (T)2;
    
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
tanh(vec(L, T, Q) const x)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
	{
		T k = _exp( (T)2 * x.elem[i] );
		Result.elem[i] = (k - (T)1) / (k + (T)1);
    }

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
asinh(vec(L, T, Q) const x)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
	{
		T tmp = (_exp(x.elem[i]) - _exp(-x.elem[i])) / (T)2;
		Result.elem[i] = (T)1 / tmp;
	}

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
acosh(vec(L, T, Q) const x)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
	{
		T tmp = (_exp(x.elem[i]) + _exp(-x.elem[i])) / (T)2;
		Result.elem[i] = (T)1 / tmp;
	}

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
atanh(vec(L, T, Q) const x)
{
    vec(L, T, Q) Result;
    
	for (length_t i = 0; i < L; ++i)
	{
		T k = _exp( (T)2 * x.elem[i] );
		T tmp = (k - (T)1) / (k + (T)1);
		Result.elem[i] = (T)1 / tmp;
    }

	return Result;
}

#undef sin
#undef cos
#undef tan
#undef asin
#undef acos
#undef atan
#undef atan2
#undef sinh
#undef cosh
#undef tanh
#undef asinh
#undef acosh
#undef atanh
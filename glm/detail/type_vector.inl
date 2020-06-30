/* Construct vectors from scalars, matrices, etc. */
GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
constructor(length_t const paramCount, ...)
{
	vec(L, T, Q) Result;

	va_list params;

	uint64_t paramTypeFlag;
	glm_RuntimeTypeInformation paramTypeInfo;

	uint64_t dstElemType = GLM_TYPEOF_SCALAR(T);

	GLM_ASSERT(paramCount <= L, "Too many arguments for vector constructor.");
	va_start(params, paramCount);

	/* Parse variadic arguments */
	if (paramCount == 1) {
		paramTypeFlag = va_arg(params, uint64_t);
		if (paramTypeFlag & GLM_TYPE_SCALAR) {
			scalar(T, defaultp) scalarValue;
			length_t loopIdx;

			switch (paramTypeFlag) {
				case GLM_TYPE_BOOL: scalarValue = va_arg(params, int); break;
				case GLM_TYPE_FLOAT: scalarValue = va_arg(params, double); break;
				case GLM_TYPE_DOUBLE: scalarValue = va_arg(params, double); break;
				case GLM_TYPE_INT: scalarValue = va_arg(params, int); break;
				case GLM_TYPE_UINT: scalarValue = va_arg(params, unsigned int); break;
			}

			for (loopIdx = 0; loopIdx < L; ++loopIdx)
				Result.elem[loopIdx] = scalarValue;
		}
	} else {
		length_t paramIdx = 0;
		length_t elemIdx = 0;
		while (paramIdx < paramCount && elemIdx < L) {
			paramTypeFlag = va_arg(params, uint64_t);

			glm_GetRuntimeTypeInformation(&paramTypeInfo, paramTypeFlag);
			elemIdx += glm_ParseAndCastParameter(dstElemType, (void *)((T *)&Result + elemIdx), L - elemIdx, &paramTypeInfo, &params);
			++paramIdx;
		}
	}

	va_end(params);
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
negate(vec(L, T, Q) const x)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = -x.elem[i];

	return Result;
}


GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
add(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] + y.elem[i];

	return Result;
}


GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
sub(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] - y.elem[i];

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
mul(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] * y.elem[i];

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
div(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] / y.elem[i];

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
adds(vec(L, T, Q) const x, T const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] + y;

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
subs(vec(L, T, Q) const x, T const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] - y;

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
muls(vec(L, T, Q) const x, T const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] * y;

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
divs(vec(L, T, Q) const x, T const y)
{
	vec(L, T, Q) Result;

	for(length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] / y;

	return Result;
}

/*
GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
addeqs(vec(L, T, Q) *lhs, T const rhs)
{
	for(length_t i = 0; i < L; ++i)
		lhs->elem[i] += rhs;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
subeqs(vec(L, T, Q) *lhs, T const rhs)
{
	for(length_t i = 0; i < L; ++i)
		lhs->elem[i] -= rhs;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
muleqs(vec(L, T, Q) *lhs, T const rhs)
{
	for(length_t i = 0; i < L; ++i)
		lhs->elem[i] *= rhs;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
diveqs(vec(L, T, Q) *lhs, T const rhs)
{
	for(length_t i = 0; i < L; ++i)
		lhs->elem[i] /= rhs;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
addeqv(vec(L, T, Q) *lhs, vec(L, T, Q) const rhs)
{
	for(length_t i = 0; i < L; ++i)
		lhs->elem[i] += rhs.elem[i];
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
subeqv(vec(L, T, Q) *lhs, vec(L, T, Q) const rhs)
{
	for(length_t i = 0; i < L; ++i)
		lhs->elem[i] -= rhs.elem[i];
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
muleqv(vec(L, T, Q) *lhs, vec(L, T, Q) const rhs)
{
	for(length_t i = 0; i < L; ++i)
		lhs->elem[i] *= rhs.elem[i];
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
diveqv(vec(L, T, Q) *lhs, vec(L, T, Q) const rhs)
{
	for(length_t i = 0; i < L; ++i)
		lhs->elem[i] /= rhs.elem[i];
}
*/
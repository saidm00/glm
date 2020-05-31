/* Construct vectors from scalars, matrices, etc. */
GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
constructor(size_t const paramCount, ...)
{
	
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
/*
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
*/
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
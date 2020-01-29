/* namespace glm */
#define lessThan            GLM_CALL_FUNC(glm_vec(L, T, Q), lessThan)
#define lessThanEqual       GLM_CALL_FUNC(glm_vec(L, T, Q), lessThanEqual)
#define greaterThan         GLM_CALL_FUNC(glm_vec(L, T, Q), greaterThan)
#define greaterThanEqual    GLM_CALL_FUNC(glm_vec(L, T, Q), greaterThanEqual)
#define equal               GLM_CALL_FUNC(glm_vec(L, T, Q), equal)
#define notEqual            GLM_CALL_FUNC(glm_vec(L, T, Q), notEqual)

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, bool, Q)
lessThan(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
    vec(L, bool, Q) Result;

    for (length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] < y.elem[i];

    return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR  vec(L, bool, Q)
lessThanEqual(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
    vec(L, bool, Q) Result;

    for (length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] <= y.elem[i];

    return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR  vec(L, bool, Q)
greaterThan(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
    vec(L, bool, Q) Result;

    for (length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] > y.elem[i];

    return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR  vec(L, bool, Q)
greaterThanEqual(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
    vec(L, bool, Q) Result;

    for (length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] >= y.elem[i];

    return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR  vec(L, bool, Q)
equal(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
    vec(L, bool, Q) Result;

    for (length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] == y.elem[i];

    return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR  vec(L, bool, Q)
notEqual(vec(L, T, Q) const x, vec(L, T, Q) const y)
{
    vec(L, bool, Q) Result;

    for (length_t i = 0; i < L; ++i)
		Result.elem[i] = x.elem[i] != y.elem[i];

    return Result;
}

/* end of namespace glm */
#undef lessThan
#undef lessThanEqual
#undef greaterThan
#undef greaterThanEqual
#undef equal
#undef notEqual
/* namespace glm */
#define lessThan            GLM_PASTE(glm_vec(L, T, Q), _lessThan)
#define lessThanEqual       GLM_PASTE(glm_vec(L, T, Q), _lessThanEqual)
#define greaterThan         GLM_PASTE(glm_vec(L, T, Q), _greaterThan)
#define greaterThanEqual    GLM_PASTE(glm_vec(L, T, Q), _greaterThanEqual)
#define equal               GLM_PASTE(glm_vec(L, T, Q), _equal)
#define notEqual            GLM_PASTE(glm_vec(L, T, Q), _notEqual)

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
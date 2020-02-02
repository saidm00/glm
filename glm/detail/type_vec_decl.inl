#define constructor GLM_CALL_FUNC(constructor, GLM_VEC_NAME(L, T, Q))
#define ptr_cast    GLM_CALL_FUNC(ptr_cast, GLM_VEC_NAME(L, T, Q))

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
ptr_cast(type_t srcElemType, void *srcAddr);

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
constructor(length_t argc, ...);

#undef constructor
#undef ptr_cast
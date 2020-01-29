#define constructor GLM_CALL_FUNC(vec(L, T, Q), constructor)
#define ptr_cast GLM_CALL_FUNC(vec(L, T, Q), ptr_cast)

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
ptr_cast(type_t srcElemType, void *srcAddr);

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
constructor(length_t argc, ...);

#undef constructor
#undef ptr_cast
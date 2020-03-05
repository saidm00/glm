#define constructor GLM_CALL_FUNC(constructor, GLM_VECTOR_TYPENAME(L, T, Q))
#define ptr_cast    GLM_CALL_FUNC(ptr_cast, GLM_VECTOR_TYPENAME(L, T, Q))

vec(L, T, Q)
ptr_cast(type_t srcElemType, void *srcAddr);

vec(L, T, Q)
constructor(length_t argc, ...);

#undef constructor
#undef ptr_cast
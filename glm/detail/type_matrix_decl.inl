#define constructor GLM_CALL_FUNC(constructor, GLM_MATRIX_TYPENAME(C, R, T, Q))
#define ptr_cast    GLM_CALL_FUNC(ptr_cast, GLM_MATRIX_TYPENAME(C, R, T, Q))

mat(C, R, T, Q)
ptr_cast(type_t srcElemType, void *srcAddr);

mat(C, R, T, Q)
constructor(length_t argc, ...);

#undef constructor
#undef ptr_cast
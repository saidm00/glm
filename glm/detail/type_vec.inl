#define ptr_cast GLM_CALL_FUNC(vec(L, T, Q), ptr_cast)

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
ptr_cast(type_t srcElemType, void *srcAddr)
{
	vec(L, T, Q) Result;

	switch (srcElemType)
	{
		case GLM_TYPE_BOOL:
		{
			bool *elemArr = (bool *)srcAddr;
			for (length_t i = 0; i < L; ++i) Result.elem[i] = (T) elemArr[i];
			break;
		}
		case GLM_TYPE_FLOAT:
		{
			float *elemArr = (float *)srcAddr;
			for (length_t i = 0; i < L; ++i) Result.elem[i] = (T) elemArr[i];
			break;
		}
		case GLM_TYPE_DOUBLE:
		{
			double *elemArr = (double *)srcAddr;
			for (length_t i = 0; i < L; ++i) Result.elem[i] = (T) elemArr[i];
			break;
		}
		case GLM_TYPE_INT:
		{
			int *elemArr = (int *)srcAddr;
			for (length_t i = 0; i < L; ++i) Result.elem[i] = (T) elemArr[i];
			break;
		}
		case GLM_TYPE_UINT:
		{
			uint *elemArr = (uint *)srcAddr;
			for (length_t i = 0; i < L; ++i) Result.elem[i] = (T) elemArr[i];
			break;
		}
		default:
			break;
	}
	
	return Result;
}


#undef ptr_cast
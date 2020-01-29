#define bool_type vec(2, bool, Q)
#define constructor GLM_CALL_FUNC(vec(2, T, Q), constructor)

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(2, T, Q)
constructor(length_t argc, ...)
{
	vec(2, T, Q) Result;

	type_t srcType;
	length_t srcElemCount;
	type_t srcElemType;
	T tmpArr[16];
	
	va_list ap;
	va_start(ap, argc);

	length_t dstElemIdx = 0;
		
	for (length_t i = 0; i < argc; ++i)
	{
		srcType = va_arg(ap, type_t);
		glm_vecTypeProps(srcType, &srcElemCount, &srcElemType);

		if (argc == 1 && srcElemCount == 1)
		{
			T elem;
			switch (srcType)
			{
				case GLM_TYPE_BOOL:
					elem = (T)va_arg(ap, bool);
					break;
				case GLM_TYPE_FLOAT:
					elem = (T)va_arg(ap, double);
					break;
				case GLM_TYPE_DOUBLE:
					elem = (T)va_arg(ap, double);
					break;
				case GLM_TYPE_INT:
					elem = (T)va_arg(ap, int);
					break;
				case GLM_TYPE_UINT:
					elem = (T)va_arg(ap, uint);
					break;
				case GLM_TYPE_BOOL1:
					elem = (T)va_arg(ap, vec(1, bool, Q)).elem[0];
					break;
				case GLM_TYPE_FLOAT1:
					elem = (T)va_arg(ap, vec(1, float, Q)).elem[0];
					break;
				case GLM_TYPE_DOUBLE1:
					elem = (T)va_arg(ap, vec(1, double, Q)).elem[0];
					break;
				case GLM_TYPE_INT1:
					elem = (T)va_arg(ap, vec(1, int, Q)).elem[0];
					break;
				case GLM_TYPE_UINT1:
					elem = (T)va_arg(ap, vec(1, uint, Q)).elem[0];
					break;
				default:
					break;
			}

			for (length_t i = 0; i < L; ++i) Result.elem[i] = elem;
			goto finished_work;
		}

		switch (srcType)
		{
			case GLM_TYPE_BOOL:
			{
				*(T*)tmpArr = (T)va_arg(ap, bool);
				break;
			}
			case GLM_TYPE_BOOL1:
			{
				vec(1, bool, Q) srcArg = va_arg(ap, vec(1, bool, Q));
				*(vec(1, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(1, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_BOOL2:
			{
				vec(2, bool, Q) srcArg = va_arg(ap, vec(2, bool, Q));
				*(vec(2, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(2, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_BOOL3:
			{
				vec(3, bool, Q) srcArg = va_arg(ap, vec(3, bool, Q));
				*(vec(3, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(3, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_BOOL4:
			{
				vec(4, bool, Q) srcArg = va_arg(ap, vec(4, bool, Q));
				*(vec(4, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(4, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_FLOAT:
			{
				*(T*)tmpArr = (T)va_arg(ap, double);
				break;
			}
			case GLM_TYPE_FLOAT1:
			{
				vec(1, float, Q) srcArg = va_arg(ap, vec(1, float, Q));
				*(vec(1, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(1, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_FLOAT2:
			{
				vec(2, float, Q) srcArg = va_arg(ap, vec(2, float, Q));
				*(vec(2, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(2, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_FLOAT3:
			{
				vec(3, float, Q) srcArg = va_arg(ap, vec(3, float, Q));
				*(vec(3, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(3, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_FLOAT4:
			{
				vec(4, float, Q) srcArg = va_arg(ap, vec(4, float, Q));
				*(vec(4, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(4, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_DOUBLE:
			{
				*(T*)tmpArr = (T)va_arg(ap, double);
				break;
			}
			case GLM_TYPE_DOUBLE1:
			{
				vec(1, double, Q) srcArg = va_arg(ap, vec(1, double, Q));
				*(vec(1, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(1, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_DOUBLE2:
			{
				vec(2, double, Q) srcArg = va_arg(ap, vec(2, double, Q));
				*(vec(2, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(2, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_DOUBLE3:
			{
				vec(3, double, Q) srcArg = va_arg(ap, vec(3, double, Q));
				*(vec(3, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(3, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_DOUBLE4:
			{
				vec(4, double, Q) srcArg = va_arg(ap, vec(4, double, Q));
				*(vec(4, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(4, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_INT:
			{
				*(T*)tmpArr = (T)va_arg(ap, int);
				break;
			}
			case GLM_TYPE_INT1:
			{
				vec(1, int, Q) srcArg = va_arg(ap, vec(1, int, Q));
				*(vec(1, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(1, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_INT2:
			{
				vec(2, int, Q) srcArg = va_arg(ap, vec(2, int, Q));
				*(vec(2, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(2, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_INT3:
			{
				vec(3, int, Q) srcArg = va_arg(ap, vec(3, int, Q));
				*(vec(3, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(3, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_INT4:
			{
				vec(4, int, Q) srcArg = va_arg(ap, vec(4, int, Q));
				*(vec(4, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(4, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_UINT:
			{
				*(T*)tmpArr = (T)va_arg(ap, uint);
				break;
			}
			case GLM_TYPE_UINT1:
			{
				vec(1, uint, Q) srcArg = va_arg(ap, vec(1, uint, Q));
				*(vec(1, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(1, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_UINT2:
			{
				vec(2, uint, Q) srcArg = va_arg(ap, vec(2, uint, Q));
				*(vec(2, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(2, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_UINT3:
			{
				vec(3, uint, Q) srcArg = va_arg(ap, vec(3, uint, Q));
				*(vec(3, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(3, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
			case GLM_TYPE_UINT4:
			{
				vec(4, uint, Q) srcArg = va_arg(ap, vec(4, uint, Q));
				*(vec(4, T, Q)*)tmpArr = GLM_CALL_FUNC(vec(4, T, Q), ptr_cast)(srcElemType, (void *)&srcArg);
				break;
			}
		}
		
		for (length_t j = 0; j < srcElemCount && dstElemIdx + j < L; ++j)
		{
			Result.elem[dstElemIdx + j] = tmpArr[j];
		}

		if (dstElemIdx + srcElemCount >= L)
		{
			goto finished_work;
		}

		dstElemIdx += srcElemCount;
	}

finished_work:
	va_end(ap);
	return Result;
}


#undef constructor
#undef bool_type

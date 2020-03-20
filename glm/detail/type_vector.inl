GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
constructor(length_t argc, ...)
{
	vec(L, T, Q) Result;

	type_t dstElemType = GLM_TYPEOF_SCALAR(T);
	type_t srcType;
	glm_type_info_t srcTypeInfo;
	T tmpArr[16];

	va_list ap;
	va_start(ap, argc);

	length_t dstElemIdx = 0;
		
	for (length_t arg_idx = 0; arg_idx < argc; ++arg_idx)
	{
		srcType = va_arg(ap, type_t);

		glm_get_type_info(srcType, &srcTypeInfo);

		if (argc == 1 && srcTypeInfo.elemCount == 1)
		{
			T elem;
			switch (srcType)
			{
				case GLM_TYPE_BOOL:
					elem = (T)va_arg(ap, int);
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
					elem = (T)va_arg(ap, unsigned int);
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
				tmpArr[0] = va_arg(ap, int);
				break;
			case GLM_TYPE_FLOAT:
				tmpArr[0] = va_arg(ap, double);
				break;
			case GLM_TYPE_DOUBLE:
				tmpArr[0] = va_arg(ap, double);
				break;
			case GLM_TYPE_INT:
				tmpArr[0] = va_arg(ap, int);
				break;
			case GLM_TYPE_UINT:
				tmpArr[0] = va_arg(ap, unsigned int);
				break;
			
			/* Bool types */
			case GLM_TYPE_BOOL1:
				tmpArr[0] = va_arg(ap, vec(1, bool, defaultp)).elem[0];
				break;
			case GLM_TYPE_BOOL2:
			{
				vec(2, bool, defaultp) tmpArg = va_arg(ap, vec(2, bool, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_BOOL3:
			{
				vec(3, bool, defaultp) tmpArg = va_arg(ap, vec(3, bool, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_BOOL4:
			{
				vec(4, bool, defaultp) tmpArg = va_arg(ap, vec(4, bool, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}

			/* Float types */
			case GLM_TYPE_FLOAT1:
				tmpArr[0] = va_arg(ap, vec(1, float, defaultp)).elem[0];
				break;
			case GLM_TYPE_FLOAT2:
			{
				vec(2, float, defaultp) tmpArg = va_arg(ap, vec(2, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_FLOAT3:
			{
				vec(3, float, defaultp) tmpArg = va_arg(ap, vec(3, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_FLOAT4:
			{
				vec(4, float, defaultp) tmpArg = va_arg(ap, vec(4, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			
			/* Double types */
			case GLM_TYPE_DOUBLE1:
				tmpArr[0] = va_arg(ap, vec(1, double, defaultp)).elem[0];
				break;
			case GLM_TYPE_DOUBLE2:
			{
				vec(2, double, defaultp) tmpArg = va_arg(ap, vec(2, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_DOUBLE3:
			{
				vec(3, double, defaultp) tmpArg = va_arg(ap, vec(3, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_DOUBLE4:
			{
				vec(4, double, defaultp) tmpArg = va_arg(ap, vec(4, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			
			/* Integer types */
			case GLM_TYPE_INT1:
				tmpArr[0] = va_arg(ap, vec(1, int, defaultp)).elem[0];
				break;
			case GLM_TYPE_INT2:
			{
				vec(2, int, defaultp) tmpArg = va_arg(ap, vec(2, int, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_INT3:
			{
				vec(3, int, defaultp) tmpArg = va_arg(ap, vec(3, int, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_INT4:
			{
				vec(4, int, defaultp) tmpArg = va_arg(ap, vec(4, int, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			/* Unsigned Integer types */
			case GLM_TYPE_UINT1:
				tmpArr[0] = va_arg(ap, vec(1, uint, defaultp)).elem[0];
				break;
			case GLM_TYPE_UINT2:
			{
				vec(2, uint, defaultp) tmpArg = va_arg(ap, vec(2, uint, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_UINT3:
			{
				vec(3, uint, defaultp) tmpArg = va_arg(ap, vec(3, uint, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_UINT4:
			{
				vec(4, uint, defaultp) tmpArg = va_arg(ap, vec(4, uint, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}

			/* Matrix types */
			case GLM_TYPE_FLOAT2X2:
			{
				mat(2, 2, float, defaultp) tmpArg = va_arg(ap, mat(2, 2, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_FLOAT2X3:
			{
				mat(2, 3, float, defaultp) tmpArg = va_arg(ap, mat(2, 3, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_FLOAT2X4:
			{
				mat(2, 4, float, defaultp) tmpArg = va_arg(ap, mat(2, 4, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_FLOAT3X2:
			{
				mat(3, 2, float, defaultp) tmpArg = va_arg(ap, mat(3, 2, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_FLOAT3X3:
			{
				mat(3, 3, float, defaultp) tmpArg = va_arg(ap, mat(3, 3, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_FLOAT3X4:
			{
				mat(3, 4, float, defaultp) tmpArg = va_arg(ap, mat(3, 4, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_FLOAT4X2:
			{
				mat(4, 2, float, defaultp) tmpArg = va_arg(ap, mat(4, 2, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_FLOAT4X3:
			{
				mat(4, 3, float, defaultp) tmpArg = va_arg(ap, mat(4, 3, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_FLOAT4X4:
			{
				mat(4, 4, float, defaultp) tmpArg = va_arg(ap, mat(4, 4, float, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}

			/* Double matrices */
			case GLM_TYPE_DOUBLE2X2:
			{
				mat(2, 2, double, defaultp) tmpArg = va_arg(ap, mat(2, 2, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_DOUBLE2X3:
			{
				mat(2, 3, double, defaultp) tmpArg = va_arg(ap, mat(2, 3, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_DOUBLE2X4:
			{
				mat(2, 4, double, defaultp) tmpArg = va_arg(ap, mat(2, 4, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_DOUBLE3X2:
			{
				mat(3, 2, double, defaultp) tmpArg = va_arg(ap, mat(3, 2, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_DOUBLE3X3:
			{
				mat(3, 3, double, defaultp) tmpArg = va_arg(ap, mat(3, 3, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_DOUBLE3X4:
			{
				mat(3, 4, double, defaultp) tmpArg = va_arg(ap, mat(3, 4, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_DOUBLE4X2:
			{
				mat(4, 2, double, defaultp) tmpArg = va_arg(ap, mat(4, 2, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_DOUBLE4X3:
			{
				mat(4, 3, double, defaultp) tmpArg = va_arg(ap, mat(4, 3, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}
			case GLM_TYPE_DOUBLE4X4:
			{
				mat(4, 4, double, defaultp) tmpArg = va_arg(ap, mat(4, 4, double, defaultp));
				glm_cast_array(tmpArr, dstElemType, &tmpArg.elem[0], srcTypeInfo.elemType, srcTypeInfo.elemCount);
				break;
			}

		}

		for (length_t j = 0; j < srcTypeInfo.elemCount && dstElemIdx + j < L; ++j)
		{
			Result.elem[dstElemIdx + j] = tmpArr[j];
		}

		if (dstElemIdx + srcTypeInfo.elemCount >= L)
		{
			goto finished_work;
		}

		dstElemIdx += srcTypeInfo.elemCount;
	}

finished_work:
	va_end(ap);
	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
load1(const T x)
{
	vec(L, T, Q) Result;

	for (length_t i = 0; i < L; ++i)
		Result.elem[i] = x;

	return Result;
}


GLM_FUNC_QUALIFIER GLM_CONSTEXPR vec(L, T, Q)
variadic_add(length_t argc, ...)
{
	vec(L, T, Q) Result;


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
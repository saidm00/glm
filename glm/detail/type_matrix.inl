/* Constructors & helper functions */

/* Generates and returns the identity matrix for an nxn square matrix  */
GLM_FUNC_QUALIFIER GLM_CONSTEXPR mat(C, R, T, Q)
identity(void)
{
	/*GLM_STATIC_ASSERT(C == R, "identity only for square matrices.");*/
	mat(C, R, T, Q) Result;
	GLM_ZERO_MEMORY(&Result, sizeof(Result));
	size_t loopIdx;
	static const size_t MINIMUM_DIM = C < R ? C : R;

	for (loopIdx = 0; loopIdx < MINIMUM_DIM; ++loopIdx)
		Result.elem[loopIdx][loopIdx] = (T)1;

	return Result;
}

/* Matrix Constructor (From section 5.4.2. Vector and Matrix Constructors of GLSL 4.60.7 specification) */
GLM_FUNC_QUALIFIER GLM_CONSTEXPR mat(C, R, T, Q)
constructor(size_t const paramCount, ...)
{
	mat(C, R, T, Q) Result;
	va_list parameterList;
	
	uint64_t paramTypeFlag;
	glm_RTTI paramRTTI;
	static const size_t ELEMENT_COUNT = C * R;

	uint64_t dstElemType = GLM_TYPEOF_SCALAR(T);
	size_t paramIdx = 0;
	size_t readElems = 0;

	GLM_ASSERT(paramCount <= ELEMENT_COUNT, "Too many arguments for matrix constuctor.");
	va_start(parameterList, paramCount);

#ifndef NDEBUG
	GLM_ZERO_MEMORY(&Result, sizeof(Result));
#endif

	/* Parse variadic arguments */	
	for (; paramIdx < paramCount && readElems < ELEMENT_COUNT; ++paramIdx) {
		paramTypeFlag = va_arg(parameterList, uint64_t);
		
		if (paramCount == 1) {
			if (paramTypeFlag & GLM_TYPE_SCALAR) {
				/* Cast from scalar (second paragraph, sect. 5.4.2 [GLSL 4.60]) */
				T scalarValue;
				size_t loopIdx;
				static const size_t MINIMUM_DIM = C < R ? C : R;
				GLM_ZERO_MEMORY(&Result, sizeof(Result));

				switch (paramTypeFlag) {
					case GLM_TYPE_BOOL: scalarValue = (T)va_arg(parameterList, int); break;
					case GLM_TYPE_FLOAT: scalarValue = (T)va_arg(parameterList, double); break;
					case GLM_TYPE_DOUBLE: scalarValue = (T)va_arg(parameterList, double); break;
					case GLM_TYPE_INT: scalarValue = (T)va_arg(parameterList, int); break;
					case GLM_TYPE_UINT: scalarValue = (T)va_arg(parameterList, unsigned int); break;
					default:
						break;
				}

				for (loopIdx = 0; loopIdx < MINIMUM_DIM; ++loopIdx)
					Result.elem[loopIdx][loopIdx] = scalarValue;

				goto FinishedConstruction;
			}
			else if (paramTypeFlag & GLM_TYPE_MATRIX) {
				/* Cast from matrix (third paragraph, sect. 5.4.2 [GLSL 4.60]) */
				
				goto FinishedConstruction;
			}
		}

		GetExtraTypeInformation(paramTypeFlag, &paramRTTI);
		
		//printf("0x%x\n", paramTypeFlag);
		//printf("%u\n", readElems);
		//printf("%u\n", ELEMENT_COUNT - readElems);
		readElems += ParseAndCvtArg(dstElemType, (void *)((T *)&Result.elem[0][0] + readElems),
			ELEMENT_COUNT - readElems, &paramRTTI, &parameterList);
	}

FinishedConstruction:
	va_end(parameterList);

	return Result;
}
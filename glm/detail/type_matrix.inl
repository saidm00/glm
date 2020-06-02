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
constructor(length_t const paramCount, ...)
{
	mat(C, R, T, Q) Result;
	va_list params;
	
	uint64_t paramTypeFlag;
	glm_RuntimeTypeInformation paramTypeInfo;
	static const size_t ELEMENT_COUNT = C * R;

	uint64_t dstElemType = GLM_TYPEOF_SCALAR(T);

	GLM_ASSERT(paramCount <= ELEMENT_COUNT, "Too many arguments for matrix constructor.");
	va_start(params, paramCount);

	/* Parse variadic arguments */
	if (paramCount == 1) {
		paramTypeFlag = va_arg(params, uint64_t);
		if (paramTypeFlag & GLM_TYPE_SCALAR) {
			/* Cast from scalar (second paragraph, sect. 5.4.2 [GLSL 4.60]) */
			scalar(T, defaultp) scalarValue;
			length_t loopIdx;
			static const length_t MINIMUM_DIM = C < R ? C : R;
			GLM_ZERO_MEMORY(&Result, sizeof(Result));

			switch (paramTypeFlag) {
				case GLM_TYPE_BOOL: scalarValue = va_arg(params, int); break;
				case GLM_TYPE_FLOAT: scalarValue = va_arg(params, double); break;
				case GLM_TYPE_DOUBLE: scalarValue = va_arg(params, double); break;
				case GLM_TYPE_INT: scalarValue = va_arg(params, int); break;
				case GLM_TYPE_UINT: scalarValue = va_arg(params, unsigned int); break;
			}

			for (loopIdx = 0; loopIdx < MINIMUM_DIM; ++loopIdx)
				Result.elem[loopIdx][loopIdx] = scalarValue;
		}
		else if (paramTypeFlag & GLM_TYPE_MATRIX) {
			/* Cast from matrix (third paragraph, sect. 5.4.2 [GLSL 4.60]) */
			Result = identity();
			glm_GetRuntimeTypeInformation(&paramTypeInfo, paramTypeFlag);
			glm_MoveMatrixArgToMatrix((void *)&Result, C, R, dstElemType, &paramTypeInfo, &params);
		} else {
			glm_GetRuntimeTypeInformation(&paramTypeInfo, paramTypeFlag);
			glm_ParseAndCastParameter(dstElemType, (void *)&Result, ELEMENT_COUNT, &paramTypeInfo, &params);
		}
	} else {
		length_t paramIdx = 0;
		length_t elemIdx = 0;
		while (paramIdx < paramCount && elemIdx < ELEMENT_COUNT) {
			paramTypeFlag = va_arg(params, uint64_t);

			glm_GetRuntimeTypeInformation(&paramTypeInfo, paramTypeFlag);
			elemIdx += glm_ParseAndCastParameter(dstElemType, (void *)((T *)&Result + elemIdx),
				ELEMENT_COUNT - elemIdx, &paramTypeInfo, &params);
			++paramIdx;
		}
	}

	va_end(params);
	return Result;
}
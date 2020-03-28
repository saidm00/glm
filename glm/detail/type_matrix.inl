/* Constructors & helper functions */

/* Generates and returns the identity matrix for an nxn square matrix  */
GLM_FUNC_QUALIFIER GLM_CONSTEXPR mat(C, R, T, Q)
identity(void)
{
	GLM_STATIC_ASSERT(C == R, "identity only for square matrices.");
	mat(C, R, T, Q) Result;
	lenght_t i, j;

	for (i = 0; i < C; ++i)
		for (j = 0; j < R; ++j)
			Result.elem[j][i] = (T)(i == j);

	return Result;
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR mat(C, R, T, Q)
transpose(mat(C, R, T, Q) const m)
{
	mat(C, R, T, Q) Result;
	length_t i, j;

	for (i = 0; i < C; ++i)
		for (j = 0; j < R; ++j)
			Result.elem[i][j] = m.elem[j][i];

	return Result;
}


/* TO-DO: Implement constructor for matrix */
GLM_FUNC_QUALIFIER GLM_CONSTEXPR mat(C, R, T, Q)
constructor(length_t argc, ...)
{

}

// /* Enum for row operation type */
// typedef enum
// {
// 	ADD,
// 	SUB,
// 	MULS,
// }mat_rowop_type_t;

// /* Row operations for addition and subtraction of rows, passes matrix by reference */
// GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
// rowop(mat_rowop_type_t op, mat(C, R, T, Q) * _mat, uint _r1, uint _r2)
// {
// 	switch (op)
// 	{
// 		case ADD:
// 			/* Add row1 (vector) to row2 (vector) */
// 			for(length_t i = 0; i < R; i++) _mat[_r2][i] += _mat[_r1][i];
// 		break;
// 		case SUB:
// 			/* Same thing, but with subtraction */
// 			for(length_t i = 0; i < R; i++) _mat[_r2][i] -= _mat[_r1][i];
// 		break;
// 	}
// }

// /* Multiply a row by a scalar */
// GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
// rowop_muls(mat_rowop_type_t op, mat(C, R, T, Q) * _mat, uint _r1, scalar(T, Q) _s)
// {
// 	for(length_t i = 0; i < R; i++) _mat[_r1][i] *= _s;
// }

GLM_FUNC_QUALIFIER GLM_CONSTEXPR T
determinant(mat(C, R, T, Q) m)
{
	
}

GLM_FUNC_QUALIFIER GLM_CONSTEXPR mat(C, R, T, Q)
inverse(mat(C, R, T, Q) m)
{
	mat(C, R, T, Q) Result;

	

	return Result;
}


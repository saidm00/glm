#ifndef GLM_DETAIL_TYPE_MATRIX_H
#define GLM_DETAIL_TYPE_MATRIX_H

#include "qualifier.h"
#include "type_scalar.h"

#include "namespace_begin.inl"

/*
#define GLM_MATRIX_TYPENAME_float2x2_defaultp mat2x2
#define GLM_MATRIX_TYPENAME_float2x3_defaultp mat2x3
#define GLM_MATRIX_TYPENAME_float2x4_defaultp mat2x4
#define GLM_MATRIX_TYPENAME_float3x2_defaultp mat3x2
#define GLM_MATRIX_TYPENAME_float3x3_defaultp mat3x3
#define GLM_MATRIX_TYPENAME_float3x4_defaultp mat3x4
#define GLM_MATRIX_TYPENAME_float4x2_defaultp mat4x2
#define GLM_MATRIX_TYPENAME_float4x3_defaultp mat4x3
#define GLM_MATRIX_TYPENAME_float4x4_defaultp mat4x4

#define GLM_MATRIX_TYPENAME_double2x2_defaultp dmat2x2
#define GLM_MATRIX_TYPENAME_double2x3_defaultp dmat2x3
#define GLM_MATRIX_TYPENAME_double2x4_defaultp dmat2x4
#define GLM_MATRIX_TYPENAME_double3x2_defaultp dmat3x2
#define GLM_MATRIX_TYPENAME_double3x3_defaultp dmat3x3
#define GLM_MATRIX_TYPENAME_double3x4_defaultp dmat3x4
#define GLM_MATRIX_TYPENAME_double4x2_defaultp dmat4x2
#define GLM_MATRIX_TYPENAME_double4x3_defaultp dmat4x3
#define GLM_MATRIX_TYPENAME_double4x4_defaultp dmat4x4
*/

#define GLM_MATRIX_TYPENAME(C, R, T, Q) T ## C ## x ## R

/*
	C: Left-hand  length_t (constexpr)
	R: Right hand length_t (constexpr)
	T: typename (type)
	Q: qualifier (constexpr)
*/
#define glm_mat(C, R, T, Q) GLM_PREFIX(GLM_MATRIX_TYPENAME(C, R, T, Q))

#define GLM_MATRIX_DATA(C, R, T, Q)\
union {\
scalar(T, Q) elem[C][R];\
unsigned char _data[sizeof(scalar(T, Q)) * C * R];\
}

/*
	Define matrix types with float elements.
*/
typedef
struct mat(2, 2, float, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(2, 2, float, defaultp);
	};
}
mat(2, 2, float, defaultp);

typedef
struct mat(2, 3, float, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(2, 3, float, defaultp);
	};
}
mat(2, 3, float, defaultp);

typedef
struct mat(2, 4, float, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(2, 4, float, defaultp);
	};
}
mat(2, 4, float, defaultp);

typedef
struct mat(3, 2, float, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(3, 2, float, defaultp);
	};
}
mat(3, 2, float, defaultp);

typedef
struct mat(3, 3, float, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(3, 3, float, defaultp);
	};
}
mat(3, 3, float, defaultp);

typedef
struct mat(3, 4, float, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(3, 4, float, defaultp);
	};
}
mat(3, 4, float, defaultp);

typedef
struct mat(4, 2, float, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(4, 2, float, defaultp);
	};
}
mat(4, 2, float, defaultp);

typedef
struct mat(4, 3, float, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(4, 3, float, defaultp);
	};
}
mat(4, 3, float, defaultp);

typedef
struct mat(4, 4, float, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(4, 4, float, defaultp);
	};
}
mat(4, 4, float, defaultp);

/*
	Define matrix types with double elements.
*/
typedef
struct mat(2, 2, double, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(2, 2, double, defaultp);
	};
}
mat(2, 2, double, defaultp);

typedef
struct mat(2, 3, double, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(2, 3, double, defaultp);
	};
}
mat(2, 3, double, defaultp);

typedef
struct mat(2, 4, double, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(2, 4, double, defaultp);
	};
}
mat(2, 4, double, defaultp);

typedef
struct mat(3, 2, double, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(3, 2, double, defaultp);
	};
}
mat(3, 2, double, defaultp);

typedef
struct mat(3, 3, double, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(3, 3, double, defaultp);
	};
}
mat(3, 3, double, defaultp);

typedef
struct mat(3, 4, double, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(3, 4, double, defaultp);
	};
}
mat(3, 4, double, defaultp);

typedef
struct mat(4, 2, double, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(4, 2, double, defaultp);
	};
}
mat(4, 2, double, defaultp);

typedef
struct mat(4, 3, double, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(4, 3, double, defaultp);
	};
}
mat(4, 3, double, defaultp);

typedef
struct mat(4, 4, double, defaultp)
{
	union
	{
		GLM_MATRIX_DATA(4, 4, double, defaultp);
	};
}
mat(4, 4, double, defaultp);

typedef mat(2, 2, float, defaultp) glm_mat2x2, glm_mat2;
typedef mat(2, 3, float, defaultp) glm_mat2x3;
typedef mat(2, 4, float, defaultp) glm_mat2x4;
typedef mat(3, 2, float, defaultp) glm_mat3x2;
typedef mat(3, 3, float, defaultp) glm_mat3x3, glm_mat3;
typedef mat(3, 4, float, defaultp) glm_mat3x4;
typedef mat(4, 2, float, defaultp) glm_mat4x2;
typedef mat(4, 3, float, defaultp) glm_mat4x3;
typedef mat(4, 4, float, defaultp) glm_mat4x4, glm_mat4;
typedef mat(2, 2, double, defaultp) glm_dmat2x2, glm_dmat2;
typedef mat(2, 3, double, defaultp) glm_dmat2x3;
typedef mat(2, 4, double, defaultp) glm_dmat2x4;
typedef mat(3, 2, double, defaultp) glm_dmat3x2;
typedef mat(3, 3, double, defaultp) glm_dmat3x3, glm_dmat3;
typedef mat(3, 4, double, defaultp) glm_dmat3x4;
typedef mat(4, 2, double, defaultp) glm_dmat4x2;
typedef mat(4, 3, double, defaultp) glm_dmat4x3;
typedef mat(4, 4, double, defaultp) glm_dmat4x4, glm_dmat4;

#include "namespace_end.inl"

#endif /* GLM_DETAIL_TYPE_MATRIX_H */
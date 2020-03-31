#ifndef GLM_DETAIL_QUALIFIER_H
#define GLM_DETAIL_QUALIFIER_H

#include "setup.h"
#include "type_scalar.h"

typedef enum glm_qualifier
{
	GLM_QUALIFIER_LOWP,
	GLM_QUALIFIER_MEDIUMP,
	GLM_QUALIFIER_HIGHP,
	GLM_QUALIFIER_DEFAULTP = GLM_QUALIFIER_HIGHP
} glm_qualifier_t;

typedef enum glm_type_category
{
	GLM_TYPE_CATEGORY_SCALAR,
	GLM_TYPE_CATEGORY_VECTOR,
	GLM_TYPE_CATEGORY_MATRIX
} glm_type_category_t;

/* Enums of all GLM-C typenames */
typedef enum glm_type
{
	GLM_TYPE_BOOL,
	GLM_TYPE_FLOAT,
	GLM_TYPE_DOUBLE,
	GLM_TYPE_INT,
	GLM_TYPE_UINT,
	GLM_TYPE_BOOL1,
	GLM_TYPE_BOOL2,
	GLM_TYPE_BOOL3,
	GLM_TYPE_BOOL4,
	GLM_TYPE_FLOAT1,
	GLM_TYPE_FLOAT2,
	GLM_TYPE_FLOAT3,
	GLM_TYPE_FLOAT4,
	GLM_TYPE_DOUBLE1,
	GLM_TYPE_DOUBLE2,
	GLM_TYPE_DOUBLE3,
	GLM_TYPE_DOUBLE4,
	GLM_TYPE_INT1,
	GLM_TYPE_INT2,
	GLM_TYPE_INT3,
	GLM_TYPE_INT4,
	GLM_TYPE_UINT1,
	GLM_TYPE_UINT2,
	GLM_TYPE_UINT3,
	GLM_TYPE_UINT4,
	GLM_TYPE_FLOAT2X2,
	GLM_TYPE_FLOAT2X3,
	GLM_TYPE_FLOAT2X4,
	GLM_TYPE_FLOAT3X2,
	GLM_TYPE_FLOAT3X3,
	GLM_TYPE_FLOAT3X4,
	GLM_TYPE_FLOAT4X2,
	GLM_TYPE_FLOAT4X3,
	GLM_TYPE_FLOAT4X4,
	GLM_TYPE_DOUBLE2X2,
	GLM_TYPE_DOUBLE2X3,
	GLM_TYPE_DOUBLE2X4,
	GLM_TYPE_DOUBLE3X2,
	GLM_TYPE_DOUBLE3X3,
	GLM_TYPE_DOUBLE3X4,
	GLM_TYPE_DOUBLE4X2,
	GLM_TYPE_DOUBLE4X3,
	GLM_TYPE_DOUBLE4X4
} glm_type_t;

/* Return size of GLM-C types */
GLM_FUNC_QUALIFIER GLM_CONSTEXPR size_t
glm_sizeof_elem_type(glm_type_t type)
{
	switch (type)
	{
		case GLM_TYPE_BOOL:
			return sizeof(bool);
			break;
		case GLM_TYPE_FLOAT:
			return sizeof(float);
			break;
		case GLM_TYPE_DOUBLE:
			return sizeof(double);
			break;
		case GLM_TYPE_INT:
			return sizeof(int);
			break;
		case GLM_TYPE_UINT:
			return sizeof(uint);
			break;
		default: return 0;
	}

	return 0;
}

struct glm_type_info
{
	glm_type_category_t typeCategory;
	glm_type_t elemType;
	glm_length_t elemCol, elemRow;
	glm_length_t elemCount; // C * R for matrices, and L for vectors
	glm_qualifier_t elemQualifier;
};

typedef struct glm_type_info glm_type_info_t;

GLM_FUNC_QUALIFIER GLM_CONSTEXPR void
glm_get_type_info(glm_type_t type, glm_type_info_t *info)
{
	switch (type)
	{
	case GLM_TYPE_FLOAT2X2:
		info->elemType = GLM_TYPE_FLOAT;
		info->elemCol = 2;
		info->elemRow = 2;
		info->elemCount = 4;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_FLOAT2X3:
		info->elemType = GLM_TYPE_FLOAT;
		info->elemCol = 2;
		info->elemRow = 3;
		info->elemCount = 6;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_FLOAT2X4:
		info->elemType = GLM_TYPE_FLOAT;
		info->elemCol = 2;
		info->elemRow = 4;
		info->elemCount = 8;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_FLOAT3X2:
		info->elemType = GLM_TYPE_FLOAT;
		info->elemCol = 3;
		info->elemRow = 2;
		info->elemCount = 6;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_FLOAT3X3:
		info->elemType = GLM_TYPE_FLOAT3X3;
		info->elemCol = 3;
		info->elemRow = 3;
		info->elemCount = 9;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_FLOAT3X4:
		info->elemType = GLM_TYPE_FLOAT;
		info->elemCol = 3;
		info->elemRow = 4;
		info->elemCount = 12;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_FLOAT4X2:
		info->elemType = GLM_TYPE_FLOAT;
		info->elemCol = 4;
		info->elemRow = 2;
		info->elemCount = 8;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_FLOAT4X3:
		info->elemType = GLM_TYPE_FLOAT;
		info->elemCol = 4;
		info->elemRow = 3;
		info->elemCount = 12;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_FLOAT4X4:
		info->elemType = GLM_TYPE_FLOAT;
		info->elemCol = 4;
		info->elemRow = 4;
		info->elemCount = 16;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_DOUBLE2X2:
		info->elemType = GLM_TYPE_DOUBLE;
		info->elemCol = 2;
		info->elemRow = 2;
		info->elemCount = 4;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_DOUBLE2X3:
		info->elemType = GLM_TYPE_DOUBLE;
		info->elemCol = 2;
		info->elemRow = 3;
		info->elemCount = 6;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_DOUBLE2X4:
		info->elemType = GLM_TYPE_DOUBLE;
		info->elemCol = 2;
		info->elemRow = 4;
		info->elemCount = 8;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_DOUBLE3X2:
		info->elemType = GLM_TYPE_DOUBLE;
		info->elemCol = 3;
		info->elemRow = 2;
		info->elemCount = 6;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_DOUBLE3X3:
		info->elemType = GLM_TYPE_DOUBLE;
		info->elemCol = 3;
		info->elemRow = 3;
		info->elemCount = 9;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_DOUBLE3X4:
		info->elemType = GLM_TYPE_DOUBLE;
		info->elemCol = 3;
		info->elemRow = 4;
		info->elemCount = 12;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_DOUBLE4X2:
		info->elemType = GLM_TYPE_DOUBLE;
		info->elemCol = 4;
		info->elemRow = 2;
		info->elemCount = 8;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_DOUBLE4X3:
		info->elemType = GLM_TYPE_DOUBLE;
		info->elemCol = 4;
		info->elemRow = 3;
		info->elemCount = 12;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_DOUBLE4X4:
		info->elemType = GLM_TYPE_DOUBLE;
		info->elemCol = 4;
		info->elemRow = 4;
		info->elemCount = 16;
		/* info->elemQualifier = ;*/
		break;
	case GLM_TYPE_BOOL:
		info->elemType  = GLM_TYPE_BOOL;
		info->elemCount = 1;
		break;
	case GLM_TYPE_BOOL1:
		info->elemType  = GLM_TYPE_BOOL;
		info->elemCount = 1;
		break;
	case GLM_TYPE_BOOL2:
		info->elemType  = GLM_TYPE_BOOL;
		info->elemCount = 2;
		break;
	case GLM_TYPE_BOOL3:
		info->elemType  = GLM_TYPE_BOOL;
		info->elemCount = 3;
		break;
	case GLM_TYPE_BOOL4:
		info->elemType  = GLM_TYPE_BOOL;
		info->elemCount = 4;
		break;
	case GLM_TYPE_FLOAT:
		info->elemType  = GLM_TYPE_FLOAT;
		info->elemCount = 1;
		break;
	case GLM_TYPE_FLOAT1:
		info->elemType  = GLM_TYPE_FLOAT;
		info->elemCount = 1;
		break;
	case GLM_TYPE_FLOAT2:
		info->elemType  = GLM_TYPE_FLOAT;
		info->elemCount = 2;
		break;
	case GLM_TYPE_FLOAT3:
		info->elemType  = GLM_TYPE_FLOAT;
		info->elemCount = 3;
		break;
	case GLM_TYPE_FLOAT4:
		info->elemType  = GLM_TYPE_FLOAT;
		info->elemCount = 4;
		break;
	case GLM_TYPE_DOUBLE:
		info->elemType  = GLM_TYPE_DOUBLE;
		info->elemCount = 1;
		break;
	case GLM_TYPE_DOUBLE1:
		info->elemType  = GLM_TYPE_DOUBLE;
		info->elemCount = 1;
		break;
	case GLM_TYPE_DOUBLE2:
		info->elemType  = GLM_TYPE_DOUBLE;
		info->elemCount = 2;
		break;
	case GLM_TYPE_DOUBLE3:
		info->elemType  = GLM_TYPE_DOUBLE;
		info->elemCount = 3;
		break;
	case GLM_TYPE_DOUBLE4:
		info->elemType  = GLM_TYPE_DOUBLE;
		info->elemCount = 4;
		break;
	case GLM_TYPE_INT:
		info->elemType  = GLM_TYPE_INT;
		info->elemCount = 1;
		break;
	case GLM_TYPE_INT1:
		info->elemType  = GLM_TYPE_INT;
		info->elemCount = 1;
		break;
	case GLM_TYPE_INT2:
		info->elemType  = GLM_TYPE_INT;
		info->elemCount = 2;
		break;
	case GLM_TYPE_INT3:
		info->elemType  = GLM_TYPE_INT;
		info->elemCount = 3;
		break;
	case GLM_TYPE_INT4:
		info->elemType  = GLM_TYPE_INT;
		info->elemCount = 4;
		break;
	case GLM_TYPE_UINT:
		info->elemType  = GLM_TYPE_UINT;
		info->elemCount = 1;
		break;
	case GLM_TYPE_UINT1:
		info->elemType  = GLM_TYPE_UINT;
		info->elemCount = 1;
		break;
	case GLM_TYPE_UINT2:
		info->elemType  = GLM_TYPE_UINT;
		info->elemCount = 2;
		break;
	case GLM_TYPE_UINT3:
		info->elemType  = GLM_TYPE_UINT;
		info->elemCount = 3;
		break;
	case GLM_TYPE_UINT4:
		info->elemType  = GLM_TYPE_UINT;
		info->elemCount = 4;
		break;
	default:
		break;
	}
}

/* Handles type-casting of vectors and matrices */
GLM_FUNC_QUALIFIER void
glm_cast_array(void *dstArr, glm_type_t dstType, const void *srcArr, glm_type_t srcType, glm_length_t arrLen)
{
	switch (srcType)
	{
		case GLM_TYPE_BOOL:
			switch(dstType)
			{
				case GLM_TYPE_BOOL:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(bool, defaultp)*)dstArr)[i] = ((glm_scalar(bool, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_FLOAT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(float, defaultp)*)dstArr)[i] = ((glm_scalar(bool, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_DOUBLE:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(double, defaultp)*)dstArr)[i] = ((glm_scalar(bool, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_INT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(int, defaultp)*)dstArr)[i] = ((glm_scalar(bool, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_UINT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(uint, defaultp)*)dstArr)[i] = ((glm_scalar(bool, defaultp)*)srcArr)[i];
					break;
			}
			break;
		case GLM_TYPE_FLOAT:
			switch(dstType)
			{
				case GLM_TYPE_BOOL:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(bool, defaultp)*)dstArr)[i] = ((glm_scalar(float, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_FLOAT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(float, defaultp)*)dstArr)[i] = ((glm_scalar(float, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_DOUBLE:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(double, defaultp)*)dstArr)[i] = ((glm_scalar(float, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_INT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(int, defaultp)*)dstArr)[i] = ((glm_scalar(float, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_UINT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(uint, defaultp)*)dstArr)[i] = ((glm_scalar(float, defaultp)*)srcArr)[i];
					break;
			}
			break;
		case GLM_TYPE_DOUBLE:
			switch(dstType)
			{
				case GLM_TYPE_BOOL:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(bool, defaultp)*)dstArr)[i] = ((glm_scalar(double, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_FLOAT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(float, defaultp)*)dstArr)[i] = ((glm_scalar(double, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_DOUBLE:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(double, defaultp)*)dstArr)[i] = ((glm_scalar(double, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_INT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(int, defaultp)*)dstArr)[i] = ((glm_scalar(double, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_UINT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(uint, defaultp)*)dstArr)[i] = ((glm_scalar(double, defaultp)*)srcArr)[i];
					break;
			}
			break;
		case GLM_TYPE_INT:
			switch(dstType)
			{
				case GLM_TYPE_BOOL:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(bool, defaultp)*)dstArr)[i] = ((glm_scalar(int, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_FLOAT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(float, defaultp)*)dstArr)[i] = ((glm_scalar(int, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_DOUBLE:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(double, defaultp)*)dstArr)[i] = ((glm_scalar(int, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_INT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(int, defaultp)*)dstArr)[i] = ((glm_scalar(int, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_UINT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(uint, defaultp)*)dstArr)[i] = ((glm_scalar(int, defaultp)*)srcArr)[i];
					break;
			}
			break;
		case GLM_TYPE_UINT:
			switch(dstType)
			{
				case GLM_TYPE_BOOL:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(bool, defaultp)*)dstArr)[i] = ((glm_scalar(uint, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_FLOAT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(float, defaultp)*)dstArr)[i] = ((glm_scalar(uint, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_DOUBLE:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(double, defaultp)*)dstArr)[i] = ((glm_scalar(uint, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_INT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(int, defaultp)*)dstArr)[i] = ((glm_scalar(uint, defaultp)*)srcArr)[i];
					break;
				case GLM_TYPE_UINT:
					for(glm_length_t i = 0; i < arrLen; ++i)
						((glm_scalar(uint, defaultp)*)dstArr)[i] = ((glm_scalar(uint, defaultp)*)srcArr)[i];
					break;
			}
			break;
	}
}

#define GLM_TYPEOF_SCALAR_bool		GLM_TYPE_BOOL
#define GLM_TYPEOF_SCALAR_float		GLM_TYPE_FLOAT
#define GLM_TYPEOF_SCALAR_double	GLM_TYPE_DOUBLE
#define GLM_TYPEOF_SCALAR_int		GLM_TYPE_INT
#define GLM_TYPEOF_SCALAR_uint		GLM_TYPE_UINT

#define GLM_TYPE_SCALAR_(T) GLM_TYPEOF_SCALAR_ ## T
#define GLM_TYPEOF_SCALAR(...) GLM_TYPE_SCALAR_(__VA_ARGS__)

#define GLM_TYPEOF(x)\
_Generic((x),\
bool : GLM_TYPE_BOOL,\
float : GLM_TYPE_FLOAT,\
double : GLM_TYPE_DOUBLE,\
int : GLM_TYPE_INT,\
uint : GLM_TYPE_UINT,\
glm_vec(1, bool, defaultp): GLM_TYPE_BOOL1,\
glm_vec(2, bool, defaultp): GLM_TYPE_BOOL2,\
glm_vec(3, bool, defaultp): GLM_TYPE_BOOL3,\
glm_vec(4, bool, defaultp): GLM_TYPE_BOOL4,\
glm_vec(1, float, defaultp): GLM_TYPE_FLOAT1,\
glm_vec(2, float, defaultp): GLM_TYPE_FLOAT2,\
glm_vec(3, float, defaultp): GLM_TYPE_FLOAT3,\
glm_vec(4, float, defaultp): GLM_TYPE_FLOAT4,\
glm_vec(1, double, defaultp): GLM_TYPE_DOUBLE1,\
glm_vec(2, double, defaultp): GLM_TYPE_DOUBLE2,\
glm_vec(3, double, defaultp): GLM_TYPE_DOUBLE3,\
glm_vec(4, double, defaultp): GLM_TYPE_DOUBLE4,\
glm_vec(1, int, defaultp): GLM_TYPE_INT1,\
glm_vec(2, int, defaultp): GLM_TYPE_INT2,\
glm_vec(3, int, defaultp): GLM_TYPE_INT3,\
glm_vec(4, int, defaultp): GLM_TYPE_INT4,\
glm_vec(1, uint, defaultp): GLM_TYPE_UINT1,\
glm_vec(2, uint, defaultp): GLM_TYPE_UINT2,\
glm_vec(3, uint, defaultp): GLM_TYPE_UINT3,\
glm_vec(4, uint, defaultp): GLM_TYPE_UINT4,\
glm_mat(2, 2, float, defaultp): GLM_TYPE_FLOAT2X2,\
glm_mat(2, 3, float, defaultp): GLM_TYPE_FLOAT2X3,\
glm_mat(2, 4, float, defaultp): GLM_TYPE_FLOAT2X4,\
glm_mat(3, 2, float, defaultp): GLM_TYPE_FLOAT3X2,\
glm_mat(3, 3, float, defaultp): GLM_TYPE_FLOAT3X3,\
glm_mat(3, 4, float, defaultp): GLM_TYPE_FLOAT3X4,\
glm_mat(4, 2, float, defaultp): GLM_TYPE_FLOAT4X2,\
glm_mat(4, 3, float, defaultp): GLM_TYPE_FLOAT4X3,\
glm_mat(4, 4, float, defaultp): GLM_TYPE_FLOAT4X4,\
glm_mat(2, 2, double, defaultp): GLM_TYPE_DOUBLE2X2,\
glm_mat(2, 3, double, defaultp): GLM_TYPE_DOUBLE2X3,\
glm_mat(2, 4, double, defaultp): GLM_TYPE_DOUBLE2X4,\
glm_mat(3, 2, double, defaultp): GLM_TYPE_DOUBLE3X2,\
glm_mat(3, 3, double, defaultp): GLM_TYPE_DOUBLE3X3,\
glm_mat(3, 4, double, defaultp): GLM_TYPE_DOUBLE3X4,\
glm_mat(4, 2, double, defaultp): GLM_TYPE_DOUBLE4X2,\
glm_mat(4, 3, double, defaultp): GLM_TYPE_DOUBLE4X3,\
glm_mat(4, 4, double, defaultp): GLM_TYPE_DOUBLE4X4\
)

#define GLM_STATIC_ASSERT(expr, message) _Static_assert(expr, message)

#endif /* GLM_DETAIL_QUALIFIER_H */

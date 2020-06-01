#ifndef GLM_DETAIL_SETUP_H
#define GLM_DETAIL_SETUP_H

#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>
#include <inttypes.h>
#define _USE_MATH_DEFINES
#include <math.h>
#include <assert.h>
#include <memory.h>

#define GLM_FUNC_QUALIFIER static inline
#define GLM_CONSTEXPR

#define GLM_VECTOR_LENGTH(v) (sizeof(v)/sizeof(v.e[0]))

#define GLM_EVAL(...) __VA_ARGS__


#define GLM_PREFIX_(x) glm_ ## x
#define GLM_PREFIX(...) GLM_PREFIX_(__VA_ARGS__)

//#define GLM_NAMESPACE(...) GLM_NAMESPACE_(__VA_ARGS__)
/*
#define glm_vec_(L, T, Q) glm_ ## T ## L
#define glm_vec(...) glm_vec_(__VA_ARGS__)
*/

//#define glm_vec(...) glm_typename_vec_(__VA_ARGS__)/*glm_nameof_vec_(__VA_ARGS__)*/

#define GLM_EVAL(...) __VA_ARGS__
#define GLM_PASTE_(A, B) A ## B
#define GLM_PASTE(...) GLM_PASTE_(__VA_ARGS__)
#define GLM_CALL_FUNC_(Func, Type)  GLM_PASTE(Func, _## Type)
#define GLM_CALL_FUNC(...) GLM_PREFIX(GLM_CALL_FUNC_(__VA_ARGS__))


/*
#define GLM_VECTOR_TYPENAME_bool1   bvec1
#define GLM_VECTOR_TYPENAME_bool2   bvec2
#define GLM_VECTOR_TYPENAME_bool3   bvec3
#define GLM_VECTOR_TYPENAME_bool4   bvec4

#define GLM_VECTOR_TYPENAME_float1  vec1
#define GLM_VECTOR_TYPENAME_float2  vec2
#define GLM_VECTOR_TYPENAME_float3  vec3
#define GLM_VECTOR_TYPENAME_float4  vec4

#define GLM_VECTOR_TYPENAME_double1 dvec1
#define GLM_VECTOR_TYPENAME_double2 dvec2
#define GLM_VECTOR_TYPENAME_double3 dvec3
#define GLM_VECTOR_TYPENAME_double4 dvec4

#define GLM_VECTOR_TYPENAME_int1    ivec1
#define GLM_VECTOR_TYPENAME_int2    ivec2
#define GLM_VECTOR_TYPENAME_int3    ivec3
#define GLM_VECTOR_TYPENAME_int4    ivec4

#define GLM_VECTOR_TYPENAME_uint1   uvec1
#define GLM_VECTOR_TYPENAME_uint2   uvec2
#define GLM_VECTOR_TYPENAME_uint3   uvec3
#define GLM_VECTOR_TYPENAME_uint4   uvec4
*/
#define GLM_VECTOR_TYPENAME_(L, T, Q) T ## L
#define GLM_VECTOR_TYPENAME(...) GLM_VECTOR_TYPENAME_(__VA_ARGS__)
#define GLM_VECTOR_CONSTRUCTOR_NAME(L, T, Q) GLM_CALL_FUNC(constructor, GLM_VECTOR_TYPENAME(L, T, Q))

#define glm_vec(L, T, Q) GLM_PREFIX(GLM_VECTOR_TYPENAME(L, T, Q))

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

#define GLM_MATRIX_TYPENAME_(C, R, T, Q) T ## R ## x ## C
#define GLM_MATRIX_TYPENAME(...) GLM_MATRIX_TYPENAME_(__VA_ARGS__)
#define GLM_MATRIX_CONSTRUCTOR_NAME(C, R, T, Q) GLM_CALL_FUNC(constructor, GLM_MATRIX_TYPENAME(C, R, T, Q))

/*
	C: Left-hand  length_t (constexpr)
	R: Right hand length_t (constexpr)
	T: typename (type)
	Q: qualifier (constexpr)
*/
#define glm_mat(C, R, T, Q) GLM_PREFIX(GLM_MATRIX_TYPENAME(C, R, T, Q))

typedef enum glm_qualifier
{
    lowp,
    mediump,
    highp,
    defaultp
} glm_qualifier;
/*
typedef enum glm_qualifier
{
	GLM_QUALIFIER_LOWP,
	GLM_QUALIFIER_MEDIUMP,
	GLM_QUALIFIER_HIGHP,
	GLM_QUALIFIER_DEFAULTP = GLM_QUALIFIER_HIGHP
} glm_qualifier_t;*/


/* Enums of all glm typenames */
#define GLM_TYPE_BOOL      (1ULL << 0)
#define GLM_TYPE_FLOAT     (1ULL << 1)
#define GLM_TYPE_DOUBLE    (1ULL << 2)
#define GLM_TYPE_INT       (1ULL << 3)
#define GLM_TYPE_UINT      (1ULL << 4)
#define GLM_TYPE_BOOL1     (1ULL << 5)
#define GLM_TYPE_BOOL2     (1ULL << 6)
#define GLM_TYPE_BOOL3     (1ULL << 7)
#define GLM_TYPE_BOOL4     (1ULL << 8)
#define GLM_TYPE_FLOAT1    (1ULL << 9)
#define GLM_TYPE_FLOAT2    (1ULL << 10)
#define GLM_TYPE_FLOAT3    (1ULL << 11)
#define GLM_TYPE_FLOAT4    (1ULL << 12)
#define GLM_TYPE_DOUBLE1   (1ULL << 13)
#define GLM_TYPE_DOUBLE2   (1ULL << 14)
#define GLM_TYPE_DOUBLE3   (1ULL << 15)
#define GLM_TYPE_DOUBLE4   (1ULL << 16)
#define GLM_TYPE_INT1      (1ULL << 17)
#define GLM_TYPE_INT2      (1ULL << 18)
#define GLM_TYPE_INT3      (1ULL << 19)
#define GLM_TYPE_INT4      (1ULL << 20)
#define GLM_TYPE_UINT1     (1ULL << 21)
#define GLM_TYPE_UINT2     (1ULL << 22)
#define GLM_TYPE_UINT3     (1ULL << 23)
#define GLM_TYPE_UINT4     (1ULL << 24)
#define GLM_TYPE_FLOAT2X2  (1ULL << 25)
#define GLM_TYPE_FLOAT2X3  (1ULL << 26)
#define GLM_TYPE_FLOAT2X4  (1ULL << 27)
#define GLM_TYPE_FLOAT3X2  (1ULL << 28)
#define GLM_TYPE_FLOAT3X3  (1ULL << 29)
#define GLM_TYPE_FLOAT3X4  (1ULL << 30)
#define GLM_TYPE_FLOAT4X2  (1ULL << 31)
#define GLM_TYPE_FLOAT4X3  (1ULL << 32)
#define GLM_TYPE_FLOAT4X4  (1ULL << 33)
#define GLM_TYPE_DOUBLE2X2 (1ULL << 34)
#define GLM_TYPE_DOUBLE2X3 (1ULL << 35)
#define GLM_TYPE_DOUBLE2X4 (1ULL << 36)
#define GLM_TYPE_DOUBLE3X2 (1ULL << 37)
#define GLM_TYPE_DOUBLE3X3 (1ULL << 38)
#define GLM_TYPE_DOUBLE3X4 (1ULL << 39)
#define GLM_TYPE_DOUBLE4X2 (1ULL << 40)
#define GLM_TYPE_DOUBLE4X3 (1ULL << 41)
#define GLM_TYPE_DOUBLE4X4 (1ULL << 42)

static const uint64_t GLM_TYPE_SCALAR = GLM_TYPE_BOOL | GLM_TYPE_FLOAT | GLM_TYPE_DOUBLE | GLM_TYPE_INT | GLM_TYPE_UINT;

static const uint64_t GLM_TYPE_VECTOR = GLM_TYPE_BOOL1 | GLM_TYPE_BOOL2 | GLM_TYPE_BOOL3 | GLM_TYPE_BOOL4
		| GLM_TYPE_FLOAT1 | GLM_TYPE_FLOAT2 | GLM_TYPE_FLOAT3 | GLM_TYPE_FLOAT4
		| GLM_TYPE_DOUBLE1 | GLM_TYPE_DOUBLE2 | GLM_TYPE_DOUBLE3 | GLM_TYPE_DOUBLE4
		| GLM_TYPE_INT1 | GLM_TYPE_INT2 | GLM_TYPE_INT3 | GLM_TYPE_INT4
		| GLM_TYPE_UINT1 | GLM_TYPE_UINT2 | GLM_TYPE_UINT3 | GLM_TYPE_UINT4;

static const uint64_t GLM_TYPE_MATRIX = GLM_TYPE_FLOAT2X2 | GLM_TYPE_FLOAT2X3 | GLM_TYPE_FLOAT2X4
		| GLM_TYPE_FLOAT3X2 | GLM_TYPE_FLOAT3X3 | GLM_TYPE_FLOAT3X4
		| GLM_TYPE_FLOAT4X2 | GLM_TYPE_FLOAT4X3 | GLM_TYPE_FLOAT4X4
		| GLM_TYPE_DOUBLE2X2 | GLM_TYPE_DOUBLE2X3 | GLM_TYPE_DOUBLE2X4
		| GLM_TYPE_DOUBLE3X2 | GLM_TYPE_DOUBLE3X3 | GLM_TYPE_DOUBLE3X4
		| GLM_TYPE_DOUBLE4X2 | GLM_TYPE_DOUBLE4X3 | GLM_TYPE_DOUBLE4X4;

typedef struct glm_RuntimeTypeInformation {
	uint64_t typeFlag;
	uint64_t elemType;
	size_t elemCol, elemRow;
	size_t elemCount; /* C * R for matrices, and L for vectors */
	//size_t elemSize;
	//uint8_t typeGroup;
} glm_RuntimeTypeInformation;



#define GLM_STATIC_ASSERT(expr, message) _Static_assert(expr, message)
#define GLM_ZERO_MEMORY(address, size) memset(address, 0, size)
#define GLM_ASSERT(expr, message) assert(expr && message)


#define GLM_TYPEOF_SCALAR_bool		GLM_TYPE_BOOL
#define GLM_TYPEOF_SCALAR_float		GLM_TYPE_FLOAT
#define GLM_TYPEOF_SCALAR_double	GLM_TYPE_DOUBLE
#define GLM_TYPEOF_SCALAR_int		GLM_TYPE_INT
#define GLM_TYPEOF_SCALAR_uint		GLM_TYPE_UINT

#define GLM_TYPEOF_SCALAR_(T) GLM_TYPEOF_SCALAR_ ## T
#define GLM_TYPEOF_SCALAR(...) GLM_TYPEOF_SCALAR_(__VA_ARGS__)

#define GLM_TYPEOF(x)\
(uint64_t)(_Generic((x),\
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
))

#endif /* GLM_DETAIL_SETUP_H */

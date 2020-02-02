#ifndef GLM_DETAIL_QUALIFIER_H
#define GLM_DETAIL_QUALIFIER_H

#include "setup.h"
//#include "type_float.h"

#define GLM_VECTOR_LENGTH(v) (sizeof(v)/sizeof(v.e[0]))

#define GLM_EVAL(...) __VA_ARGS__


#define GLM_PREFIX_(x) glm_ ## x
#define GLM_PREFIX(...) GLM_PREFIX_(__VA_ARGS__)

//#define GLM_NAMESPACE(...) GLM_NAMESPACE_(__VA_ARGS__)
/*
#define glm_vec_(L, T, Q) glm_ ## T ## L
#define glm_vec(...) glm_vec_(__VA_ARGS__)
*/
#define GLM_VEC_NAME_bool1   bvec1
#define GLM_VEC_NAME_bool2   bvec2
#define GLM_VEC_NAME_bool3   bvec3
#define GLM_VEC_NAME_bool4   bvec4
#define GLM_VEC_NAME_float1  vec1
#define GLM_VEC_NAME_float2  vec2
#define GLM_VEC_NAME_float3  vec3
#define GLM_VEC_NAME_float4  vec4
#define GLM_VEC_NAME_double1 dvec1
#define GLM_VEC_NAME_double2 dvec2
#define GLM_VEC_NAME_double3 dvec3
#define GLM_VEC_NAME_double4 dvec4
#define GLM_VEC_NAME_int1    ivec1
#define GLM_VEC_NAME_int2    ivec2
#define GLM_VEC_NAME_int3    ivec3
#define GLM_VEC_NAME_int4    ivec4
#define GLM_VEC_NAME_uint1   uvec1
#define GLM_VEC_NAME_uint2   uvec2
#define GLM_VEC_NAME_uint3   uvec3
#define GLM_VEC_NAME_uint4   uvec4

#define glm_vec_bool1   GLM_PREFIX(bvec1)
#define glm_vec_bool2   GLM_PREFIX(bvec2)
#define glm_vec_bool3   GLM_PREFIX(bvec3)
#define glm_vec_bool4   GLM_PREFIX(bvec4)
#define glm_vec_float1  GLM_PREFIX(vec1)
#define glm_vec_float2  GLM_PREFIX(vec2)
#define glm_vec_float3  GLM_PREFIX(vec3)
#define glm_vec_float4  GLM_PREFIX(vec4)
#define glm_vec_double1 GLM_PREFIX(dvec1)
#define glm_vec_double2 GLM_PREFIX(dvec2)
#define glm_vec_double3 GLM_PREFIX(dvec3)
#define glm_vec_double4 GLM_PREFIX(dvec4)
#define glm_vec_int1    GLM_PREFIX(ivec1)
#define glm_vec_int2    GLM_PREFIX(ivec2)
#define glm_vec_int3    GLM_PREFIX(ivec3)
#define glm_vec_int4    GLM_PREFIX(ivec4)
#define glm_vec_uint1   GLM_PREFIX(uvec1)
#define glm_vec_uint2   GLM_PREFIX(uvec2)
#define glm_vec_uint3   GLM_PREFIX(uvec3)
#define glm_vec_uint4   GLM_PREFIX(uvec4)

#define GLM_VEC_NAME__(L, T, Q) GLM_VEC_NAME_ ## T ## L
#define GLM_VEC_NAME(...) GLM_VEC_NAME__(__VA_ARGS__)

#define glm_vec(L, T, Q) glm_vec_ ## T ## L

//#define glm_vec(...) glm_typename_vec_(__VA_ARGS__)/*glm_nameof_vec_(__VA_ARGS__)*/

#define GLM_EVAL(...) __VA_ARGS__
#define GLM_PASTE_(A, B) A ## B
#define GLM_PASTE(...) GLM_PASTE_(__VA_ARGS__)
#define GLM_CALL_FUNC_(Func, Type)  GLM_PASTE(Func, _## Type)
#define GLM_CALL_FUNC(...) GLM_PREFIX(GLM_CALL_FUNC_(__VA_ARGS__))

typedef enum glm_type_t
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
} glm_type_t;

inline size_t glm_sizeofElemType(glm_type_t type)
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

inline void glm_vecTypeProps(glm_type_t vecType, glm_length_t *elemCount, glm_type_t *elemType)
{
    switch (vecType)
    {
    case GLM_TYPE_BOOL:
        *elemType = GLM_TYPE_BOOL;
        *elemCount = 1;
        break;
    case GLM_TYPE_BOOL1:
        *elemType = GLM_TYPE_BOOL;
        *elemCount = 1;
        break;
    case GLM_TYPE_BOOL2:
        *elemType = GLM_TYPE_BOOL;
        *elemCount = 2;
        break;
    case GLM_TYPE_BOOL3:
        *elemType = GLM_TYPE_BOOL;
        *elemCount = 3;
        break;
    case GLM_TYPE_BOOL4:
        *elemType = GLM_TYPE_BOOL;
        *elemCount = 4;
        break;
    case GLM_TYPE_FLOAT:
        *elemType = GLM_TYPE_FLOAT;
        *elemCount = 1;
        break;
    case GLM_TYPE_FLOAT1:
        *elemType = GLM_TYPE_FLOAT;
        *elemCount = 1;
        break;
    case GLM_TYPE_FLOAT2:
        *elemType = GLM_TYPE_FLOAT;
        *elemCount = 2;
        break;
    case GLM_TYPE_FLOAT3:
        *elemType = GLM_TYPE_FLOAT;
        *elemCount = 3;
        break;
    case GLM_TYPE_FLOAT4:
        *elemType = GLM_TYPE_FLOAT;
        *elemCount = 4;
        break;
    case GLM_TYPE_DOUBLE:
        *elemType = GLM_TYPE_DOUBLE;
        *elemCount = 1;
        break;
    case GLM_TYPE_DOUBLE1:
        *elemType = GLM_TYPE_DOUBLE;
        *elemCount = 1;
        break;
    case GLM_TYPE_DOUBLE2:
        *elemType = GLM_TYPE_DOUBLE;
        *elemCount = 2;
        break;
    case GLM_TYPE_DOUBLE3:
        *elemType = GLM_TYPE_DOUBLE;
        *elemCount = 3;
        break;
    case GLM_TYPE_DOUBLE4:
        *elemType = GLM_TYPE_DOUBLE;
        *elemCount = 4;
        break;
    case GLM_TYPE_INT:
        *elemType = GLM_TYPE_INT;
        *elemCount = 1;
        break;
    case GLM_TYPE_INT1:
        *elemType = GLM_TYPE_INT;
        *elemCount = 1;
        break;
    case GLM_TYPE_INT2:
        *elemType = GLM_TYPE_INT;
        *elemCount = 2;
        break;
    case GLM_TYPE_INT3:
        *elemType = GLM_TYPE_INT;
        *elemCount = 3;
        break;
    case GLM_TYPE_INT4:
        *elemType = GLM_TYPE_INT;
        *elemCount = 4;
        break;
    case GLM_TYPE_UINT:
        *elemType = GLM_TYPE_UINT;
        *elemCount = 1;
        break;
    case GLM_TYPE_UINT1:
        *elemType = GLM_TYPE_UINT;
        *elemCount = 1;
        break;
    case GLM_TYPE_UINT2:
        *elemType = GLM_TYPE_UINT;
        *elemCount = 2;
        break;
    case GLM_TYPE_UINT3:
        *elemType = GLM_TYPE_UINT;
        *elemCount = 3;
        break;
    case GLM_TYPE_UINT4:
        *elemType = GLM_TYPE_UINT;
        *elemCount = 4;
        break;

    default:
        break;
    }
}

#endif /* GLM_DETAIL_QUALIFIER_H */

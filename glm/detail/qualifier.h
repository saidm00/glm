#ifndef GLM_DETAIL_QUALIFIER_H
#define GLM_DETAIL_QUALIFIER_H

#include "setup.h"
//#include "type_float.h"

#define GLM_VECTOR_LENGTH(v) (sizeof(v)/sizeof(v.e[0]))

#define GLM_EVAL(...) __VA_ARGS__
#define GLM_PASTE_(A, B) A ## B
#define GLM_PASTE(...) GLM_PASTE_(__VA_ARGS__)
#define GLM_CALL_FUNC_(Type, Func)  Type ## _ ## Func
#define GLM_CALL_FUNC(...) GLM_EVAL(GLM_CALL_FUNC_(__VA_ARGS__))

#define glm_vec_(L, T, Q) glm_ ## T ## L
#define glm_vec(...) glm_vec_(__VA_ARGS__)

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

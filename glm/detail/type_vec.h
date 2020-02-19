#ifndef GLM_DETAIL_TYPE_VEC_H
#define GLM_DETAIL_TYPE_VEC_H

#include "qualifier.h"
#include "namespace_begin.inl"

#define GLM_TYPEDEF_VEC(L, T, Q) typedef struct vec(L, T, Q) vec(L, T, Q)
#define GLM_DEFINE_VEC1(T, Q) \
struct vec(1, T, Q)\
{\
    union\
    {\
        struct { T x; };\
        struct { T r; };\
        struct { T s; };\
        T elem[1];\
    };\
};

#define GLM_DEFINE_VEC2(T, Q) \
struct vec(2, T, Q)\
{\
    union\
    {\
        struct { T x, y; };\
        struct { T r, g; };\
        struct { T s, t; };\
        T elem[2];\
    };\
};

#define GLM_DEFINE_VEC3(T, Q) \
struct vec(3, T, Q)\
{\
    union\
    {\
        struct { T x, y, z; };\
        struct { T r, g, b; };\
        struct { T s, t, p; };\
        T elem[3];\
    };\
};

#define GLM_DEFINE_VEC4(T, Q) \
struct vec(4, T, Q)\
{\
    union\
    {\
        struct { T x, y, z, w; };\
        struct { T r, g, b, a; };\
        struct { T s, t, p, q; };\
        T elem[4];\
    };\
};

GLM_TYPEDEF_VEC(1, bool, defaultp);
GLM_TYPEDEF_VEC(2, bool, defaultp);
GLM_TYPEDEF_VEC(3, bool, defaultp);
GLM_TYPEDEF_VEC(4, bool, defaultp);

GLM_TYPEDEF_VEC(1, float, defaultp);
GLM_TYPEDEF_VEC(2, float, defaultp);
GLM_TYPEDEF_VEC(3, float, defaultp);
GLM_TYPEDEF_VEC(4, float, defaultp);

GLM_TYPEDEF_VEC(1, double, defaultp);
GLM_TYPEDEF_VEC(2, double, defaultp);
GLM_TYPEDEF_VEC(3, double, defaultp);
GLM_TYPEDEF_VEC(4, double, defaultp);

GLM_TYPEDEF_VEC(1, int, defaultp);
GLM_TYPEDEF_VEC(2, int, defaultp);
GLM_TYPEDEF_VEC(3, int, defaultp);
GLM_TYPEDEF_VEC(4, int, defaultp);

GLM_TYPEDEF_VEC(1, uint, defaultp);
GLM_TYPEDEF_VEC(2, uint, defaultp);
GLM_TYPEDEF_VEC(3, uint, defaultp);
GLM_TYPEDEF_VEC(4, uint, defaultp);

GLM_DEFINE_VEC1(bool, defaultp)
GLM_DEFINE_VEC2(bool, defaultp)
GLM_DEFINE_VEC3(bool, defaultp)
GLM_DEFINE_VEC4(bool, defaultp)

GLM_DEFINE_VEC1(float, defaultp)
GLM_DEFINE_VEC2(float, defaultp)
GLM_DEFINE_VEC3(float, defaultp)
GLM_DEFINE_VEC4(float, defaultp)

GLM_DEFINE_VEC1(double, defaultp)
GLM_DEFINE_VEC2(double, defaultp)
GLM_DEFINE_VEC3(double, defaultp)
GLM_DEFINE_VEC4(double, defaultp)

GLM_DEFINE_VEC1(int, defaultp)
GLM_DEFINE_VEC2(int, defaultp)
GLM_DEFINE_VEC3(int, defaultp)
GLM_DEFINE_VEC4(int, defaultp)

GLM_DEFINE_VEC1(uint, defaultp)
GLM_DEFINE_VEC2(uint, defaultp)
GLM_DEFINE_VEC3(uint, defaultp)
GLM_DEFINE_VEC4(uint, defaultp)

#define L 1
#define T bool
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T bool
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T bool
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T bool
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T float
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T float
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T float
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T float
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T double
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T double
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T double
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T double
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T int
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T int
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T int
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T int
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T uint
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T uint
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T uint
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T uint
#define Q defaultp
#include "type_vec_decl.inl"
#undef L
#undef T
#undef Q

/* Impl */
#define L 1
#define T bool
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T bool
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T bool
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T bool
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T float
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T float
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T float
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T float
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T double
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T double
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T double
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T double
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T int
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T int
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T int
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T int
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T uint
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T uint
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T uint
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T uint
#define Q defaultp
#include "type_vec.inl"
#undef L
#undef T
#undef Q


#include "namespace_end.inl"

#define GLM_VEC_CONSTRUCTOR_ADDR(L, T, Q) GLM_CALL_FUNC(constructor, GLM_VEC_NAME(L, T, Q))
#define GLM_VARIADIC_PARAM_TYPE(A)\
_Generic(A,\
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
glm_vec(4, uint, defaultp): GLM_TYPE_UINT4\
)
/*
#define GLM_VARIADIC_PARAM_VAL(A) \
_Generic(A,\
bool:   (glm_vec(1, bool, defaultp)){ .x = A },\
float:  (glm_vec(1, float, defaultp)){ .x = A },\
double: (glm_vec(1, double, defaultp)){ .x = A },\
int:    (glm_vec(1, int, defaultp)){ .x = A },\
uint:   (glm_vec(1, uint, defaultp)){ .x = A },\
default: A)
*/
#define GLM_VARIADIC_PARAM_VAL(A) A

#define GLM_VARIADIC_PARAM(A) GLM_VARIADIC_PARAM_TYPE(A), GLM_VARIADIC_PARAM_VAL(A)


#endif /* GLM_DETAIL_TYPE_VEC_H */
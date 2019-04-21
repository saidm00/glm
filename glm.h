#ifndef GLM_INCLUDED
#define GLM_INCLUDED

#define GLM_STATIC static

#if defined(GLM_FORCE_INLINE)

#if defined(__GNUC__) || defined(__clang__)
#define GLM_API GLM_STATIC __inline__ __attribute__((always_inline))
#elif defined(__MSVC)
#define GLM_API GLM_STATIC inline __forceinline
#endif

#else
#define GLM_API GLM_STATIC inline
#endif

#define min(x,y) (((x)>(y))?(y):(x))
#define max(x,y) (((x)>(y))?(x):(y))
#define clamp(x,a,b) (((x)<(a))?(a):((x)>(b))?(b):(x))

#ifndef __cplusplus
#include <stdbool.h>
#undef bool
typedef _Bool bool;
#endif

typedef unsigned int uint;

#define GLM_DECLARE_VECTORS(T)\
union T##1; union T##2; union T##3; union T##4;\
typedef union T##1 T##1;\
typedef union T##2 T##2;\
typedef union T##3 T##3;\
typedef union T##4 T##4;

#define GLM_DEFINE_VECTORS(T)\
union T##1 {\
    T e[1];\
    T x, s, r;\
};\
\
union T##2 {\
    T e[2];\
    struct { T x, y; };\
    struct { T s, t; };\
    struct { T r, g; };\
};\
\
union T##3 {\
    T e[3];\
    T##2 xy, rg, st;\
    struct { T x, y, z; };\
    struct { T r, g, b; };\
    struct { T s, t, p; };\
    struct { T x_; union { T##2 yz, gb, tp; }; };\
};\
\
union T##4 {\
    T e[4];\
    T##3 xyz, rgb, stp;\
    struct { T x, y, z, w; };\
    struct { T r, g, b, a; };\
    struct { T s, t, p, q; };\
    struct { T##2 xy, zw; };\
    struct { T##2 rg, ba; };\
    struct { T##2 st, pq; };\
    struct { T x_; union { T##2 yz, gb, tp; T##3 yzw, gba, tpq; }; };\
};

#define GLM_DEFINE_MATRIX_MxN(T,M,N) typedef union { T e[N][M]; T##M v[N]; } T##M##x##N;

#define GLM_DEFINE_MATRICES(T)\
GLM_DEFINE_MATRIX_MxN(T,2,2) \
GLM_DEFINE_MATRIX_MxN(T,2,3) \
GLM_DEFINE_MATRIX_MxN(T,2,4) \
GLM_DEFINE_MATRIX_MxN(T,3,2) \
GLM_DEFINE_MATRIX_MxN(T,3,3) \
GLM_DEFINE_MATRIX_MxN(T,3,4) \
GLM_DEFINE_MATRIX_MxN(T,4,2) \
GLM_DEFINE_MATRIX_MxN(T,4,3) \
GLM_DEFINE_MATRIX_MxN(T,4,4)

#define GLM_TYPEDEF_MATRICES(P) typedef P##2x2 P##2; typedef P##3x3 P##3; typedef P##4x4 P##4;

/*
#define GLM_DECLARE_TNxN_FUNCTIONS(T,N) GLM_API T##N##x##N scale_##T##N##x##N(T##N##x##N m, T##N s);
#define GLM_DECLARE_TMxN_FUNCTIONS(T,M,N)

#define GLM_DECLARE_MATRIX_TRANSFORMS(T) GLM_DECLARE_MATRIX_SCALE(T,2) GLM_DECLARE_MATRIX_SCALE(T,3) GLM_DECLARE_MATRIX_SCALE(T,4)

#define GLM_DECLARE_T4x4_FUNCTIONS(T)\
GLM_API T##4x4 lookAt_##T##4x4 (T##3 const eye, T##3 const center, T##3 const up);\
GLM_API T##4x4 perspective_##T##4x4 (T const fovy, T const aspect, T const zNear, T const zFar);\
GLM_API T##4x4 ortho_##T##4x4 (T const left, T const right, T const bottom, T const up, T const zNear, T const zFar);\
GLM_API T##4x4 frustum_##T##4x4 (T const left, T const right, T const bottom, T const top, T const nearVal, T const farVal);

GLM_DECLARE_T4x4_FUNCTIONS(float)
GLM_DECLARE_T4x4_FUNCTIONS(double)
*/

/* Templated matrix constructor declaration macro. */
#define GLM_DECLARE_TMAT_CONSTRUCTORS(T)\
GLM_API T##2x2 T##2x2_1(T const),\
T##2x2_2(T##2 const, T##2 const),\
T##2x2_4(T const, T const, T const, T const);\
\
GLM_API T##3x3 T##3x3_1(T const),\
T##3x3_3(T##3 const, T##3 const, T##3 const),\
T##3x3_9(T const, T const, T const,\
         T const, T const, T const,\
         T const, T const, T const);\
\
GLM_API T##4x4 T##4x4_1(T const),\
T##4x4_4(T##4 const, T##4 const, T##4 const, T##4 const),\
T##4x4_16(T const, T const, T const, T const,\
          T const, T const, T const, T const,\
          T const, T const, T const, T const,\
          T const, T const, T const, T const);



/* Templated matrix constructor definition macro. */
#define GLM_DEFINE_TMAT_CONSTRUCTORS(T)\
GLM_API T##2x2 T##2x2_1(T const s)\
{\
	T##2x2 m = {0};\
	m.e[0][0] = m.e[1][1] = s;\
	return m;\
}\
GLM_API T##2x2 T##2x2_2(T##2 const v0, T##2 const v1) {	return (T##2x2) { .v = {v0, v1}}; }\
GLM_API T##2x2 T##2x2_4(T const e00, T const e10, T const e01, T const e11)\
{\
	return (T##2x2) { .e = {{e00, e10}, {e01, e11}} };\
}\
GLM_API T##3x3 T##3x3_1(T const s)\
{\
	T##3x3 m = {0};\
	m.e[0][0] = m.e[1][1] = m.e[2][2] = s;\
	return m;\
}\
GLM_API T##3x3 T##3x3_3(T##3 const v0, T##3 const v1, T##3 const v2)\
{\
	return (T##3x3) { .v = {v0, v1, v2} };\
}\
GLM_API T##3x3 T##3x3_9(T const e00, T const e10, T const e20,\
                        T const e01, T const e11, T const e21,\
                        T const e02, T const e12, T const e22)\
{\
	return (T##3x3) { .e = {{e00, e10, e20}, {e01, e11, e21}, {e02, e12, e22}} };\
}\
GLM_API T##4x4 T##4x4_1(T const s)\
{\
	T##4x4 m = {0};\
	m.e[0][0] = m.e[1][1] = m.e[2][2] = m.e[3][3] = s;\
	return m;\
}\
GLM_API T##4x4 T##4x4_4(T##4 const v0, T##4 const v1, T##4 const v2, T##4 const v3)\
{\
    return (T##4x4) { .v = {v0, v1, v2, v3} };\
}\
GLM_API T##4x4 T##4x4_16(T const e00, T const e10, T const e20, T const e30,\
	                     T const e01, T const e11, T const e21, T const e31,\
                         T const e02, T const e12, T const e22, T const e32,\
                         T const e03, T const e13, T const e23, T const e33)\
{\
	return (T##4x4) { .e = {\
        {e00, e10, e20, e30},\
        {e01, e11, e21, e31},\
        {e02, e12, e22, e32},\
        {e03, e13, e23, e33}}\
        };\
}

#define tmat2x2_1(T, s, ...) T##2x2_1(s)
#define tmat2x2_2(T, v0, v1, ...) T##2x2_2(v0, v1)
#define tmat2x2_4(T, e00, e10, e01, e11, ...) T##2x2_4(e00, e10, e01, e11)

#define tmat3x3_1(T, s, ...) T##3x3_1(s)
#define tmat(T, v0, v1, v2, ...) T##3x3_3(v0, v1, v2)
#define tmat3x3_9(T, e00, e10, e20, e01, e11, e21, e02, e12, e22, ...) T##3x3_9(e00, e10, e20, e01, e11, e21, e02, e12, e22)

#define tmat4x4_1(T, s, ...) T##4x4_1(s)
#define tmat4x4_4(T, v0, v1, v2, v3, ...) T##4x4_4(v0, v1, v2, v3)
#define tmat4x4_16(T, e00, e10, e20, e30, e01, e11, e21, e31, e02, e12, e22, e32, e03, e13, e23, e33, ...)\
T##4x4_16(e00, e10, e20, e30, e01, e11, e21, e31, e02, e12, e22, e32, e03, e13, e23, e33)

#define tmat2x2_(T, a1, a2, a3, a4, N, ...)\
tmat2x2_##N(T, a1, a2, a3, a4)

#define tmat3x3_(T, a1, a2, a3, a4, a5, a6, a7, a8, a9, N, ...)\
tmat3x3_##N(T, a1, a2, a3, a4, a5, a6, a7, a8, a9)

#define tmat4x4_(T, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, N, ...)\
tmat4x4_##N(T, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16)

#define tmat2x2(T, ...) tmat2x2_(T,__VA_ARGS__, 4, 3, 2, 1, 0)
#define tmat3x3(T, ...) tmat3x3_(T,__VA_ARGS__, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0)
#define tmat4x4(T, ...) tmat4x4_(T,__VA_ARGS__, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0)

// Declaration macros
#define GLM_DECLARE_TVECN_CASTS(T,M,N)\
cast_##T##M##_float##N(float##N const),\
cast_##T##M##_double##N(double##N const),\
cast_##T##M##_int##N(int##N const),\
cast_##T##M##_uint##N(uint##N const),\
cast_##T##M##_bool##N(bool##N const)


#define GLM_DECLARE_TVEC_CASTS(T)\
GLM_API T##2 \
GLM_DECLARE_TVECN_CASTS(T,2,1),\
GLM_DECLARE_TVECN_CASTS(T,2,2),\
GLM_DECLARE_TVECN_CASTS(T,2,3),\
GLM_DECLARE_TVECN_CASTS(T,2,4);\
GLM_API T##3 \
GLM_DECLARE_TVECN_CASTS(T,3,1),\
GLM_DECLARE_TVECN_CASTS(T,3,3),\
GLM_DECLARE_TVECN_CASTS(T,3,4);\
GLM_API T##4 \
GLM_DECLARE_TVECN_CASTS(T,4,1),\
GLM_DECLARE_TVECN_CASTS(T,4,4);

#define GLM_DECLARE_VECTOR_CASTS\
GLM_DECLARE_TVEC_CASTS(float)\
GLM_DECLARE_TVEC_CASTS(double)\
GLM_DECLARE_TVEC_CASTS(int)\
GLM_DECLARE_TVEC_CASTS(uint)\
GLM_DECLARE_TVEC_CASTS(bool)

// Definition macros
#define GLM_DEFINE_TSCALAR_CASTS(T,U)\
GLM_API T cast_##T##_##U(U const v) { return v; }\
GLM_API T cast_##T##_##U##1(U##1 const v) { return v.x; }\
GLM_API T cast_##T##_##U##2(U##2 const v) { return v.x; }\
GLM_API T cast_##T##_##U##3(U##3 const v) { return v.x; }\
GLM_API T cast_##T##_##U##4(U##4 const v) { return v.x; }

#define GLM_DEFINE_TVEC1_CASTS(T,U)\
GLM_API T##1 cast_##T##1_##U##1(U##1 const v) { return (T##1){.x = (T)v.x}; }\
GLM_API T##1 cast_##T##1_##U##2(U##2 const v) { return (T##1){.x = (T)v.x}; }\
GLM_API T##1 cast_##T##1_##U##3(U##3 const v) { return (T##1){.x = (T)v.x}; }\
GLM_API T##1 cast_##T##1_##U##4(U##4 const v) { return (T##1){.x = (T)v.x}; }

#define GLM_DEFINE_TVEC2_CASTS(T,U)\
GLM_API T##2 cast_##T##2_##U##1(U##1 const v) { return (T##2){.e = {(T)v.x, (T)v.x}}; }\
GLM_API T##2 cast_##T##2_##U##2(U##2 const v) { return (T##2){.e = {(T)v.x, (T)v.y}}; }\
GLM_API T##2 cast_##T##2_##U##3(U##3 const v) { return (T##2){.e = {(T)v.x, (T)v.y}}; }\
GLM_API T##2 cast_##T##2_##U##4(U##4 const v) { return (T##2){.e = {(T)v.x, (T)v.y}}; }

#define GLM_DEFINE_TVEC3_CASTS(T,U)\
GLM_API T##3 cast_##T##3_##U##1(U##1 const v) { return (T##3){.e = {(T)v.x, (T)v.x, (T)v.x}}; }\
GLM_API T##3 cast_##T##3_##U##3(U##3 const v) { return (T##3){.e = {(T)v.x, (T)v.y, (T)v.z}}; }\
GLM_API T##3 cast_##T##3_##U##4(U##4 const v) { return (T##3){.e = {(T)v.x, (T)v.y, (T)v.z}}; }

#define GLM_DEFINE_TVEC4_CASTS(T,U)\
GLM_API T##4 cast_##T##4_##U##1(U##1 const v) { return (T##4){.e = {(T)v.x, (T)v.x, (T)v.x, (T)v.x}}; }\
GLM_API T##4 cast_##T##4_##U##4(U##4 const v) { return (T##4){.e = {(T)v.x, (T)v.y, (T)v.z, (T)v.w}}; }\

#define GLM_DEFINE_TVECN_CASTS(T,N)\
GLM_DEFINE_TVEC##N##_CASTS(T,float)\
GLM_DEFINE_TVEC##N##_CASTS(T,double)\
GLM_DEFINE_TVEC##N##_CASTS(T,int)\
GLM_DEFINE_TVEC##N##_CASTS(T,uint)\
GLM_DEFINE_TVEC##N##_CASTS(T,bool)


#define GLM_DEFINE_TVEC_CASTS(T)\
GLM_DEFINE_TSCALAR_CASTS(T,float)\
GLM_DEFINE_TSCALAR_CASTS(T,double)\
GLM_DEFINE_TSCALAR_CASTS(T,int)\
GLM_DEFINE_TSCALAR_CASTS(T,uint)\
GLM_DEFINE_TSCALAR_CASTS(T,bool)\
GLM_DEFINE_TVECN_CASTS(T,1)\
GLM_DEFINE_TVECN_CASTS(T,2)\
GLM_DEFINE_TVECN_CASTS(T,3)\
GLM_DEFINE_TVECN_CASTS(T,4)


#define GLM_DECLARE_TVEC_CONSTRUCTORS(T)\
GLM_API T##1 T##1_1(void),\
             T##1_2(T const);\
\
GLM_API T##2 T##2_1(void),\
             T##2_2(T const),\
             T##2_3(T const, T const);\
\
GLM_API T##3 T##3_1(void),\
             T##3_2(T const),\
             T##3_3(T##2 const, T const),\
             T##3_4(T const, T##2 const),\
             T##3_5(T const, T const, T const);\
\
GLM_API T##4 T##4_1(void),\
             T##4_2(T const),\
             T##4_3(T##2 const, T##2 const),\
             T##4_4(T##3 const, T const),\
             T##4_5(T const, T##3 const),\
             T##4_6(T##2 const, T const, T const),\
             T##4_7(T const, T##2 const, T const),\
             T##4_8(T const, T const, T##2 const),\
             T##4_9(T const, T const, T const, T const);


#define GLM_DEFINE_TVEC_CONSTRUCTORS(T)\
GLM_API T##1 T##1_1(void) { return (T##1){0}; }\
GLM_API T##1 T##1_2(T const s) { return (T##1){s}; }\
\
GLM_API T##2 T##2_1(void) { return (T##2){0}; }\
GLM_API T##2 T##2_2(T const s) { return (T##2){.e = {s, s}}; }\
GLM_API T##2 T##2_3(T const e0, T const e1) { return (T##2){.e = {e0, e1}}; }\
\
GLM_API T##3 T##3_1(void) { return (T##3){0}; }\
GLM_API T##3 T##3_2(T const s) { return (T##3){.e = {s, s, s}}; }\
GLM_API T##3 T##3_3(T##2 const a1, T const a2) {\
    T##3 v;\
    v.e[0] = a1.e[0];\
    v.e[1] = a1.e[1];\
    v.e[2] = a2;\
    return v;\
}\
GLM_API T##3 T##3_4(T const a1, T##2 const a2) {\
    T##3 v;\
    v.e[0] = a1;\
    v.e[1] = a2.e[0];\
    v.e[2] = a2.e[1];\
    return v;\
}\
GLM_API T##3 T##3_5(T const e0, T const e1, T const e2) { return (T##3){.e = {e0, e1, e2}}; }\
\
GLM_API T##4 T##4_1(void) { return (T##4){0}; }\
GLM_API T##4 T##4_2(T const s) { return (T##4){.e = {s, s, s, s}}; }\
GLM_API T##4 T##4_3(T##2 const a1, T##2 const a2) {\
    T##4 v;\
    v.e[0] = a1.e[0];\
    v.e[1] = a1.e[1];\
    v.e[2] = a2.e[0];\
    v.e[3] = a2.e[1];\
    return v;\
}\
GLM_API T##4 T##4_4(T##3 const a1, T const a2) {\
    T##4 v;\
    v.e[0] = a1.e[0];\
    v.e[1] = a1.e[1];\
    v.e[2] = a1.e[2];\
    v.e[3] = a2;\
    return v;\
}\
GLM_API T##4 T##4_5(T const a1, T##3 const a2) {\
    T##4 v;\
    v.e[0] = a1;\
    v.e[1] = a2.e[0];\
    v.e[2] = a2.e[1];\
    v.e[3] = a2.e[2];\
    return v;\
}\
GLM_API T##4 T##4_6(T##2 const a1, T const a2, T const a3) {\
    T##4 v;\
    v.e[0] = a1.e[0];\
    v.e[1] = a1.e[1];\
    v.e[2] = a2;\
    v.e[3] = a3;\
    return v;\
}\
GLM_API T##4 T##4_7(T const a1, T##2 const a2, T const a3) {\
    T##4 v;\
    v.e[0] = a1;\
    v.e[1] = a2.e[0];\
    v.e[2] = a2.e[1];\
    v.e[3] = a3;\
    return v;\
}\
GLM_API T##4 T##4_8(T const a1, T const a2, T##2 const a3) {\
    T##4 v;\
    v.e[0] = a1;\
    v.e[1] = a2;\
    v.e[2] = a3.e[0];\
    v.e[3] = a3.e[1];\
    return v;\
}\
GLM_API T##4 T##4_9(T const e0, T const e1, T const e2, T const e3) { return (T##4){.e = {e0, e1, e2, e3}}; }


#define GLM_IF_SCALAR(x) float: x, double: x, int: x, uint: x, bool: x
#define GLM_IF_VECN(N,x) float##N: x, double##N: x, int##N: x, uint##N: x, bool##N: x

#define GLM_GENERIC_IF_SCALAR(x, a, b) _Generic(x, GLM_IF_VECN(a), default: b)
#define GLM_GENERIC_IF_VECN(N, x, a, b) _Generic(x, GLM_IF_VECN(N,a), default: b)

#define GLM_IF_SCALAR(x) float: x, double: x, int: x, uint: x, bool: x

#define GLM_GENERIC_CAST_CASES(T,M,N)\
float##N: cast_##T##M##_float##N,\
double##N: cast_##T##M##_double##N,\
int##N: cast_##T##M##_int##N,\
uint##N: cast_##T##M##_uint##N,\
bool##N: cast_##T##M##_bool##N

// cast between different tvecn types

#define cast_scalar_cases(T) GLM_GENERIC_CAST_CASES(T,,), GLM_GENERIC_CAST_CASES(T,,1), GLM_GENERIC_CAST_CASES(T,,2), GLM_GENERIC_CAST_CASES(T,,3), GLM_GENERIC_CAST_CASES(T,,4)
#define cast_tvec1_cases(T) GLM_GENERIC_CAST_CASES(T,1,1), GLM_GENERIC_CAST_CASES(T,1,2), GLM_GENERIC_CAST_CASES(T,1,3), GLM_GENERIC_CAST_CASES(T,1,4)
#define cast_tvec2_cases(T) GLM_GENERIC_CAST_CASES(T,2,1), GLM_GENERIC_CAST_CASES(T,2,2), GLM_GENERIC_CAST_CASES(T,2,3), GLM_GENERIC_CAST_CASES(T,2,4)
#define cast_tvec3_cases(T) GLM_GENERIC_CAST_CASES(T,3,1), GLM_GENERIC_CAST_CASES(T,3,3), GLM_GENERIC_CAST_CASES(T,3,4)
#define cast_tvec4_cases(T) GLM_GENERIC_CAST_CASES(T,4,1), GLM_GENERIC_CAST_CASES(T,4,4)

#define cast_scalar(T, x) _Generic(x, cast_scalar_cases(T))
#define cast_tvec1(T, x) _Generic(x, cast_tvec1_cases(T))

#define cast_tvec2(T, x) _Generic(x, cast_tvec2_cases(T))
#define cast_tvec3(T, x) _Generic(x, cast_tvec3_cases(T))
#define cast_tvec4(T, x) _Generic(x, cast_tvec4_cases(T))

#define tvec2_1(T, a, ...) _Generic(a, cast_tvec2_cases(T), GLM_IF_SCALAR(T##2_2))(a)
#define tvec3_1(T, a, ...) _Generic(a, cast_tvec3_cases(T), GLM_IF_SCALAR(T##3_2))(a)
#define tvec4_1(T, a, ...) _Generic(a, cast_tvec4_cases(T), GLM_IF_SCALAR(T##4_2))(a)

#define tvec2_2(T, e0, e1, ...) T##2_3(e0, e1)
#define tvec3_3(T, e0, e1, e2, ...) T##3_5(e0, e1, e2)
#define tvec4_4(T, e0, e1, e2, e3, ...) T##4_9(e0, e1, e2, e3)

#define tvec3_2(T, a1, a2, ...)\
_Generic(a1, GLM_IF_VECN(2,T##3_3), GLM_IF_SCALAR(T##3_4))(\
_Generic(a1, GLM_GENERIC_CAST_CASES(T,,), GLM_GENERIC_CAST_CASES(T,2,2))(a1),\
_Generic(a2, GLM_GENERIC_CAST_CASES(T,,), GLM_GENERIC_CAST_CASES(T,2,2))(a2))

#define tvec4_2(T, a1, a2, ...)\
_Generic(a1, GLM_IF_VECN(2, T##4_3), GLM_IF_VECN(3, T##4_4), GLM_IF_SCALAR(T##4_5))(\
_Generic(a1, GLM_GENERIC_CAST_CASES(T,,), GLM_GENERIC_CAST_CASES(T,2,2), GLM_GENERIC_CAST_CASES(T,3,3))(a1),\
_Generic(a2, GLM_GENERIC_CAST_CASES(T,,), GLM_GENERIC_CAST_CASES(T,2,2), GLM_GENERIC_CAST_CASES(T,3,3))(a2))

#define tvec4_3(T, a1, a2, a3, ...)

#define tvec1_(T, a1, N, ...) tvec1_##N(T, a1)
#define tvec2_(T, a1, a2, N, ...) tvec2_##N(T, a1, a2)
#define tvec3_(T, a1, a2, a3, N, ...) tvec3_##N(T, a1, a2, a3)
#define tvec4_(T, a1, a2, a3, a4, N, ...) tvec4_##N(T, a1, a2, a3, a4)

#define scalar(T, x) cast_scalar(T, x)(x)
#define tvec1(T, x) cast_tvec1(T, x)(x)
#define tvec2(T, ...) tvec2_(T, __VA_ARGS__, 2, 1, 0)
#define tvec3(T, ...) tvec3_(T, __VA_ARGS__, 3, 2, 1, 0)
#define tvec4(T, ...) tvec4_(T, __VA_ARGS__, 4, 3, 2, 1, 0)

#define    float(x) scalar(float,  x)
#define   double(x) scalar(double, x)
#define      int(x) scalar(int,    x)
#define     uint(x) scalar(uint,   x)
#define     bool(x) scalar(bool,   x)

#define   float1(x) tvec1(float,  x)
#define  double1(x) tvec1(double, x)
#define     int1(x) tvec1(int,    x)
#define    uint1(x) tvec1(uint,   x)
#define    bool1(x) tvec1(bool,   x)

#define   float2(...) tvec2(float,  __VA_ARGS__)
#define   float3(...) tvec3(float,  __VA_ARGS__)
#define   float4(...) tvec4(float,  __VA_ARGS__)
#define  double2(...) tvec2(double, __VA_ARGS__)
#define  double3(...) tvec3(double, __VA_ARGS__)
#define  double4(...) tvec4(double, __VA_ARGS__)
#define     int2(...) tvec2(int,    __VA_ARGS__)
#define     int3(...) tvec3(int,    __VA_ARGS__)
#define     int4(...) tvec4(int,    __VA_ARGS__)
#define    uint2(...) tvec2(uint,   __VA_ARGS__)
#define    uint3(...) tvec3(uint,   __VA_ARGS__)
#define    uint4(...) tvec4(uint,   __VA_ARGS__)
#define    bool2(...) tvec2(bool,   __VA_ARGS__)
#define    bool3(...) tvec3(bool,   __VA_ARGS__)
#define    bool4(...) tvec4(bool,   __VA_ARGS__)

#define  float2x2(...) tmat2x2(float, __VA_ARGS__)
#define  float3x3(...) tmat3x3(float, __VA_ARGS__)
#define  float4x4(...) tmat4x4(float, __VA_ARGS__)
#define double2x2(...) tmat2x2(double,__VA_ARGS__)
#define double3x3(...) tmat3x3(double,__VA_ARGS__)
#define double4x4(...) tmat4x4(double,__VA_ARGS__)
#define    int2x2(...) tmat2x2(int,   __VA_ARGS__)
#define    int3x3(...) tmat3x3(int,   __VA_ARGS__)
#define    int4x4(...) tmat4x4(int,   __VA_ARGS__)
#define   uint2x2(...) tmat2x2(uint,  __VA_ARGS__)
#define   uint3x3(...) tmat3x3(uint,  __VA_ARGS__)
#define   uint4x4(...) tmat4x4(uint,  __VA_ARGS__)
#define   bool2x2(...) tmat2x2(bool,  __VA_ARGS__)
#define   bool3x3(...) tmat3x3(bool,  __VA_ARGS__)
#define   bool4x4(...) tmat4x4(bool,  __VA_ARGS__)


#ifdef __cplusplus
extern "C" {
#endif

GLM_DECLARE_VECTORS(float)
GLM_DECLARE_VECTORS(double)
GLM_DECLARE_VECTORS(int)
GLM_DECLARE_VECTORS(uint)
GLM_DECLARE_VECTORS(bool)

GLM_DECLARE_TVEC_CASTS(float)
GLM_DECLARE_TVEC_CASTS(double)
GLM_DECLARE_TVEC_CASTS(int)
GLM_DECLARE_TVEC_CASTS(uint)
GLM_DECLARE_TVEC_CASTS(bool)

GLM_DECLARE_TVEC_CONSTRUCTORS(float)
GLM_DECLARE_TVEC_CONSTRUCTORS(double)
GLM_DECLARE_TVEC_CONSTRUCTORS(int)
GLM_DECLARE_TVEC_CONSTRUCTORS(uint)
GLM_DECLARE_TVEC_CONSTRUCTORS(bool)

#ifdef __cplusplus
}
#endif

#if defined(GLM_HEADER_ONLY)

GLM_DEFINE_VECTORS(float)
GLM_DEFINE_VECTORS(double)
GLM_DEFINE_VECTORS(int)
GLM_DEFINE_VECTORS(uint)
GLM_DEFINE_VECTORS(bool)

GLM_DEFINE_MATRICES(float)
GLM_DEFINE_MATRICES(double)
GLM_DEFINE_MATRICES(int)
GLM_DEFINE_MATRICES(uint)
GLM_DEFINE_MATRICES(bool)

GLM_DEFINE_TVEC_CASTS(float)
GLM_DEFINE_TVEC_CASTS(double)
GLM_DEFINE_TVEC_CASTS(int)
GLM_DEFINE_TVEC_CASTS(uint)
GLM_DEFINE_TVEC_CASTS(bool)

GLM_DEFINE_TVEC_CONSTRUCTORS(float)
GLM_DEFINE_TVEC_CONSTRUCTORS(double)
GLM_DEFINE_TVEC_CONSTRUCTORS(int)
GLM_DEFINE_TVEC_CONSTRUCTORS(uint)
GLM_DEFINE_TVEC_CONSTRUCTORS(bool)

GLM_DEFINE_TMAT_CONSTRUCTORS(float)
GLM_DEFINE_TMAT_CONSTRUCTORS(double)
GLM_DEFINE_TMAT_CONSTRUCTORS(int)
GLM_DEFINE_TMAT_CONSTRUCTORS(uint)
GLM_DEFINE_TMAT_CONSTRUCTORS(bool)

#endif

#define vec1 float1
#define vec2 float2
#define vec3 float3
#define vec4 float4
#define dvec1 double1
#define dvec2 double2
#define dvec3 double3
#define dvec4 double4
#define ivec1 int1
#define ivec2 int2
#define ivec3 int3
#define ivec4 int4
#define uvec1 uint1
#define uvec2 uint2
#define uvec3 uint3
#define uvec4 uint4
#define bvec1 bool1
#define bvec2 bool2
#define bvec3 bool3
#define bvec4 bool4

#define  mat2x2 float2x2
#define  mat3x3 float3x3
#define  mat4x4 float4x4
#define dmat2x2 double2x2
#define dmat3x3 double3x3
#define dmat4x4 double4x4
/*
#define imat2x2    int2x2
#define imat3x3    int3x3
#define imat4x4    int4x4
#define umat2x2   uint2x2
#define umat3x3   uint3x3
#define umat4x4   uint4x4
#define bmat2x2   bool2x2
#define bmat3x3   bool3x3
#define bmat4x4   bool4x4
*/

#define mat2   mat2x2
#define mat3   mat3x3
#define mat4   mat4x4
#define dmat2 dmat2x2
#define dmat3 dmat3x3
#define dmat4 dmat4x4
/*
#define imat2 imat2x2
#define imat3 imat3x3
#define imat4 imat4x4
#define umat2 umat2x2
#define umat3 umat3x3
#define umat4 umat4x4
#define bmat2 bmat2x2
#define bmat3 bmat3x3
#define bmat4 bmat4x4
*/

//#include <stdlib.h>

#define std140_alignment(t, n) sizeof(t)*(n==3?4:n)

#if defined(__GNUC__) || defined(__GNUG__)

/* https://www.khronos.org/registry/OpenGL/specs/gl/glspec45.core.pdf#page=159 */

#define align(x) (__aligned__(x))
#define std140(t, n) align(std140_alignment(t,n))
#define std430(t, n) std140(t, n)
#define packed (__packed__)
#define shared packed

#define layout(...) union __attribute__(__VA_ARGS__)

#elif defined(__MSVC)

/* #define layout(...) __declspec(__VA_ARGS__) */

#else

#endif
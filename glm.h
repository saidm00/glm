#ifndef GLM_INCLUDED
#define GLM_INCLUDED

#ifdef GLM_FORCE_INLINE

#if defined(__GNUC__) || defined(__clang__)
#define GLM_API static inline __attribute__((always_inline))
#elif defined(__MSVC)
#define GLM_API static inline __forceinline
#endif

#else

#define GLM_API static

#endif


#include <tgmath.h>

#define min(x,y) (((x)>(y))?(y):(x))
#define max(x,y) (((x)>(y))?(x):(y))
#define clamp(x,a,b) (((x)<(a))?(a):((x)>(b))?(b):(x))

#undef bool
typedef _Bool bool;
typedef unsigned int uint;

#define GLM_DEFINE_VECTORS(T)\
typedef union {\
    T e[1];\
    T x, s, r;\
} T##1;\
\
typedef union {\
    T e[2];\
    struct { T x, y; };\
    struct { T s, t; };\
    struct { T r, g; };\
} T##2;\
\
typedef union {\
    T e[3];\
    T##2 xy, rg, st;\
    struct { T x, y, z; };\
    struct { T r, g, b; };\
    struct { T s, t, p; };\
    struct { T x_; union { T##2 yz, gb, tp; }; };\
} T##3;\
\
typedef union {\
    T e[4];\
    T##3 xyz, rgb, stp;\
    struct { T x, y, z, w; };\
    struct { T r, g, b, a; };\
    struct { T s, t, p, q; };\
    struct { T##2 xy, zw; };\
    struct { T##2 rg, ba; };\
    struct { T##2 st, pq; };\
    struct { T x_; union { T##2 yz, gb, tp; T##3 yzw, gba, tpq; }; };\
} T##4;

GLM_DEFINE_VECTORS(float)
GLM_DEFINE_VECTORS(double)
GLM_DEFINE_VECTORS(int)
GLM_DEFINE_VECTORS(uint)
GLM_DEFINE_VECTORS(bool)

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

GLM_DEFINE_MATRICES(float)
GLM_DEFINE_MATRICES(double)
GLM_DEFINE_MATRICES(int)
GLM_DEFINE_MATRICES(uint)
GLM_DEFINE_MATRICES(bool)
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

#define T2x2_1(T, s, ...) T##2x2_1(s)
#define T2x2_2(T, v0, v1, ...) T##2x2_2(v0, v1)
#define T2x2_4(T, e00, e10, e01, e11, ...) T##2x2_4(e00, e10, e01, e11)

#define T3x3_1(T, s, ...) T##3x3_1(s)
#define T3x3_3(T, v0, v1, v2, ...) T##3x3_3(v0, v1, v2)
#define T3x3_9(T, e00, e10, e20, e01, e11, e21, e02, e12, e22, ...) T##3x3_9(e00, e10, e20, e01, e11, e21, e02, e12, e22)

#define T4x4_1(T, s, ...) T##4x4_1(s)
#define T4x4_4(T, v0, v1, v2, v3, ...) T##4x4_4(v0, v1, v2, v3)
#define T4x4_16(T, e00, e10, e20, e30, e01, e11, e21, e31, e02, e12, e22, e32, e03, e13, e23, e33, ...)\
T##4x4_16(e00, e10, e20, e30, e01, e11, e21, e31, e02, e12, e22, e32, e03, e13, e23, e33)

#define T2x2_(T, a1, a2, a3, a4, N, ...)\
T2x2_##N(T, a1, a2, a3, a4)

#define T3x3_(T, a1, a2, a3, a4, a5, a6, a7, a8, a9, N, ...)\
T3x3_##N(T, a1, a2, a3, a4, a5, a6, a7, a8, a9)

#define T4x4_(T, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, N, ...)\
T4x4_##N(T, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16)

#define T2x2(T, ...) T2x2_(T,__VA_ARGS__, 4, 3, 2, 1, 0)
#define T3x3(T, ...) T3x3_(T,__VA_ARGS__, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0)
#define T4x4(T, ...) T4x4_(T,__VA_ARGS__, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0)

#define  float2x2(...) T2x2(float, __VA_ARGS__)
#define  float3x3(...) T3x3(float, __VA_ARGS__)
#define  float4x4(...) T4x4(float, __VA_ARGS__)
#define double2x2(...) T2x2(double,__VA_ARGS__)
#define double3x3(...) T3x3(double,__VA_ARGS__)
#define double4x4(...) T4x4(double,__VA_ARGS__)
#define    int2x2(...) T2x2(int,   __VA_ARGS__)
#define    int3x3(...) T3x3(int,   __VA_ARGS__)
#define    int4x4(...) T4x4(int,   __VA_ARGS__)
#define   uint2x2(...) T2x2(uint,  __VA_ARGS__)
#define   uint3x3(...) T3x3(uint,  __VA_ARGS__)
#define   uint4x4(...) T4x4(uint,  __VA_ARGS__)
#define   bool2x2(...) T2x2(bool,  __VA_ARGS__)
#define   bool3x3(...) T3x3(bool,  __VA_ARGS__)
#define   bool4x4(...) T4x4(bool,  __VA_ARGS__)
//
// vec.wzyx(vec)
// wzyx(vec)
// vec.wzyx // doesn't work
// 
// typedef union {
//	   float4 (*xyxx)(float2);
//     float e[2];
//     struct { float x, y; };
//     struct { float s, t; };
//     struct { float r, g; };
// } float2;
// 
// vec.xyxx(vec)
// xyxx(vec)
// vec.xyxx
/*
#define VECT2U(T,U,...) static inline T U##_to_##T(U v) { return (T)__VA_ARGS__; }
#define DEF2VEC(T,N,...) VECT2U(T,float##N,__VA_ARGS__) VECT2U(T,double##N,__VA_ARGS__) \
VECT2U(T,int##N,__VA_ARGS__) VECT2U(T,uint##N,__VA_ARGS__) VECT2U(T,bool##N,__VA_ARGS__)
#define DEF2VEC2(T) DEF2VEC(T,,{v}) DEF2VEC(T,2,{v.x, v.y})
#define DEF2VEC3(T) DEF2VEC2(T) DEF2VEC(T,3,{v.x, v.y, v.z})
#define DEF2VEC4(T) DEF2VEC3(T) DEF2VEC(T,4,{v.x, v.y, v.z, v.w})
#define DEF2VECA(T) DEF2VEC(T,,{v}) DEF2VEC2(T##2) DEF2VEC3(T##3) DEF2VEC4(T##4)
DEF2VECA(float);
DEF2VECA(double);
DEF2VECA(int);
DEF2VECA(uint);
DEF2VECA(bool);
#define GEN_TO_VEC(T,N) float##N: float##N##_to_##T, double##N: double##N##_to_##T, \
int##N: int##N##_to_##T, uint##N: uint##N##_to_##T, bool##N: bool##N##_to_##T
#define GEN_TO_VEC2(T) GEN_TO_VEC(T,), GEN_TO_VEC(T,2)
#define GEN_TO_VEC3(T) GEN_TO_VEC2(T), GEN_TO_VEC(T,3)
#define GEN_TO_VEC4(T) GEN_TO_VEC3(T), GEN_TO_VEC(T,4)
#define TO_VEC(T, x) _Generic(x, GEN_TO_VEC(T,))
#define TO_VEC2(T, x) _Generic(x, GEN_TO_VEC2(T))
#define TO_VEC3(T, x) _Generic(x, GEN_TO_VEC3(T))
#define TO_VEC4(T, x) _Generic(x, GEN_TO_VEC4(T))
#define VEC3_x_y(T)    static inline T##3 T##3##_from_x_y   (T x, T y) { return (T##3){.x = x, .y = y }; }
#define VEC3_x_yz(T)   static inline T##3 T##3##_from_x_yz  (T x, T##2 yz) { return (T##3){.x = x, .yz = yz }; }
#define VEC3_xy_z(T)   static inline T##3 T##3##_from_xy_z  (T##2 xy, T z) { return (T##3){.xy = xy, .z = z }; }
#define VEC4_x_y(T)    static inline T##4 T##4##_from_x_y   (T x, T y) { return (T##4){.x = x, .y = y }; }
#define VEC4_x_yz(T)   static inline T##4 T##4##_from_x_yz  (T x, T##2 yz) { return (T##4){.x = x, .yz = yz }; }
#define VEC4_xy_z(T)   static inline T##4 T##4##_from_xy_z  (T##2 xy, T z) { return (T##4){.xy = xy, .z = z }; }
#define VEC4_x_y_z(T)  static inline T##4 T##4##_from_x_y_z (T x, T y, T z) { return (T##4){.x = x, .y = y, .z = z }; }
#define VEC4_x_y_zw(T) static inline T##4 T##4##_from_x_y_zw(T x, T y, T##2 zw) { return (T##4){.x = x, .y = y, .zw = zw}; }
#define VEC4_x_yz_w(T) static inline T##4 T##4##_from_x_yz_w(T x, T##2 yz, T w) { return (T##4){.x = x, .yz = yz, .w = w}; }
#define VEC4_xy_z_w(T) static inline T##4 T##4##_from_xy_z_w(T##2 xy, T z, T w) { return (T##4){.xy = xy, .z = z, .w = w}; }
#define VEC4_x_yzw(T)  static inline T##4 T##4##_from_x_yzw (T x, T##3 yzw)     { return (T##4){.x = x, .yzw = yzw}; }
#define VEC4_xy_zw(T)  static inline T##4 T##4##_from_xy_zw (T##2 xy, T##2 zw)  { return (T##4){.xy = xy, .zw = zw}; }
#define VEC4_xyz_w(T)  static inline T##4 T##4##_from_xyz_w (T##3 xyz, T w)     { return (T##4){.xyz = xyz, .w = w}; }
#define VEC_PERMUTED_ARGS(T) VEC3_x_y(T) VEC3_x_yz(T) VEC3_xy_z(T) VEC4_x_y(T) VEC4_x_yz(T) VEC4_xy_z(T) VEC4_x_y_zw(T)  VEC4_x_yz_w(T) VEC4_xy_z_w(T) VEC4_x_yzw(T) VEC4_xy_zw(T) VEC4_xyz_w(T)
VEC_PERMUTED_ARGS(float)
VEC_PERMUTED_ARGS(double)
VEC_PERMUTED_ARGS(int)
VEC_PERMUTED_ARGS(uint)
VEC_PERMUTED_ARGS(bool) 
#define GEN_TO_TSIZE(T, N, x) \
float##N: TO_VEC##N(T##N, x), \
double##N: TO_VEC##N(T##N, x), \
int##N: TO_VEC##N(T##N, x), \
uint##N: TO_VEC##N(T##N, x), \
bool##N: TO_VEC##N(T##N, x)
#define GEN_TO_TSIZES(T, x) GEN_TO_VEC(T,), GEN_TO_VEC(T##2,2), GEN_TO_VEC(T##3,3), GEN_TO_VEC(T##4,4)
#define TO_TSIZE(T, x) _Generic(x, GEN_TO_TSIZES(T, x))
#define VEC2_0(T, dummy) ((T##2){0})
#define VEC2_1(T, x) TO_VEC2(T##2, x)(x)
#define VEC2_2(T, x, y) ((T##2){.e = {(x), (y)}})
#define VEC3_0(T, dummy) ((T##3){0})
#define VEC3_1(T, x) TO_VEC3(T##3, x)(x)
#define VEC3_2(T, first, second) \
_Generic(TO_TSIZE(T, first)(first), \
    T: _Generic(TO_TSIZE(T, second)(second), \
        T: T##3##_from_x_y, \
        T##2: T##3##_from_x_yz \
    ), \
    T##2: T##3##_from_xy_z \
)(TO_TSIZE(T, first)(first), TO_TSIZE(T, second)(second))
#define VEC3_3(T, x, y, z) ((T##3){.e = {(x), (y), (z)}})
#define VEC4_0(T, dummy) ((T##4){0})
#define VEC4_1(T, x) TO_VEC4(T##4, x)(x)
#define VEC4_2(T, first, second) \
_Generic(TO_TSIZE(T, first)(first), \
    T: _Generic(TO_TSIZE(T, second)(second), \
        T: T##4##_from_x_y, \
        T##2: T##4##_from_x_yz, \
        T##3: T##4##_from_x_yzw \
    ), \
    T##2: _Generic(TO_TSIZE(T, second)(second), \
        T: T##4##_from_xy_z, \
        T##2: T##4##_from_xy_zw \
    ), \
    T##3: _Generic(TO_TSIZE(T, second)(second), \
        T: T##4##_from_xyz_w, \
        T##2: T##4##_from_xyz_w \
    ) \
)(TO_TSIZE(T, first)(first), TO_TSIZE(T, second)(second))
// @Todo: #define VEC4_3(T, first, second, third)
#define VEC4_4(T, x, y, z, w) ((T##4){.e = {(x), (y), (z), (w)}})
#define PP_ARG_N(_1, _2, _3, _4, _5, N, ...) N
#define PP_NARG_(...) PP_ARG_N(__VA_ARGS__)    
#define PP_NARG(...)  PP_NARG_(_, ##__VA_ARGS__, 4, 3, 2, 1, 0)
#define PASTE_(a, b) a ## b
#define PASTE(a, b) PASTE_(a, b)

//#define float(...) ((float)(__VA_ARGS__))
#define  float2(...) PASTE(VEC2_, PP_NARG(__VA_ARGS__))(float, __VA_ARGS__)
#define  float3(...) PASTE(VEC3_, PP_NARG(__VA_ARGS__))(float, __VA_ARGS__)
#define  float4(...) PASTE(VEC4_, PP_NARG(__VA_ARGS__))(float, __VA_ARGS__)
//#define double(...) ((double)(__VA_ARGS__))
#define double2(...) PASTE(VEC2_, PP_NARG(__VA_ARGS__))(double, __VA_ARGS__)
#define double3(...) PASTE(VEC3_, PP_NARG(__VA_ARGS__))(double, __VA_ARGS__)
#define double4(...) PASTE(VEC4_, PP_NARG(__VA_ARGS__))(double, __VA_ARGS__)
//#define int(...) ((int)(__VA_ARGS__))
#define    int2(...) PASTE(VEC2_, PP_NARG(__VA_ARGS__))(int, __VA_ARGS__)
#define    int3(...) PASTE(VEC3_, PP_NARG(__VA_ARGS__))(int, __VA_ARGS__)
#define    int4(...) PASTE(VEC4_, PP_NARG(__VA_ARGS__))(int, __VA_ARGS__)
//#define uint(...) ((uint)(__VA_ARGS__))
#define   uint2(...) PASTE(VEC2_, PP_NARG(__VA_ARGS__))(uint, __VA_ARGS__)
#define   uint3(...) PASTE(VEC3_, PP_NARG(__VA_ARGS__))(uint, __VA_ARGS__)
#define   uint4(...) PASTE(VEC4_, PP_NARG(__VA_ARGS__))(uint, __VA_ARGS__)
//#define bool(...) ((bool)(__VA_ARGS__))
#define   bool2(...) PASTE(VEC2_, PP_NARG(__VA_ARGS__))(bool, __VA_ARGS__)
#define   bool3(...) PASTE(VEC3_, PP_NARG(__VA_ARGS__))(bool, __VA_ARGS__)
#define   bool4(...) PASTE(VEC4_, PP_NARG(__VA_ARGS__))(bool, __VA_ARGS__)
*/

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
#define GLM_DEFINE_TVEC2_CASTS(T,U)\
GLM_API T##2 cast_##T##2##_##U##2(U##2 const v) { return (T##2){.e = {v.x, v.y}}; }\
GLM_API T##2 cast_##T##2##_##U##3(U##3 const v) { return (T##2){.e = {v.x, v.y}}; }\
GLM_API T##2 cast_##T##2##_##U##4(U##4 const v) { return (T##2){.e = {v.x, v.y}}; }

#define GLM_DEFINE_TVEC3_CASTS(T,U)\
GLM_API T##3 cast_##T##3##_##U##3(U##3 const v) { return (T##3){.e = {v.x, v.y, v.z}}; }\
GLM_API T##3 cast_##T##3##_##U##4(U##4 const v) { return (T##3){.e = {v.x, v.y, v.z}}; }

#define GLM_DEFINE_TVEC4_CASTS(T,U)\
GLM_API T##4 cast_##T##4##_##U##4(U##4 const v) { return (T##4){.e = {v.x, v.y, v.z, v.w}}; }\

#define GLM_DEFINE_TVECN_CASTS(T,N)\
GLM_DEFINE_TVEC##N##_CASTS(T,float)\
GLM_DEFINE_TVEC##N##_CASTS(T,double)\
GLM_DEFINE_TVEC##N##_CASTS(T,int)\
GLM_DEFINE_TVEC##N##_CASTS(T,uint)\
GLM_DEFINE_TVEC##N##_CASTS(T,bool)


#define GLM_DEFINE_TVEC_CASTS(T)\
GLM_DEFINE_TVECN_CASTS(T,2)\
GLM_DEFINE_TVECN_CASTS(T,3)\
GLM_DEFINE_TVECN_CASTS(T,4)

#define GLM_IF_SCALAR(x) float: x, double: x, int: x, uint: x, bool: x

#define GLM_IF_VECTOR(T,M,N) \
float##N: cast_##T##M##_float##N,\
double##N: cast_##T##M##_double##N,\
int##N: cast_##T##M##_int##N,\
uint##N: cast_##T##M##_uint##N,\
bool##N: cast_##T##M##_bool##N


#define GLM_DECLARE_TVEC_CONSTRUCTORS(T)\
GLM_API T##2 T##2_1(T const),\
             T##2_2(T const, T const);\
\
GLM_API T##3 T##3_1(T const),\
             T##3_2(T##2 const, T const),\
             T##3_3(T const, T##2 const),\
             T##3_4(T const, T const, T const);\
\
GLM_API T##4 T##4_1(T const),\
             T##4_2(T##2 const, T##2 const),\
             T##4_3(T##3 const, T const),\
             T##4_4(T const, T##3 const),\
             T##4_5(T##2 const, T const, T const),\
             T##4_6(T const, T##2 const, T const),\
             T##4_7(T const, T const, T##2 const),\
             T##4_8(T const, T const, T const, T const);


#define GLM_DEFINE_TVEC_CONSTRUCTORS(T)\
GLM_API T##2 T##2_1(T const s) {\
    return (T##2){.e = {s, s}};\
}\
GLM_API T##2 T##2_2(T const e0, T const e1) {\
    return (T##2){.e = {e0, e1}};\
}\
GLM_API T##3 T##3_1(T const s) {\
    return (T##3){.e = {s, s, s}};\
}\
GLM_API T##3 T##3_2(T##2 const xy, T const z) {\
    return (T##3){.xy = xy, .z = z};\
}\
GLM_API T##3 T##3_3(T const x, T##2 const yz) {\
    return (T##3){.x = x, .yz = yz};\
}\
GLM_API T##3 T##3_4(T const e0, T const e1, T const e2) {\
    return (T##3){.e = {e0, e1, e2}};\
}\
GLM_API T##4 T##4_1(T const s) {\
    return (T##4){.e = {s, s, s}};\
}\
GLM_API T##4 T##4_2(T##2 const xy, T##2 const zw) {\
    return (T##4){.xy = xy, .zw = zw};\
}\
GLM_API T##4 T##4_3(T##3 const xyz, T const w) {\
    return (T##4){.xyz = xyz, .w = w};\
}\
GLM_API T##4 T##4_4(T const x, T##3 const yzw) {\
    return (T##4){.x = x, .yzw = yzw};\
}\
GLM_API T##4 T##4_5(T##2 const xy, T const z, T const w) {\
    return (T##4){.xy = xy, .z = z, .w = w};\
}\
GLM_API T##4 T##4_6(T const x, T##2 const yz, T const w) {\
    return (T##4){.x = x, .yz = yz, .w = w};\
}\
GLM_API T##4 T##4_7(T const x, T const y, T##2 const zw) {\
    return (T##4){.x = x, .y = y, .zw = zw};\
}\
GLM_API T##4 T##4_8(T const e0, T const e1, T const e2, T const e3) {\
    return (T##4){.e = {e0, e1, e2, e3}};\
}


#define GLM_GENERIC_SCALAR_CASES(x) float: x, double: x, int: x, uint: x, bool: x
#define GLM_GENERIC_VECN_CASES(N,x) float##N: x, double##N: x, int##N: x, uint##N: x, bool##N: x

#define GLM_GENERIC_IF_SCALAR(x, a, b) _Generic(x, GLM_GENERIC_SCALAR_CASES(a), default: b)
#define GLM_GENERIC_IF_VECN(N, x, a, b) _Generic(x, GLM_GENERIC_VECN_CASES(N,a), default: b)

#define T2_1(T, a, ...) _Generic(a, GLM_IF_SCALAR(T##2_1), GLM_IF_VECTOR(T,2,2), GLM_IF_VECTOR(T,2,3), GLM_IF_VECTOR(T,2,4))(a)
#define T2_2(T, e0, e1, ...) T##2_2(e0, e1)

#define T3_1(T, a, ...) _Generic(a, GLM_IF_SCALAR(T##3_1), GLM_IF_VECTOR(T,3,3), GLM_IF_VECTOR(T,3,4))(a)

#define T3_2(T, a1, a2, ...) GLM_GENERIC_IF_VECN(2, a1, T##3_2, T##3_3)(\
GLM_GENERIC_IF_VECN(2,a1,T##2(a1),a1),\
GLM_GENERIC_IF_VECN(2,a2,T##2(a2),a2))

#define T3_3(T, e0, e1, e2, ...) T##3_4(e0, e1, e2)

#define T4_1(T, a, ...) _Generic(a, GLM_IF_SCALAR(T##4_1), GLM_IF_VECTOR(T,4,4))(a)

#define T4_2(T, a1, a2, ...)\
GLM_GENERIC_IF_VECN(2, a1, T##4_2, GLM_GENERIC_IF_VECN(3, a1, T##4_3, T##4_4))(\
_Generic(a1, GLM_GENERIC_VECN_CASES(2, T##2(a1)), default: a1),\
_Generic(a2, GLM_GENERIC_VECN_CASES(2, T##2(a2)), GLM_GENERIC_VECN_CASES(3, T##3(a2)), default: a2))

#define T4_3(T, a1, a2, a3, ...) 
#define T4_4(T, e0, e1, e2, e3, ...) T##4_8(e0, e1, e2, e3)

#define         T2_(T, a1, a2, N, ...) T2_##N(T, a1, a2)
#define     T3_(T, a1, a2, a3, N, ...) T3_##N(T, a1, a2, a3)
#define T4_(T, a1, a2, a3, a4, N, ...) T4_##N(T, a1, a2, a3, a4)

#define T2(T,...) T2_(T, __VA_ARGS__, 2, 1, 0)
#define T3(T,...) T3_(T, __VA_ARGS__, 3, 2, 1, 0)
#define T4(T,...) T4_(T, __VA_ARGS__, 4, 3, 2, 1, 0)

#define  float2(...) T2(float,  __VA_ARGS__)
#define  float3(...) T3(float,  __VA_ARGS__)
#define  float4(...) T4(float,  __VA_ARGS__)
#define double2(...) T2(double, __VA_ARGS__)
#define double3(...) T3(double, __VA_ARGS__)
#define double4(...) T4(double, __VA_ARGS__)
#define    int2(...) T2(int,    __VA_ARGS__)
#define    int3(...) T3(int,    __VA_ARGS__)
#define    int4(...) T4(int,    __VA_ARGS__)
#define   uint2(...) T2(uint,   __VA_ARGS__)
#define   uint3(...) T3(uint,   __VA_ARGS__)
#define   uint4(...) T4(uint,   __VA_ARGS__)
#define   bool2(...) T2(bool,   __VA_ARGS__)
#define   bool3(...) T3(bool,   __VA_ARGS__)
#define   bool4(...) T4(bool,   __VA_ARGS__)

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

GLM_DECLARE_TMAT_CONSTRUCTORS(float)
GLM_DECLARE_TMAT_CONSTRUCTORS(double)
GLM_DECLARE_TMAT_CONSTRUCTORS(int)
GLM_DECLARE_TMAT_CONSTRUCTORS(uint)
GLM_DECLARE_TMAT_CONSTRUCTORS(bool)

#if defined(GLM_INCLUDE_IMPLEMENTATION)

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

/* #define alias for types. */
#define vec2 float2
#define vec3 float3
#define vec4 float4
#define dvec2 double2
#define dvec3 double3
#define dvec4 double4
#define ivec2 int2
#define ivec3 int3
#define ivec4 int4
#define uvec2 uint2
#define uvec3 uint3
#define uvec4 uint4
#define bvec2 bool2
#define bvec3 bool3
#define bvec4 bool4


#define  mat2x2  float2x2
#define  mat3x3  float3x3
#define  mat4x4  float4x4
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

/* shorthand matrix notation, eg. mat2 = mat2x2, etc... */
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


// Pre-Processor generate Vector-Scalar operator definition name.
#define GLM_PP_OPERATOR_DECLARATION_NAME_VS(T, N, name) name##_##T##N##_##T (T##N v, T s)
// Pre-Processor generate Vector-Vector operator declaration name.
#define GLM_PP_OPERATOR_DECLARATION_NAME_VV(T, N, name) name##_##T##N##_##T##N (T##N a, T##N b)


// Pre-Processor generate Vector-Scalar operator declaration name.
#define GLM_PP_DECLARE_VECTOR_OPERATOR_VS(T, N, name) GLM_API T##N GLM_PP_OPERATOR_DECLARATION_NAME_VS(T, N, name);
// Pre-Processor generate Vector-Vector operator declaration name.
#define GLM_PP_DECLARE_VECTOR_OPERATOR_VV(T, N, name) GLM_API T##N GLM_PP_OPERATOR_DECLARATION_NAME_VV(T, N, name);


// Full definition of basic operators which return Vector, ex. a+b, a*b, etc...
#define GLM_PP_DEFINE_VECTOR_OPERATOR_VS(T, N, name, op) GLM_API T##N GLM_PP_OPERATOR_DECLARATION_NAME_VS(T,N,name)\
		{\
			for(unsigned int i = 0; i < N; v.e[i++] op##= s);\
			return v;\
		}

#define GLM_PP_DEFINE_VECTOR_OPERATOR_VV(T, N, name, op) GLM_API T##N GLM_PP_OPERATOR_DECLARATION_NAME_VV(T,N,name)\
		{\
			for(unsigned int i = 0; i < N; i++) a.e[i] op##= b.e[i];\
			return a;\
		}


#define GLM_PP_DECLARE_VECTOR_OPERATORS(T, N)\
		GLM_PP_DECLARE_VECTOR_OPERATOR_VS(T, N, add)\
		GLM_PP_DECLARE_VECTOR_OPERATOR_VS(T, N, sub)\
		GLM_PP_DECLARE_VECTOR_OPERATOR_VS(T, N, mul)\
		GLM_PP_DECLARE_VECTOR_OPERATOR_VS(T, N, div)\
		GLM_PP_DECLARE_VECTOR_OPERATOR_VV(T, N, add)\
		GLM_PP_DECLARE_VECTOR_OPERATOR_VV(T, N, sub)\
		GLM_PP_DECLARE_VECTOR_OPERATOR_VV(T, N, mul)\
		GLM_PP_DECLARE_VECTOR_OPERATOR_VV(T, N, div)

#define GLM_PP_DEFINE_VECTOR_OPERATORS(T, N)\
		GLM_PP_DEFINE_VECTOR_OPERATOR_VS(T, N, add, +)\
		GLM_PP_DEFINE_VECTOR_OPERATOR_VS(T, N, sub, -)\
		GLM_PP_DEFINE_VECTOR_OPERATOR_VS(T, N, mul, *)\
		GLM_PP_DEFINE_VECTOR_OPERATOR_VS(T, N, div, /)\
		GLM_PP_DEFINE_VECTOR_OPERATOR_VV(T, N, add, +)\
		GLM_PP_DEFINE_VECTOR_OPERATOR_VV(T, N, sub, -)\
		GLM_PP_DEFINE_VECTOR_OPERATOR_VV(T, N, mul, *)\
		GLM_PP_DEFINE_VECTOR_OPERATOR_VV(T, N, div, /)


#define GLM_PP_DECLARE_TN_DOT(T, N) T GLM_API dot_##T##N (T##N x, T##N y);
#define GLM_PP_DECLARE_TN_LENGTH(T, N) GLM_API T length_##T##N (T##N x);

#define GLM_PP_DEFINE_TN_DOT(T,N) GLM_API T dot_##T##N (T##N x, T##N y)\
		{\
			T s = (T)0;\
			for(unsigned int i = 0; i < N; ++i) s += x.e[i] * y.e[i];\
			return s;\
		}


#define GLM_PP_DEFINE_TN_LENGTH(T,N) GLM_API T length_##T##N (T##N x)\
		{\
			T s = (T)0;\
			for(unsigned int i = 0; i < N; ++i) s += x.e[i] * x.e[i];\
			return sqrt(s);\
		}



// Declare vector related functions TODO: Add boolean functions.
GLM_PP_DECLARE_VECTOR_OPERATORS(float, 2)
GLM_PP_DECLARE_VECTOR_OPERATORS(float, 3)
GLM_PP_DECLARE_VECTOR_OPERATORS(float, 4)
GLM_PP_DECLARE_VECTOR_OPERATORS(double, 2)
GLM_PP_DECLARE_VECTOR_OPERATORS(double, 3)
GLM_PP_DECLARE_VECTOR_OPERATORS(double, 4)
GLM_PP_DECLARE_VECTOR_OPERATORS(int, 2)
GLM_PP_DECLARE_VECTOR_OPERATORS(int, 3)
GLM_PP_DECLARE_VECTOR_OPERATORS(int, 4)
GLM_PP_DECLARE_VECTOR_OPERATORS(uint, 2)
GLM_PP_DECLARE_VECTOR_OPERATORS(uint, 3)
GLM_PP_DECLARE_VECTOR_OPERATORS(uint, 4)

// Define vector function implementation.
GLM_PP_DEFINE_VECTOR_OPERATORS(float, 2)
GLM_PP_DEFINE_VECTOR_OPERATORS(float, 3)
GLM_PP_DEFINE_VECTOR_OPERATORS(float, 4)
GLM_PP_DEFINE_VECTOR_OPERATORS(double, 2)
GLM_PP_DEFINE_VECTOR_OPERATORS(double, 3)
GLM_PP_DEFINE_VECTOR_OPERATORS(double, 4)
GLM_PP_DEFINE_VECTOR_OPERATORS(int, 2)
GLM_PP_DEFINE_VECTOR_OPERATORS(int, 3)
GLM_PP_DEFINE_VECTOR_OPERATORS(int, 4)
GLM_PP_DEFINE_VECTOR_OPERATORS(uint, 2)
GLM_PP_DEFINE_VECTOR_OPERATORS(uint, 3)
GLM_PP_DEFINE_VECTOR_OPERATORS(uint, 4)


// genType dot
GLM_PP_DECLARE_TN_DOT(float, 2)
GLM_PP_DECLARE_TN_DOT(float, 3)
GLM_PP_DECLARE_TN_DOT(float, 4)
GLM_PP_DEFINE_TN_DOT(float, 2)
GLM_PP_DEFINE_TN_DOT(float, 3)
GLM_PP_DEFINE_TN_DOT(float, 4)

// genDType dot
GLM_PP_DECLARE_TN_DOT(double, 2)
GLM_PP_DECLARE_TN_DOT(double, 3)
GLM_PP_DECLARE_TN_DOT(double, 4)
GLM_PP_DEFINE_TN_DOT(double, 2)
GLM_PP_DEFINE_TN_DOT(double, 3)
GLM_PP_DEFINE_TN_DOT(double, 4)

// genType length
GLM_PP_DECLARE_TN_LENGTH(float, 2)
GLM_PP_DECLARE_TN_LENGTH(float, 3)
GLM_PP_DECLARE_TN_LENGTH(float, 4)
GLM_PP_DEFINE_TN_LENGTH(float, 2)
GLM_PP_DEFINE_TN_LENGTH(float, 3)
GLM_PP_DEFINE_TN_LENGTH(float, 4)

// genDType length
GLM_PP_DECLARE_TN_LENGTH(double, 2)
GLM_PP_DECLARE_TN_LENGTH(double, 3)
GLM_PP_DECLARE_TN_LENGTH(double, 4)
GLM_PP_DEFINE_TN_LENGTH(double, 2)
GLM_PP_DEFINE_TN_LENGTH(double, 3)
GLM_PP_DEFINE_TN_LENGTH(double, 4)

#define GLM_GENERIC_B(T, N, b, name) _Generic(b, T: name##_##T##N##_##T, T##N: name##_##T##N##_##T##N)
#define GLM_GENERIC_OPERATOR_CASES_B(T, b, name)\
T##2: GLM_GENERIC_B(T,2,b,name), \
T##3: GLM_GENERIC_B(T,3,b,name), \
T##4:GLM_GENERIC_B(T,4,b,name)

#define GLM_GENERIC_OPERATOR_CASES_AB(b, name)\
GLM_GENERIC_OPERATOR_CASES_B(float,b,name), \
GLM_GENERIC_OPERATOR_CASES_B(double,b,name), \
GLM_GENERIC_OPERATOR_CASES_B(int,b,name), \
GLM_GENERIC_OPERATOR_CASES_B(uint,b,name), \
GLM_GENERIC_OPERATOR_CASES_B(bool,b,name)

#define add(a,b) _Generic(a, GLM_GENERIC_OPERATOR_CASES_AB(b, add))(a,b)
#define sub(a,b) _Generic(a, GLM_GENERIC_OPERATOR_CASES_AB(b, sub))(a,b)
#define mul(a,b) _Generic(a, GLM_GENERIC_OPERATOR_CASES_AB(b, mul))(a,b)
#define div(a,b) _Generic(a, GLM_GENERIC_OPERATOR_CASES_AB(b, div))(a,b)

/*

struct vec2 {
	float x, y;	

	vec2 (*yz)(vec2);
};

vec2 v;
v.yx(v);


*/

#define GLM_SWIZZLE_HOMO(x,N) _Generic(x, float: float##N, double: double##N, int: int##N, uint: uint##N, bool: bool##N)(x)

#define    x(v) v.x
#define    y(v) v.y
#define    z(v) v.z
#define    w(v) v.w

#define   xx(v) GLM_SWIZZLE_HOMO(v.x,2)
#define   yy(v) GLM_SWIZZLE_HOMO(v.y,2)
#define   zz(v) GLM_SWIZZLE_HOMO(v.z,2)
#define   ww(v) GLM_SWIZZLE_HOMO(v.w,2)

#define  xxx(v) GLM_SWIZZLE_HOMO(v.x,3)
#define  yyy(v) GLM_SWIZZLE_HOMO(v.y,3)
#define  zzz(v) GLM_SWIZZLE_HOMO(v.z,3)
#define  www(v) GLM_SWIZZLE_HOMO(v.w,3)

#define xxxx(v) GLM_SWIZZLE_HOMO(v.x,4)
#define yyyy(v) GLM_SWIZZLE_HOMO(v.y,4)
#define zzzz(v) GLM_SWIZZLE_HOMO(v.z,4)
#define wwww(v) GLM_SWIZZLE_HOMO(v.w,4)

#endif // GLM_INCLUDED
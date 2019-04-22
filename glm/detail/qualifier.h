#ifndef GLM_DETAIL_QUALIFIER_H
#define GLM_DETAIL_QUALIFIER_H

#include "setup.h"

typedef enum {
	packed_lowp,
	packed_mediump,
	packed_highp,
	lowp = packed_lowp,
	mediump = packed_mediump,
	highp = packed_highp,

	defaultp = packd_highp
} qualifier;

typedef qualifier precision;

/*
template<length_t L, typename T, qualifier Q> struct vec;
template<length_t C, length_t R, typename T, qualifier Q> struct mat;
template<typename T, qualifier Q> struct qua;
*/

#if GLM_COMPILER & GLM_COMPILER_GCC
#define vec(L, T, Q) T __attribute__( (__vector_size__ ( (L-L%2) * sizeof(T))) )
#elif GLM_COMPILER & GLM_COMPILER_CLANG
#define vec(L, T, Q) T __attribute__( (__ext_vector_type__( L )) )
#else
/* ... */
#endif

#if GLM_HAS_TEMPLATE_ALIASES
#define tvec2(T, Q) vec(2, T, Q)
#define tvec3(T, Q) vec(3, T, Q)
#define tvec4(T, Q) vec(4, T, Q)
#define tmat2x2(T, Q) mat(2, 2, T, Q)
#define tmat2x3(T, Q) mat(2, 3, T, Q)
#define tmat2x4(T, Q) mat(2, 4, T, Q)
#define tmat3x2(T, Q) mat(3, 2, T, Q)
#define tmat3x3(T, Q) mat(3, 3, T, Q)
#define tmat3x4(T, Q) mat(3, 4, T, Q)
#define tmat4x2(T, Q) mat(4, 2, T, Q)
#define tmat4x3(T, Q) mat(4, 3, T, Q)
#define tmat4x4(T, Q) mat(4, 4, T, Q)
#endif

#endif /* GLM_DETAIL_QUALIFIER_H */
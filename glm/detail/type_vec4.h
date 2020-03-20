#ifndef GLM_DETAIL_TYPE_VEC4_H
#define GLM_DETAIL_TYPE_VEC4_H

#include "variadic_param.h"

#define GLM_VEC4_RSEQ() 4,3,2,1,0

#define GLM_VEC4_CONSTRUCTOR_PARAMS_0(A1, A2, A3, A4)  
#define GLM_VEC4_CONSTRUCTOR_PARAMS_1(A1, A2, A3, A4) GLM_VARIADIC_PARAM(A1)
#define GLM_VEC4_CONSTRUCTOR_PARAMS_2(A1, A2, A3, A4) GLM_VARIADIC_PARAM(A1), GLM_VARIADIC_PARAM(A2)
#define GLM_VEC4_CONSTRUCTOR_PARAMS_3(A1, A2, A3, A4) GLM_VARIADIC_PARAM(A1), GLM_VARIADIC_PARAM(A2), GLM_VARIADIC_PARAM(A3)
#define GLM_VEC4_CONSTRUCTOR_PARAMS_4(A1, A2, A3, A4) GLM_VARIADIC_PARAM(A1), GLM_VARIADIC_PARAM(A2), GLM_VARIADIC_PARAM(A3), GLM_VARIADIC_PARAM(A4)
#define GLM_VEC4_CONSTRUCTOR_PARAMS_(A1, A2, A3, A4, N, ...) N, GLM_VEC4_CONSTRUCTOR_PARAMS_ ## N (A1, A2, A3, A4)
#define GLM_VEC4_CONSTRUCTOR_PARAMS(...) GLM_VEC4_CONSTRUCTOR_PARAMS_(__VA_ARGS__)

#define GLM_VEC4_CONSTRUCTOR(T, Q, ...) GLM_VECTOR_CONSTRUCTOR_NAME(4, T, Q)(GLM_VEC4_CONSTRUCTOR_PARAMS(__VA_ARGS__, GLM_VEC4_RSEQ()))

#define glm_tvec4(T, Q, ...) GLM_VEC4_CONSTRUCTOR(T, Q, __VA_ARGS__)

/*
// 4 byte accessor
typedef union _glm_buffer
{
	unsigned char _data[1];
	glm_vec4 _buffer_vec4;
	glm_vec3 _buffer_vec3;
	glm_vec2 _buffer_vec2;
	glm_vec1 _buffer_vec1;
} _glm_buffer_t;


#define COND_OFFSET_0(OFFSET) 
#define COND_OFFSET_1(OFFSET) struct { unsigned char _offset[(OFFSET)]; } _dummy;
#define COND_OFFSET(B, OFFSET) COND_OFFSET_ ## B (OFFSET)

#define GLM_OFFSET_ARG_STRUCT(B, OFFSET) struct { COND_OFFSET(B, OFFSET) _glm_buffer_t _buffer; }

#define GLM_ARG_SET(A) _Generic((A),\
glm_vec1: (_glm_buffer_t){ ._buffer_vec1 = *(glm_vec1 *)(A)._data },\
glm_vec2: (_glm_buffer_t){ ._buffer_vec2 = *(glm_vec2 *)(A)._data },\
glm_vec3: (_glm_buffer_t){ ._buffer_vec3 = *(glm_vec3 *)(A)._data },\
glm_vec4: (_glm_buffer_t){ ._buffer_vec4 = *(glm_vec4 *)(A)._data }\
)

#define GLM_VECTOR_CONSTRUCTOR_VA1(L, T, Q, A1, ...)\
((union {\
	GLM_OFFSET_ARG_STRUCT(0, 0) _a1;\
	glm_vec(L, T, Q) _dst;\
}) {\
	._a._buffer = GLM_ARG_SET(A1)\
})._dst


#define GLM_VECTOR_CONSTRUCTOR_VA2_(U, L, T, Q, A1, A2) ((U){ ._a2 = { ._dummy = *( struct{unsigned char _offset[8];}* )GLM_ARG_SET(A1)._data, ._buffer = GLM_ARG_SET(A2) } })._dst

#define GLM_VECTOR_CONSTRUCTOR_VA2(L, T, Q, A1, A2, ...) GLM_VECTOR_CONSTRUCTOR_VA2_(union {\
	GLM_OFFSET_ARG_STRUCT(0, 0) _a1;\
	GLM_OFFSET_ARG_STRUCT(1, sizeof(A1)) _a2;\
	glm_vec(L, T, Q) _dst;\
}, L, T, Q, A1, A2)

#define GLM_VECTOR_CONSTRUCTOR_VA3(L, T, Q, A1, A2, A3, ...)\
((union {\
	GLM_OFFSET_ARG_STRUCT(0, 0) _a1;\
	GLM_OFFSET_ARG_STRUCT(1, sizeof(A1)) _a2;\
	GLM_OFFSET_ARG_STRUCT(1, sizeof(A1) + sizeof(A2)) _a3;\
	glm_vec(L, T, Q) _dst;\
}) {\
	._a1._buffer = GLM_ARG_SET(A1),\
	._a2._buffer = GLM_ARG_SET(A2),\
	._a3._buffer = GLM_ARG_SET(A3),\
})._dst

#define GLM_VECTOR_CONSTRUCTOR_VA4(L, T, Q, A1, A2, A3, A4)\
((union {\
	GLM_OFFSET_ARG_STRUCT(0, 0) _a1;\
	GLM_OFFSET_ARG_STRUCT(1,sizeof(A1)) _a2;\
	GLM_OFFSET_ARG_STRUCT(1,sizeof(A1) + sizeof(A2)) _a3;\
	GLM_OFFSET_ARG_STRUCT(1,sizeof(A1) + sizeof(A2) + sizeof(A3)) _a4;\
	glm_vec(L, T, Q) _dst;\
}) {\
	._a1._buffer = GLM_ARG_SET(A1),\
	._a2._buffer = GLM_ARG_SET(A2),\
	._a3._buffer = GLM_ARG_SET(A3),\
	._a4._buffer = GLM_ARG_SET(A4),\
})._dst

#define GLM_VECTOR_CONSTRUCTOR_NARG_(L, T, Q, A1, A2, A3, A4, N, ...) GLM_VECTOR_CONSTRUCTOR_VA ## N(L, T, Q, A1, A2, A3, A4)
#define GLM_VECTOR_CONSTRUCTOR_NARG(...) GLM_VECTOR_CONSTRUCTOR_NARG_(__VA_ARGS__)
#define GLM_VEC4_CONSTRUCTOR(T, Q, ...) GLM_VECTOR_CONSTRUCTOR_NARG(4, T, Q, __VA_ARGS__, GLM_VEC4_RSEQ())

*/


#endif /* GLM_DETAIL_TYPE_VEC4_H */
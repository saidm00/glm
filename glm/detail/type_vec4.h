#ifndef GLM_DETAIL_TYPE_VEC4_H
#define GLM_DETAIL_TYPE_VEC4_H

#include "qualifier.h"

#define GLM_CONVERT_TVEC4(T, IN) GLM_CONVERT_VEC(4, T, IN)

#define GLM_CREATE_TVEC4_0(T, ...) ((glm_vec(4, T)) { 0 })

#define GLM_CREATE_TVEC4_1(T, _1, ...)\
({\
	__typeof__((_1)) _arg1 = (_1);\
	_Generic(\
		(char(*)[sizeof _arg1._data / sizeof _arg1._data[0]])0,\
		char(*)[1]: (glm_vec(4, T)) { _arg1._data[0], _arg1._data[0], _arg1._data[0] },\
		char(*)[4]: (glm_vec(4, T)) { _arg1._data[0], _arg1._data[1], _arg1._data[2] }\
	);\
})

#define GLM_CREATE_TVEC4_2(T, _1, _2, ...)\
(((union\
{\
	struct\
	{\
		__typeof__((GLM_CONVERT_TVEC(T, _1))) src1;\
		__typeof__((GLM_CONVERT_TVEC(T, _2))) src2;\
	};\
	\
	glm_vec(4, T) dst;\
}) { .src1 = GLM_CONVERT_TVEC(T, _1), .src2 = GLM_CONVERT_TVEC(T, _2) }).dst)

#define GLM_CREATE_TVEC4_3(T, _1, _2, _3, ...)\
(((union\
{\
	struct\
	{\
		__typeof__((GLM_CONVERT_TVEC(T, _1))) src1;\
		__typeof__((GLM_CONVERT_TVEC(T, _2))) src2;\
		__typeof__((GLM_CONVERT_TVEC(T, _3))) src3;\
	};\
	\
	glm_vec(4, T) dst;\
}) { .src1 = GLM_CONVERT_TVEC(T, _1), .src2 = GLM_CONVERT_TVEC(T, _2), .src3 = GLM_CONVERT_TVEC(T, _3) }).dst)


#define GLM_CREATE_TVEC4_4(T, _1, _2, _3, _4)\
(((union\
{\
	struct\
	{\
		__typeof__((GLM_CONVERT_TVEC(T, _1))) src1;\
		__typeof__((GLM_CONVERT_TVEC(T, _2))) src2;\
		__typeof__((GLM_CONVERT_TVEC(T, _3))) src3;\
		__typeof__((GLM_CONVERT_TVEC(T, _4))) src3;\
	};\
	\
	glm_vec(4, T) dst;\
}) { .src1 = GLM_CONVERT_TVEC(T, _1), .src2 = GLM_CONVERT_TVEC(T, _2), .src3 = GLM_CONVERT_TVEC(T, _3), .src3 = GLM_CONVERT_TVEC(T, _4) }).dst)


#define GLM_CREATE_TVEC4(T, _1, _2, _3, _4, N, ...) GLM_CREATE_TVEC4_##N(T, _1, _2, _3, _4)
#define glm_tvec4(T, ...) GLM_CREATE_TVEC4(T, __VA_ARGS__, 4, 3, 2, 1, 0)

#endif /* GLM_DETAIL_TYPE_VEC4_H */
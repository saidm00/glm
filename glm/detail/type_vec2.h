#ifndef GLM_DETAIL_TYPE_VEC2_H
#define GLM_DETAIL_TYPE_VEC2_H

#include "qualifier.h"

#define GLM_CONVERT_TVEC2(T, IN) GLM_CONVERT_VEC(2, T, IN)

#define GLM_CREATE_TVEC2_0(T, ...) ((glm_vec(2, T)) { 0, 0 })

#define GLM_CREATE_TVEC2_1(T, _1, ...)\
({\
	__typeof__((_1)) _arg1 = (_1);\
	_Generic(\
		(char(*)[sizeof(_arg1._data) / sizeof(_arg1._data[0])])0,\
		char(*)[1]: (glm_vec(2, T)) { _arg1._data[0], _arg1._data[0] },\
		char(*)[2]: (glm_vec(2, T)) { _arg1._data[0], _arg1._data[1] },\
		char(*)[3]: (glm_vec(2, T)) { _arg1._data[0], _arg1._data[1] },\
		char(*)[4]: (glm_vec(2, T)) { _arg1._data[0], _arg1._data[1] }\
	);\
})

#define GLM_CREATE_TVEC2_2(T, _1, _2)\
(((union\
{\
	struct\
	{\
		__typeof__((GLM_CONVERT_TVEC(T, _1))) src1;\
		__typeof__((GLM_CONVERT_TVEC(T, _2))) src2;\
	};\
	\
	glm_vec(2, T) dst;\
}) { .src1 = GLM_CONVERT_TVEC(T, _1), .src2 = GLM_CONVERT_TVEC(T, _2) }).dst)


#define GLM_CREATE_TVEC2(T, _1, _2, N, ...) GLM_CREATE_TVEC2_##N(T, _1, _2)
#define glm_tvec2(T, ...) GLM_CREATE_TVEC2(T, __VA_ARGS__, 2, 1, 0)

#define GLM_SWIZZLE2(T, E0, E1) struct { T E0, E1; }

#define GLM_SWIZZLE_XY(T) GLM_SWIZZLE2(T, x, y)
#define GLM_SWIZZLE_ST(T) GLM_SWIZZLE2(T, s, t)
#define GLM_SWIZZLE_RG(T) GLM_SWIZZLE2(T, r, g)

#endif /* GLM_DETAIL_TYPE_VEC2_H */
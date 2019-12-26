#ifndef GLM_DETAIL_TYPE_VEC3_H
#define GLM_DETAIL_TYPE_VEC3_H

#include "qualifier.h"

#define GLM_CONVERT_TVEC3(T, IN) GLM_CONVERT_VEC(3, T, IN)

#define GLM_CREATE_TVEC3_0(T, ...) ((glm_vec(3, T)) { 0 })

#define GLM_CREATE_TVEC3_1(T, _1, ...)\
({\
	__typeof__((_1)) _arg1 = (_1);\
	_Generic(\
		(char(*)[sizeof(_arg1._data) / sizeof(_arg1._data[0])])0,\
		char(*)[1]: (glm_vec(3, T)) { _arg1._data[0], _arg1._data[0], _arg1._data[0] },\
		char(*)[3]: (glm_vec(3, T)) { _arg1._data[0], _arg1._data[1], _arg1._data[2] },\
		char(*)[4]: (glm_vec(3, T)) { _arg1._data[0], _arg1._data[1], _arg1._data[2] }\
	);\
})

#define GLM_CREATE_TVEC3_2(T, _1, _2, ...)\
(((union\
{\
	struct\
	{\
		__typeof__((GLM_CONVERT_TVEC(T, _1))) src1;\
		__typeof__((GLM_CONVERT_TVEC(T, _2))) src2;\
	};\
	\
	glm_vec(3, T) dst;\
}) { .src1 = GLM_CONVERT_TVEC(T, _1), .src2 = GLM_CONVERT_TVEC(T, _2) }).dst)

#define GLM_CREATE_TVEC3_3(T, _1, _2, _3)\
(((union\
{\
	struct\
	{\
		__typeof__((GLM_CONVERT_TVEC(T, _1))) src1;\
		__typeof__((GLM_CONVERT_TVEC(T, _2))) src2;\
		__typeof__((GLM_CONVERT_TVEC(T, _3))) src3;\
	};\
	\
	glm_vec(3, T) dst;\
}) { .src1 = GLM_CONVERT_TVEC(T, _1), .src2 = GLM_CONVERT_TVEC(T, _2), .src3 = GLM_CONVERT_TVEC(T, _3) }).dst)


#define GLM_CREATE_TVEC3(T, _1, _2, _3, N, ...) GLM_CREATE_TVEC3_##N(T, _1, _2, _3)
#define glm_tvec3(T, ...) GLM_CREATE_TVEC3(T, __VA_ARGS__, 3, 2, 1, 0)

#define GLM_SWIZZLE3(T, E0, E1, E2)\
union\
{\
	glm_vec(2, T) E0##E1;\
	struct { T _##E0; glm_vec(2, T) E1##E2; };\
	struct { T E0, E1, E2; };\
}

#define GLM_SWIZZLE_XYZ(T) GLM_SWIZZLE3(T, x, y, z)
#define GLM_SWIZZLE_STP(T) GLM_SWIZZLE3(T, s, t, p)
#define GLM_SWIZZLE_RGB(T) GLM_SWIZZLE3(T, r, g, b)

#define glm_cross(a, b) glm_cross_float3(a, b)

#define glm_radians(x) (((x) / 180.0f) * M_PI)

#endif /* GLM_DETAIL_TYPE_VEC3_H */
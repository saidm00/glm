#ifndef GLM_DETAIL_TYPE_VEC2_H
#define GLM_DETAIL_TYPE_VEC2_H

#include "qualifier.h"

GLM_DECLARE_VEC(2, float, vec)
GLM_DECLARE_VEC(2, double, dvec)
GLM_DECLARE_VEC(2, int, ivec)
GLM_DECLARE_VEC(2, uint, uvec)
GLM_DECLARE_VEC(2, bool, bvec)

#define GLM_TVEC2_0(T, _, ...)
#define GLM_TVEC2_1(T, _, ...)
#define GLM_TVEC2_2(T, _1, _2, ...)
#define GLM_TVEC2(T, _1, _2, N, ...) GLM_TVEC2_##N(T, _1, _2, )

/* Public macros for construction. */ 
#define glm_tvec2(T, ...) GLM_TVEC2(T, __VA_ARGS__, 2, 1, 0)

#define glm_vec2(...) glm_tvec2(float, __VA_ARGS__)
#define glm_dvec2(...) glm_tvec2(double, __VA_ARGS__)
#define glm_ivec2(...) glm_tvec2(int, __VA_ARGS__)
#define glm_uvec2(...) glm_tvec2(uint, __VA_ARGS__)
#define glm_bvec2(...) glm_tvec2(bool, __VA_ARGS__)

#ifdef GLM_USING_NAMESPACE
#define tvec2 glm_tvec2
#define vec2 glm_vec2
#define dvec2 glm_dvec2
#define ivec2 glm_ivec2
#define uvec2 glm_uvec2
#define bvec2 glm_bvec2
#endif


#include "type_vec2.inl"

#endif /* GLM_DETAIL_TYPE_VEC2_H */
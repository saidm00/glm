#ifndef GLM_VEC4_H
#define GLM_VEC4_H

#include <glm/detail/qualifier.h>
#include <glm/ext/vector_float4.h>

/*
tvec4<T, Q>(void);
tvec4<T, Q>(T const);
tvec4<T, Q>(tvec2<T, Q> const, tvec2<T, Q> const);
tvec4<T, Q>(tvec3<T, Q> const, T const);
tvec4<T, Q>(T const, tvec3<T, Q> const);
tvec4<T, Q>(tvec2<T, Q> const, T const, T const);
tvec4<T, Q>(T const, tvec2<T, Q> const, T const);
tvec4<T, Q>(T const, T const, tvec2<T, Q> const);
tvec4<T. Q>(T const, T const, T const, T const)
*/


/*
static GLM_INLINE vec4 sqrt_vec4(vec4 v)
{
	#if GLM_ARCH & GLM_ARCH_SSE
	_mm_store_ps((float*)&v, _mm_sqrt_ps(_mm_load_ps((float const*)&v)));
	#else

	v[0] = sqrt(v[0]);
	v[1] = sqrt(v[1]);
	v[2] = sqrt(v[2]);
	v[3] = sqrt(v[3]);

	#endif

	return v;
} 

static GLM_INLINE float dot_vec4(vec4 register v1, vec4 register const v2)
{	
	#if GLM_ARCH & GLM_ARCH_SSE
	_mm_store_ps((float*)&v1, _mm_mul_ps(_mm_load_ps((float const*)&v1), _mm_load_ps((float const*)&v2)));
	#else
	register const vec4 v = v1 * v2;
	#endif
	return v1[0] + v1[1] + v1[2] + v1[3];
}
*/
#endif /* GLM_VEC4_H */
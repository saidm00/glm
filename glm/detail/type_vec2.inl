#include "../simd/platform.h"

union float2
{
	float e[2];
	struct { union { float x, r, s; }; union { float y, g, t; }; };
};

union double2
{
	double e[2];
	struct { union { double x, r, s; }; union { double y, g, t; }; };

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128d _simd;
	#endif
};

union int2
{
	int e[2];
	struct { union { int x, r, s; }; union { int y, g, t; }; };
	
	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
	#endif
};

union uint2
{
	uint e[2];
	struct { union { uint x, r, s; }; union { uint y, g, t; }; };
	
	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
	#endif
};

union bool2
{
	bool e[2];
	struct { union { bool x, r, s; }; union { bool y, g, t; }; };
};

#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT

double2 GLM_FUNC_QUALIFIER
add_double2(const register double2 a, const register double2 b)
{
	register double2 dst;
	dst._simd = _mm_add_pd(a._simd, b._simd);
	return dst;
}

double2 GLM_FUNC_QUALIFIER
sub_double2(const register double2 a, const register double2 b)
{
	register double2 dst;
	dst._simd = _mm_sub_pd(a._simd, b._simd);
	return dst;
}

double2 GLM_FUNC_QUALIFIER
mul_double2(const register double2 a, const register double2 b)
{
	register double2 dst;
	dst._simd = _mm_mul_pd(a._simd, b._simd);
	return dst;
}

double2 GLM_FUNC_QUALIFIER
div_double2(const register double2 a, const register double2 b)
{
	register double2 dst;
	dst._simd = _mm_div_pd(a._simd, b._simd);
	return dst;
}

double2 GLM_FUNC_QUALIFIER
sqrt_double2(register double2 x)
{
	x._simd = _mm_sqrt_pd(x._simd);
	return x;
}

#else

double2 GLM_FUNC_QUALIFIER
add_double2 (const register double2 a, const register double2 b)
{
	register double2 dst;
	dst.e[0] = a.e[0] + b.e[0];
	dst.e[1] = a.e[1] + b.e[1];
	return dst;
}

double2 GLM_FUNC_QUALIFIER
sub_double2 (const register double2 a, const register double2 b)
{
	register double2 dst;
	dst.e[0] = a.e[0] - b.e[0];
	dst.e[1] = a.e[1] - b.e[1];
	return dst;
}

double2 GLM_FUNC_QUALIFIER
mul_double2 (const register double2 a, const register double2 b)
{
	register double2 dst;
	dst.e[0] = a.e[0] * b.e[0];
	dst.e[1] = a.e[1] * b.e[1];
	return dst;
}

double2 GLM_FUNC_QUALIFIER
div_double2 (const register double2 a, const register double2 b)
{
	register double2 dst;
	dst.e[0] = a.e[0] / b.e[0];
	dst.e[1] = a.e[1] / b.e[1];
	return dst;
}

double2 GLM_FUNC_QUALIFIER
sqrt_double2 (const register double2 x)
{
	register double2 dst;
	dst.e[0] = sqrt(x.e[0]);
	dst.e[1] = sqrt(x.e[1]);
	return dst;
}

#endif /* GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT */



#if GLM_CONFIG_SIMD == GLM_ENABLE

double GLM_FUNC_QUALIFIER
dot_double2(const register double2 x, const register double2 y)
{
	#if GLM_ARCH & GLM_ARCH_SSE41_BIT
	return _mm_cvtsd_f64(_mm_dp_pd(x._simd, y._simd, 0x31u));
	#elif GLM_ARCH & GLM_ARCH_SSE2_BIT

	#else
	
	#endif
}

#endif /* GLM_CONFIG_SIMD == GLM_ENABLE */




#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
#endif /* GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT */
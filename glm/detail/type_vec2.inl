/*
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT

vec(2, double) GLM_FUNC_QUALIFIER
GLM_FUNCNAME(add, 2, double) (const register vec(2, double) a, const register vec(2, double) b)
{
	register vec(2, double) dst;
	dst._simd = _mm_add_pd(a._simd, b._simd);
	return dst;
}

vec(2, double) GLM_FUNC_QUALIFIER
GLM_FUNCNAME(sub, 2, double) (const register vec(2, double) a, const register vec(2, double) b)
{
	register vec(2, double) dst;
	dst._simd = _mm_sub_pd(a._simd, b._simd);
	return dst;
}

vec(2, double) GLM_FUNC_QUALIFIER
GLM_FUNCNAME(mul, 2, double) (const register vec(2, double) a, const register vec(2, double) b)
{
	register vec(2, double) dst;
	dst._simd = _mm_mul_pd(a._simd, b._simd);
	return dst;
}

vec(2, double) GLM_FUNC_QUALIFIER
GLM_FUNCNAME(div, 2, double) (const register vec(2, double) a, const register vec(2, double) b)
{
	register vec(2, double) dst;
	dst._simd = _mm_div_pd(a._simd, b._simd);
	return dst;
}

vec(2, double) GLM_FUNC_QUALIFIER
GLM_FUNCNAME(sqrt, 2, double) (const register vec(2, double) x)
{
	register vec(2, double) dst;
	dst._simd = _mm_sqrt_pd(x._simd);
	return dst;
}

vec(2, double) GLM_FUNC_QUALIFIER
GLM_FUNCNAME(rsqrt, 2, double) (const register vec(2, double) x)
{
	register vec(2, double) dst;
	dst._simd = _mm_div_pd(_mm_set1_pd(1.0), _mm_sqrt_pd(x._simd));
	return dst;
}

#else

GLM_DEFINE_TVEC2(double)
GLM_DEFINE_TVEC2(int)
GLM_DEFINE_TVEC2(uint)
#endif /* GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT */

/*
GLM_DEFINE_TVEC2(float)
GLM_DEFINE_VEC2(bool)
*/

/*
#if (GLM_CONFIG_SIMD == GLM_ENABLE) && (GLM_ARCH & GLM_ARCH_SSE41_BIT)
double GLM_FUNC_QUALIFIER
GLM_FUNC_NAME(dot, vec(2, double)) (const register vec(2, double) x, const register vec(2, double) y)
{
	return _mm_cvtsd_f64(_mm_dp_pd(x._simd, y._simd, 0x31u));
}
#else
double GLM_FUNC_QUALIFIER
GLM_FUNC_NAME(dot, vec(2, double)) (const register vec(2, double) x, const register vec(2, double) y)
{
	return x.e[0] * y.e[0] + x.e[1] * y.e[1];
}
#endif
*/

union vec(2, float)
{
	float e[2];
	struct { float x, y; };
	struct { float r, g; };
	struct { float s, t; };
};

union vec(2, double)
{
	double e[2];
	struct { double x, y; };
	struct { double r, g; };
	struct { double s, t; };
	
	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128d _simd;
	#endif
};

union vec(2, int)
{
	int e[2];
	struct { int x, y; };
	struct { int r, g; };
	struct { int s, t; };
	
	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
	#endif
};

union vec(2, uint)
{
	uint e[2];
	struct { uint x, y; };
	struct { uint r, g; };
	struct { uint s, t; };
	
	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
	#endif
};

union vec(2, bool)
{
	bool e[2];
	struct { bool x, y; };
	struct { bool r, g; };
	struct { bool s, t; };
};
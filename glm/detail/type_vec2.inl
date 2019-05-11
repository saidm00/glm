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

//double GLM_FUNC_QUALIFIER
//GLM_FUNCNAME(dot, 2, double) (const register vec(2, double) x, const register vec(2, double) y)
//{
//	#if (GLM_CONFIG_SIMD == GLM_ENABLE) && (GLM_ARCH & GLM_ARCH_SSE41_BIT)
//	/* 0x31u = 0b00110001u */
//	return _mm_cvtsd_f64(_mm_dp_pd(x._simd, y._simd, 0x31u));
//	#else
//	register vec(2, double) dst = GLM_FUNCNAME(mul, 2, double)(x, y);
//	return dst.e[0] + dst.e[1];
//	#endif
//}

union vec(2, float)
{
	float e[2];
	struct { union { float x, r, s; }; union { float y, g, t; }; };
};

union vec(2, double)
{
	double e[2];
	struct { union { double x, r, s; }; union { double y, g, t; }; };

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128d _simd;
	#endif
};

union vec(2, int)
{
	int e[2];
	struct { union { int x, r, s; }; union { int y, g, t; }; };
	
	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
	#endif
};

union vec(2, uint)
{
	uint e[2];
	struct { union { uint x, r, s; }; union { uint y, g, t; }; };
	
	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_MMX_BIT
	__m64 _simd;
	#endif
};

union vec(2, bool)
{
	bool e[2];
	struct { union { bool x, r, s; }; union { bool y, g, t; }; };
};
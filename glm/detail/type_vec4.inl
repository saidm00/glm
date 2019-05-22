union vec(4, float)
{
	float e[4];
	
	struct { float x, y, z, w; };
	struct { float r, g, b, a; };
	struct { float s, t, p, q; };

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128 _simd;
	#endif
};

union vec(4, double)
{
	double e[4];

	struct { double x, y, z, w; };
	struct { double r, g, b, a; };
	struct { double s, t, p, q; };

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_AVX_BIT
	__m256d _simd;
	#endif
};

union vec(4, int)
{
	int e[4];
	
	struct { int x, y, z, w; };
	struct { int r, g, b, a; };
	struct { int s, t, p, q; };

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128i _simd;
	#endif
};

union vec(4, uint)
{
	uint e[4];
	
	struct { uint x, y, z, w; };
	struct { uint r, g, b, a; };
	struct { uint s, t, p, q; };

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128i _simd;
	#endif
};

union vec(4, bool)
{
	bool e[4];
	
	struct { bool x, y, z, w; };
	struct { bool r, g, b, a; };
	struct { bool s, t, p, q; };
};
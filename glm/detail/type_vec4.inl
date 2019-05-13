#define GLM_TVEC4_SWIZZLE1(T)\
	struct\
	{\
		union { T x, r, s; };\
		union { T y, g, t; };\
		union { T z, b, p; };\
		union { T w, a, q; };\
	}
	

union vec(4, float)
{
	float e[4];
	GLM_TVEC4_SWIZZLE1(float);

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128 _simd;
	#endif
};

union vec(4, double)
{
	double e[4];
	GLM_TVEC4_SWIZZLE1(double);

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_AVX_BIT
	__m256d _simd;
	#endif
};

union vec(4, int)
{
	int e[4];
	GLM_TVEC4_SWIZZLE1(int);

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128i _simd;
	#endif
};

union vec(4, uint)
{
	uint e[4];
	GLM_TVEC4_SWIZZLE1(uint);

	#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128i _simd;
	#endif
};

union vec(4, bool)
{
	bool e[4];
	GLM_TVEC4_SWIZZLE1(bool);
};
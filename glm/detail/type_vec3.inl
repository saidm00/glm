#define GLM_TVEC3_SWIZZLE1(T)\
	struct\
	{\
		union { T x, r, s; };\
		union { T y, g, t; };\
		union { T z, b, p; };\
	}
	

/*
	TODO: Research for SIMD performance with unused slots.
	TODO: Memory layout options for tvec3 types.
*/

union vec(3, float)
{
	float e[3];
	GLM_TVEC3_SWIZZLE1(float);
};

union vec(3, double)
{
	double e[3];
	GLM_TVEC3_SWIZZLE1(double);
};

union vec(3, int)
{
	int e[3];
	GLM_TVEC3_SWIZZLE1(int);
};

union vec(3, uint)
{
	uint e[3];
	GLM_TVEC3_SWIZZLE1(uint);
};

union vec(3, bool)
{
	bool e[3];
	GLM_TVEC3_SWIZZLE1(bool);
};
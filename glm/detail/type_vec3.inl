/*
	TODO: Research for SIMD performance with unused slots.
	TODO: Memory layout options for tvec3 types.
*/

union vec(3, float)
{
	float e[3];
	struct { float x, y, z; };
	struct { float r, g, b; };
	struct { float s, t, p; };
};

union vec(3, double)
{
	double e[3];
	struct { double x, y, z; };
	struct { double r, g, b; };
	struct { double s, t, p; };
};

union vec(3, int)
{
	int e[3];
	struct { int x, y, z; };
	struct { int r, g, b; };
	struct { int s, t, p; };
};

union vec(3, uint)
{
	uint e[3];
	struct { uint x, y, z; };
	struct { uint r, g, b; };
	struct { uint s, t, p; };
};

union vec(3, bool)
{
	bool e[3];
	struct { bool x, y, z; };
	struct { bool r, g, b; };
	struct { bool s, t, p; };
};
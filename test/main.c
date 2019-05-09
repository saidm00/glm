#define GLM_FORCE_INTRINSICS
#define GLM_FORCE_INLINE
#define GLM_USING_NAMESPACE
#include <glm/vec2.h>

//#include <stdio.h>

/*
	Hello World!
*/
int main(int argc, char** argv) {
	/*
	int3 x;
	bvec4 y;
	uvec2 z;
	bool4 w;
	*/
	vec2 x = float2(32, 0x4b);
	dvec2 y = vec(2, double)(25.0);

	vec(2, int) z = int2(x.e[0]);
	
	double l = _length(x);
	

	return 0;
}

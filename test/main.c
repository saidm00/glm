#define GLM_FORCE_INTRINSICS
#define GLM_FORCE_INLINE
#include <glm/vec2.h>
#include <glm/vec3.h>

int main(int argc, char** argv) {
	vec2 x = float2(32, 0x4b);
	dvec2 y = vec(2, double)(25.0);

	vec(2, int) z = int2(x.e[0]);
	
	double l = _length(x);
	
	z = int2(y);

	//z = int2(int2(55));

	//int3 w = (int3) {1, 2, 3};
	//z = int2(w);

	return 0;
}

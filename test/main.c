#define GLM_FORCE_INTRINSICS
#define GLM_FORCE_INLINE
#include <glm/vec2.h>
#include <glm/vec3.h>
//#include <glm/vec4.h>

int main(int argc, char** argv) {
	vec2 x = float2(32, 0x4b);
	dvec2 y = vec(2, double)(25.0);

	vec(2, int) z = int2(x.e[0]);
	
	//double l = _length(x);
	
	z = int2(y);

	vec(3, uint) w = tvec3(uint)(25u);

	bool3 k = vec(3, bool)(bvec2(false), false);

	uvec3 l = tvec3(uint)(0x5au, uint2(true, 63));

	//z = int2(int2(55));

	//int3 w = (int3) {1, 2, 3};
	//z = int2(w);

	return 0;
}

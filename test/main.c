//#define GLM_FORCE_INTRINSICS
#define GLM_FORCE_INLINE
#include <glm/glm.h>

#include <stdio.h>

int main(int argc, char** argv) {
	//vec3 v;
	//vec2 a = vec2(0), b = vec2(0.5f, 2.5f), c = vec2(v), d = vec2(0.0f, v);

	vec4 v = vec4(1.0f);
	vec4 w = vec4(v);

	printf("%f %f %f %f\n", v.x, v.y, v.z, v.w);
	printf("%f %f %f %f\n", w.x, w.y, w.z, w.w);
	
	return 0;
}

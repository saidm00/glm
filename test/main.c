//#define GLM_FORCE_INTRINSICS
#define GLM_FORCE_INLINE
#include <glm/glm.h>

#include <stdio.h>

int main(int argc, char** argv) {
	
	vec2 a = vec2(1.0f, 2.0f), b = vec2(2.0f);

	vec2 c = add(a, b);
	printf("%f, %f\n", c.e[0], c.e[1]);

	c = mul(c, 2.0f);
	printf("%f, %f\n", c.e[0], c.e[1]);

	c = sub(10.0f, c);
	printf("%f, %f\n", c.e[0], c.e[1]);

	return 0;
}

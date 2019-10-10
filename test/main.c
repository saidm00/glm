#include <stdio.h>
#include <glm/detail/type_scalar.h>
#include <glm/detail/type_vec1.h>

int main(int argc, char** argv) {
	//vec3 v;
	//vec2 a = vec2(0), b = vec2(0.5f, 2.5f), c = vec2(v), d = vec2(0.0f, v);

	glm_float s = glm_float(5);
	glm_float1 v = glm_float1(s);
	
	
	printf("%f\n", s);

	return 0;
}

#define GLM_FORCE_INTRINSICS
#define GLM_CONFIG_SIMD GLM_ENABLE
#define GLM_FORCE_INLINE
#include <glm/glm.h>

#include <stdio.h>

int main(int argc, char* argv[])
{
	glm_vec2 v;
	v.x = 25.97f;
	v.y = -35.85f;
	
	printf("%f %f\n", v.x, v.y);

	v = glm_normalize_vec2(v);

	printf("%f %f\n", v.x, v.y);

	float len = glm_length_vec2(v);

	printf("%f\n", len);

	return EXIT_SUCCESS;
}

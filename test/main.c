#include <stdio.h>
#include <glm/glm.h>

int main(int argc, char *argv[])
{
	glm_dvec2 v1 = glm_dvec2(-25.0, 13.37);

	printf("%lf, %lf\n", v1.x, v1.y);

	glm_ivec2 v2 = glm_ivec2(3.14159f, v1);

	printf("%d, %d\n", v2.x, v2.y);

	glm_uvec2 v3 = glm_uvec2(v2);

	printf("%u, %u\n", v3.x, v3.y);

    return 0;
}
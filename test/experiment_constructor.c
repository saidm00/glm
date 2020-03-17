#include <stdio.h>
#include <glm/glm.h>

int main(int argc, char *argv[])
{
	glm_vec2 v1 = { 1.0f, 2.0f };
	glm_vec2 v2 = { 3.0f, 4.0f };
	glm_vec4 w = glm_vec4(v1, v2);

	//_access_t acc;//GLM_ARG_SET(float, 0, v);

	//acc._a2 = *(glm_vec2*)v._data;

	//printf("%f %f %f %f\n", acc._a2.x, acc._a2.y, acc._a4.z, acc._a4.w);

	printf("%f %f %f %f\n", w.x, w.y, w.z, w.w);
	return 0;
}
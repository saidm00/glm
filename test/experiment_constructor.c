#include <stdio.h>
#include <glm/ext/vector_int1.h>
#include <glm/glm.h>

int main(int argc, char *argv[])
{
	//glm_vec2 v1 = { 1.0f, 2.0f, 3.0f, 4.0f };
	//glm_bvec3 v2 = { 1.0f, 2.0f, 3.0f, 4.0f };
	//glm_vec1 v3  = { 1.0f };
	glm_ivec4 v1  = glm_ivec4(glm_bvec2(false, true), glm_uvec3(glm_vec2(1, glm_vec2(2.0f, 3.0f)), 35.25));
	//glm_vec4 v2 = { 1.0f, 2.0f, 3.0f, 4.0f };
	//glm_vec4 v3 = { 1.0f, 2.0f, 3.0f, 4.0f };
	//glm_vec4 v4 = { 1.0f, 2.0f, 3.0f, 4.0f };

	glm_vec2 v2 = { 2.0f, 0.0f };
	glm_vec2 v3 = { 0.0f, 2.0f };

	glm_bvec2 b1 = glm_greaterThan(v2, v3);

	printf("%s %s\n", b1.x ? "true" : "false", b1.y ? "true" : "false");

	//v1 = glm_add(v1, v2, v3, v4);

	//v1 = glm_expr("%f4 + %f4 + %f4 + %f4", v1, v2, v3, v4);

	//_access_t acc;//GLM_ARG_SET(float, 0, v);

	//acc._a2 = *(glm_vec2*)v._data;

	//printf("%f %f %f %f\n", acc._a2.x, acc._a2.y, acc._a4.z, acc._a4.w);

	printf("%d %d %d %d\n", v1.x, v1.y, v1.z, v1.w);

	//printf("%f %f\n", v1.x, v1.y);

	return 0;
}
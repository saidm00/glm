#include <stdio.h>
#include <stdlib.h>
#include <glm/glm.h>
#include <glm/gtx/print.h>

int main(int argc, char *argv[])
{
	{
		glm_dvec2 v1 = { 1.0, 2.0 };
		glm_uvec2 v2 = { 3, 4 };

		glm_vec4 v3 = glm_vec4(v1, v2);

		glm_print("Demo 1:\n\t vec4({dvec2:1.1}, {uvec2}) -> {vec4:1.}\n\n", v1, v2, v3);
	}

	{
		glm_bvec2 v1 = { false, true };
		glm_vec3 v2 = { 2.0f, 3.0f, 4.0f };

		glm_uvec3 v3 = glm_uvec3(v1, v2);

		glm_print("Demo 2:\n\t uvec3({bvec2}, {vec3:1.1}) -> {uvec3}\n\n", v1, v2, v3);
	}

	{
		float x = 2.56f;
		glm_vec2 v = glm_vec2(x);

		glm_print("Demo 3:\n\t vec2({f}) -> {vec2}\n\n", x, v);
	}

	{
		float x = 1.0f;
		float y = 2.0f;
		float z = 3.0f;
		float w = 4.0f;

		glm_vec4 v = glm_vec4(x, y, z, w);

		glm_print("Demo 4:\n\t vec4({f:1.1}, {f:1.1}, {f:1.1}, {f:1.1}) -> {vec4:1.1}\n\n", x,y,z,w,v);
	}

	return EXIT_SUCCESS;
}
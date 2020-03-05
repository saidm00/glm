#include <stdio.h>
#include <glm/glm.h>

int main(int argc, char *argv[])
{
	glm_mat(2, 2, float, defaultp) m = { 1.0f, 2.0f, 3.0f, 4.0f };

	glm_vec(3, float, defaultp) v = glm_vec3(1.0f, 2.0f, 3.0f);
	glm_vec(2, uint, defaultp) w;

	w = glm_uvec2(v);

	printf("%u %u\n", w.elem[0], w.elem[1]);
	
	glm_ivec4 x = glm_ivec4(5.0f, w, m);
	printf("%d %d %d %d\n", x.elem[0], x.elem[1], x.elem[2], x.elem[3]);
	
	return 0;
}
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
	
	glm_vec4 v4 = glm_vec4(5.67f, v1, v2);
	printf("%f, %f, %f, %f\n", v4.x, v4.y, v4.z, v4.w);
	
	glm_vec4_addeqs(&v4, 5.0f);

	printf("%f, %f, %f, %f\n", v4.x, v4.y, v4.z, v4.w);
	
	glm_vec4_diveqs(&v4, 2.0f);

	printf("%f, %f, %f, %f\n", v4.x, v4.y, v4.z, v4.w);

	float len = glm_vec4_length(v4);

	printf("%f\n", len);

	v4 = glm_vec4_normalize(v4);
	
	printf("%f, %f, %f, %f\n", v4.x, v4.y, v4.z, v4.w);

	glm_vec1 v5 = { 5.2f };

	printf("%f\n", v5.x);

	glm_ivec4 v6 = { 1, 2, 3, 4 };
	
	printf("%d, %d, %d, %d\n", v6.x, v6.y, v6.z, v6.w);
	

    return 0;
}
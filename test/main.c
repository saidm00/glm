#include <stdio.h>
#include <glm/glm.h>

int main(int argc, char** argv)
{
	/*
	{
		glm_ivec4 v1 = {52, 0, 22, -24};
		glm_bvec2 v2 = GLM_CONVERT_TVEC2(bool, v1);

		printf("bvec2(%d, %d)\n", v2.x, v2.y);
	}
	*/
	{
		glm_ivec1 v1 = {-25};
		glm_vec2 v2 = glm_vec2(v1);
		
		printf("vec2(%f, %f)\n", v2.x, v2.y);
	}
	
	{
		glm_ivec1 v1 = {-25};
		glm_vec2 v2 = {1.6f, -7.3f};
		glm_dvec2 v3 = glm_dvec2(v1, v2);
		
		printf("dvec2(%lf, %lf)\n", v3.x, v3.y);
	}
	
	return 0;
}

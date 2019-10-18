#include <stdio.h>
#include <glm/glm.h>

int main(int argc, char** argv)
{
	
	{
		/* ivec4 -> bvec2 */
		glm_ivec4 v1 = {52, 0, 22, -24};
		glm_bvec2 v2 = GLM_CONVERT_TVEC2(bool, v1);

		printf("bvec2(%d, %d)\n", v2.x, v2.y);
	}
	
	{
		/* vec2(ivec1) */
		glm_ivec1 v1 = {-25};
		glm_vec2 v2 = glm_vec2(v1);
		
		printf("vec2(%f, %f)\n", v2.x, v2.y);
	}
	
	{
		/* dvec2(ivec1, vec2) */
		glm_ivec1 v1 = {-25};
		glm_vec2 v2 = {1.6f, -7.3f};
		glm_dvec2 v3 = glm_dvec2(v1, v2);
		
		printf("dvec2(%lf, %lf)\n", v3.x, v3.y);
	}
	
	{
		/* ivec2 + ivec2 */
		glm_ivec2 a = {25, 10};
		glm_ivec2 b = {8, 2};
		
		glm_ivec2 res = glm_add(a, b);
		printf("ivec2(%d, %d)\n", res.x, res.y);
	}
	
	{
		/* ivec2 + ivec1 */
		glm_ivec2 a = {25, 10};
		glm_ivec1 b = {5};
		
		glm_ivec2 res = glm_add(a, b);
		printf("ivec2(%d, %d)\n", res.x, res.y);
	}
	
	{
		/* vec3 / vec3 */
		glm_vec3 a = {25.0f, 1.0f, 100.0f};
		glm_vec3 b = {5.0f, 10.0f, 4.0f};
		
		glm_vec3 res = glm_div(a, b);
		printf("vec3(%f, %f, %f)\n", res.x, res.y, res.z);
	}
	
	return 0;
}

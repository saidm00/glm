#define GLM_FORCE_INTRINSICS
//#define GLM_FORCE_INLINE
#include <glm/vec2.h>

#include <stdio.h>

/*
	Hello World!
*/
int main(int argc, char** argv) {
	double2 a = (double2){0x4b, 25.0f};
	double2 b = sqrt_double2(a);
	double x = dot_double2(a, b);

	printf("double2(%lf, %lf)\n", a.e[0], a.e[1]);
	printf("double2(%lf, %lf)\n", b.e[0], b.e[1]);
	printf("%lf\n", x);

	return 0;
}

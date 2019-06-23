#include "test.h"
#include "test.h"
#include "test.h"

#include <stdio.h>

int main(int argc, char** argv) {
	//vec3 v;
	//vec2 a = vec2(0), b = vec2(0.5f, 2.5f), c = vec2(v), d = vec2(0.0f, v);

	vec4 v = vec4(1.0f);
	vec4 w = vec4(v);

	printf("%f %f %f %f\n", v.x, v.y, v.z, v.w);
	printf("%f %f %f %f\n", w.x, w.y, w.z, w.w);

	vec4 z = add(v, w);


	vec2 v1 = vec2(0.6f);
	vec2 v2 = vec2(2.6f, 1.6f);

	vec2* pv1 = &v1;
	vec2* pv2 = &v2;

	add(v1, v2);
	mul(v1, v2);
	div(v1, v2);

	add(*pv1, *pv2);
	mul(*pv1, *pv2);
	div(*pv1, *pv2);

	add(*pv1, 1.0f);
	mul(*pv1, 1.0f);
	div(*pv1, 1.0f);


	return 0;
}

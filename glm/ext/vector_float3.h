#ifndef GLM_EXT_VECTOR_FLOAT3_H
#define GLM_EXT_VECTOR_FLOAT3_H

#include "../detail/type_vec3.h"
#include "./vector_float1.h"
#include "./vector_float2.h"

typedef union glm_float3
{
	GLM_VEC_DEFAULT_BASE(3, float);	
	GLM_SWIZZLE_XYZ(float);
	GLM_SWIZZLE_STP(float);
	GLM_SWIZZLE_RGB(float);
} glm_float3, glm_vec3;

#define glm_float3(...) glm_tvec3(float, __VA_ARGS__)
#define glm_vec3(...) glm_tvec3(float, __VA_ARGS__)

/*
	Function: glm_add_vec3

	Add x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		Returns the sum of x and y
*/
glm_vec3 glm_add_vec3(glm_vec3 x, glm_vec3 y);

/*
	Function: glm_sub_vec3

	Subtract x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The difference of x and y.
*/
glm_vec3 glm_sub_vec3(glm_vec3 x, glm_vec3 y);

/*
	Function: glm_mul_vec3

	Multiply x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The product of x and y.
*/
glm_vec3 glm_mul_vec3(glm_vec3 x, glm_vec3 y);

/*
	Function: glm_div_vec3

	Divide x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The quotient of x and y.
*/
glm_vec3 glm_div_vec3(glm_vec3 x, glm_vec3 y);

/*
	Function: glm_adds_vec3

	Add x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		Returns the sum of x and y
*/
glm_vec3 glm_adds_vec3(glm_vec3 x, float y);

/*
	Function: glm_subs_vec3

	Subtract x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The difference of x and y.
*/
glm_vec3 glm_subs_vec3(glm_vec3 x, float y);

/*
	Function: glm_muls_vec3

	Multiply x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The product of x and y.
*/
glm_vec3 glm_muls_vec3(glm_vec3 x, float y);

/*
	Function: glm_divs_vec3

	Divide x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The quotient of x and y.
*/
glm_vec3 glm_divs_vec3(glm_vec3 x, float y);


/*
	Function: glm_min_vec3

	Returns the minimum of x and y.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		Returns y if x > y; otherwise it returns x.
*/
glm_vec3 glm_min_vec3(glm_vec3 x, glm_vec3 y);

/*
	Function: glm_max_vec3

	Returns the maximum of x and y.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		Returns y if x < y; otherwise it returns x.
*/
glm_vec3 glm_max_vec3(glm_vec3 x, glm_vec3 y);

/*
	Function: glm_clamp_vec3

	Clamps x between minVal and maxVal.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		Returns min(max(x, minVal), maxVal). Results are undefined if minVal > maxVal.
*/
glm_vec3 glm_clamp_vec3(glm_vec3 x, glm_vec3 minVal, glm_vec3 maxVal);

/*
	Function: glm_mix_vec3

	Linearly interpolates between two values.

	Parameters:
		x - The first value.
		y - The second value.
		a - The interpolation value.

	Returns:
		Returns the linear blend of x and y.
*/
glm_vec3 glm_mix_vec3(glm_vec3 x, glm_vec3 y, float a);

/*
	Function: glm_dot_vec3

	The dot product of x and y.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		The dot product of x and y.
*/
float glm_dot_vec3(glm_vec3 x, glm_vec3 y);

/*
	Function: glm_cross_vec3

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		The cross product of x and y.
*/
glm_vec3 glm_cross_vec3(glm_vec3 x, glm_vec3 y);

/*
	Function: glm_length_vec3

	Parameters:
		x - The vector.

	Returns:
		A vector in the same direction as x but with a length of 1.
*/
float glm_length_vec3(glm_vec3 x);

/*
	Function: glm_normalize_vec3

	Parameters:
		x - The vector.

	Returns:
		A vector in the same direction as x but with a length of 1.
*/
glm_vec3 glm_normalize_vec3(glm_vec3 x);

/*
	Function: glm_reflect_vec3

	For the incident vector I and surface orientation N, returns the reflection direction.
	N must already be normalized in order to achieve the desired result.

	Parameters:
		I - The incident vector.
		N - The surface orientation.

	Returns:
		The reflected direction.
*/
glm_vec3 glm_reflect_vec3(glm_vec3 I, glm_vec3 N);

/*
	Function: glm_refract_vec3

	For the incident vector I and surface normal N, and the ratio of indices of refraction eta, return the refraction vector.
	The result is computed by the <refraction equation: https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf#refraction-equation>.

	Parameters:
		I   - Incident vector.
		N   - Surface normal.
		eta - The ratio of indices of refraction.

	Returns:
		The refracted direction.
*/
glm_vec3 glm_refract_vec3(glm_vec3 I, glm_vec3 N, float eta);

#include "./vector_float3.inl"

#endif /* GLM_EXT_VECTOR_FLOAT3_H */
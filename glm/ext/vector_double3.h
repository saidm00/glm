#ifndef GLM_EXT_VECTOR_DOUBLE3_H
#define GLM_EXT_VECTOR_DOUBLE3_H

#include "../detail/type_vec3.h"
#include "./vector_double1.h"
#include "./vector_double2.h"

typedef union glm_double3
{
	GLM_VEC_DEFAULT_BASE(3, double);	
	GLM_SWIZZLE_XYZ(double);
	GLM_SWIZZLE_STP(double);
	GLM_SWIZZLE_RGB(double);
} glm_double3, glm_dvec3;

#define glm_double3(...) glm_tvec3(double, __VA_ARGS__)
#define glm_dvec3(...) glm_tvec3(double, __VA_ARGS__)


/*
	Function: glm_add_dvec3

	Add x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		Returns the sum of x and y
*/
glm_dvec3 glm_add_dvec3(glm_dvec3 x, glm_dvec3 y);

/*
	Function: glm_sub_dvec3

	Subtract x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The difference of x and y.
*/
glm_dvec3 glm_sub_dvec3(glm_dvec3 x, glm_dvec3 y);

/*
	Function: glm_mul_dvec3

	Multiply x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The product of x and y.
*/
glm_dvec3 glm_mul_dvec3(glm_dvec3 x, glm_dvec3 y);

/*
	Function: glm_div_dvec3

	Divide x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The quotient of x and y.
*/
glm_dvec3 glm_div_dvec3(glm_dvec3 x, glm_dvec3 y);

/*
	Function: glm_adds_dvec3

	Add x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		Returns the sum of x and y
*/
glm_dvec3 glm_adds_dvec3(glm_dvec3 x, double y);

/*
	Function: glm_subs_dvec3

	Subtract x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The difference of x and y.
*/
glm_dvec3 glm_subs_dvec3(glm_dvec3 x, double y);

/*
	Function: glm_muls_dvec3

	Multiply x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The product of x and y.
*/
glm_dvec3 glm_muls_dvec3(glm_dvec3 x, double y);

/*
	Function: glm_divs_dvec3

	Divide x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The quotient of x and y.
*/
glm_dvec3 glm_divs_dvec3(glm_dvec3 x, double y);


/*
	Function: glm_min_dvec3

	Returns the minimum of x and y.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		Returns y if x > y; otherwise it returns x.
*/
glm_dvec3 glm_min_dvec3(glm_dvec3 x, glm_dvec3 y);

/*
	Function: glm_max_vec3

	Returns the maximum of x and y.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		Returns y if x < y; otherwise it returns x.
*/
glm_dvec3 glm_max_dvec3(glm_dvec3 x, glm_dvec3 y);

/*
	Function: glm_clamp_dvec3

	Clamps x between minVal and maxVal.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		Returns min(max(x, minVal), maxVal). Results are undefined if minVal > maxVal.
*/
glm_dvec3 glm_clamp_dvec3(glm_dvec3 x, glm_dvec3 minVal, glm_dvec3 maxVal);

/*
	Function: glm_mix_dvec3

	Linearly interpolates between two values.

	Parameters:
		x - The first value.
		y - The second value.
		a - The interpolation value.

	Returns:
		Returns the linear blend of x and y.
*/
glm_dvec3 glm_mix_dvec3(glm_dvec3 x, glm_dvec3 y, double a);

/*
	Function: glm_dot_dvec3

	The dot product of x and y.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		The dot product of x and y.
*/
double glm_dot_dvec3(glm_dvec3 x, glm_dvec3 y);

/*
	Function: glm_cross_dvec3

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		The cross product of x and y.
*/
glm_dvec3 glm_cross_dvec3(glm_dvec3 x, glm_dvec3 y);

/*
	Function: glm_length_dvec3

	Parameters:
		x - The vector.

	Returns:
		A vector in the same direction as x but with a length of 1.
*/
double glm_length_dvec3(glm_dvec3 x);

/*
	Function: glm_normalize_vec3

	Parameters:
		x - The vector.

	Returns:
		A vector in the same direction as x but with a length of 1.
*/
glm_dvec3 glm_normalize_dvec3(glm_dvec3 x);

/*
	Function: glm_reflect_dvec3

	For the incident vector I and surface orientation N, returns the reflection direction.
	N must already be normalized in order to achieve the desired result.

	Parameters:
		I - The incident vector.
		N - The surface orientation.

	Returns:
		The reflected direction.
*/
glm_dvec3 glm_reflect_dvec3(glm_dvec3 I, glm_dvec3 N);

/*
	Function: glm_refract_dvec3

	For the incident vector I and surface normal N, and the ratio of indices of refraction eta, return the refraction vector.
	The result is computed by the <refraction equation: https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf#refraction-equation>.

	Parameters:
		I   - Incident vector.
		N   - Surface normal.
		eta - The ratio of indices of refraction.

	Returns:
		The refracted direction.
*/
glm_dvec3 glm_refract_dvec3(glm_dvec3 I, glm_dvec3 N, double eta);


#include "./vector_double3.inl"

#endif /* GLM_EXT_VECTOR_DOUBLE3_H */
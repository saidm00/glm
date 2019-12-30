#ifndef GLM_EXT_VECTOR_FLOAT4_H
#define GLM_EXT_VECTOR_FLOAT4_H

#include "../detail/type_vec4.h"
#include "./vector_float1.h"
#include "./vector_float2.h"
#include "./vector_float3.h"

typedef union glm_float4
{
	GLM_VEC_DEFAULT_BASE(4, float);
	
	GLM_SWIZZLE_XYZW(float);
	GLM_SWIZZLE_STPQ(float);
	GLM_SWIZZLE_RGBA(float);
	
#if GLM_CONFIG_SIMD == GLM_ENABLE && GLM_ARCH & GLM_ARCH_SSE2_BIT
	__m128 _simd;
#endif
} glm_float4, glm_vec4;

#define glm_float4(...) glm_tvec4(float, __VA_ARGS__)
#define glm_vec4(...) glm_tvec4(float, __VA_ARGS__)

/*
	Function: glm_add_vec4

	Add x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		Returns the sum of x and y
*/
glm_vec4 glm_add_vec4(glm_vec4 x, glm_vec4 y);

/*
	Function: glm_sub_vec4

	Subtract x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The difference of x and y.
*/
glm_vec4 glm_sub_vec4(glm_vec4 x, glm_vec4 y);

/*
	Function: glm_mul_vec4

	Multiply x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The product of x and y.
*/
glm_vec4 glm_mul_vec4(glm_vec4 x, glm_vec4 y);

/*
	Function: glm_div_vec4

	Divide x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The quotient of x and y.
*/
glm_vec4 glm_div_vec4(glm_vec4 x, glm_vec4 y);

/*
	Function: glm_adds_vec4

	Add x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		Returns the sum of x and y
*/
glm_vec4 glm_adds_vec4(glm_vec4 x, float y);

/*
	Function: glm_subs_vec4

	Subtract x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The difference of x and y.
*/
glm_vec4 glm_subs_vec4(glm_vec4 x, float y);

/*
	Function: glm_muls_vec4

	Multiply x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The product of x and y.
*/
glm_vec4 glm_muls_vec4(glm_vec4 x, float y);

/*
	Function: glm_divs_vec4

	Divide x and y.

	Parameters:
	
		x - The left operand.
		y - The right operand.

	Returns:

		The quotient of x and y.
*/
glm_vec4 glm_divs_vec4(glm_vec4 x, float y);


/*
	Function: glm_min_vec4

	Returns the minimum of x and y.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		Returns y if x > y; otherwise it returns x.
*/
glm_vec4 glm_min_vec4(glm_vec4 x, glm_vec4 y);

/*
	Function: glm_max_vec4

	Returns the maximum of x and y.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		Returns y if x < y; otherwise it returns x.
*/
glm_vec4 glm_max_vec4(glm_vec4 x, glm_vec4 y);

/*
	Function: glm_clamp_vec4

	Clamps x between minVal and maxVal.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		Returns min(max(x, minVal), maxVal). Results are undefined if minVal > maxVal.
*/
glm_vec4 glm_clamp_vec4(glm_vec4 x, glm_vec4 minVal, glm_vec4 maxVal);

/*
	Function: glm_mix_vec4

	Linearly interpolates between two values.

	Parameters:
		x - The first value.
		y - The second value.
		a - The interpolation value.

	Returns:
		Returns the linear blend of x and y.
*/
glm_vec4 glm_mix_vec4(glm_vec4 x, glm_vec4 y, float a);

/*
	Function: glm_dot_vec4

	The dot product of x and y.

	Parameters:
		x - The left operand.
		y - The right operand.

	Returns:
		The dot product of x and y.
*/
float glm_dot_vec4(glm_vec4 x, glm_vec4 y);

/*
	Function: glm_length_vec4

	Parameters:
		x - The vector.

	Returns:
		A vector in the same direction as x but with a length of 1.
*/
float glm_length_vec4(glm_vec4 x);

/*
	Function: glm_normalize_vec4

	Parameters:
		x - The vector.

	Returns:
		A vector in the same direction as x but with a length of 1.
*/
glm_vec4 glm_normalize_vec4(glm_vec4 x);

/*
	Function: glm_reflect_vec4

	For the incident vector I and surface orientation N, returns the reflection direction.
	N must already be normalized in order to achieve the desired result.

	Parameters:
		I - The incident vector.
		N - The surface orientation.

	Returns:
		The reflected direction.
*/
glm_vec4 glm_reflect_vec4(glm_vec4 I, glm_vec4 N);

/*
	Function: glm_refract_vec4

	For the incident vector I and surface normal N, and the ratio of indices of refraction eta, return the refraction vector.
	The result is computed by the <refraction equation: https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf#refraction-equation>.

	Parameters:
		I   - Incident vector.
		N   - Surface normal.
		eta - The ratio of indices of refraction.

	Returns:
		The refracted direction.
*/
glm_vec4 glm_refract_vec4(glm_vec4 I, glm_vec4 N, float eta);

#include "./vector_float4.inl"

#endif /* GLM_EXT_VECTOR_FLOAT4_H */

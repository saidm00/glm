typedef
struct vec(L, T, Q)
{
	union
	{
		GLM_VECTOR_DATA(L, T, Q);
		GLM_SWIZZLE_MEMBERS(L, T, Q);
	};
} vec(L, T, Q);

vec(L, T, Q)
constructor(length_t argc, ...);

vec(L, T, Q)
load1(const T x);

vec(L, T, Q)
variadic_add(length_t argc, ...);
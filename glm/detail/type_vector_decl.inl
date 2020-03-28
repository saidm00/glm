typedef
struct vec(L, T, Q)
{
	union
	{
		GLM_VECTOR_DATA(L, T, Q);
		
#if 1
		GLM_SWIZZLE_MEMBERS(L, T, Q);
#else

#	if L == 1
		struct { scalar(T, Q) x; };
#	elif L == 2
		struct { scalar(T, Q) x, y; };
#	elif L == 3
		struct { scalar(T, Q) x, y, z; };
#	elif L == 4
		struct { scalar(T, Q) x, y, z, w; };
#endif

#endif
	};
} vec(L, T, Q);

vec(L, T, Q)
constructor(length_t argc, ...);

vec(L, T, Q)
load1(const T x);

vec(L, T, Q)
variadic_add(length_t argc, ...);
#ifndef GLM_DETAIL_TYPE_VECTOR_H
#define GLM_DETAIL_TYPE_VECTOR_H

#include "qualifier.h"
#include "type_scalar.h"
#include "type_matrix.h"
/*
#define GLM_VECTOR_TYPENAME_bool1   bvec1
#define GLM_VECTOR_TYPENAME_bool2   bvec2
#define GLM_VECTOR_TYPENAME_bool3   bvec3
#define GLM_VECTOR_TYPENAME_bool4   bvec4

#define GLM_VECTOR_TYPENAME_float1  vec1
#define GLM_VECTOR_TYPENAME_float2  vec2
#define GLM_VECTOR_TYPENAME_float3  vec3
#define GLM_VECTOR_TYPENAME_float4  vec4

#define GLM_VECTOR_TYPENAME_double1 dvec1
#define GLM_VECTOR_TYPENAME_double2 dvec2
#define GLM_VECTOR_TYPENAME_double3 dvec3
#define GLM_VECTOR_TYPENAME_double4 dvec4

#define GLM_VECTOR_TYPENAME_int1    ivec1
#define GLM_VECTOR_TYPENAME_int2    ivec2
#define GLM_VECTOR_TYPENAME_int3    ivec3
#define GLM_VECTOR_TYPENAME_int4    ivec4

#define GLM_VECTOR_TYPENAME_uint1   uvec1
#define GLM_VECTOR_TYPENAME_uint2   uvec2
#define GLM_VECTOR_TYPENAME_uint3   uvec3
#define GLM_VECTOR_TYPENAME_uint4   uvec4
*/
#define GLM_VECTOR_TYPENAME_(L, T, Q) T ## L
#define GLM_VECTOR_TYPENAME(...) GLM_VECTOR_TYPENAME_(__VA_ARGS__)
#define GLM_VECTOR_CONSTRUCTOR_NAME(L, T, Q) GLM_CALL_FUNC(constructor, GLM_VECTOR_TYPENAME(L, T, Q))

#define glm_vec(L, T, Q) GLM_PREFIX(GLM_VECTOR_TYPENAME(L, T, Q))

#include "namespace_begin.inl"
#include "namespace_template_vector_begin.inl"

/* Align arrays to 1-byte boundaries */
#define GLM_VECTOR_DATA(L, T, Q)\
union {\
scalar(T, Q) elem[L];\
unsigned char _data[sizeof(scalar(T, Q)) * L];\
}

typedef
struct vec(1, bool, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(1, bool, defaultp);
		struct { scalar(bool, defaultp) x; };
		struct { scalar(bool, defaultp) r; };
		struct { scalar(bool, defaultp) s; };
	};
}
vec(1, bool, defaultp);

typedef
struct vec(2, bool, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(2, bool, defaultp);
		struct { scalar(bool, defaultp) x, y; };
		struct { scalar(bool, defaultp) r, g; };
		struct { scalar(bool, defaultp) s, t; };
	};
}
vec(2, bool, defaultp);

typedef
struct vec(3, bool, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(3, bool, defaultp);
		struct { scalar(bool, defaultp) x, y, z; };
		struct { scalar(bool, defaultp) r, g, b; };
		struct { scalar(bool, defaultp) s, t, p; };
	};
}
vec(3, bool, defaultp);

typedef
struct vec(4, bool, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(4, bool, defaultp);
		struct { scalar(bool, defaultp) x, y, z, w; };
		struct { scalar(bool, defaultp) r, g, b, a; };
		struct { scalar(bool, defaultp) s, t, p, q; };
	};
}
vec(4, bool, defaultp);

typedef
struct vec(1, float, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(1, float, defaultp);
		struct { scalar(float, defaultp) x; };
		struct { scalar(float, defaultp) r; };
		struct { scalar(float, defaultp) s; };
	};
}
vec(1, float, defaultp);

typedef
struct vec(2, float, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(2, float, defaultp);
		struct { scalar(float, defaultp) x, y; };
		struct { scalar(float, defaultp) r, g; };
		struct { scalar(float, defaultp) s, t; };
	};
}
vec(2, float, defaultp);

typedef
struct vec(3, float, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(3, float, defaultp);
		struct { scalar(float, defaultp) x, y, z; };
		struct { scalar(float, defaultp) r, g, b; };
		struct { scalar(float, defaultp) s, t, p; };
	};
}
vec(3, float, defaultp);

typedef
struct vec(4, float, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(4, float, defaultp);
		struct { scalar(float, defaultp) x, y, z, w; };
		struct { scalar(float, defaultp) r, g, b, a; };
		struct { scalar(float, defaultp) s, t, p, q; };
	};
}
vec(4, float, defaultp);

typedef
struct vec(1, double, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(1, double, defaultp);
		struct { scalar(double, defaultp) x; };
		struct { scalar(double, defaultp) r; };
		struct { scalar(double, defaultp) s; };
	};
}
vec(1, double, defaultp);

typedef
struct vec(2, double, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(2, double, defaultp);
		struct { scalar(double, defaultp) x, y; };
		struct { scalar(double, defaultp) r, g; };
		struct { scalar(double, defaultp) s, t; };
	};
}
vec(2, double, defaultp);

typedef
struct vec(3, double, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(3, double, defaultp);
		struct { scalar(double, defaultp) x, y, z; };
		struct { scalar(double, defaultp) r, g, b; };
		struct { scalar(double, defaultp) s, t, p; };
	};
}
vec(3, double, defaultp);

typedef
struct vec(4, double, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(4, double, defaultp);
		struct { scalar(double, defaultp) x, y, z, w; };
		struct { scalar(double, defaultp) r, g, b, a; };
		struct { scalar(double, defaultp) s, t, p, q; };
	};
}
vec(4, double, defaultp);

typedef
struct vec(1, int, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(1, int, defaultp);
		struct { scalar(int, defaultp) x; };
		struct { scalar(int, defaultp) r; };
		struct { scalar(int, defaultp) s; };
	};
}
vec(1, int, defaultp);

typedef
struct vec(2, int, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(2, int, defaultp);
		struct { scalar(int, defaultp) x, y; };
		struct { scalar(int, defaultp) r, g; };
		struct { scalar(int, defaultp) s, t; };
	};
}
vec(2, int, defaultp);

typedef
struct vec(3, int, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(3, int, defaultp);
		struct { scalar(int, defaultp) x, y, z; };
		struct { scalar(int, defaultp) r, g, b; };
		struct { scalar(int, defaultp) s, t, p; };
	};
}
vec(3, int, defaultp);

typedef
struct vec(4, int, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(4, int, defaultp);
		struct { scalar(int, defaultp) x, y, z, w; };
		struct { scalar(int, defaultp) r, g, b, a; };
		struct { scalar(int, defaultp) s, t, p, q; };
	};
}
vec(4, int, defaultp);

typedef
struct vec(1, uint, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(1, uint, defaultp);
		struct { scalar(uint, defaultp) x; };
		struct { scalar(uint, defaultp) r; };
		struct { scalar(uint, defaultp) s; };
	};
}
vec(1, uint, defaultp);

typedef
struct vec(2, uint, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(2, uint, defaultp);
		struct { scalar(uint, defaultp) x, y; };
		struct { scalar(uint, defaultp) r, g; };
		struct { scalar(uint, defaultp) s, t; };
	};
}
vec(2, uint, defaultp);

typedef
struct vec(3, uint, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(3, uint, defaultp);
		struct { scalar(uint, defaultp) x, y, z; };
		struct { scalar(uint, defaultp) r, g, b; };
		struct { scalar(uint, defaultp) s, t, p; };
	};
}
vec(3, uint, defaultp);

typedef
struct vec(4, uint, defaultp)
{
	union
	{
		GLM_VECTOR_DATA(4, uint, defaultp);
		struct { scalar(uint, defaultp) x, y, z, w; };
		struct { scalar(uint, defaultp) r, g, b, a; };
		struct { scalar(uint, defaultp) s, t, p, q; };
	};
}
vec(4, uint, defaultp);


typedef vec(1, bool, defaultp) glm_bvec1;
typedef vec(2, bool, defaultp) glm_bvec2;
typedef vec(3, bool, defaultp) glm_bvec3;
typedef vec(4, bool, defaultp) glm_bvec4;

typedef vec(1, float, defaultp) glm_vec1;
typedef vec(2, float, defaultp) glm_vec2;
typedef vec(3, float, defaultp) glm_vec3;
typedef vec(4, float, defaultp) glm_vec4;

typedef vec(1, double, defaultp) glm_dvec1;
typedef vec(2, double, defaultp) glm_dvec2;
typedef vec(3, double, defaultp) glm_dvec3;
typedef vec(4, double, defaultp) glm_dvec4;

typedef vec(1, int, defaultp) glm_ivec1;
typedef vec(2, int, defaultp) glm_ivec2;
typedef vec(3, int, defaultp) glm_ivec3;
typedef vec(4, int, defaultp) glm_ivec4;

typedef vec(1, uint, defaultp) glm_uvec1;
typedef vec(2, uint, defaultp) glm_uvec2;
typedef vec(3, uint, defaultp) glm_uvec3;
typedef vec(4, uint, defaultp) glm_uvec4;

#define L 1
#define T bool
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T bool
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T bool
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T bool
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T float
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T float
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T float
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T float
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T double
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T double
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T double
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T double
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T int
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T int
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T int
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T int
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T uint
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T uint
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T uint
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T uint
#define Q defaultp
#include "type_vector_decl.inl"
#undef L
#undef T
#undef Q

/* Impl */
#define L 1
#define T bool
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T bool
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T bool
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T bool
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T float
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T float
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T float
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T float
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T double
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T double
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T double
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T double
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T int
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T int
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T int
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T int
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 1
#define T uint
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 2
#define T uint
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 3
#define T uint
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define L 4
#define T uint
#define Q defaultp
#include "type_vector.inl"
#undef L
#undef T
#undef Q

#define glm_normalize(x) _Generic(x,\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(4, double, defaultp))\
)((x))

/* */
#define glm_length(x) _Generic(x,\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(4, double, defaultp))\
)((x))

#define glm_dot(x, y) _Generic(x,\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(dot, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(dot, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(dot, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(dot, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(dot, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(dot, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(dot, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(dot, GLM_VECTOR_TYPENAME(4, double, defaultp))\
)(x, y)

#define glm_lessThan(x, y) _Generic(x,\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(4, double, defaultp)),\
glm_vec(1, int, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(1, int, defaultp)),\
glm_vec(2, int, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(2, int, defaultp)),\
glm_vec(3, int, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(3, int, defaultp)),\
glm_vec(4, int, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(4, int, defaultp)),\
glm_vec(1, uint, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(1, uint, defaultp)),\
glm_vec(2, uint, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(2, uint, defaultp)),\
glm_vec(3, uint, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(3, uint, defaultp)),\
glm_vec(4, uint, defaultp): GLM_CALL_FUNC(lessThan, GLM_VECTOR_TYPENAME(4, uint, defaultp))\
)(x, y)

#define glm_greaterThan(x, y) _Generic(x,\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(4, double, defaultp)),\
glm_vec(1, int, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(1, int, defaultp)),\
glm_vec(2, int, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(2, int, defaultp)),\
glm_vec(3, int, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(3, int, defaultp)),\
glm_vec(4, int, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(4, int, defaultp)),\
glm_vec(1, uint, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(1, uint, defaultp)),\
glm_vec(2, uint, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(2, uint, defaultp)),\
glm_vec(3, uint, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(3, uint, defaultp)),\
glm_vec(4, uint, defaultp): GLM_CALL_FUNC(greaterThan, GLM_VECTOR_TYPENAME(4, uint, defaultp))\
)(x, y)

#define glm_lessThanEqual(x, y) _Generic(x,\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(4, double, defaultp)),\
glm_vec(1, int, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(1, int, defaultp)),\
glm_vec(2, int, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(2, int, defaultp)),\
glm_vec(3, int, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(3, int, defaultp)),\
glm_vec(4, int, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(4, int, defaultp)),\
glm_vec(1, uint, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(1, uint, defaultp)),\
glm_vec(2, uint, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(2, uint, defaultp)),\
glm_vec(3, uint, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(3, uint, defaultp)),\
glm_vec(4, uint, defaultp): GLM_CALL_FUNC(lessThanEqual, GLM_VECTOR_TYPENAME(4, uint, defaultp))\
)(x, y)

#define glm_greaterThanEqual(x, y) _Generic(x,\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(4, double, defaultp)),\
glm_vec(1, int, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(1, int, defaultp)),\
glm_vec(2, int, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(2, int, defaultp)),\
glm_vec(3, int, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(3, int, defaultp)),\
glm_vec(4, int, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(4, int, defaultp)),\
glm_vec(1, uint, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(1, uint, defaultp)),\
glm_vec(2, uint, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(2, uint, defaultp)),\
glm_vec(3, uint, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(3, uint, defaultp)),\
glm_vec(4, uint, defaultp): GLM_CALL_FUNC(greaterThanEqual, GLM_VECTOR_TYPENAME(4, uint, defaultp))\
)(x, y)

#define glm_equal(x, y) _Generic(x,\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(4, double, defaultp)),\
glm_vec(1, int, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(1, int, defaultp)),\
glm_vec(2, int, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(2, int, defaultp)),\
glm_vec(3, int, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(3, int, defaultp)),\
glm_vec(4, int, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(4, int, defaultp)),\
glm_vec(1, uint, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(1, uint, defaultp)),\
glm_vec(2, uint, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(2, uint, defaultp)),\
glm_vec(3, uint, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(3, uint, defaultp)),\
glm_vec(4, uint, defaultp): GLM_CALL_FUNC(equal, GLM_VECTOR_TYPENAME(4, uint, defaultp))\
)(x, y)

#define glm_notEqual(x, y) _Generic(x,\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(4, double, defaultp)),\
glm_vec(1, int, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(1, int, defaultp)),\
glm_vec(2, int, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(2, int, defaultp)),\
glm_vec(3, int, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(3, int, defaultp)),\
glm_vec(4, int, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(4, int, defaultp)),\
glm_vec(1, uint, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(1, uint, defaultp)),\
glm_vec(2, uint, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(2, uint, defaultp)),\
glm_vec(3, uint, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(3, uint, defaultp)),\
glm_vec(4, uint, defaultp): GLM_CALL_FUNC(notEqual, GLM_VECTOR_TYPENAME(4, uint, defaultp))\
)(x, y)

#define glm_or(x, y) _Generic(x,\
glm_vec(1, bool, defaultp): GLM_CALL_FUNC(or, GLM_VECTOR_TYPENAME(1, bool, defaultp)),\
glm_vec(2, bool, defaultp): GLM_CALL_FUNC(or, GLM_VECTOR_TYPENAME(2, bool, defaultp)),\
glm_vec(3, bool, defaultp): GLM_CALL_FUNC(or, GLM_VECTOR_TYPENAME(3, bool, defaultp)),\
glm_vec(4, bool, defaultp): GLM_CALL_FUNC(or, GLM_VECTOR_TYPENAME(4, bool, defaultp))\
)(x, y)

#define glm_and(x, y) _Generic(x,\
glm_vec(1, bool, defaultp): GLM_CALL_FUNC(and, GLM_VECTOR_TYPENAME(1, bool, defaultp)),\
glm_vec(2, bool, defaultp): GLM_CALL_FUNC(and, GLM_VECTOR_TYPENAME(2, bool, defaultp)),\
glm_vec(3, bool, defaultp): GLM_CALL_FUNC(and, GLM_VECTOR_TYPENAME(3, bool, defaultp)),\
glm_vec(4, bool, defaultp): GLM_CALL_FUNC(and, GLM_VECTOR_TYPENAME(4, bool, defaultp))\
)(x, y)

#define glm_xor(x, y) _Generic(x,\
glm_vec(1, bool, defaultp): GLM_CALL_FUNC(xor, GLM_VECTOR_TYPENAME(1, bool, defaultp)),\
glm_vec(2, bool, defaultp): GLM_CALL_FUNC(xor, GLM_VECTOR_TYPENAME(2, bool, defaultp)),\
glm_vec(3, bool, defaultp): GLM_CALL_FUNC(xor, GLM_VECTOR_TYPENAME(3, bool, defaultp)),\
glm_vec(4, bool, defaultp): GLM_CALL_FUNC(xor, GLM_VECTOR_TYPENAME(4, bool, defaultp))\
)(x, y)

#define glm_all(x) _Generic(x,\
glm_vec(1, bool, defaultp): GLM_CALL_FUNC(all, GLM_VECTOR_TYPENAME(1, bool, defaultp)),\
glm_vec(2, bool, defaultp): GLM_CALL_FUNC(all, GLM_VECTOR_TYPENAME(2, bool, defaultp)),\
glm_vec(3, bool, defaultp): GLM_CALL_FUNC(all, GLM_VECTOR_TYPENAME(3, bool, defaultp)),\
glm_vec(4, bool, defaultp): GLM_CALL_FUNC(all, GLM_VECTOR_TYPENAME(4, bool, defaultp))\
)(x)

#define glm_any(x) _Generic(x,\
glm_vec(1, bool, defaultp): GLM_CALL_FUNC(any, GLM_VECTOR_TYPENAME(1, bool, defaultp)),\
glm_vec(2, bool, defaultp): GLM_CALL_FUNC(any, GLM_VECTOR_TYPENAME(2, bool, defaultp)),\
glm_vec(3, bool, defaultp): GLM_CALL_FUNC(any, GLM_VECTOR_TYPENAME(3, bool, defaultp)),\
glm_vec(4, bool, defaultp): GLM_CALL_FUNC(any, GLM_VECTOR_TYPENAME(4, bool, defaultp))\
)(x)

#define glm_not(x) _Generic(x,\
glm_vec(1, bool, defaultp): GLM_CALL_FUNC(not, GLM_VECTOR_TYPENAME(1, bool, defaultp)),\
glm_vec(2, bool, defaultp): GLM_CALL_FUNC(not, GLM_VECTOR_TYPENAME(2, bool, defaultp)),\
glm_vec(3, bool, defaultp): GLM_CALL_FUNC(not, GLM_VECTOR_TYPENAME(3, bool, defaultp)),\
glm_vec(4, bool, defaultp): GLM_CALL_FUNC(not, GLM_VECTOR_TYPENAME(4, bool, defaultp))\
)(x)


/* Elem count of vectors of both float and double */
/*
#define GLM_VEC_ELEM_COUNT(x) _Generic((x),\
glm_vec(1, float, defaultp): 1,\
glm_vec(2, float, defaultp): 2,\
glm_vec(3, float, defaultp): 3,\
glm_vec(4, float, defaultp): 4,\
glm_vec(1, double, defaultp): 1,\
glm_vec(2, double, defaultp): 2,\
glm_vec(3, double, defaultp): 3,\
glm_vec(4, double, defaultp): 4,\
glm_vec(1, int, defaultp): 1,\
glm_vec(2, int, defaultp): 2,\
glm_vec(3, int, defaultp): 3,\
glm_vec(4, int, defaultp): 4,\
glm_vec(1, uint, defaultp): 1,\
glm_vec(2, uint, defaultp): 2,\
glm_vec(3, uint, defaultp): 3,\
glm_vec(4, uint, defaultp): 4,\
glm_vec(1, bool, defaultp): 1,\
glm_vec(2, bool, defaultp): 2,\
glm_vec(3, bool, defaultp): 3,\
glm_vec(4, bool, defaultp): 4\
)*/

#define GLM_VEC_ELEM_COUNT(x) sizeof(x.elem)/sizeof(x.elem[0])

/* Determines whether x or y is bigger, and sets the order of parameters of the function being called accordingly (biggest, smallest) */
/*
#define GLM_BINARY_OPERATOR(OP, x, y) _Generic( (char(*)[GLM_VEC_ELEM_COUNT(x)>GLM_VEC_ELEM_COUNT(y)?GLM_TYPEOF(x):GLM_TYPEOF(y)])0,\
char(*)[GLM_TYPE_BOOL1]:   GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(1, bool,   defaultp)),\
char(*)[GLM_TYPE_BOOL2]:   GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(2, bool,   defaultp)),\
char(*)[GLM_TYPE_BOOL3]:   GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(3, bool,   defaultp)),\
char(*)[GLM_TYPE_BOOL4]:   GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(4, bool,   defaultp)),\
char(*)[GLM_TYPE_FLOAT1]:  GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(1, float,  defaultp)),\
char(*)[GLM_TYPE_FLOAT2]:  GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(2, float,  defaultp)),\
char(*)[GLM_TYPE_FLOAT3]:  GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(3, float,  defaultp)),\
char(*)[GLM_TYPE_FLOAT4]:  GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(4, float,  defaultp)),\
char(*)[GLM_TYPE_DOUBLE1]: GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
char(*)[GLM_TYPE_DOUBLE2]: GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
char(*)[GLM_TYPE_DOUBLE3]: GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
char(*)[GLM_TYPE_DOUBLE4]: GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(4, double, defaultp)),\
char(*)[GLM_TYPE_INT1]:    GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(1, int,    defaultp)),\
char(*)[GLM_TYPE_INT2]:    GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(2, int,    defaultp)),\
char(*)[GLM_TYPE_INT3]:    GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(3, int,    defaultp)),\
char(*)[GLM_TYPE_INT4]:    GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(4, int,    defaultp)),\
char(*)[GLM_TYPE_UINT1]:   GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(1, uint,   defaultp)),\
char(*)[GLM_TYPE_UINT2]:   GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(2, uint,   defaultp)),\
char(*)[GLM_TYPE_UINT3]:   GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(3, uint,   defaultp)),\
char(*)[GLM_TYPE_UINT4]:   GLM_CALL_FUNC(variadic_##OP, GLM_VECTOR_TYPENAME(4, uint,   defaultp))\
)(2, GLM_TYPEOF(x), x, GLM_TYPEOF(y), y)
*/

#define GLM_BINARY_OPERATOR(OP, x, y)\
_Generic( (char(*)[GLM_VEC_ELEM_COUNT(x) > GLM_VEC_ELEM_COUNT(y)][GLM_VEC_ELEM_COUNT(x) > GLM_VEC_ELEM_COUNT(y) ? GLM_TYPEOF(x) : GLM_TYPEOF(y)])0,\
char(*)[0][GLM_TYPE_FLOAT1]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
char(*)[0][GLM_TYPE_FLOAT2]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
char(*)[0][GLM_TYPE_FLOAT3]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
char(*)[0][GLM_TYPE_FLOAT4]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
char(*)[0][GLM_TYPE_DOUBLE1]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
char(*)[0][GLM_TYPE_DOUBLE2]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
char(*)[0][GLM_TYPE_DOUBLE3]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
char(*)[0][GLM_TYPE_DOUBLE4]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(4, double, defaultp)),\
char(*)[0][GLM_TYPE_INT1]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(1, int, defaultp)),\
char(*)[0][GLM_TYPE_INT2]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(2, int, defaultp)),\
char(*)[0][GLM_TYPE_INT3]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(3, int, defaultp)),\
char(*)[0][GLM_TYPE_INT4]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(4, int, defaultp)),\
char(*)[0][GLM_TYPE_UINT1]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(1, uint, defaultp)),\
char(*)[0][GLM_TYPE_UINT2]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(2, uint, defaultp)),\
char(*)[0][GLM_TYPE_UINT3]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(3, uint, defaultp)),\
char(*)[0][GLM_TYPE_UINT4]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(4, uint, defaultp)),\
char(*)[1][GLM_TYPE_FLOAT1]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
char(*)[1][GLM_TYPE_FLOAT2]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
char(*)[1][GLM_TYPE_FLOAT3]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
char(*)[1][GLM_TYPE_FLOAT4]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
char(*)[1][GLM_TYPE_DOUBLE1]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
char(*)[1][GLM_TYPE_DOUBLE2]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
char(*)[1][GLM_TYPE_DOUBLE3]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
char(*)[1][GLM_TYPE_DOUBLE4]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(4, double, defaultp)),\
char(*)[1][GLM_TYPE_INT1]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(1, int, defaultp)),\
char(*)[1][GLM_TYPE_INT2]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(2, int, defaultp)),\
char(*)[1][GLM_TYPE_INT3]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(3, int, defaultp)),\
char(*)[1][GLM_TYPE_INT4]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(4, int, defaultp)),\
char(*)[1][GLM_TYPE_UINT1]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(1, uint, defaultp)),\
char(*)[1][GLM_TYPE_UINT2]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(2, uint, defaultp)),\
char(*)[1][GLM_TYPE_UINT3]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(3, uint, defaultp)),\
char(*)[1][GLM_TYPE_UINT4]: GLM_CALL_FUNC(OP, GLM_VECTOR_TYPENAME(4, uint, defaultp))\
)\
(\
	_Generic( (char(*)[ GLM_VEC_ELEM_COUNT(y)>GLM_VEC_ELEM_COUNT(x)][GLM_TYPEOF(y) ])0,\
		char(*)[1][GLM_TYPE_FLOAT1]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(1, float, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_FLOAT2]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(2, float, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_FLOAT3]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(3, float, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_FLOAT4]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(4, float, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_DOUBLE1]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(1, double, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_DOUBLE2]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(2, double, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_DOUBLE3]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(3, double, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_DOUBLE4]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(4, double, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_INT1]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(1, int, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_INT2]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(2, int, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_INT3]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(3, int, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_INT4]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(4, int, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_UINT1]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(1, uint, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_UINT2]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(2, uint, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_UINT3]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(3, uint, defaultp))(x.elem[0]),\
		char(*)[1][GLM_TYPE_UINT4]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(4, uint, defaultp))(x.elem[0]),\
		default: x\
	),\
	_Generic( (char(*)[ GLM_VEC_ELEM_COUNT(x)>GLM_VEC_ELEM_COUNT(y)][GLM_TYPEOF(x)])0,\
		char(*)[1][GLM_TYPE_FLOAT1]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(1, float, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_FLOAT2]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(2, float, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_FLOAT3]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(3, float, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_FLOAT4]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(4, float, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_DOUBLE1]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(1, double, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_DOUBLE2]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(2, double, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_DOUBLE3]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(3, double, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_DOUBLE4]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(4, double, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_INT1]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(1, int, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_INT2]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(2, int, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_INT3]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(3, int, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_INT4]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(4, int, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_UINT1]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(1, uint, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_UINT2]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(2, uint, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_UINT3]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(3, uint, defaultp))(y.elem[0]),\
		char(*)[1][GLM_TYPE_UINT4]: GLM_CALL_FUNC(load1, GLM_VECTOR_TYPENAME(4, uint, defaultp))(y.elem[0]),\
		default: y\
	)\
)

#define glm_add(x, y) GLM_BINARY_OPERATOR(add, x, y)
#define glm_sub(x, y) GLM_BINARY_OPERATOR(sub, x, y)
#define glm_mul(x, y) GLM_BINARY_OPERATOR(mul, x, y)
#define glm_div(x, y) GLM_BINARY_OPERATOR(div, x, y)
#define glm_addeq(lhs, rhs)
#define glm_subeq(lhs, rhs)
#define glm_muleq(lhs, rhs)
#define glm_diveq(lhs, rhs)


#include "namespace_template_vector_begin.inl"
#include "namespace_end.inl"

#endif /* GLM_DETAIL_TYPE_VECTOR_H */
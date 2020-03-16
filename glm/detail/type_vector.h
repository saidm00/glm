#ifndef GLM_DETAIL_TYPE_VECTOR_H
#define GLM_DETAIL_TYPE_VECTOR_H

#include "qualifier.h"
#include "type_scalar.h"
#include "type_matrix.h"

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

#define GLM_VECTOR_TYPENAME_(L, T, Q) GLM_VECTOR_TYPENAME_ ## T ## L
#define GLM_VECTOR_TYPENAME(...) GLM_VECTOR_TYPENAME_(__VA_ARGS__)
#define GLM_VEC_CTOR_NAME(L, T, Q) GLM_CALL_FUNC(constructor, GLM_VECTOR_TYPENAME(L, T, Q))

#define glm_vec(L, T, Q) GLM_PREFIX(GLM_VECTOR_TYPENAME(L, T, Q))

#include "namespace_begin.inl"
#include "namespace_template_vector_begin.inl"

typedef
struct vec(1, bool, defaultp)
{
	union
	{
		scalar(bool, defaultp) elem[1];
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
		scalar(bool, defaultp) elem[2];
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
		scalar(bool, defaultp) elem[3];
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
		scalar(bool, defaultp) elem[4];
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
		scalar(float, defaultp) elem[1];
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
		scalar(float, defaultp) elem[2];
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
		scalar(float, defaultp) elem[3];
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
		scalar(float, defaultp) elem[4];
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
		scalar(double, defaultp) elem[1];
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
		scalar(double, defaultp) elem[2];
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
		scalar(double, defaultp) elem[3];
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
		scalar(double, defaultp) elem[4];
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
		scalar(int, defaultp) elem[1];
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
		scalar(int, defaultp) elem[2];
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
		scalar(int, defaultp) elem[3];
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
		scalar(int, defaultp) elem[4];
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
		scalar(uint, defaultp) elem[1];
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
		scalar(uint, defaultp) elem[2];
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
		scalar(uint, defaultp) elem[3];
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
		scalar(int, defaultp) elem[4];
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

#define glm_normalize(x) _Generic((x),\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(normalize, GLM_VECTOR_TYPENAME(4, double, defaultp))\
)((x))

#define glm_length(x) _Generic((x),\
glm_vec(1, float, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(1, float, defaultp)),\
glm_vec(2, float, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(2, float, defaultp)),\
glm_vec(3, float, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(3, float, defaultp)),\
glm_vec(4, float, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(4, float, defaultp)),\
glm_vec(1, double, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(1, double, defaultp)),\
glm_vec(2, double, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(2, double, defaultp)),\
glm_vec(3, double, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(3, double, defaultp)),\
glm_vec(4, double, defaultp): GLM_CALL_FUNC(length, GLM_VECTOR_TYPENAME(4, double, defaultp))\
)((x))

#include "namespace_template_vector_begin.inl"
#include "namespace_end.inl"

#endif /* GLM_DETAIL_TYPE_VECTOR_H */
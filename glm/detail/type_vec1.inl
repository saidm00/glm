#define GLM_DEFINE_CONVERT_TVEC1(T) \
GLM_API glm_vec(1, T) \
glm(convert, T##1) (glm_type _type0, va_list _ap)\
{\
    glm_vec(1, T) _dst;\
    \
    if (_type0 == GLM_TYPE_FLOAT1)\
	{\
		glm_vec(1, float) tmp = va_arg( _ap, glm_vec(1, float) );\
        _dst.e[0] = (T)tmp.e[0];\
	}\
    else if (_type0 == GLM_TYPE_DOUBLE1)\
	{\
    	glm_vec(1, double) tmp = va_arg( _ap, glm_vec(1, double) );\
        _dst.e[0] = (T)tmp.e[0];\
	}\
	else if (_type0 == GLM_TYPE_INT1)\
	{\
		glm_vec(1, int) tmp = va_arg( _ap, glm_vec(1, int) );\
        _dst.e[0] = (T)tmp.e[0];\
	}\
    else if (_type0 == GLM_TYPE_UINT1)\
	{\
		glm_vec(1, uint) tmp = va_arg( _ap, glm_vec(1, uint) );\
        _dst.e[0] = (T)tmp.e[0];\
	}\
    else if (_type0 == GLM_TYPE_BOOL1)\
	{\
		glm_vec(1, bool) tmp = va_arg( _ap, glm_vec(1, bool) );\
        _dst.e[0] = (T)tmp.e[0];\
	}\
    \
    return _dst;\
}\


#define GLM_DEFINE_CREATE_TVEC1(T)\
glm_vec(1, T) GLM_API \
glm(create, T##1) (size_t _n, ...)\
{\
    glm_vec(1, T) _dst;\
    glm_type _type0;\
    va_list _ap;\
    \
    if (!_n) goto _done;\
    \
    va_start(_ap, _n);\
    _type0 = va_arg(_ap, glm_type);\
    \
    if      (glm_is_scalar(_type0))\
        _dst = glm(convert, T) (_type0, _ap);\
    else if (glm_is_tvec1(_type0))\
        _dst = glm(convert, T##1) (_type0, _ap);\
    else if (glm_is_tvec2(_type0))\
        _dst = glm(convert, T##2) (_type0, _ap);\
    else if (glm_is_tvec3(_type0))\
        _dst = glm(convert, T##3) (_type0, _ap);\
    else if (glm_is_tvec4(_type0))\
        _dst = glm(convert, T##4) (_type0, _ap);\
    \
    va_end(_ap);\
    \
    _done: return _dst;\
}

typedef struct
{
    union
    {
        glm_float e[1];
        union { glm_float x, r, s; };
    };
} glm_float1;

typedef struct
{
    union
    {
        glm_double e[1];
        union { glm_double x, r, s; };
    };
} glm_double1;

typedef struct
{
    union
    {
        glm_int e[1];
        union { glm_int x, r, s; };
    };
} glm_int1;

typedef struct
{
    union
    {
        glm_uint e[1];
        union { glm_uint x, r, s; };
    };
} glm_uint1;

typedef struct
{
    union
    {
        glm_bool e[1];
        union { glm_bool x, r, s; };
    };
} glm_bool1;

GLM_DEFINE_CONVERT_TVEC1(float)
GLM_DEFINE_CONVERT_TVEC1(double)
GLM_DEFINE_CONVERT_TVEC1(int)
GLM_DEFINE_CONVERT_TVEC1(uint)
GLM_DEFINE_CONVERT_TVEC1(bool)
/*
GLM_DEFINE_CREATE_TVEC1(float)
GLM_DEFINE_CREATE_TVEC1(double)
GLM_DEFINE_CREATE_TVEC1(int)
GLM_DEFINE_CREATE_TVEC1(uint)
GLM_DEFINE_CREATE_TVEC1(bool)
*/
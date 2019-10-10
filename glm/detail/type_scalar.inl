

#define GLM_DEFINE_SCALAR_CONVERT(T) \
glm(T) GLM_API \
glm(convert, T) (glm_type _type0, va_list _ap)\
{\
    glm(T) _dst;\
    \
    if      (_type0 == GLM_TYPE_FLOAT)\
        _dst = (T) va_arg( _ap, glm(float) );\
    else if (_type0 == GLM_TYPE_DOUBLE)\
        _dst = (T) va_arg( _ap, glm(double) );\
    else if (_type0 == GLM_TYPE_INT)\
        _dst = (T) va_arg( _ap, glm(int) );\
    else if (_type0 == GLM_TYPE_UINT)\
        _dst = (T) va_arg( _ap, glm(uint) );\
    else if (_type0 == GLM_TYPE_BOOL)\
        _dst = (T) va_arg( _ap, glm(bool) );\
    \
    return _dst;\
}

#define GLM_DEFINE_SCALAR_CREATE(T)\
glm(T) GLM_API \
glm(create, T) (size_t _n, ...)\
{\
    glm(T) _dst;\
    glm_type _type0;\
    va_list _ap;\
    \
    if (!_n) goto _done;\
    \
	va_start(_ap, _n);\
    _type0 = va_arg(_ap, glm_type);\
    \
    if      (glm_is_scalar(_type0))\
        _dst = glm(convert, T)(_type0, _ap);\
    else if (glm_is_tvec1(_type0))\
        _dst = (glm(convert, T##1)(_type0, _ap)).e[0];\
    else if (glm_is_tvec2(_type0))\
        _dst = (glm(convert, T##2)(_type0, _ap)).e[0];\
    else if (glm_is_tvec3(_type0))\
        _dst = (glm(convert, T##3)(_type0, _ap)).e[0];\
    else if (glm_is_tvec4(_type0))\
        _dst = (glm(convert, T##4)(_type0, _ap)).e[0];\
    \
    va_end(_ap);\
    \
    _done: return _dst;\
}

GLM_DEFINE_SCALAR_CONVERT(float)
GLM_DEFINE_SCALAR_CONVERT(double)
GLM_DEFINE_SCALAR_CONVERT(int)
GLM_DEFINE_SCALAR_CONVERT(uint)
GLM_DEFINE_SCALAR_CONVERT(bool)
/*
GLM_DEFINE_SCALAR_CREATE(float)
GLM_DEFINE_SCALAR_CREATE(double)
GLM_DEFINE_SCALAR_CREATE(int)
GLM_DEFINE_SCALAR_CREATE(uint)
GLM_DEFINE_SCALAR_CREATE(bool)
*/
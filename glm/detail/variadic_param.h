#ifndef GLM_DETAIL_VARIADIC_PARAM_H
#define GLM_DETAIL_VARIADIC_PARAM_H

#include "type_scalar.h"
#include "type_vector.h"
#include "type_matrix.h"

#define GLM_VARIADIC_PARAM_TYPE(A) GLM_TYPEOF(A)

#define GLM_VARIADIC_PARAM_VAL(A) A
#define GLM_VARIADIC_PARAM(A) GLM_VARIADIC_PARAM_TYPE(A), GLM_VARIADIC_PARAM_VAL(A)

#endif /* GLM_DETAIL_VARIADIC_PARAM_H */
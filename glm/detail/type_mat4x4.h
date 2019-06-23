#ifndef GLM_TYPE_MAT4X4_H
#define GLM_TYPE_MAT4X4_H

#define TMAT4X4_16(T, K1, K2, K3, K4, K5, K6, K7, K8, K9, K10, K11, K12, K13, K14, K15, K16)

#define TMAT4X4(T, K1, K2, K3, K4, K5, K6, K7, K8, K9, K10, K11, K12, K13, K14, K15, K16, N)
#define TMAT4X4_RSEQ 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0

#define _tmat4x4(T, ...) __tmat4x4(T, __VA_ARGS__, TMAT4X4_RSEQ)

#define tmat4x4(T) mat(4, 4, T)

#include "type_mat4x4.inl"

#endif /* GLM_TYPE_MAT4X4_H */
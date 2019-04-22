#ifndef GLM_DETAIL_SETUP_H
#define GLM_DETAIL_SETUP_H

#if defined(__clang__)
#define GLM_COMPILER GLM_COMPILER_CLANG
#elif defined(__GNUC__) || defined(__GNUG__)
#define GLM_COMPILER GLM_COMPILER_GCC
#elif defined(__MSVC)
#define GLM_COMPILER GLM_COMPILER_VC
#endif

#endif /* GLM_DETAIL_SETUP_H */
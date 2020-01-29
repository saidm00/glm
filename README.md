# *OpenGL Mathematics for C*


[*glm-c*](https://github.com/saidwho12/glm-c) is a C11/C17 port of the C++ library [*glm*](https://github.com/g-truc/glm).
It was made referencing the [GLSL specification](https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf) as well.

Although this is meant to be used in C11/C17, you could use this no problem in ANSI C.
You would only have to abandon constructors or the generic functions which are used.
The macro `glm_length()` for example would become `glm_float3_length()`,
`glm_int2_length()`, etc...

The library types are internally written similarly
to *HLSL*'s types (i.e. `glm_uvec3` is internally written as `glm_uint3`).
The main purpose is to easily compose types using some macros shown below.

Template-like macros for identifying types:
```c
/* glm_bool2 */
glm_vec(2, bool, defaultp) p;
/* glm_float3_highp */
glm_tvec3(float, highp) q;
/* glm_uint4_lowp */
glm_vec(4, uint, lowp) r;
```

Macros for constructing types:
```c
glm_vec3 v1 = glm_vec3(1, 2, 3);
glm_float3 v2 = glm_vec(3, float, defaultp)(1, 2, 3);
```

Construction from vector arguments:
```c
glm_float2 v1 = glm_vec2(1, 2);
glm_tvec3(float, defaultp) v2 = glm_float3(v1, 3); /* vec3(1.0f,2.0f,3.0f) */
```

Mixing vector types when calling constructor:

```c
glm_tvec2(bool) v1 = glm_bvec2(false, true);
glm_uvec2 v2 = glm_uint2(25, 47);
glm_vec4 v3 = glm_vec4(v1, v2); /* vec4(0.0f, 1.0f, 25.0f, 47.0f) */
```

Extra elements are discarded from construction:
```c
glm_tvec2(float) v1 = glm_float2(1, 2);
glm_vec(4, uint) v2 = glm_uvec4(3, 4, 5, 6);
glm_vec3 v3 = glm_vec3(v1, v2); /* vec3(1.0f,2.0f,3.0f) */
```

In *GLSL* you can do the following:
```glsl
float t = 5.8;
t.x;
```

In *glm-c* you have to use `glm_vec1` or `glm_float1` as follows:
```c
glm_vec1 t = glm_vec1(5.8f);
t.x;
```

In *GLSL* it is known that you can subscript vectors with the `.` accessor. In *glm-c* this is also possible but only for linear access. You can't for example do `v.yx`. Also a vector cannot access itself.
The following snippet shows this.
```c
glm_vec2 v = glm_vec2(1.0f, 2.0f);
v.xy; /* doesn't work */
```

This is simply because a union cannot contain itself in C, even if you forward declare it.
Though this would be possible using swizzle macros (Isn't yet implemented).
Vectors also have array access using the `elem` member.
```c
glm_vec3 v = glm_vec3(2);

float x = v.elem[0] * v.elem[1] * v.elem[3]; /* 8 */
```

This is all I've written for now, if anyone wants to contribute to this feel free to contact me at saidwho12@gmail.com or send me a message on discord at saidwho12#3446.

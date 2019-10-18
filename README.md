

# *OpenGL Mathematics for C*


[OpenGL Mathematics for C]([https://github.com/saidwho12/glm-c](https://github.com/saidwho12/glm-c)) (*GLM-C*) is a C11 GCC port of the C++ library [*GLM*](https://github.com/g-truc/glm).
It was made referencing the [The OpenGL® Shading Language, Version 4.60.7](https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.60.pdf) specification as well.

The library types are internally written similarly to *HLSL*'s types (ie. `glm_uvec3` is internally written as `glm_uint3`).
The main purpose is to easily compose types using some macros shown below.

Template-like macros for identifying types:
```c
glm_vec(2, bool); // glm_bool2
glm_tvec3(float); // glm_float3
glm_vec(4, uint); // glm_uint4
```

Macros for constructing types:
```c
glm_vec3 v = glm_vec3(1.0f, 2.0f, 3.0f);
glm_float3 v = glm_vec(3, float)(1.0f, 2.0f, 3.0f);
```

Construction from vector arguments:
```c
glm_float2 v1 = glm_vec2(1.0f, 2.0f);
glm_tvec3(float) v3 = glm_float3(v1, 3.0f); // glm_vec3(1.0f, 2.0f, 3.0f)
```

Mixing vector types when calling constructor:

```c
glm_tvec2(bool) v1 = glm_bvec2(false, true);
glm_uvec2 v2 = glm_uint2(25, 47);
glm_vec4 v3 = glm_vec4(v1, v2); // glm_vec4(0.0f, 1.0f, 25.0f, 47.0f)
```

Extra elements are discarded from construction:
```c
glm_tvec2(float) v1 = glm_float2(1.0f, 2.0f);
glm_vec(4, uint) v2 = glm_uvec4(3, 4, 5, 6);
glm_vec3 v3 = glm_vec3(v1, v2); // glm_vec3(1.0f, 2.0f, 3.0f)
```

In *GLSL* you can do the following:
```glsl
float t = 5.8;
t.x;
```

In *GLM-C* you have to use `glm_vec1` or `glm_float1` as follows:
```c
glm_float1 t = { 5.8f };
t.x;
```

In *GLSL* it is known that you can subscript vectors with the `.` accessor. In *GLM-C* this is also possible but only for linear access. You can't for example do `v.yx`. Also a vector cannot access itself.
The following snippet shows this.
```c
glm_vec2 v = glm_vec2(1.0f, 2.0f);
v.xy; // doesn't work
```

This is simply because a union cannot contain itself in C, even if you forward declare it.
Though this would be possible using swizzle macros (Isn't yet implemented).
Vectors also have array access using the `e` member.
```c
glm_vec3 v = glm_vec3(2.0f);

float x = v.e[0] * v.e[1] * v.e[3]; // 2 * 2 * 2 -> 8.0f
```

This is all I've written for now, if anyone wants to contribute to this feel free to contact me at saidwho12@gmail.com or send me a message on discord at saidwho12#3446.

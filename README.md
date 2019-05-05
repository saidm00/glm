
# *GLM*
*GLM* is a an attempt at bringing the [glsl language](https://www.khronos.org/registry/OpenGL/specs/gl/GLSLangSpec.4.50.pdf) to C as a library.


This library exploits some *variadic macro* and *pasting* tricks as well as `_Generic` to allow for glsl style vector constructors.

```c
uvec2 a = uvec2(25, 0x7f);
ivec2 b = ivec2(100);
bvec4 c = bvec4(a, b);
a = uvec2(c);
```

The elements of the "templated" vector structs can be accessed in different ways, example using sub-structs:

```c
vec3 v = vec3(-5.0f, 24.0f, 2.75f);
v.x; // '.x' gets x element of the vector
v.xy; // '.xy' is of type vec2, self-explanatory
v.rg;
v.tp;

// '.e' allows access of the array of elements/components.
// in this case it is of type 'float[3]'
v.e;
```

Another way to access vector  components is using special macros, this is a must for swizzling.

```c
vec4 v = vec4(25, false, -0x2b, '{');
yz(v);
xyz(v);
// ...
```

Swizzling is also supported with *function-like macros*.
**NOTE: This component group notation isn't valid on the left hand side.**
```c
vec4 v = vec4(1.0f, 2.0f, 3.0f, 4.0f);
v = wzyx(v); // vec4(4.0f, 3.0f, 2.0f, 1.0f)
wx(v) = vec2(25, -3.0f); // invalid right now
```

TODO:
* [X] vector constructors
* [X] matrix constructors
* [ ] layout qualifiers
* [ ] operator functions
* [ ] SIMD acceleration
* [ ] compatibility with C standards other than the C11 standard
* [ ] compatibility with C++

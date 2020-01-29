/* Implementation detail */
#define value_type T
#define type vec(4, T, Q)
#define bool_type vec(4, bool, Q)
#define length_type length_t;

/* Data */

typedef struct vec(4, T, Q)
{
    union
    {
        struct { T x, y, z, w; };
        T elem[4];
    };
}
vec(4, T, Q);

/* "Methods" */

#undef value_type
#undef type
#undef bool_type
#undef length_type

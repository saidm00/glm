/* Implementation detail */
#define value_type T
#define type vec(3, T, Q)
#define bool_type vec(3, bool, Q)
#define length_type length_t;

/* Data */

typedef struct vec(3, T, Q)
{
    union
    {
        struct { T x, y, z; };
        T elem[3];
    };
}
vec(3, T, Q);

/* "Methods" */

#undef value_type
#undef type
#undef bool_type
#undef length_type

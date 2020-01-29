/* Implementation detail */
#define value_type T
#define type vec(2, T, Q)
#define bool_type vec(2, bool, Q)
#define length_type length_t;

/* Data */

typedef struct vec(2, T, Q)
{
    union
    {
        struct { T x, y; };
        T elem[2];
    };
}
vec(2, T, Q);

/* "Methods" */


#undef value_type
#undef type
#undef bool_type
#undef length_type

#define vec(L, T, Q) glm_vec(L, T, Q)
#define length_t glm_length_t
#define type_t glm_type_t
#define bvec2 glm_bvec2
#define bvec3 glm_bvec3
#define bvec4 glm_bvec4
#define vec2 glm_vec2
#define vec3 glm_vec3
#define vec4 glm_vec4
#define dvec2 glm_dvec2
#define dvec3 glm_dvec3
#define dvec4 glm_dvec4
#define ivec2 glm_ivec2
#define ivec3 glm_ivec3
#define ivec4 glm_ivec4
#define uvec2 glm_uvec2
#define uvec3 glm_uvec3
#define uvec4 glm_uvec4

#define negate               GLM_CALL_FUNC(vec(L, T, Q), negate)
#define add                  GLM_CALL_FUNC(vec(L, T, Q), add)
#define sub                  GLM_CALL_FUNC(vec(L, T, Q), sub)
#define mul                  GLM_CALL_FUNC(vec(L, T, Q), mul)
#define div                  GLM_CALL_FUNC(vec(L, T, Q), div)
#define addeq_scalar         GLM_CALL_FUNC(vec(L, T, Q), addeq_scalar)
#define subeq_scalar         GLM_CALL_FUNC(vec(L, T, Q), subeq_scalar)
#define muleq_scalar         GLM_CALL_FUNC(vec(L, T, Q), muleq_scalar)
#define diveq_scalar         GLM_CALL_FUNC(vec(L, T, Q), diveq_scalar)
#define addeq_vector         GLM_CALL_FUNC(vec(L, T, Q), addeq_vector)
#define subeq_vector         GLM_CALL_FUNC(vec(L, T, Q), subeq_vector)
#define muleq_vector         GLM_CALL_FUNC(vec(L, T, Q), muleq_vector)
#define diveq_vector         GLM_CALL_FUNC(vec(L, T, Q), diveq_vector)
#define addeq                GLM_CALL_FUNC(vec(L, T, Q), addeq)
#define subeq                GLM_CALL_FUNC(vec(L, T, Q), subeq)
#define muleq                GLM_CALL_FUNC(vec(L, T, Q), muleq)
#define diveq                GLM_CALL_FUNC(vec(L, T, Q), diveq)

/* Boolean Functions */
#define or                   GLM_CALL_FUNC(vec(L, bool, Q), or)
#define and                  GLM_CALL_FUNC(vec(L, bool, Q), and)
#define xor                  GLM_CALL_FUNC(vec(L, bool, Q), xor)
#define all                  GLM_CALL_FUNC(vec(L, bool, Q), all)
#define any                  GLM_CALL_FUNC(vec(L, bool, Q), any)
#define not                  GLM_CALL_FUNC(vec(L, bool, Q), not)

/* Common Functions */
#define abs                  GLM_CALL_FUNC(vec(L, T, Q), abs)
#define sign                 GLM_CALL_FUNC(vec(L, T, Q), sign)
#define floor                GLM_CALL_FUNC(vec(L, T, Q), floor)
#define trunc                GLM_CALL_FUNC(vec(L, T, Q), trunc)
#define round                GLM_CALL_FUNC(vec(L, T, Q), round)
#define roundEven            GLM_CALL_FUNC(vec(L, T, Q), roundEven)
#define ceil                 GLM_CALL_FUNC(vec(L, T, Q), ceil)
#define fract                GLM_CALL_FUNC(vec(L, T, Q), fract)
#define mod_vector           GLM_CALL_FUNC(vec(L, T, Q), mod_vector)
#define mod_scalar           GLM_CALL_FUNC(vec(L, T, Q), mod_scalar)
#define modf                 GLM_CALL_FUNC(vec(L, T, Q), modf)
#define min_vector           GLM_CALL_FUNC(vec(L, T, Q), min_vector)
#define min_scalar           GLM_CALL_FUNC(vec(L, T, Q), min_scalar)
#define max_vector           GLM_CALL_FUNC(vec(L, T, Q), max_vector)
#define max_scalar           GLM_CALL_FUNC(vec(L, T, Q), max_scalar)
#define clamp_vector         GLM_CALL_FUNC(vec(L, T, Q), clamp_vector)
#define clamp_scalar         GLM_CALL_FUNC(vec(L, T, Q), clamp_scalar)
#define mix_vector           GLM_CALL_FUNC(vec(L, T, Q), mix_vector)
#define mix_scalar           GLM_CALL_FUNC(vec(L, T, Q), mix_scalar)
#define step_vector          GLM_CALL_FUNC(vec(L, T, Q), step_vector)
#define step_scalar          GLM_CALL_FUNC(vec(L, T, Q), step_scalar)
#define smoothstep_vector    GLM_CALL_FUNC(vec(L, T, Q), smoothstep_vector)
#define smoothstep_scalar    GLM_CALL_FUNC(vec(L, T, Q), smoothstep_scalar)
#define isnan                GLM_CALL_FUNC(vec(L, T, Q), isnan)
#define isinf                GLM_CALL_FUNC(vec(L, T, Q), isinf)
#define fma                  GLM_CALL_FUNC(vec(L, T, Q), fma)

/* Exponential Functions */
#define pow                  GLM_CALL_FUNC(vec(L, T, Q), pow)
#define exp                  GLM_CALL_FUNC(vec(L, T, Q), exp)
#define log                  GLM_CALL_FUNC(vec(L, T, Q), log)
#define exp2                 GLM_CALL_FUNC(vec(L, T, Q), exp2)
#define log2                 GLM_CALL_FUNC(vec(L, T, Q), log2)
#define sqrt                 GLM_CALL_FUNC(vec(L, T, Q), sqrt)
#define inversesqrt          GLM_CALL_FUNC(vec(L, T, Q), inversesqrt)

/* Geometry Functions */
#define length               GLM_CALL_FUNC(vec(L, T, Q), length)
#define distance             GLM_CALL_FUNC(vec(L, T, Q), distance)
#define dot                  GLM_CALL_FUNC(vec(L, T, Q), dot)
#define normalize            GLM_CALL_FUNC(vec(L, T, Q), normalize)
#define faceforward          GLM_CALL_FUNC(vec(L, T, Q), faceforward)
#define reflect              GLM_CALL_FUNC(vec(L, T, Q), reflect)
#define refract              GLM_CALL_FUNC(vec(L, T, Q), refract)

/* Vector Relational Functions */
#define lessThan             GLM_CALL_FUNC(vec(L, T, Q), lessThan)
#define lessThanEqual        GLM_CALL_FUNC(vec(L, T, Q), lessThanEqual)
#define greaterThan          GLM_CALL_FUNC(vec(L, T, Q), greaterThan)
#define greaterThanEqual     GLM_CALL_FUNC(vec(L, T, Q), greaterThanEqual)
#define equal                GLM_CALL_FUNC(vec(L, T, Q), equal)
#define notEqual             GLM_CALL_FUNC(vec(L, T, Q), notEqual)

/* Angle and Trigonometry Functions */
#define sin                  GLM_CALL_FUNC(vec(L, T, Q), sin)
#define cos                  GLM_CALL_FUNC(vec(L, T, Q), cos)
#define tan                  GLM_CALL_FUNC(vec(L, T, Q), tan)
#define asin                 GLM_CALL_FUNC(vec(L, T, Q), asin)
#define acos                 GLM_CALL_FUNC(vec(L, T, Q), acos)
#define atan                 GLM_CALL_FUNC(vec(L, T, Q), atan)
#define atan2                GLM_CALL_FUNC(vec(L, T, Q), atan2)
#define sinh                 GLM_CALL_FUNC(vec(L, T, Q), sinh)
#define cosh                 GLM_CALL_FUNC(vec(L, T, Q), cosh)
#define tanh                 GLM_CALL_FUNC(vec(L, T, Q), tanh)
#define asinh                GLM_CALL_FUNC(vec(L, T, Q), asinh)
#define acosh                GLM_CALL_FUNC(vec(L, T, Q), acosh)
#define atanh                GLM_CALL_FUNC(vec(L, T, Q), atanh)

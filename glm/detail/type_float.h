#ifndef GLM_DETAIL_TYPE_FLOAT_H
#define GLM_DETAIL_TYPE_FLOAT_H

/*
    Shamelessly stolen from https://patchwork.ozlabs.org/patch/707631/
*/

#define BIAS 0x7f
#define MANT_DIG 24
#define MAX_EXP (2 * BIAS + 1)

float
roundevenf (float x)
{
  uint32_t ix, ux;
  GET_FLOAT_WORD (ix, x);
  ux = ix & 0x7fffffff;
  int exponent = ux >> (MANT_DIG - 1);
  if (exponent >= BIAS + MANT_DIG - 1)
    {
      /* Integer, infinity or NaN.  */
      if (exponent == MAX_EXP)
	/* Infinity or NaN; quiet signaling NaNs.  */
	return x + x;
      else
	return x;
    }
  else if (exponent >= BIAS)
    {
      /* At least 1; not necessarily an integer.  Locate the bits with
	 exponents 0 and -1 (when the unbiased exponent is 0, the bit
	 with exponent 0 is implicit, but as the bias is odd it is OK
	 to take it from the low bit of the exponent).  */
      int int_pos = (BIAS + MANT_DIG - 1) - exponent;
      int half_pos = int_pos - 1;
      uint32_t half_bit = 1U << half_pos;
      uint32_t int_bit = 1U << int_pos;
      if ((ix & (int_bit | (half_bit - 1))) != 0)
	/* Carry into the exponent works correctly.  No need to test
	   whether HALF_BIT is set.  */
	ix += half_bit;
      ix &= ~(int_bit - 1);
    }
  else if (exponent == BIAS - 1 && ux > 0x3f000000)
    /* Interval (0.5, 1).  */
    ix = (ix & 0x80000000) | 0x3f800000;
  else
    /* Rounds to 0.  */
    ix &= 0x80000000;
  SET_FLOAT_WORD (x, ix);
  return x;
}


#endif /* GLM_DETAIL_TYPE_FLOAT_H */
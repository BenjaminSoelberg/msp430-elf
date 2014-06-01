/* Test floating-point conversions.  Standard types and float.  */
/* Origin: Joseph Myers <joseph@codesourcery.com> */
/* { dg-do run } */
/* { dg-skip-if "test too big for msp430" { msp430*-*-* } "*" "" } */
/* { dg-options "" } */

#include <float.h>
#include "fp-int-convert.h"

int
main (void)
{
  TEST_I_F(signed char, unsigned char, float, FLT_MANT_DIG);
  TEST_I_F(signed short, unsigned short, float, FLT_MANT_DIG);
  TEST_I_F(signed int, unsigned int, float, FLT_MANT_DIG);
  TEST_I_F(signed long, unsigned long, float, FLT_MANT_DIG);
  TEST_I_F(signed long long, unsigned long long, float, FLT_MANT_DIG);
  exit (0);
}

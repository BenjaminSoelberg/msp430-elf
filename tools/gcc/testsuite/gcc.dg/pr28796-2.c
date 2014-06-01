/* { dg-do run } */
/* { dg-options "-O2 -funsafe-math-optimizations -fno-finite-math-only -DUNSAFE" } */
/* { dg-add-options ieee } */
/* { dg-skip-if "No Inf/NaN support" { spu-*-* } } */
/* { dg-skip-if "unsafe maths does not support Inf/NaN" { "rx-*-*" } { "*" } { "-m64bit-doubles" } } */

#include "tg-tests.h"

int main(void)
{
  return main_tests ();
}

/* { dg-do run } */
/* { dg-options "-ftrapv" } */
/* { dg-skip-if "trapping arithmetic not supported" { msp430-*-* rl78-*-* } "*" "" } */

extern void abort (void);
unsigned long
foo (long i, long j)
{
  /* We may not fold this to (unsigned long)(i * j).  */
  return -(unsigned long)(i * -j);
}
int main()
{
  if (foo (-__LONG_MAX__ - 1, -1) != -(unsigned long)(-__LONG_MAX__ - 1))
    abort ();
  return 0;
}

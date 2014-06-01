/* PR c/27747 */
/* This is supposed to succeed only if
   the target doesn't define HANDLE_PRAGMA_PACK_WITH_EXPANSION.  */
/* { dg-do compile { target { ! { *-*-solaris2* } } } } */
/* { dg-skip-if "Not supported on RX" { "xstormy16-*-*" } { "*" } { "" } } */

#define push bar
#define foo _Pragma ("pack(push)")
foo
int i;
#pragma pack(pop)

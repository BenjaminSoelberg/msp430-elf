#source: size64-1.s
#as: --64
#ld: -shared -melf_x86_64
#objdump: -R -s -j .data
#target: x86_64-*-*

.*: +file format .*

DYNAMIC RELOCATION RECORDS
OFFSET           TYPE              VALUE 
0+200360 R_X86_64_SIZE64   xxx
0+200368 R_X86_64_SIZE64   xxx-0x000000000000001e
0+200370 R_X86_64_SIZE64   xxx\+0x000000000000001e
0+200378 R_X86_64_SIZE64   yyy
0+200380 R_X86_64_SIZE64   zzz


Contents of section .data:
 200360 00000000 00000000 00000000 00000000  ................
 200370 00000000 00000000 00000000 00000000  ................
 200380 00000000 00000000 00000000 00000000  ................
 200390 00000000 00000000 00000000 00000000  ................
 2003a0 00000000 00000000 00000000 00000000  ................

# name: Neon element and structure loads and stores
# as: -mfpu=neon
# objdump: -dr --prefix-addresses --show-raw-insn

.*: +file format .*arm.*

Disassembly of section \.text:
0[0-9a-f]+ <[^>]+> f406282f 	vst2\.8	{d2-d3}, \[r6 :128\]
0[0-9a-f]+ <[^>]+> f427140d 	vld3\.8	{d1-d3}, \[r7\]!
0[0-9a-f]+ <[^>]+> f4091553 	vst3\.16	{d1,d3,d5}, \[r9 :64\], r3
0[0-9a-f]+ <[^>]+> f42a208f 	vld4\.32	{d2-d5}, \[sl\]
0[0-9a-f]+ <[^>]+> f40a114f 	vst4\.16	{d1,d3,d5,d7}, \[sl\]
0[0-9a-f]+ <[^>]+> f4aa1c6f 	vld1\.16	{d1\[\]-d2\[\]}, \[sl\]
0[0-9a-f]+ <[^>]+> f4aa1c5f 	vld1\.16	{d1\[\]}, \[sl :16\]
0[0-9a-f]+ <[^>]+> f4aa1dbf 	vld2\.32	{d1\[\],d3\[\]}, \[sl :64\]
0[0-9a-f]+ <[^>]+> f4aa3e0c 	vld3\.8	{d3\[\]-d5\[\]}, \[sl\], ip
0[0-9a-f]+ <[^>]+> f4a9af6d 	vld4\.16	{d10\[\],d12\[\],d14\[\],d16\[\]}, \[r9\]!
0[0-9a-f]+ <[^>]+> f4a9af5f 	vld4\.16	{d10\[\]-d13\[\]}, \[r9 :64\]
0[0-9a-f]+ <[^>]+> f4a9af9f 	vld4\.32	{d10\[\]-d13\[\]}, \[r9 :64\]
0[0-9a-f]+ <[^>]+> f4a9afdf 	vld4\.32	{d10\[\]-d13\[\]}, \[r9 :128\]
0[0-9a-f]+ <[^>]+> f4a530ed 	vld1\.8	{d3\[7\]}, \[r5\]!
0[0-9a-f]+ <[^>]+> f48554df 	vst1\.16	{d5\[3\]}, \[r5 :16\]
0[0-9a-f]+ <[^>]+> f4a535dd 	vld2\.16	{d3\[3\],d4\[3\]}, \[r5 :32\]!
0[0-9a-f]+ <[^>]+> f4858a83 	vst3\.32	{d8\[1\],d9\[1\],d10\[1\]}, \[r5\], r3
0[0-9a-f]+ <[^>]+> f4a7804f 	vld1\.8	{d8\[2\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7848f 	vld1\.16	{d8\[2\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7849f 	vld1\.16	{d8\[2\]}, \[r7 :16\]
0[0-9a-f]+ <[^>]+> f4a7888f 	vld1\.32	{d8\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a788bf 	vld1\.32	{d8\[1\]}, \[r7 :32\]
0[0-9a-f]+ <[^>]+> f4a7812f 	vld2\.8	{d8\[1\],d9\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7813f 	vld2\.8	{d8\[1\],d9\[1\]}, \[r7 :16\]
0[0-9a-f]+ <[^>]+> f4a7854f 	vld2\.16	{d8\[1\],d9\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7855f 	vld2\.16	{d8\[1\],d9\[1\]}, \[r7 :32\]
0[0-9a-f]+ <[^>]+> f4a7856f 	vld2\.16	{d8\[1\],d10\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7857f 	vld2\.16	{d8\[1\],d10\[1\]}, \[r7 :32\]
0[0-9a-f]+ <[^>]+> f4a7898f 	vld2\.32	{d8\[1\],d9\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7899f 	vld2\.32	{d8\[1\],d9\[1\]}, \[r7 :64\]
0[0-9a-f]+ <[^>]+> f4a789cf 	vld2\.32	{d8\[1\],d10\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a789df 	vld2\.32	{d8\[1\],d10\[1\]}, \[r7 :64\]
0[0-9a-f]+ <[^>]+> f4a7822f 	vld3\.8	{d8\[1\],d9\[1\],d10\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7864f 	vld3\.16	{d8\[1\],d9\[1\],d10\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7866f 	vld3\.16	{d8\[1\],d10\[1\],d12\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a78a8f 	vld3\.32	{d8\[1\],d9\[1\],d10\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a78acf 	vld3\.32	{d8\[1\],d10\[1\],d12\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7834f 	vld4\.8	{d8\[2\],d9\[2\],d10\[2\],d11\[2\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7835f 	vld4\.8	{d8\[2\],d9\[2\],d10\[2\],d11\[2\]}, \[r7 :32\]
0[0-9a-f]+ <[^>]+> f4a7876f 	vld4\.16	{d8\[1\],d10\[1\],d12\[1\],d14\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a7875f 	vld4\.16	{d8\[1\],d9\[1\],d10\[1\],d11\[1\]}, \[r7 :64\]
0[0-9a-f]+ <[^>]+> f4a78bcf 	vld4\.32	{d8\[1\],d10\[1\],d12\[1\],d14\[1\]}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a78bdf 	vld4\.32	{d8\[1\],d10\[1\],d12\[1\],d14\[1\]}, \[r7 :64\]
0[0-9a-f]+ <[^>]+> f4a78bef 	vld4\.32	{d8\[1\],d10\[1\],d12\[1\],d14\[1\]}, \[r7 :128\]
0[0-9a-f]+ <[^>]+> f3b43805 	vtbl\.8	d3, {d4}, d5
0[0-9a-f]+ <[^>]+> f3b23b05 	vtbl\.8	d3, {d2-d5}, d5
0[0-9a-f]+ <[^>]+> f3be3985 	vtbl\.8	d3, {d30-d31}, d5
0[0-9a-f]+ <[^>]+> f427288f 	vld2\.32	{d2-d3}, \[r7\]
0[0-9a-f]+ <[^>]+> f427208f 	vld4\.32	{d2-d5}, \[r7\]
0[0-9a-f]+ <[^>]+> f467c08f 	vld4\.32	{d28-d31}, \[r7\]
0[0-9a-f]+ <[^>]+> f4a21c83 	vld1\.32	{d1\[\]}, \[r2\], r3

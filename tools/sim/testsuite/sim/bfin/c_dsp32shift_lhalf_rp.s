//Original:/testcases/core/c_dsp32shift_lhalf_rp/c_dsp32shift_lhalf_rp.dsp
// Spec Reference: dsp32shift lshift
# mach: bfin

.include "testutils.inc"
	start



// lshift : positive data, count (+)=left (half reg)
// d_lo = lshift (d_lo BY d_lo)
// RLx by RLx
imm32 r0, 0x00000000;
R0.L = -1;
imm32 r1, 0x00000001;
imm32 r2, 0x00000002;
imm32 r3, 0x00000003;
imm32 r4, 0x00000004;
imm32 r5, 0x00000005;
imm32 r6, 0x00000006;
imm32 r7, 0x00000007;
//rl0 = lshift (rl0 by rl0);
R1.L = LSHIFT R1.L BY R0.L;
R2.L = LSHIFT R2.L BY R0.L;
R3.L = LSHIFT R3.L BY R0.L;
R4.L = LSHIFT R4.L BY R0.L;
R5.L = LSHIFT R5.L BY R0.L;
R6.L = LSHIFT R6.L BY R0.L;
R7.L = LSHIFT R7.L BY R0.L;
//CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00000000;
CHECKREG r2, 0x00000001;
CHECKREG r3, 0x00000001;
CHECKREG r4, 0x00000002;
CHECKREG r5, 0x00000002;
CHECKREG r6, 0x00000003;
CHECKREG r7, 0x00000003;

imm32 r0, 0x00001001;
R1.L = -1;
imm32 r2, 0x00002002;
imm32 r3, 0x00003003;
imm32 r4, 0x00004004;
imm32 r5, 0x00005005;
imm32 r6, 0x00006006;
imm32 r7, 0x00007007;
R0.L = LSHIFT R0.L BY R1.L;
//rl1 = lshift (rl1 by rl1);
R2.L = LSHIFT R2.L BY R1.L;
R3.L = LSHIFT R3.L BY R1.L;
R4.L = LSHIFT R4.L BY R1.L;
R5.L = LSHIFT R5.L BY R1.L;
R6.L = LSHIFT R6.L BY R1.L;
R7.L = LSHIFT R7.L BY R1.L;
CHECKREG r0, 0x00000800;
//CHECKREG r1, 0x00000001;
CHECKREG r2, 0x00001001;
CHECKREG r3, 0x00001801;
CHECKREG r4, 0x00002002;
CHECKREG r5, 0x00002802;
CHECKREG r6, 0x00003003;
CHECKREG r7, 0x00003803;


imm32 r0, 0x00001001;
imm32 r1, 0x00001001;
R2.L = -15;
imm32 r3, 0x00003003;
imm32 r4, 0x00004004;
imm32 r5, 0x00005005;
imm32 r6, 0x00006006;
imm32 r7, 0x00007007;
R0.L = LSHIFT R0.L BY R2.L;
R1.L = LSHIFT R1.L BY R2.L;
//rl2 = lshift (rl2 by rl2);
R3.L = LSHIFT R3.L BY R2.L;
R4.L = LSHIFT R4.L BY R2.L;
R5.L = LSHIFT R5.L BY R2.L;
R6.L = LSHIFT R6.L BY R2.L;
R7.L = LSHIFT R7.L BY R2.L;
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00000000;
//CHECKREG r2, 0x0000000f;
CHECKREG r3, 0x00000000;
CHECKREG r4, 0x00000000;
CHECKREG r5, 0x00000000;
CHECKREG r6, 0x00000000;
CHECKREG r7, 0x00000000;

imm32 r0, 0x00001001;
imm32 r1, 0x00001001;
imm32 r2, 0x00002002;
R3.L = -16;
imm32 r4, 0x00004004;
imm32 r5, 0x00005005;
imm32 r6, 0x00006006;
imm32 r7, 0x00007007;
R0.L = LSHIFT R0.L BY R3.L;
R1.L = LSHIFT R1.L BY R3.L;
R2.L = LSHIFT R2.L BY R3.L;
//rl3 = lshift (rl3 by rl3);
R4.L = LSHIFT R4.L BY R3.L;
R5.L = LSHIFT R5.L BY R3.L;
R6.L = LSHIFT R6.L BY R3.L;
R7.L = LSHIFT R7.L BY R3.L;
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00000000;
CHECKREG r2, 0x00000000;
//CHECKREG r3, 0x00000010;
CHECKREG r4, 0x00000000;
CHECKREG r5, 0x00000000;
CHECKREG r6, 0x00000000;
CHECKREG r7, 0x00000000;

// d_lo = ashft (d_hi BY d_lo)
// RHx by RLx
imm32 r0, 0x00000000;
imm32 r1, 0x00010000;
imm32 r2, 0x00020000;
imm32 r3, 0x00030000;
imm32 r4, 0x00040000;
imm32 r5, 0x00050000;
imm32 r6, 0x00060000;
imm32 r7, 0x00070000;
R0.L = LSHIFT R0.H BY R0.L;
R1.L = LSHIFT R1.H BY R0.L;
R2.L = LSHIFT R2.H BY R0.L;
R3.L = LSHIFT R3.H BY R0.L;
R4.L = LSHIFT R4.H BY R0.L;
R5.L = LSHIFT R5.H BY R0.L;
R6.L = LSHIFT R6.H BY R0.L;
R7.L = LSHIFT R7.H BY R0.L;
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00010001;
CHECKREG r2, 0x00020002;
CHECKREG r3, 0x00030003;
CHECKREG r4, 0x00040004;
CHECKREG r5, 0x00050005;
CHECKREG r6, 0x00060006;
CHECKREG r7, 0x00070007;

imm32 r0, 0x10010000;
R1.L = -1;
imm32 r2, 0x20020000;
imm32 r3, 0x30030000;
imm32 r4, 0x40040000;
imm32 r5, 0x50050000;
imm32 r6, 0x60060000;
imm32 r7, 0x70070000;
R0.L = LSHIFT R0.H BY R1.L;
//rl1 = lshift (rh1 by rl1);
R2.L = LSHIFT R2.H BY R1.L;
R3.L = LSHIFT R3.H BY R1.L;
R4.L = LSHIFT R4.H BY R1.L;
R5.L = LSHIFT R5.H BY R1.L;
R6.L = LSHIFT R6.H BY R1.L;
R7.L = LSHIFT R7.H BY R1.L;
CHECKREG r0, 0x10010800;
//CHECKREG r1, 0x00010001;
CHECKREG r2, 0x20021001;
CHECKREG r3, 0x30031801;
CHECKREG r4, 0x40042002;
CHECKREG r5, 0x50052802;
CHECKREG r6, 0x60063003;
CHECKREG r7, 0x70073803;


imm32 r0, 0x10010000;
imm32 r1, 0x10010000;
R2.L = -15;
imm32 r3, 0x30030000;
imm32 r4, 0x40040000;
imm32 r5, 0x50050000;
imm32 r6, 0x60060000;
imm32 r7, 0x70070000;
R0.L = LSHIFT R0.H BY R2.L;
R1.L = LSHIFT R1.H BY R2.L;
//rl2 = lshift (rh2 by rl2);
R3.L = LSHIFT R3.H BY R2.L;
R4.L = LSHIFT R4.H BY R2.L;
R5.L = LSHIFT R5.H BY R2.L;
R6.L = LSHIFT R6.H BY R2.L;
R7.L = LSHIFT R7.H BY R2.L;
CHECKREG r0, 0x10010000;
CHECKREG r1, 0x10010000;
//CHECKREG r2, 0x2002000f;
CHECKREG r3, 0x30030000;
CHECKREG r4, 0x40040000;
CHECKREG r5, 0x50050000;
CHECKREG r6, 0x60060000;
CHECKREG r7, 0x70070000;

imm32 r0, 0x10010001;
imm32 r1, 0x10010001;
imm32 r2, 0x20020002;
R3.L = -16;
imm32 r4, 0x40040004;
imm32 r5, 0x50050005;
imm32 r6, 0x60060006;
imm32 r7, 0x70070007;
R0.L = LSHIFT R0.H BY R3.L;
R1.L = LSHIFT R1.H BY R3.L;
R2.L = LSHIFT R2.H BY R3.L;
//rl3 = lshift (rh3 by rl3);
R4.L = LSHIFT R4.H BY R3.L;
R5.L = LSHIFT R5.H BY R3.L;
R6.L = LSHIFT R6.H BY R3.L;
R7.L = LSHIFT R7.H BY R3.L;
CHECKREG r0, 0x10010000;
CHECKREG r1, 0x10010000;
CHECKREG r2, 0x20020000;
//CHECKREG r3, 0x30030010;
CHECKREG r4, 0x40040000;
CHECKREG r5, 0x50050000;
CHECKREG r6, 0x60060000;
CHECKREG r7, 0x70070000;

// d_hi = ashft (d_lo BY d_lo)
// RLx by RLx
imm32 r0, 0x00000001;
imm32 r1, 0x00000001;
imm32 r2, 0x00000002;
imm32 r3, 0x00000003;
imm32 r4, 0x00000000;
imm32 r5, 0x00000005;
imm32 r6, 0x00000006;
imm32 r7, 0x00000007;
R0.H = LSHIFT R0.L BY R4.L;
R1.H = LSHIFT R1.L BY R4.L;
R2.H = LSHIFT R2.L BY R4.L;
R3.H = LSHIFT R3.L BY R4.L;
//rh4 = lshift (rl4 by rl4);
R5.H = LSHIFT R5.L BY R4.L;
R6.H = LSHIFT R6.L BY R4.L;
R7.H = LSHIFT R7.L BY R4.L;
CHECKREG r0, 0x00010001;
CHECKREG r1, 0x00010001;
CHECKREG r2, 0x00020002;
CHECKREG r3, 0x00030003;
//CHECKREG r4, 0x00040004;
CHECKREG r5, 0x00050005;
CHECKREG r6, 0x00060006;
CHECKREG r7, 0x00070007;

imm32 r0, 0x00000001;
imm32 r1, 0x00000001;
imm32 r2, 0x00000002;
imm32 r3, 0x00000003;
imm32 r4, 0x00000004;
R5.L = -1;
imm32 r6, 0x00000006;
imm32 r7, 0x00000007;
R0.H = LSHIFT R0.L BY R5.L;
R1.H = LSHIFT R1.L BY R5.L;
R2.H = LSHIFT R2.L BY R5.L;
R3.H = LSHIFT R3.L BY R5.L;
R4.H = LSHIFT R4.L BY R5.L;
//rh5 = lshift (rl5 by rl5);
R6.H = LSHIFT R6.L BY R5.L;
R7.H = LSHIFT R7.L BY R5.L;
CHECKREG r0, 0x00000001;
CHECKREG r1, 0x00000001;
CHECKREG r2, 0x00010002;
CHECKREG r3, 0x00010003;
CHECKREG r4, 0x00020004;
//CHECKREG r5, 0x00020005;
CHECKREG r6, 0x00030006;
CHECKREG r7, 0x00030007;


imm32 r0, 0x00001001;
imm32 r1, 0x00001001;
imm32 r1, 0x00002002;
imm32 r3, 0x00003003;
imm32 r4, 0x00004004;
imm32 r5, 0x00005005;
R6.L = -15;
imm32 r7, 0x00007007;
R0.H = LSHIFT R0.L BY R6.L;
R1.H = LSHIFT R1.L BY R6.L;
R2.H = LSHIFT R2.L BY R6.L;
R3.H = LSHIFT R3.L BY R6.L;
R4.H = LSHIFT R4.L BY R6.L;
R5.H = LSHIFT R5.L BY R6.L;
//rh6 = lshift (rl6 by rl6);
R7.H = LSHIFT R7.L BY R6.L;
CHECKREG r0, 0x00001001;
CHECKREG r1, 0x00002002;
CHECKREG r2, 0x00000002;
CHECKREG r3, 0x00003003;
CHECKREG r4, 0x00004004;
CHECKREG r5, 0x00005005;
//CHECKREG r6, 0x00006006;
CHECKREG r7, 0x00007007;

imm32 r0, 0x00001001;
imm32 r1, 0x00002001;
imm32 r2, 0x00002002;
imm32 r3, 0x00003003;
imm32 r4, 0x00004004;
imm32 r5, 0x00005005;
imm32 r6, 0x00006006;
R7.L = -16;
R0.H = LSHIFT R0.L BY R7.L;
R1.H = LSHIFT R1.L BY R7.L;
R2.H = LSHIFT R2.L BY R7.L;
R3.H = LSHIFT R3.L BY R7.L;
R4.H = LSHIFT R4.L BY R7.L;
R5.H = LSHIFT R5.L BY R7.L;
R6.H = LSHIFT R6.L BY R7.L;
R7.H = LSHIFT R7.L BY R7.L;
CHECKREG r0, 0x00001001;
CHECKREG r1, 0x00002001;
CHECKREG r2, 0x00002002;
CHECKREG r3, 0x00003003;
CHECKREG r4, 0x00004004;
CHECKREG r5, 0x00005005;
CHECKREG r6, 0x00006006;
//CHECKREG r7, 0x00007007;

// d_lo = ashft (d_hi BY d_lo)
// RHx by RLx
imm32 r0, 0x00010000;
imm32 r1, 0x00010000;
imm32 r2, 0x00020000;
imm32 r3, 0x00030000;
R4.L = -1;
imm32 r5, 0x00050000;
imm32 r6, 0x00060000;
imm32 r7, 0x00070000;
R0.H = LSHIFT R0.H BY R4.L;
R1.H = LSHIFT R1.H BY R4.L;
R2.H = LSHIFT R2.H BY R4.L;
R3.H = LSHIFT R3.H BY R4.L;
//rh4 = lshift (rh4 by rl4);
R5.H = LSHIFT R5.H BY R4.L;
R6.H = LSHIFT R6.H BY R4.L;
R7.H = LSHIFT R7.H BY R4.L;
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00000000;
CHECKREG r2, 0x00010000;
CHECKREG r3, 0x00010000;
//CHECKREG r4, 0x00020000;
CHECKREG r5, 0x00020000;
CHECKREG r6, 0x00030000;
CHECKREG r7, 0x00030000;

imm32 r0, 0x10010000;
imm32 r1, 0x10010000;
imm32 r2, 0x20020000;
imm32 r3, 0x30030000;
imm32 r4, 0x40040000;
R5.L = -1;
imm32 r6, 0x60060000;
imm32 r7, 0x70070000;
R0.H = LSHIFT R0.H BY R5.L;
R1.H = LSHIFT R1.H BY R5.L;
R2.H = LSHIFT R2.H BY R5.L;
R3.H = LSHIFT R3.H BY R5.L;
R4.H = LSHIFT R4.H BY R5.L;
//rh5 = lshift (rh5 by rl5);
R6.H = LSHIFT R6.H BY R5.L;
R7.H = LSHIFT R7.H BY R5.L;
CHECKREG r0, 0x08000000;
CHECKREG r1, 0x08000000;
CHECKREG r2, 0x10010000;
CHECKREG r3, 0x18010000;
CHECKREG r4, 0x20020000;
//CHECKREG r5, 0x28020000;
CHECKREG r6, 0x30030000;
CHECKREG r7, 0x38030000;


imm32 r0, 0x10010000;
imm32 r1, 0x10010000;
imm32 r2, 0x20020000;
imm32 r3, 0x30030000;
imm32 r4, 0x40040000;
imm32 r5, 0x50050000;
R6.L = -15;
imm32 r7, 0x70070000;
R0.L = LSHIFT R0.H BY R6.L;
R1.L = LSHIFT R1.H BY R6.L;
R2.L = LSHIFT R2.H BY R6.L;
R3.L = LSHIFT R3.H BY R6.L;
R4.L = LSHIFT R4.H BY R6.L;
R5.L = LSHIFT R5.H BY R6.L;
//rl6 = lshift (rh6 by rl6);
R7.L = LSHIFT R7.H BY R6.L;
CHECKREG r0, 0x10010000;
CHECKREG r1, 0x10010000;
CHECKREG r2, 0x20020000;
CHECKREG r3, 0x30030000;
CHECKREG r4, 0x40040000;
CHECKREG r5, 0x50050000;
//CHECKREG r6, 0x60060000;
CHECKREG r7, 0x70070000;

imm32 r0, 0x10010000;
imm32 r1, 0x10010000;
imm32 r2, 0x20020000;
imm32 r2, 0x30030000;
imm32 r4, 0x40040000;
imm32 r5, 0x50050000;
imm32 r6, 0x60060000;
R7.L = -16;
R0.H = LSHIFT R0.H BY R7.L;
R1.H = LSHIFT R1.H BY R7.L;
R2.H = LSHIFT R2.H BY R7.L;
R3.H = LSHIFT R3.H BY R7.L;
R4.H = LSHIFT R4.H BY R7.L;
R5.H = LSHIFT R5.H BY R7.L;
R6.H = LSHIFT R6.H BY R7.L;
//rh7 = lshift (rh7 by rl7);
CHECKREG r0, 0x00000000;
CHECKREG r1, 0x00000000;
CHECKREG r2, 0x00000000;
CHECKREG r3, 0x00000000;
CHECKREG r4, 0x00000000;
CHECKREG r5, 0x00000000;
CHECKREG r6, 0x00000000;
//CHECKREG r7, -16;
pass

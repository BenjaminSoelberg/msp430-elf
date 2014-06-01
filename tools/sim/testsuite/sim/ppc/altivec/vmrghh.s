# PSIM altivec vmrghh testcase
# mach: altivec
# as(altivecle): -mlittle
# ld(altivecle): -EL

	.include "testutils.inc"

	start

	.data
	.p2align 4
a_foo:	# v2
	.short	0,  1,  2,  3
	.short	4,  5,  6,  7
b_foo:	# v3
	.short	16, 17, 18, 19
	.short	20, 21, 22, 23
d_foo:	# v5
	.short  0,  16, 1,  17
	.short	2,  18, 3,  19

	.text
	.global vmrghh
vmrghh:
	load_vr		%v2, %r3, a_foo
	load_vr		%v3, %r3, b_foo
	load_vr		%v5, %r3, d_foo

	vmrghh		%v9, %v2, %v3
	vcmpequh.	%v10, %v9, %v5
	bc		12, 24, pass

fail:
	fail

pass:
	pass

In archive libm.a:

cadd.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_cadd>:
   0:	48e7 3030      	moveml %d2-%d3/%a2-%a3,%sp@-
   4:	2449           	moveal %a1,%a2
   6:	47f9 0000 0000 	lea 0 <_cadd>,%a3
   c:	2f2f 0020      	movel %sp@(32),%sp@-
  10:	2f2f 0020      	movel %sp@(32),%sp@-
  14:	2f2f 0038      	movel %sp@(56),%sp@-
  18:	2f2f 0038      	movel %sp@(56),%sp@-
  1c:	4e93           	jsr %a3@
  1e:	4fef 0010      	lea %sp@(16),%sp
  22:	2600           	movel %d0,%d3
  24:	2401           	movel %d1,%d2
  26:	2f2f 0018      	movel %sp@(24),%sp@-
  2a:	2f2f 0018      	movel %sp@(24),%sp@-
  2e:	2f2f 0030      	movel %sp@(48),%sp@-
  32:	2f2f 0030      	movel %sp@(48),%sp@-
  36:	4e93           	jsr %a3@
  38:	4fef 0010      	lea %sp@(16),%sp
  3c:	2480           	movel %d0,%a2@
  3e:	2541 0004      	movel %d1,%a2@(4)
  42:	2003           	movel %d3,%d0
  44:	2202           	movel %d2,%d1
  46:	2540 0008      	movel %d0,%a2@(8)
  4a:	2541 000c      	movel %d1,%a2@(12)
  4e:	200a           	movel %a2,%d0
  50:	4cdf 0c0c      	moveml %sp@+,%d2-%d3/%a2-%a3
  54:	4e75           	rts
	...

acos.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_acos>:
   0:	4e56 ffe0      	linkw %fp,#-32
   4:	48e7 3c30      	moveml %d2-%d5/%a2-%a3,%sp@-
   8:	242e 0008      	movel %fp@(8),%d2
   c:	262e 000c      	movel %fp@(12),%d3
  10:	45f9 0000 0000 	lea 0 <_acos>,%a2
  16:	42a7           	clrl %sp@-
  18:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  1e:	2f03           	movel %d3,%sp@-
  20:	2f02           	movel %d2,%sp@-
  22:	4e92           	jsr %a2@
  24:	4fef 0010      	lea %sp@(16),%sp
  28:	4a80           	tstl %d0
  2a:	6e7e           	bgts aa <_acos+0xaa>
  2c:	42a7           	clrl %sp@-
  2e:	2f3c bff0 0000 	movel #-1074790400,%sp@-
  34:	2f03           	movel %d3,%sp@-
  36:	2f02           	movel %d2,%sp@-
  38:	4eb9 0000 0000 	jsr 0 <_acos>
  3e:	4fef 0010      	lea %sp@(16),%sp
  42:	4a80           	tstl %d0
  44:	6d64           	blts aa <_acos+0xaa>
  46:	47f9 0000 0000 	lea 0 <_acos>,%a3
  4c:	42a7           	clrl %sp@-
  4e:	42a7           	clrl %sp@-
  50:	2f03           	movel %d3,%sp@-
  52:	2f02           	movel %d2,%sp@-
  54:	4e93           	jsr %a3@
  56:	4fef 0010      	lea %sp@(16),%sp
  5a:	4a80           	tstl %d0
  5c:	6700 00b8      	beqw 116 <_acos+0x116>
  60:	42a7           	clrl %sp@-
  62:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  68:	2f03           	movel %d3,%sp@-
  6a:	2f02           	movel %d2,%sp@-
  6c:	4e93           	jsr %a3@
  6e:	4fef 0010      	lea %sp@(16),%sp
  72:	4a80           	tstl %d0
  74:	6700 008e      	beqw 104 <_acos+0x104>
  78:	42a7           	clrl %sp@-
  7a:	2f3c bff0 0000 	movel #-1074790400,%sp@-
  80:	2f03           	movel %d3,%sp@-
  82:	2f02           	movel %d2,%sp@-
  84:	4e93           	jsr %a3@
  86:	4fef 0010      	lea %sp@(16),%sp
  8a:	4a80           	tstl %d0
  8c:	6600 00a2      	bnew 130 <_acos+0x130>
  90:	283c 4009 21fb 	movel #1074340347,%d4
  96:	2a3c 5444 2d18 	movel #1413754136,%d5
  9c:	2004           	movel %d4,%d0
  9e:	2205           	movel %d5,%d1
  a0:	4cee 0c3c ffc8 	moveml %fp@(-56),%d2-%d5/%a2-%a3
  a6:	4e5e           	unlk %fp
  a8:	4e75           	rts
  aa:	7001           	moveq #1,%d0
  ac:	2d40 ffe0      	movel %d0,%fp@(-32)
  b0:	2d7c 0000 01c8 	movel #456,%fp@(-28)
  b6:	ffe4 
  b8:	2d42 ffe8      	movel %d2,%fp@(-24)
  bc:	2d43 ffec      	movel %d3,%fp@(-20)
  c0:	486e ffe0      	pea %fp@(-32)
  c4:	4eb9 0000 0000 	jsr 0 <_acos>
  ca:	588f           	addql #4,%sp
  cc:	4a80           	tstl %d0
  ce:	661e           	bnes ee <_acos+0xee>
  d0:	7059           	moveq #89,%d0
  d2:	23c0 0000 0000 	movel %d0,0 <_acos>
  d8:	283c 7ff0 0000 	movel #2146435072,%d4
  de:	4285           	clrl %d5
  e0:	2004           	movel %d4,%d0
  e2:	2205           	movel %d5,%d1
  e4:	4cee 0c3c ffc8 	moveml %fp@(-56),%d2-%d5/%a2-%a3
  ea:	4e5e           	unlk %fp
  ec:	4e75           	rts
  ee:	282e fff8      	movel %fp@(-8),%d4
  f2:	2a2e fffc      	movel %fp@(-4),%d5
  f6:	2004           	movel %d4,%d0
  f8:	2205           	movel %d5,%d1
  fa:	4cee 0c3c ffc8 	moveml %fp@(-56),%d2-%d5/%a2-%a3
 100:	4e5e           	unlk %fp
 102:	4e75           	rts
 104:	4284           	clrl %d4
 106:	4285           	clrl %d5
 108:	2004           	movel %d4,%d0
 10a:	2205           	movel %d5,%d1
 10c:	4cee 0c3c ffc8 	moveml %fp@(-56),%d2-%d5/%a2-%a3
 112:	4e5e           	unlk %fp
 114:	4e75           	rts
 116:	283c 3ff9 21fb 	movel #1073291771,%d4
 11c:	2a3c 5444 2d18 	movel #1413754136,%d5
 122:	2004           	movel %d4,%d0
 124:	2205           	movel %d5,%d1
 126:	4cee 0c3c ffc8 	moveml %fp@(-56),%d2-%d5/%a2-%a3
 12c:	4e5e           	unlk %fp
 12e:	4e75           	rts
 130:	2f03           	movel %d3,%sp@-
 132:	2f02           	movel %d2,%sp@-
 134:	2f03           	movel %d3,%sp@-
 136:	2f02           	movel %d2,%sp@-
 138:	4eb9 0000 0000 	jsr 0 <_acos>
 13e:	4fef 000c      	lea %sp@(12),%sp
 142:	2e81           	movel %d1,%sp@
 144:	2f00           	movel %d0,%sp@-
 146:	42a7           	clrl %sp@-
 148:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
 14e:	4eb9 0000 0000 	jsr 0 <_acos>
 154:	4fef 000c      	lea %sp@(12),%sp
 158:	2e81           	movel %d1,%sp@
 15a:	2f00           	movel %d0,%sp@-
 15c:	4eb9 0000 0000 	jsr 0 <_acos>
 162:	2f03           	movel %d3,%sp@-
 164:	2f02           	movel %d2,%sp@-
 166:	2f01           	movel %d1,%sp@-
 168:	2f00           	movel %d0,%sp@-
 16a:	4eb9 0000 0000 	jsr 0 <_acos>
 170:	4fef 000c      	lea %sp@(12),%sp
 174:	2e81           	movel %d1,%sp@
 176:	2f00           	movel %d0,%sp@-
 178:	4eb9 0000 0000 	jsr 0 <_acos>
 17e:	2800           	movel %d0,%d4
 180:	2a01           	movel %d1,%d5
 182:	4fef 000c      	lea %sp@(12),%sp
 186:	4297           	clrl %sp@
 188:	42a7           	clrl %sp@-
 18a:	2f03           	movel %d3,%sp@-
 18c:	2f02           	movel %d2,%sp@-
 18e:	4e92           	jsr %a2@
 190:	4fef 0010      	lea %sp@(16),%sp
 194:	4a80           	tstl %d0
 196:	6e00 ff04      	bgtw 9c <_acos+0x9c>
 19a:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 1a0:	2f3c 4009 21fb 	movel #1074340347,%sp@-
 1a6:	2f05           	movel %d5,%sp@-
 1a8:	2f04           	movel %d4,%sp@-
 1aa:	4eb9 0000 0000 	jsr 0 <_acos>
 1b0:	4fef 0010      	lea %sp@(16),%sp
 1b4:	2240           	moveal %d0,%a1
 1b6:	2809           	movel %a1,%d4
 1b8:	2a01           	movel %d1,%d5
 1ba:	2004           	movel %d4,%d0
 1bc:	2205           	movel %d5,%d1
 1be:	4cee 0c3c ffc8 	moveml %fp@(-56),%d2-%d5/%a2-%a3
 1c4:	4e5e           	unlk %fp
 1c6:	4e75           	rts

Disassembly of section .data:

000001c8 <.data>:
 1c8:	6163           	bsrs 22d <_acos+0x22d>
 1ca:	6f73           	bles 23f <_acos+0x23f>
 1cc:	0000 0000      	orib #0,%d0

acosh.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_acosh>:
   0:	2f03           	movel %d3,%sp@-
   2:	2f02           	movel %d2,%sp@-
   4:	242f 000c      	movel %sp@(12),%d2
   8:	262f 0010      	movel %sp@(16),%d3
   c:	42a7           	clrl %sp@-
   e:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  14:	2f03           	movel %d3,%sp@-
  16:	2f02           	movel %d2,%sp@-
  18:	4eb9 0000 0000 	jsr 0 <_acosh>
  1e:	4fef 0010      	lea %sp@(16),%sp
  22:	4a80           	tstl %d0
  24:	6d00 00ea      	bltw 110 <_acosh+0x110>
  28:	2f3c 5fb6 27b0 	movel #1605773232,%sp@-
  2e:	2f3c 43e6 a09c 	movel #1139187868,%sp@-
  34:	2f03           	movel %d3,%sp@-
  36:	2f02           	movel %d2,%sp@-
  38:	4eb9 0000 0000 	jsr 0 <_acosh>
  3e:	4fef 0010      	lea %sp@(16),%sp
  42:	4a80           	tstl %d0
  44:	6f60           	bles a6 <_acosh+0xa6>
  46:	7003           	moveq #3,%d0
  48:	23c0 0000 0000 	movel %d0,0 <_acosh>
  4e:	23fc 0000 0178 	movel #376,4 <_acosh+0x4>
  54:	0000 0004 
  58:	23c2 0000 0008 	movel %d2,8 <_acosh+0x8>
  5e:	23c3 0000 000c 	movel %d3,c <_acosh+0xc>
  64:	4879 0000 0000 	pea 0 <_acosh>
  6a:	4eb9 0000 0000 	jsr 0 <_acosh>
  70:	588f           	addql #4,%sp
  72:	4a80           	tstl %d0
  74:	6600 00ca      	bnew 140 <_acosh+0x140>
  78:	7058           	moveq #88,%d0
  7a:	23c0 0000 0000 	movel %d0,0 <_acosh>
  80:	23fc 4046 5a9f 	movel #1078352543,18 <_acosh+0x18>
  86:	0000 0018 
  8a:	23fc 7981 7c46 	movel #2038529094,1c <_acosh+0x1c>
  90:	0000 001c 
  94:	203c 4046 5a9f 	movel #1078352543,%d0
  9a:	223c 7981 7c46 	movel #2038529094,%d1
  a0:	241f           	movel %sp@+,%d2
  a2:	261f           	movel %sp@+,%d3
  a4:	4e75           	rts
  a6:	2f03           	movel %d3,%sp@-
  a8:	2f02           	movel %d2,%sp@-
  aa:	2f03           	movel %d3,%sp@-
  ac:	2f02           	movel %d2,%sp@-
  ae:	4eb9 0000 0000 	jsr 0 <_acosh>
  b4:	4fef 000c      	lea %sp@(12),%sp
  b8:	4297           	clrl %sp@
  ba:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  c0:	2f01           	movel %d1,%sp@-
  c2:	2f00           	movel %d0,%sp@-
  c4:	4eb9 0000 0000 	jsr 0 <_acosh>
  ca:	4fef 000c      	lea %sp@(12),%sp
  ce:	2e81           	movel %d1,%sp@
  d0:	2f00           	movel %d0,%sp@-
  d2:	4eb9 0000 0000 	jsr 0 <_acosh>
  d8:	2f03           	movel %d3,%sp@-
  da:	2f02           	movel %d2,%sp@-
  dc:	2f01           	movel %d1,%sp@-
  de:	2f00           	movel %d0,%sp@-
  e0:	4eb9 0000 0000 	jsr 0 <_acosh>
  e6:	4fef 000c      	lea %sp@(12),%sp
  ea:	2e81           	movel %d1,%sp@
  ec:	2f00           	movel %d0,%sp@-
  ee:	4eb9 0000 0000 	jsr 0 <_acosh>
  f4:	2600           	movel %d0,%d3
  f6:	2043           	moveal %d3,%a0
  f8:	2241           	moveal %d1,%a1
  fa:	23c8 0000 0018 	movel %a0,18 <_acosh+0x18>
 100:	23c9 0000 001c 	movel %a1,1c <_acosh+0x1c>
 106:	4fef 0010      	lea %sp@(16),%sp
 10a:	241f           	movel %sp@+,%d2
 10c:	261f           	movel %sp@+,%d3
 10e:	4e75           	rts
 110:	7001           	moveq #1,%d0
 112:	23c0 0000 0000 	movel %d0,0 <_acosh>
 118:	23fc 0000 0178 	movel #376,4 <_acosh+0x4>
 11e:	0000 0004 
 122:	23c2 0000 0008 	movel %d2,8 <_acosh+0x8>
 128:	23c3 0000 000c 	movel %d3,c <_acosh+0xc>
 12e:	4879 0000 0000 	pea 0 <_acosh>
 134:	4eb9 0000 0000 	jsr 0 <_acosh>
 13a:	588f           	addql #4,%sp
 13c:	4a80           	tstl %d0
 13e:	6712           	beqs 152 <_acosh+0x152>
 140:	2039 0000 0018 	movel 18 <_acosh+0x18>,%d0
 146:	2239 0000 001c 	movel 1c <_acosh+0x1c>,%d1
 14c:	241f           	movel %sp@+,%d2
 14e:	261f           	movel %sp@+,%d3
 150:	4e75           	rts
 152:	7058           	moveq #88,%d0
 154:	23c0 0000 0000 	movel %d0,0 <_acosh>
 15a:	23fc 7ff0 0000 	movel #2146435072,18 <_acosh+0x18>
 160:	0000 0018 
 164:	42b9 0000 001c 	clrl 1c <_acosh+0x1c>
 16a:	203c 7ff0 0000 	movel #2146435072,%d0
 170:	7200           	moveq #0,%d1
 172:	241f           	movel %sp@+,%d2
 174:	261f           	movel %sp@+,%d3
 176:	4e75           	rts

Disassembly of section .data:

00000178 <.data>:
 178:	6163           	bsrs 1dd <_acosh+0x1dd>
 17a:	6f73           	bles 1ef <_acosh+0x1ef>
 17c:	6800 0000      	bvcw 17e <.data+0x6>

asin.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_asin>:
   0:	48e7 3020      	moveml %d2-%d3/%a2,%sp@-
   4:	242f 0010      	movel %sp@(16),%d2
   8:	262f 0014      	movel %sp@(20),%d3
   c:	42a7           	clrl %sp@-
   e:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  14:	2f03           	movel %d3,%sp@-
  16:	2f02           	movel %d2,%sp@-
  18:	4eb9 0000 0000 	jsr 0 <_asin>
  1e:	4fef 0010      	lea %sp@(16),%sp
  22:	4a80           	tstl %d0
  24:	6e00 008c      	bgtw b2 <_asin+0xb2>
  28:	42a7           	clrl %sp@-
  2a:	2f3c bff0 0000 	movel #-1074790400,%sp@-
  30:	2f03           	movel %d3,%sp@-
  32:	2f02           	movel %d2,%sp@-
  34:	4eb9 0000 0000 	jsr 0 <_asin>
  3a:	4fef 0010      	lea %sp@(16),%sp
  3e:	4a80           	tstl %d0
  40:	6d70           	blts b2 <_asin+0xb2>
  42:	45f9 0000 0000 	lea 0 <_asin>,%a2
  48:	42a7           	clrl %sp@-
  4a:	42a7           	clrl %sp@-
  4c:	2f03           	movel %d3,%sp@-
  4e:	2f02           	movel %d2,%sp@-
  50:	4e92           	jsr %a2@
  52:	4fef 0010      	lea %sp@(16),%sp
  56:	4a80           	tstl %d0
  58:	6700 00e6      	beqw 140 <_asin+0x140>
  5c:	42a7           	clrl %sp@-
  5e:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  64:	2f03           	movel %d3,%sp@-
  66:	2f02           	movel %d2,%sp@-
  68:	4e92           	jsr %a2@
  6a:	4fef 0010      	lea %sp@(16),%sp
  6e:	4a80           	tstl %d0
  70:	6700 00a8      	beqw 11a <_asin+0x11a>
  74:	42a7           	clrl %sp@-
  76:	2f3c bff0 0000 	movel #-1074790400,%sp@-
  7c:	2f03           	movel %d3,%sp@-
  7e:	2f02           	movel %d2,%sp@-
  80:	4e92           	jsr %a2@
  82:	4fef 0010      	lea %sp@(16),%sp
  86:	4a80           	tstl %d0
  88:	6600 00ca      	bnew 154 <_asin+0x154>
  8c:	23fc bff9 21fb 	movel #-1074191877,18 <_asin+0x18>
  92:	0000 0018 
  96:	23fc 5444 2d18 	movel #1413754136,1c <_asin+0x1c>
  9c:	0000 001c 
  a0:	203c bff9 21fb 	movel #-1074191877,%d0
  a6:	223c 5444 2d18 	movel #1413754136,%d1
  ac:	4cdf 040c      	moveml %sp@+,%d2-%d3/%a2
  b0:	4e75           	rts
  b2:	7001           	moveq #1,%d0
  b4:	23c0 0000 0000 	movel %d0,0 <_asin>
  ba:	23fc 0000 01c0 	movel #448,4 <_asin+0x4>
  c0:	0000 0004 
  c4:	23c2 0000 0008 	movel %d2,8 <_asin+0x8>
  ca:	23c3 0000 000c 	movel %d3,c <_asin+0xc>
  d0:	4879 0000 0000 	pea 0 <_asin>
  d6:	4eb9 0000 0000 	jsr 0 <_asin>
  dc:	588f           	addql #4,%sp
  de:	4a80           	tstl %d0
  e0:	6626           	bnes 108 <_asin+0x108>
  e2:	7059           	moveq #89,%d0
  e4:	23c0 0000 0000 	movel %d0,0 <_asin>
  ea:	23fc 7ff0 0000 	movel #2146435072,18 <_asin+0x18>
  f0:	0000 0018 
  f4:	42b9 0000 001c 	clrl 1c <_asin+0x1c>
  fa:	203c 7ff0 0000 	movel #2146435072,%d0
 100:	7200           	moveq #0,%d1
 102:	4cdf 040c      	moveml %sp@+,%d2-%d3/%a2
 106:	4e75           	rts
 108:	2039 0000 0018 	movel 18 <_asin+0x18>,%d0
 10e:	2239 0000 001c 	movel 1c <_asin+0x1c>,%d1
 114:	4cdf 040c      	moveml %sp@+,%d2-%d3/%a2
 118:	4e75           	rts
 11a:	23fc 3ff9 21fb 	movel #1073291771,18 <_asin+0x18>
 120:	0000 0018 
 124:	23fc 5444 2d18 	movel #1413754136,1c <_asin+0x1c>
 12a:	0000 001c 
 12e:	203c 3ff9 21fb 	movel #1073291771,%d0
 134:	223c 5444 2d18 	movel #1413754136,%d1
 13a:	4cdf 040c      	moveml %sp@+,%d2-%d3/%a2
 13e:	4e75           	rts
 140:	42b9 0000 0018 	clrl 18 <_asin+0x18>
 146:	42b9 0000 001c 	clrl 1c <_asin+0x1c>
 14c:	7200           	moveq #0,%d1
 14e:	4cdf 040c      	moveml %sp@+,%d2-%d3/%a2
 152:	4e75           	rts
 154:	2f03           	movel %d3,%sp@-
 156:	2f02           	movel %d2,%sp@-
 158:	2f03           	movel %d3,%sp@-
 15a:	2f02           	movel %d2,%sp@-
 15c:	4eb9 0000 0000 	jsr 0 <_asin>
 162:	4fef 000c      	lea %sp@(12),%sp
 166:	2e81           	movel %d1,%sp@
 168:	2f00           	movel %d0,%sp@-
 16a:	42a7           	clrl %sp@-
 16c:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
 172:	4eb9 0000 0000 	jsr 0 <_asin>
 178:	4fef 000c      	lea %sp@(12),%sp
 17c:	2e81           	movel %d1,%sp@
 17e:	2f00           	movel %d0,%sp@-
 180:	4eb9 0000 0000 	jsr 0 <_asin>
 186:	2f01           	movel %d1,%sp@-
 188:	2f00           	movel %d0,%sp@-
 18a:	2f03           	movel %d3,%sp@-
 18c:	2f02           	movel %d2,%sp@-
 18e:	4eb9 0000 0000 	jsr 0 <_asin>
 194:	4fef 000c      	lea %sp@(12),%sp
 198:	2e81           	movel %d1,%sp@
 19a:	2f00           	movel %d0,%sp@-
 19c:	4eb9 0000 0000 	jsr 0 <_asin>
 1a2:	2440           	moveal %d0,%a2
 1a4:	204a           	moveal %a2,%a0
 1a6:	2241           	moveal %d1,%a1
 1a8:	23c8 0000 0018 	movel %a0,18 <_asin+0x18>
 1ae:	23c9 0000 001c 	movel %a1,1c <_asin+0x1c>
 1b4:	4fef 0010      	lea %sp@(16),%sp
 1b8:	4cdf 040c      	moveml %sp@+,%d2-%d3/%a2
 1bc:	4e75           	rts
	...

Disassembly of section .data:

000001c0 <.data>:
 1c0:	6173           	bsrs 235 <_asin+0x235>
 1c2:	696e           	bvss 232 <_asin+0x232>
 1c4:	0000 0000      	orib #0,%d0

asinh.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_asinh>:
   0:	48e7 3020      	moveml %d2-%d3/%a2,%sp@-
   4:	242f 0010      	movel %sp@(16),%d2
   8:	262f 0014      	movel %sp@(20),%d3
   c:	2f3c 5fb6 27b0 	movel #1605773232,%sp@-
  12:	2f3c c3e6 a09c 	movel #-1008295780,%sp@-
  18:	2f03           	movel %d3,%sp@-
  1a:	2f02           	movel %d2,%sp@-
  1c:	4eb9 0000 0000 	jsr 0 <_asinh>
  22:	4fef 0010      	lea %sp@(16),%sp
  26:	4a80           	tstl %d0
  28:	6d1e           	blts 48 <_asinh+0x48>
  2a:	2f3c 5fb6 27b0 	movel #1605773232,%sp@-
  30:	2f3c 43e6 a09c 	movel #1139187868,%sp@-
  36:	2f03           	movel %d3,%sp@-
  38:	2f02           	movel %d2,%sp@-
  3a:	4eb9 0000 0000 	jsr 0 <_asinh>
  40:	4fef 0010      	lea %sp@(16),%sp
  44:	4a80           	tstl %d0
  46:	6f70           	bles b8 <_asinh+0xb8>
  48:	7003           	moveq #3,%d0
  4a:	23c0 0000 0000 	movel %d0,0 <_asinh>
  50:	23fc 0000 0120 	movel #288,4 <_asinh+0x4>
  56:	0000 0004 
  5a:	23c2 0000 0008 	movel %d2,8 <_asinh+0x8>
  60:	23c3 0000 000c 	movel %d3,c <_asinh+0xc>
  66:	4879 0000 0000 	pea 0 <_asinh>
  6c:	4eb9 0000 0000 	jsr 0 <_asinh>
  72:	588f           	addql #4,%sp
  74:	4a80           	tstl %d0
  76:	662e           	bnes a6 <_asinh+0xa6>
  78:	7058           	moveq #88,%d0
  7a:	23c0 0000 0000 	movel %d0,0 <_asinh>
  80:	23fc 4046 5a9f 	movel #1078352543,18 <_asinh+0x18>
  86:	0000 0018 
  8a:	23fc 7981 7c46 	movel #2038529094,1c <_asinh+0x1c>
  90:	0000 001c 
  94:	203c 4046 5a9f 	movel #1078352543,%d0
  9a:	223c 7981 7c46 	movel #2038529094,%d1
  a0:	4cdf 040c      	moveml %sp@+,%d2-%d3/%a2
  a4:	4e75           	rts
  a6:	2039 0000 0018 	movel 18 <_asinh+0x18>,%d0
  ac:	2239 0000 001c 	movel 1c <_asinh+0x1c>,%d1
  b2:	4cdf 040c      	moveml %sp@+,%d2-%d3/%a2
  b6:	4e75           	rts
  b8:	2f03           	movel %d3,%sp@-
  ba:	2f02           	movel %d2,%sp@-
  bc:	2f03           	movel %d3,%sp@-
  be:	2f02           	movel %d2,%sp@-
  c0:	4eb9 0000 0000 	jsr 0 <_asinh>
  c6:	4fef 0010      	lea %sp@(16),%sp
  ca:	45f9 0000 0000 	lea 0 <_asinh>,%a2
  d0:	42a7           	clrl %sp@-
  d2:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  d8:	2f01           	movel %d1,%sp@-
  da:	2f00           	movel %d0,%sp@-
  dc:	4e92           	jsr %a2@
  de:	4fef 000c      	lea %sp@(12),%sp
  e2:	2e81           	movel %d1,%sp@
  e4:	2f00           	movel %d0,%sp@-
  e6:	4eb9 0000 0000 	jsr 0 <_asinh>
  ec:	2f03           	movel %d3,%sp@-
  ee:	2f02           	movel %d2,%sp@-
  f0:	2f01           	movel %d1,%sp@-
  f2:	2f00           	movel %d0,%sp@-
  f4:	4e92           	jsr %a2@
  f6:	4fef 000c      	lea %sp@(12),%sp
  fa:	2e81           	movel %d1,%sp@
  fc:	2f00           	movel %d0,%sp@-
  fe:	4eb9 0000 0000 	jsr 0 <_asinh>
 104:	2440           	moveal %d0,%a2
 106:	204a           	moveal %a2,%a0
 108:	2241           	moveal %d1,%a1
 10a:	23c8 0000 0018 	movel %a0,18 <_asinh+0x18>
 110:	23c9 0000 001c 	movel %a1,1c <_asinh+0x1c>
 116:	4fef 0010      	lea %sp@(16),%sp
 11a:	4cdf 040c      	moveml %sp@+,%d2-%d3/%a2
 11e:	4e75           	rts

Disassembly of section .data:

00000120 <.data>:
 120:	6173           	bsrs 195 <_asinh+0x195>
 122:	696e           	bvss 192 <_asinh+0x192>
 124:	6800 0000      	bvcw 126 <.data+0x6>

atan2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_atan2>:
   0:	48e7 3f20      	moveml %d2-%d7/%a2,%sp@-
   4:	2c2f 0020      	movel %sp@(32),%d6
   8:	2e2f 0024      	movel %sp@(36),%d7
   c:	282f 0028      	movel %sp@(40),%d4
  10:	2a2f 002c      	movel %sp@(44),%d5
  14:	45f9 0000 0000 	lea 0 <_atan2>,%a2
  1a:	42a7           	clrl %sp@-
  1c:	42a7           	clrl %sp@-
  1e:	2f05           	movel %d5,%sp@-
  20:	2f04           	movel %d4,%sp@-
  22:	4e92           	jsr %a2@
  24:	4fef 0010      	lea %sp@(16),%sp
  28:	4a80           	tstl %d0
  2a:	6630           	bnes 5c <_atan2+0x5c>
  2c:	42a7           	clrl %sp@-
  2e:	42a7           	clrl %sp@-
  30:	2f07           	movel %d7,%sp@-
  32:	2f06           	movel %d6,%sp@-
  34:	4e92           	jsr %a2@
  36:	4fef 0010      	lea %sp@(16),%sp
  3a:	4a80           	tstl %d0
  3c:	6700 008a      	beqw c8 <_atan2+0xc8>
  40:	243c 3ff9 21fb 	movel #1073291771,%d2
  46:	263c 5444 2d18 	movel #1413754136,%d3
  4c:	4a86           	tstl %d6
  4e:	6d00 00d6      	bltw 126 <_atan2+0x126>
  52:	2002           	movel %d2,%d0
  54:	2203           	movel %d3,%d1
  56:	4cdf 04fc      	moveml %sp@+,%d2-%d7/%a2
  5a:	4e75           	rts
  5c:	2f05           	movel %d5,%sp@-
  5e:	2f04           	movel %d4,%sp@-
  60:	2f07           	movel %d7,%sp@-
  62:	2f06           	movel %d6,%sp@-
  64:	4eb9 0000 0000 	jsr 0 <_atan2>
  6a:	4fef 000c      	lea %sp@(12),%sp
  6e:	2e81           	movel %d1,%sp@
  70:	2f00           	movel %d0,%sp@-
  72:	4eb9 0000 0000 	jsr 0 <_atan2>
  78:	508f           	addql #8,%sp
  7a:	2400           	movel %d0,%d2
  7c:	2601           	movel %d1,%d3
  7e:	42a7           	clrl %sp@-
  80:	42a7           	clrl %sp@-
  82:	2f05           	movel %d5,%sp@-
  84:	2f04           	movel %d4,%sp@-
  86:	4eb9 0000 0000 	jsr 0 <_atan2>
  8c:	4fef 0010      	lea %sp@(16),%sp
  90:	4a80           	tstl %d0
  92:	6cbe           	bges 52 <_atan2+0x52>
  94:	203c 4009 21fb 	movel #1074340347,%d0
  9a:	223c 5444 2d18 	movel #1413754136,%d1
  a0:	4a86           	tstl %d6
  a2:	6d00 0098      	bltw 13c <_atan2+0x13c>
  a6:	2f01           	movel %d1,%sp@-
  a8:	2f00           	movel %d0,%sp@-
  aa:	2f03           	movel %d3,%sp@-
  ac:	2f02           	movel %d2,%sp@-
  ae:	4eb9 0000 0000 	jsr 0 <_atan2>
  b4:	4fef 0010      	lea %sp@(16),%sp
  b8:	2240           	moveal %d0,%a1
  ba:	2409           	movel %a1,%d2
  bc:	2601           	movel %d1,%d3
  be:	2002           	movel %d2,%d0
  c0:	2203           	movel %d3,%d1
  c2:	4cdf 04fc      	moveml %sp@+,%d2-%d7/%a2
  c6:	4e75           	rts
  c8:	103c 0001      	moveb #1,%d0
  cc:	23c0 0000 0000 	movel %d0,0 <_atan2>
  d2:	23fc 0000 0178 	movel #376,4 <_atan2+0x4>
  d8:	0000 0004 
  dc:	23c4 0000 0008 	movel %d4,8 <_atan2+0x8>
  e2:	23c5 0000 000c 	movel %d5,c <_atan2+0xc>
  e8:	23fc 7ff0 0000 	movel #2146435072,18 <_atan2+0x18>
  ee:	0000 0018 
  f2:	42b9 0000 001c 	clrl 1c <_atan2+0x1c>
  f8:	4879 0000 0000 	pea 0 <_atan2>
  fe:	4eb9 0000 0000 	jsr 0 <_atan2>
 104:	588f           	addql #4,%sp
 106:	4a80           	tstl %d0
 108:	665a           	bnes 164 <_atan2+0x164>
 10a:	103c 0059      	moveb #89,%d0
 10e:	23c0 0000 0000 	movel %d0,0 <_atan2>
 114:	243c 7ff0 0000 	movel #2146435072,%d2
 11a:	4283           	clrl %d3
 11c:	2002           	movel %d2,%d0
 11e:	2203           	movel %d3,%d1
 120:	4cdf 04fc      	moveml %sp@+,%d2-%d7/%a2
 124:	4e75           	rts
 126:	243c bff9 21fb 	movel #-1074191877,%d2
 12c:	263c 5444 2d18 	movel #1413754136,%d3
 132:	2002           	movel %d2,%d0
 134:	2203           	movel %d3,%d1
 136:	4cdf 04fc      	moveml %sp@+,%d2-%d7/%a2
 13a:	4e75           	rts
 13c:	203c c009 21fb 	movel #-1073143301,%d0
 142:	223c 5444 2d18 	movel #1413754136,%d1
 148:	2f01           	movel %d1,%sp@-
 14a:	2f00           	movel %d0,%sp@-
 14c:	2f03           	movel %d3,%sp@-
 14e:	2f02           	movel %d2,%sp@-
 150:	4eb9 0000 0000 	jsr 0 <_atan2>
 156:	4fef 0010      	lea %sp@(16),%sp
 15a:	2240           	moveal %d0,%a1
 15c:	2409           	movel %a1,%d2
 15e:	2601           	movel %d1,%d3
 160:	6000 ff5c      	braw be <_atan2+0xbe>
 164:	243c 7ff0 0000 	movel #2146435072,%d2
 16a:	4283           	clrl %d3
 16c:	2002           	movel %d2,%d0
 16e:	2203           	movel %d3,%d1
 170:	4cdf 04fc      	moveml %sp@+,%d2-%d7/%a2
 174:	4e75           	rts
	...

Disassembly of section .data:

00000178 <.data>:
 178:	6174           	bsrs 1ee <_atan2+0x1ee>
 17a:	616e           	bsrs 1ea <_atan2+0x1ea>
 17c:	3200           	movew %d0,%d1
	...

atan.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_atan>:
   0:	48e7 2c20      	moveml %d2/%d4-%d5/%a2,%sp@-
   4:	282f 0014      	movel %sp@(20),%d4
   8:	2a2f 0018      	movel %sp@(24),%d5
   c:	42b9 0000 0018 	clrl 18 <_atan+0x18>
  12:	42b9 0000 001c 	clrl 1c <_atan+0x1c>
  18:	42a7           	clrl %sp@-
  1a:	42a7           	clrl %sp@-
  1c:	2f05           	movel %d5,%sp@-
  1e:	2f04           	movel %d4,%sp@-
  20:	4eb9 0000 0000 	jsr 0 <_atan>
  26:	4fef 0010      	lea %sp@(16),%sp
  2a:	4a80           	tstl %d0
  2c:	6c00 00d6      	bgew 104 <_atan+0x104>
  30:	0684 8000 0000 	addil #-2147483648,%d4
  36:	7401           	moveq #1,%d2
  38:	45f9 0000 0000 	lea 0 <_atan>,%a2
  3e:	42a7           	clrl %sp@-
  40:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  46:	2f05           	movel %d5,%sp@-
  48:	2f04           	movel %d4,%sp@-
  4a:	4e92           	jsr %a2@
  4c:	4fef 0010      	lea %sp@(16),%sp
  50:	4a80           	tstl %d0
  52:	6f00 00d0      	blew 124 <_atan+0x124>
  56:	2f3c 742c 2655 	movel #1949050453,%sp@-
  5c:	2f3c 400d db3d 	movel #1074649917,%sp@-
  62:	2f05           	movel %d5,%sp@-
  64:	2f04           	movel %d4,%sp@-
  66:	4e92           	jsr %a2@
  68:	4fef 0010      	lea %sp@(16),%sp
  6c:	4a80           	tstl %d0
  6e:	6f00 019c      	blew 20c <_atan+0x20c>
  72:	23fc 3ff9 21fb 	movel #1073291771,18 <_atan+0x18>
  78:	0000 0018 
  7c:	23fc 5444 2d18 	movel #1413754136,1c <_atan+0x1c>
  82:	0000 001c 
  86:	2f3c 3077 3b76 	movel #813120374,%sp@-
  8c:	2f3c 7fee 42d1 	movel #2146321105,%sp@-
  92:	2f05           	movel %d5,%sp@-
  94:	2f04           	movel %d4,%sp@-
  96:	4eb9 0000 0000 	jsr 0 <_atan>
  9c:	4fef 0010      	lea %sp@(16),%sp
  a0:	4a80           	tstl %d0
  a2:	6c00 01ee      	bgew 292 <_atan+0x292>
  a6:	2f05           	movel %d5,%sp@-
  a8:	2f04           	movel %d4,%sp@-
  aa:	42a7           	clrl %sp@-
  ac:	2f3c bff0 0000 	movel #-1074790400,%sp@-
  b2:	4eb9 0000 0000 	jsr 0 <_atan>
  b8:	4fef 0010      	lea %sp@(16),%sp
  bc:	2800           	movel %d0,%d4
  be:	2a01           	movel %d1,%d5
  c0:	42a7           	clrl %sp@-
  c2:	42a7           	clrl %sp@-
  c4:	2f05           	movel %d5,%sp@-
  c6:	2f04           	movel %d4,%sp@-
  c8:	4eb9 0000 0000 	jsr 0 <_atan>
  ce:	4fef 0010      	lea %sp@(16),%sp
  d2:	4a80           	tstl %d0
  d4:	6600 00d0      	bnew 1a6 <_atan+0x1a6>
  d8:	2039 0000 0018 	movel 18 <_atan+0x18>,%d0
  de:	2239 0000 001c 	movel 1c <_atan+0x1c>,%d1
  e4:	4a42           	tstw %d2
  e6:	6716           	beqs fe <_atan+0xfe>
  e8:	0680 8000 0000 	addil #-2147483648,%d0
  ee:	2040           	moveal %d0,%a0
  f0:	2241           	moveal %d1,%a1
  f2:	23c8 0000 0018 	movel %a0,18 <_atan+0x18>
  f8:	23c9 0000 001c 	movel %a1,1c <_atan+0x1c>
  fe:	4cdf 0434      	moveml %sp@+,%d2/%d4-%d5/%a2
 102:	4e75           	rts
 104:	4242           	clrw %d2
 106:	45f9 0000 0000 	lea 0 <_atan>,%a2
 10c:	42a7           	clrl %sp@-
 10e:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
 114:	2f05           	movel %d5,%sp@-
 116:	2f04           	movel %d4,%sp@-
 118:	4e92           	jsr %a2@
 11a:	4fef 0010      	lea %sp@(16),%sp
 11e:	4a80           	tstl %d0
 120:	6e00 ff34      	bgtw 56 <_atan+0x56>
 124:	2f3c 5e9e cd56 	movel #1587465558,%sp@-
 12a:	2f3c 3fd1 2614 	movel #1070671380,%sp@-
 130:	2f05           	movel %d5,%sp@-
 132:	2f04           	movel %d4,%sp@-
 134:	4e92           	jsr %a2@
 136:	4fef 0010      	lea %sp@(16),%sp
 13a:	4a80           	tstl %d0
 13c:	6f82           	bles c0 <_atan+0xc0>
 13e:	23fc 3fe0 c152 	movel #1071694162,18 <_atan+0x18>
 144:	0000 0018 
 148:	23fc 382d 7365 	movel #942502757,1c <_atan+0x1c>
 14e:	0000 001c 
 152:	2f3c e858 4caa 	movel #-396866390,%sp@-
 158:	2f3c 3ffb b67a 	movel #1073460858,%sp@-
 15e:	2f05           	movel %d5,%sp@-
 160:	2f04           	movel %d4,%sp@-
 162:	4eb9 0000 0000 	jsr 0 <_atan>
 168:	4fef 000c      	lea %sp@(12),%sp
 16c:	2e81           	movel %d1,%sp@
 16e:	2f00           	movel %d0,%sp@-
 170:	42a7           	clrl %sp@-
 172:	2f3c 4010 0000 	movel #1074790400,%sp@-
 178:	4eb9 0000 0000 	jsr 0 <_atan>
 17e:	4fef 0010      	lea %sp@(16),%sp
 182:	2040           	moveal %d0,%a0
 184:	2f01           	movel %d1,%sp@-
 186:	2f08           	movel %a0,%sp@-
 188:	2f3c e858 4caa 	movel #-396866390,%sp@-
 18e:	2f3c 3ffb b67a 	movel #1073460858,%sp@-
 194:	4eb9 0000 0000 	jsr 0 <_atan>
 19a:	4fef 0010      	lea %sp@(16),%sp
 19e:	2800           	movel %d0,%d4
 1a0:	2a01           	movel %d1,%d5
 1a2:	6000 ff1c      	braw c0 <_atan+0xc0>
 1a6:	45f9 0000 0000 	lea 0 <_atan>,%a2
 1ac:	2f05           	movel %d5,%sp@-
 1ae:	2f04           	movel %d4,%sp@-
 1b0:	2f05           	movel %d5,%sp@-
 1b2:	2f04           	movel %d4,%sp@-
 1b4:	4e92           	jsr %a2@
 1b6:	4fef 000c      	lea %sp@(12),%sp
 1ba:	2e81           	movel %d1,%sp@
 1bc:	2f00           	movel %d0,%sp@-
 1be:	4879 0000 02e6 	pea 2e6 <_atan+0x2e6>
 1c4:	4878 0008      	pea 8 <_atan+0x8>
 1c8:	4eb9 0000 0000 	jsr 0 <_atan>
 1ce:	2f05           	movel %d5,%sp@-
 1d0:	2f04           	movel %d4,%sp@-
 1d2:	2f01           	movel %d1,%sp@-
 1d4:	2f00           	movel %d0,%sp@-
 1d6:	4e92           	jsr %a2@
 1d8:	4fef 000c      	lea %sp@(12),%sp
 1dc:	2eb9 0000 001c 	movel 1c <_atan+0x1c>,%sp@
 1e2:	2f39 0000 0018 	movel 18 <_atan+0x18>,%sp@-
 1e8:	2f01           	movel %d1,%sp@-
 1ea:	2f00           	movel %d0,%sp@-
 1ec:	4eb9 0000 0000 	jsr 0 <_atan>
 1f2:	2440           	moveal %d0,%a2
 1f4:	204a           	moveal %a2,%a0
 1f6:	2241           	moveal %d1,%a1
 1f8:	23c8 0000 0018 	movel %a0,18 <_atan+0x18>
 1fe:	23c9 0000 001c 	movel %a1,1c <_atan+0x1c>
 204:	4fef 0020      	lea %sp@(32),%sp
 208:	6000 feda      	braw e4 <_atan+0xe4>
 20c:	23fc 3ff0 c152 	movel #1072742738,18 <_atan+0x18>
 212:	0000 0018 
 216:	23fc 382d 78ad 	movel #942504109,1c <_atan+0x1c>
 21c:	0000 001c 
 220:	45f9 0000 0000 	lea 0 <_atan>,%a2
 226:	2f3c e858 4caa 	movel #-396866390,%sp@-
 22c:	2f3c 3ffb b67a 	movel #1073460858,%sp@-
 232:	2f05           	movel %d5,%sp@-
 234:	2f04           	movel %d4,%sp@-
 236:	4e92           	jsr %a2@
 238:	4fef 000c      	lea %sp@(12),%sp
 23c:	2e85           	movel %d5,%sp@
 23e:	2f04           	movel %d4,%sp@-
 240:	2f01           	movel %d1,%sp@-
 242:	2f00           	movel %d0,%sp@-
 244:	4e92           	jsr %a2@
 246:	4fef 000c      	lea %sp@(12),%sp
 24a:	2e85           	movel %d5,%sp@
 24c:	2f04           	movel %d4,%sp@-
 24e:	2f01           	movel %d1,%sp@-
 250:	2f00           	movel %d0,%sp@-
 252:	4e92           	jsr %a2@
 254:	4fef 000c      	lea %sp@(12),%sp
 258:	2e81           	movel %d1,%sp@
 25a:	2f00           	movel %d0,%sp@-
 25c:	42a7           	clrl %sp@-
 25e:	2f3c 4010 0000 	movel #1074790400,%sp@-
 264:	4eb9 0000 0000 	jsr 0 <_atan>
 26a:	4fef 0010      	lea %sp@(16),%sp
 26e:	2040           	moveal %d0,%a0
 270:	2f01           	movel %d1,%sp@-
 272:	2f08           	movel %a0,%sp@-
 274:	2f3c 4590 331c 	movel #1167078172,%sp@-
 27a:	2f3c 3fe2 79a7 	movel #1071806887,%sp@-
 280:	4eb9 0000 0000 	jsr 0 <_atan>
 286:	4fef 0010      	lea %sp@(16),%sp
 28a:	2800           	movel %d0,%d4
 28c:	2a01           	movel %d1,%d5
 28e:	6000 fe30      	braw c0 <_atan+0xc0>
 292:	4879 0000 0000 	pea 0 <_atan>
 298:	4eb9 0000 0000 	jsr 0 <_atan>
 29e:	588f           	addql #4,%sp
 2a0:	4a80           	tstl %d0
 2a2:	6600 fe34      	bnew d8 <_atan+0xd8>
 2a6:	103c 0004      	moveb #4,%d0
 2aa:	23c0 0000 0000 	movel %d0,0 <_atan>
 2b0:	23fc 0000 02e0 	movel #736,4 <_atan+0x4>
 2b6:	0000 0004 
 2ba:	23c4 0000 0008 	movel %d4,8 <_atan+0x8>
 2c0:	23c5 0000 000c 	movel %d5,c <_atan+0xc>
 2c6:	103c 0059      	moveb #89,%d0
 2ca:	23c0 0000 0000 	movel %d0,0 <_atan>
 2d0:	2039 0000 0018 	movel 18 <_atan+0x18>,%d0
 2d6:	2239 0000 001c 	movel 1c <_atan+0x1c>,%d1
 2dc:	6000 fe06      	braw e4 <_atan+0xe4>

Disassembly of section .data:

000002e0 <.data>:
 2e0:	6174           	bsrs 356 <_atan+0x356>
 2e2:	616e           	bsrs 352 <_atan+0x352>
 2e4:	0000 3ff0      	orib #-16,%d0
 2e8:	0000 0000      	orib #0,%d0
 2ec:	0000 bfd5      	orib #-43,%d0
 2f0:	5555           	subqw #2,%a5@
 2f2:	5555           	subqw #2,%a5@
 2f4:	52f0 3fc9      	shi @(00000000)@(00000000)
 2f8:	9999           	subl %d4,%a1@+
 2fa:	9992           	subl %d4,%a2@
 2fc:	9d75 bfc2 4924 	subw %d6,@(00000000)@(00004924)
 302:	8e5b           	orw %a3@+,%d7
 304:	b38d           	cmpml %a5@+,%a1@+
 306:	3fbc 71c4 e4f2 	movew #29124,%sp@(fffffff2,%fp:w:4)
 30c:	a560           	.short 0xa560
 30e:	bfb7 4577 33a1 	eorl %d7,%sp@(33a14d73)@(3fb3a8c0)
 314:	4d73 3fb3 a8c0 
 31a:	45cd           	.short 0x45cd
 31c:	98a5           	subl %a5@-,%d4
 31e:	bfb0 98d3      	eorl %d7,%a0@(ffffffd3,%a1:l)
 322:	6101           	bsrs 325 <.data+0x45>
 324:	0021 3fa6      	orib #-90,%a1@-
 328:	ba38 fc98      	cmpb fffffc98 <_atan+0xfffffc98>,%d5
 32c:	1cc3           	moveb %d3,%fp@+
	...

log10.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_log10>:
   0:	2f2f 0008      	movel %sp@(8),%sp@-
   4:	2f2f 0008      	movel %sp@(8),%sp@-
   8:	4eb9 0000 0000 	jsr 0 <_log10>
   e:	2f3c 1526 e50e 	movel #354870542,%sp@-
  14:	2f3c 3fdb cb7b 	movel #1071369083,%sp@-
  1a:	2f01           	movel %d1,%sp@-
  1c:	2f00           	movel %d0,%sp@-
  1e:	4eb9 0000 0000 	jsr 0 <_log10>
  24:	4fef 0018      	lea %sp@(24),%sp
  28:	2240           	moveal %d0,%a1
  2a:	2009           	movel %a1,%d0
  2c:	4e75           	rts
	...

tan.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_tan>:
   0:	4e56 ffe0      	linkw %fp,#-32
   4:	48e7 3f00      	moveml %d2-%d7,%sp@-
   8:	2c2e 0008      	movel %fp@(8),%d6
   c:	2e2e 000c      	movel %fp@(12),%d7
  10:	2f07           	movel %d7,%sp@-
  12:	2f06           	movel %d6,%sp@-
  14:	4eb9 0000 0000 	jsr 0 <_tan>
  1a:	508f           	addql #8,%sp
  1c:	2400           	movel %d0,%d2
  1e:	2601           	movel %d1,%d3
  20:	2f07           	movel %d7,%sp@-
  22:	2f06           	movel %d6,%sp@-
  24:	4eb9 0000 0000 	jsr 0 <_tan>
  2a:	508f           	addql #8,%sp
  2c:	2800           	movel %d0,%d4
  2e:	2a01           	movel %d1,%d5
  30:	42a7           	clrl %sp@-
  32:	42a7           	clrl %sp@-
  34:	2f05           	movel %d5,%sp@-
  36:	2f00           	movel %d0,%sp@-
  38:	4eb9 0000 0000 	jsr 0 <_tan>
  3e:	4fef 0010      	lea %sp@(16),%sp
  42:	4a80           	tstl %d0
  44:	671c           	beqs 62 <_tan+0x62>
  46:	2f05           	movel %d5,%sp@-
  48:	2f04           	movel %d4,%sp@-
  4a:	2f03           	movel %d3,%sp@-
  4c:	2f02           	movel %d2,%sp@-
  4e:	4eb9 0000 0000 	jsr 0 <_tan>
  54:	4fef 0010      	lea %sp@(16),%sp
  58:	4cee 00fc ffc8 	moveml %fp@(-56),%d2-%d7
  5e:	4e5e           	unlk %fp
  60:	4e75           	rts
  62:	103c 0003      	moveb #3,%d0
  66:	2d40 ffe0      	movel %d0,%fp@(-32)
  6a:	2d7c 0000 00e0 	movel #224,%fp@(-28)
  70:	ffe4 
  72:	2d46 ffe8      	movel %d6,%fp@(-24)
  76:	2d47 ffec      	movel %d7,%fp@(-20)
  7a:	486e ffe0      	pea %fp@(-32)
  7e:	4eb9 0000 0000 	jsr 0 <_tan>
  84:	588f           	addql #4,%sp
  86:	4a80           	tstl %d0
  88:	6630           	bnes ba <_tan+0xba>
  8a:	7058           	moveq #88,%d0
  8c:	23c0 0000 0000 	movel %d0,0 <_tan>
  92:	42a7           	clrl %sp@-
  94:	42a7           	clrl %sp@-
  96:	2f03           	movel %d3,%sp@-
  98:	2f02           	movel %d2,%sp@-
  9a:	4eb9 0000 0000 	jsr 0 <_tan>
  a0:	4fef 0010      	lea %sp@(16),%sp
  a4:	4a80           	tstl %d0
  a6:	6c24           	bges cc <_tan+0xcc>
  a8:	203c fff0 0000 	movel #-1048576,%d0
  ae:	7200           	moveq #0,%d1
  b0:	4cee 00fc ffc8 	moveml %fp@(-56),%d2-%d7
  b6:	4e5e           	unlk %fp
  b8:	4e75           	rts
  ba:	202e fff8      	movel %fp@(-8),%d0
  be:	222e fffc      	movel %fp@(-4),%d1
  c2:	4cee 00fc ffc8 	moveml %fp@(-56),%d2-%d7
  c8:	4e5e           	unlk %fp
  ca:	4e75           	rts
  cc:	203c 7ff0 0000 	movel #2146435072,%d0
  d2:	7200           	moveq #0,%d1
  d4:	4cee 00fc ffc8 	moveml %fp@(-56),%d2-%d7
  da:	4e5e           	unlk %fp
  dc:	4e75           	rts
	...

Disassembly of section .data:

000000e0 <.data>:
  e0:	7461           	moveq #97,%d2
  e2:	6e00           	bgts e4 <_tan+0xe4>

tanh.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_tanh>:
   0:	48e7 3c20      	moveml %d2-%d5/%a2,%sp@-
   4:	242f 0018      	movel %sp@(24),%d2
   8:	262f 001c      	movel %sp@(28),%d3
   c:	45f9 0000 0000 	lea 0 <_tanh>,%a2
  12:	42a7           	clrl %sp@-
  14:	2f3c 4030 0000 	movel #1076887552,%sp@-
  1a:	2f03           	movel %d3,%sp@-
  1c:	2f02           	movel %d2,%sp@-
  1e:	4e92           	jsr %a2@
  20:	4fef 0010      	lea %sp@(16),%sp
  24:	4a80           	tstl %d0
  26:	6e1c           	bgts 44 <_tanh+0x44>
  28:	42a7           	clrl %sp@-
  2a:	2f3c c030 0000 	movel #-1070596096,%sp@-
  30:	2f03           	movel %d3,%sp@-
  32:	2f02           	movel %d2,%sp@-
  34:	4eb9 0000 0000 	jsr 0 <_tanh>
  3a:	4fef 0010      	lea %sp@(16),%sp
  3e:	4a80           	tstl %d0
  40:	6c00 009a      	bgew dc <_tanh+0xdc>
  44:	7006           	moveq #6,%d0
  46:	23c0 0000 0000 	movel %d0,0 <_tanh>
  4c:	23fc 0000 0120 	movel #288,4 <_tanh+0x4>
  52:	0000 0004 
  56:	23c2 0000 0008 	movel %d2,8 <_tanh+0x8>
  5c:	23c3 0000 000c 	movel %d3,c <_tanh+0xc>
  62:	4879 0000 0000 	pea 0 <_tanh>
  68:	4eb9 0000 0000 	jsr 0 <_tanh>
  6e:	588f           	addql #4,%sp
  70:	4a80           	tstl %d0
  72:	6656           	bnes ca <_tanh+0xca>
  74:	7058           	moveq #88,%d0
  76:	23c0 0000 0000 	movel %d0,0 <_tanh>
  7c:	42a7           	clrl %sp@-
  7e:	42a7           	clrl %sp@-
  80:	2f03           	movel %d3,%sp@-
  82:	2f02           	movel %d2,%sp@-
  84:	4e92           	jsr %a2@
  86:	4fef 0010      	lea %sp@(16),%sp
  8a:	4a80           	tstl %d0
  8c:	6f1e           	bles ac <_tanh+0xac>
  8e:	23fc 3ff0 0000 	movel #1072693248,18 <_tanh+0x18>
  94:	0000 0018 
  98:	42b9 0000 001c 	clrl 1c <_tanh+0x1c>
  9e:	203c 3ff0 0000 	movel #1072693248,%d0
  a4:	7200           	moveq #0,%d1
  a6:	4cdf 043c      	moveml %sp@+,%d2-%d5/%a2
  aa:	4e75           	rts
  ac:	23fc bff0 0000 	movel #-1074790400,18 <_tanh+0x18>
  b2:	0000 0018 
  b6:	42b9 0000 001c 	clrl 1c <_tanh+0x1c>
  bc:	203c bff0 0000 	movel #-1074790400,%d0
  c2:	7200           	moveq #0,%d1
  c4:	4cdf 043c      	moveml %sp@+,%d2-%d5/%a2
  c8:	4e75           	rts
  ca:	2039 0000 0018 	movel 18 <_tanh+0x18>,%d0
  d0:	2239 0000 001c 	movel 1c <_tanh+0x1c>,%d1
  d6:	4cdf 043c      	moveml %sp@+,%d2-%d5/%a2
  da:	4e75           	rts
  dc:	2f03           	movel %d3,%sp@-
  de:	2f02           	movel %d2,%sp@-
  e0:	4eb9 0000 0000 	jsr 0 <_tanh>
  e6:	2800           	movel %d0,%d4
  e8:	2a01           	movel %d1,%d5
  ea:	2f03           	movel %d3,%sp@-
  ec:	2f02           	movel %d2,%sp@-
  ee:	4eb9 0000 0000 	jsr 0 <_tanh>
  f4:	2f01           	movel %d1,%sp@-
  f6:	2f00           	movel %d0,%sp@-
  f8:	2f05           	movel %d5,%sp@-
  fa:	2f04           	movel %d4,%sp@-
  fc:	4eb9 0000 0000 	jsr 0 <_tanh>
 102:	2800           	movel %d0,%d4
 104:	2044           	moveal %d4,%a0
 106:	2241           	moveal %d1,%a1
 108:	23c8 0000 0018 	movel %a0,18 <_tanh+0x18>
 10e:	23c9 0000 001c 	movel %a1,1c <_tanh+0x1c>
 114:	4fef 0020      	lea %sp@(32),%sp
 118:	4cdf 043c      	moveml %sp@+,%d2-%d5/%a2
 11c:	4e75           	rts
	...

Disassembly of section .data:

00000120 <.data>:
 120:	7461           	moveq #97,%d2
 122:	6e68           	bgts 18c <_tanh+0x18c>
 124:	0000 0000      	orib #0,%d0

sinh.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_sinh>:
   0:	2f03           	movel %d3,%sp@-
   2:	2f02           	movel %d2,%sp@-
   4:	242f 000c      	movel %sp@(12),%d2
   8:	262f 0010      	movel %sp@(16),%d3
   c:	2f3c fefa 39ef 	movel #-17155601,%sp@-
  12:	2f3c 4086 2e42 	movel #1082535490,%sp@-
  18:	2f03           	movel %d3,%sp@-
  1a:	2f02           	movel %d2,%sp@-
  1c:	4eb9 0000 0000 	jsr 0 <_sinh>
  22:	4fef 0010      	lea %sp@(16),%sp
  26:	4a80           	tstl %d0
  28:	6e00 00d4      	bgtw fe <_sinh+0xfe>
  2c:	2f3c 6e3a 7b61 	movel #1849326433,%sp@-
  32:	2f3c c086 28b7 	movel #-1064949577,%sp@-
  38:	2f03           	movel %d3,%sp@-
  3a:	2f02           	movel %d2,%sp@-
  3c:	4eb9 0000 0000 	jsr 0 <_sinh>
  42:	4fef 0010      	lea %sp@(16),%sp
  46:	4a80           	tstl %d0
  48:	6c50           	bges 9a <_sinh+0x9a>
  4a:	7004           	moveq #4,%d0
  4c:	23c0 0000 0000 	movel %d0,0 <_sinh>
  52:	23fc 0000 0168 	movel #360,4 <_sinh+0x4>
  58:	0000 0004 
  5c:	23c2 0000 0008 	movel %d2,8 <_sinh+0x8>
  62:	23c3 0000 000c 	movel %d3,c <_sinh+0xc>
  68:	4879 0000 0000 	pea 0 <_sinh>
  6e:	4eb9 0000 0000 	jsr 0 <_sinh>
  74:	588f           	addql #4,%sp
  76:	4a80           	tstl %d0
  78:	6600 00b4      	bnew 12e <_sinh+0x12e>
  7c:	7058           	moveq #88,%d0
  7e:	23c0 0000 0000 	movel %d0,0 <_sinh>
  84:	42b9 0000 0018 	clrl 18 <_sinh+0x18>
  8a:	42b9 0000 001c 	clrl 1c <_sinh+0x1c>
  90:	4200           	clrb %d0
  92:	7200           	moveq #0,%d1
  94:	241f           	movel %sp@+,%d2
  96:	261f           	movel %sp@+,%d3
  98:	4e75           	rts
  9a:	2f03           	movel %d3,%sp@-
  9c:	2f02           	movel %d2,%sp@-
  9e:	4eb9 0000 0000 	jsr 0 <_sinh>
  a4:	2400           	movel %d0,%d2
  a6:	2601           	movel %d1,%d3
  a8:	2f03           	movel %d3,%sp@-
  aa:	2f00           	movel %d0,%sp@-
  ac:	42a7           	clrl %sp@-
  ae:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  b4:	4eb9 0000 0000 	jsr 0 <_sinh>
  ba:	4fef 000c      	lea %sp@(12),%sp
  be:	2e81           	movel %d1,%sp@
  c0:	2f00           	movel %d0,%sp@-
  c2:	2f03           	movel %d3,%sp@-
  c4:	2f02           	movel %d2,%sp@-
  c6:	4eb9 0000 0000 	jsr 0 <_sinh>
  cc:	4fef 000c      	lea %sp@(12),%sp
  d0:	4297           	clrl %sp@
  d2:	2f3c 3fe0 0000 	movel #1071644672,%sp@-
  d8:	2f01           	movel %d1,%sp@-
  da:	2f00           	movel %d0,%sp@-
  dc:	4eb9 0000 0000 	jsr 0 <_sinh>
  e2:	2600           	movel %d0,%d3
  e4:	2043           	moveal %d3,%a0
  e6:	2241           	moveal %d1,%a1
  e8:	23c8 0000 0018 	movel %a0,18 <_sinh+0x18>
  ee:	23c9 0000 001c 	movel %a1,1c <_sinh+0x1c>
  f4:	4fef 0018      	lea %sp@(24),%sp
  f8:	241f           	movel %sp@+,%d2
  fa:	261f           	movel %sp@+,%d3
  fc:	4e75           	rts
  fe:	7003           	moveq #3,%d0
 100:	23c0 0000 0000 	movel %d0,0 <_sinh>
 106:	23fc 0000 0168 	movel #360,4 <_sinh+0x4>
 10c:	0000 0004 
 110:	23c2 0000 0008 	movel %d2,8 <_sinh+0x8>
 116:	23c3 0000 000c 	movel %d3,c <_sinh+0xc>
 11c:	4879 0000 0000 	pea 0 <_sinh>
 122:	4eb9 0000 0000 	jsr 0 <_sinh>
 128:	588f           	addql #4,%sp
 12a:	4a80           	tstl %d0
 12c:	6712           	beqs 140 <_sinh+0x140>
 12e:	2039 0000 0018 	movel 18 <_sinh+0x18>,%d0
 134:	2239 0000 001c 	movel 1c <_sinh+0x1c>,%d1
 13a:	241f           	movel %sp@+,%d2
 13c:	261f           	movel %sp@+,%d3
 13e:	4e75           	rts
 140:	7058           	moveq #88,%d0
 142:	23c0 0000 0000 	movel %d0,0 <_sinh>
 148:	23fc 7ff0 0000 	movel #2146435072,18 <_sinh+0x18>
 14e:	0000 0018 
 152:	42b9 0000 001c 	clrl 1c <_sinh+0x1c>
 158:	203c 7ff0 0000 	movel #2146435072,%d0
 15e:	7200           	moveq #0,%d1
 160:	241f           	movel %sp@+,%d2
 162:	261f           	movel %sp@+,%d3
 164:	4e75           	rts
	...

Disassembly of section .data:

00000168 <.data>:
 168:	7369           	.short 0x7369
 16a:	6e68           	bgts 1d4 <_sinh+0x1d4>
 16c:	0000 0000      	orib #0,%d0

cosh.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_cosh>:
   0:	2f03           	movel %d3,%sp@-
   2:	2f02           	movel %d2,%sp@-
   4:	242f 000c      	movel %sp@(12),%d2
   8:	262f 0010      	movel %sp@(16),%d3
   c:	2f3c fefa 39ef 	movel #-17155601,%sp@-
  12:	2f3c 4086 2e42 	movel #1082535490,%sp@-
  18:	2f03           	movel %d3,%sp@-
  1a:	2f02           	movel %d2,%sp@-
  1c:	4eb9 0000 0000 	jsr 0 <_cosh>
  22:	4fef 0010      	lea %sp@(16),%sp
  26:	4a80           	tstl %d0
  28:	6e00 00e4      	bgtw 10e <_cosh+0x10e>
  2c:	2f3c 6e3a 7b61 	movel #1849326433,%sp@-
  32:	2f3c c086 28b7 	movel #-1064949577,%sp@-
  38:	2f03           	movel %d3,%sp@-
  3a:	2f02           	movel %d2,%sp@-
  3c:	4eb9 0000 0000 	jsr 0 <_cosh>
  42:	4fef 0010      	lea %sp@(16),%sp
  46:	4a80           	tstl %d0
  48:	6c60           	bges aa <_cosh+0xaa>
  4a:	7004           	moveq #4,%d0
  4c:	23c0 0000 0000 	movel %d0,0 <_cosh>
  52:	23fc 0000 0180 	movel #384,4 <_cosh+0x4>
  58:	0000 0004 
  5c:	23c2 0000 0008 	movel %d2,8 <_cosh+0x8>
  62:	23c3 0000 000c 	movel %d3,c <_cosh+0xc>
  68:	4879 0000 0000 	pea 0 <_cosh>
  6e:	4eb9 0000 0000 	jsr 0 <_cosh>
  74:	588f           	addql #4,%sp
  76:	4a80           	tstl %d0
  78:	6600 00c4      	bnew 13e <_cosh+0x13e>
  7c:	7058           	moveq #88,%d0
  7e:	23c0 0000 0000 	movel %d0,0 <_cosh>
  84:	23fc 000f ffdd 	movel #1048541,18 <_cosh+0x18>
  8a:	0000 0018 
  8e:	23fc 31a0 0c6d 	movel #832572525,1c <_cosh+0x1c>
  94:	0000 001c 
  98:	203c 000f ffdd 	movel #1048541,%d0
  9e:	223c 31a0 0c6d 	movel #832572525,%d1
  a4:	241f           	movel %sp@+,%d2
  a6:	261f           	movel %sp@+,%d3
  a8:	4e75           	rts
  aa:	2f03           	movel %d3,%sp@-
  ac:	2f02           	movel %d2,%sp@-
  ae:	4eb9 0000 0000 	jsr 0 <_cosh>
  b4:	2400           	movel %d0,%d2
  b6:	2601           	movel %d1,%d3
  b8:	2f03           	movel %d3,%sp@-
  ba:	2f00           	movel %d0,%sp@-
  bc:	42a7           	clrl %sp@-
  be:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  c4:	4eb9 0000 0000 	jsr 0 <_cosh>
  ca:	4fef 000c      	lea %sp@(12),%sp
  ce:	2e83           	movel %d3,%sp@
  d0:	2f02           	movel %d2,%sp@-
  d2:	2f01           	movel %d1,%sp@-
  d4:	2f00           	movel %d0,%sp@-
  d6:	4eb9 0000 0000 	jsr 0 <_cosh>
  dc:	4fef 000c      	lea %sp@(12),%sp
  e0:	4297           	clrl %sp@
  e2:	2f3c 3fe0 0000 	movel #1071644672,%sp@-
  e8:	2f01           	movel %d1,%sp@-
  ea:	2f00           	movel %d0,%sp@-
  ec:	4eb9 0000 0000 	jsr 0 <_cosh>
  f2:	2600           	movel %d0,%d3
  f4:	2043           	moveal %d3,%a0
  f6:	2241           	moveal %d1,%a1
  f8:	23c8 0000 0018 	movel %a0,18 <_cosh+0x18>
  fe:	23c9 0000 001c 	movel %a1,1c <_cosh+0x1c>
 104:	4fef 0018      	lea %sp@(24),%sp
 108:	241f           	movel %sp@+,%d2
 10a:	261f           	movel %sp@+,%d3
 10c:	4e75           	rts
 10e:	7003           	moveq #3,%d0
 110:	23c0 0000 0000 	movel %d0,0 <_cosh>
 116:	23fc 0000 0180 	movel #384,4 <_cosh+0x4>
 11c:	0000 0004 
 120:	23c2 0000 0008 	movel %d2,8 <_cosh+0x8>
 126:	23c3 0000 000c 	movel %d3,c <_cosh+0xc>
 12c:	4879 0000 0000 	pea 0 <_cosh>
 132:	4eb9 0000 0000 	jsr 0 <_cosh>
 138:	588f           	addql #4,%sp
 13a:	4a80           	tstl %d0
 13c:	6712           	beqs 150 <_cosh+0x150>
 13e:	2039 0000 0018 	movel 18 <_cosh+0x18>,%d0
 144:	2239 0000 001c 	movel 1c <_cosh+0x1c>,%d1
 14a:	241f           	movel %sp@+,%d2
 14c:	261f           	movel %sp@+,%d3
 14e:	4e75           	rts
 150:	7058           	moveq #88,%d0
 152:	23c0 0000 0000 	movel %d0,0 <_cosh>
 158:	23fc 7fee 42d1 	movel #2146321105,18 <_cosh+0x18>
 15e:	0000 0018 
 162:	23fc 3077 3b76 	movel #813120374,1c <_cosh+0x1c>
 168:	0000 001c 
 16c:	203c 7fee 42d1 	movel #2146321105,%d0
 172:	223c 3077 3b76 	movel #813120374,%d1
 178:	241f           	movel %sp@+,%d2
 17a:	261f           	movel %sp@+,%d3
 17c:	4e75           	rts
	...

Disassembly of section .data:

00000180 <.data>:
 180:	636f           	blss 1f1 <_cosh+0x1f1>
 182:	7368           	.short 0x7368
 184:	0000 0000      	orib #0,%d0

atanh.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_atanh>:
   0:	48e7 3c00      	moveml %d2-%d5,%sp@-
   4:	242f 0014      	movel %sp@(20),%d2
   8:	262f 0018      	movel %sp@(24),%d3
   c:	42a7           	clrl %sp@-
   e:	2f3c bff0 0000 	movel #-1074790400,%sp@-
  14:	2f03           	movel %d3,%sp@-
  16:	2f02           	movel %d2,%sp@-
  18:	4eb9 0000 0000 	jsr 0 <_atanh>
  1e:	4fef 0010      	lea %sp@(16),%sp
  22:	4a80           	tstl %d0
  24:	6f1a           	bles 40 <_atanh+0x40>
  26:	42a7           	clrl %sp@-
  28:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  2e:	2f03           	movel %d3,%sp@-
  30:	2f02           	movel %d2,%sp@-
  32:	4eb9 0000 0000 	jsr 0 <_atanh>
  38:	4fef 0010      	lea %sp@(16),%sp
  3c:	4a80           	tstl %d0
  3e:	6d68           	blts a8 <_atanh+0xa8>
  40:	7001           	moveq #1,%d0
  42:	23c0 0000 0000 	movel %d0,0 <_atanh>
  48:	23fc 0000 0124 	movel #292,4 <_atanh+0x4>
  4e:	0000 0004 
  52:	23c2 0000 0008 	movel %d2,8 <_atanh+0x8>
  58:	23c3 0000 000c 	movel %d3,c <_atanh+0xc>
  5e:	4879 0000 0000 	pea 0 <_atanh>
  64:	4eb9 0000 0000 	jsr 0 <_atanh>
  6a:	588f           	addql #4,%sp
  6c:	4a80           	tstl %d0
  6e:	6626           	bnes 96 <_atanh+0x96>
  70:	7058           	moveq #88,%d0
  72:	23c0 0000 0000 	movel %d0,0 <_atanh>
  78:	23fc 7ff0 0000 	movel #2146435072,18 <_atanh+0x18>
  7e:	0000 0018 
  82:	42b9 0000 001c 	clrl 1c <_atanh+0x1c>
  88:	203c 7ff0 0000 	movel #2146435072,%d0
  8e:	7200           	moveq #0,%d1
  90:	4cdf 003c      	moveml %sp@+,%d2-%d5
  94:	4e75           	rts
  96:	2039 0000 0018 	movel 18 <_atanh+0x18>,%d0
  9c:	2239 0000 001c 	movel 1c <_atanh+0x1c>,%d1
  a2:	4cdf 003c      	moveml %sp@+,%d2-%d5
  a6:	4e75           	rts
  a8:	42a7           	clrl %sp@-
  aa:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  b0:	2f03           	movel %d3,%sp@-
  b2:	2f02           	movel %d2,%sp@-
  b4:	4eb9 0000 0000 	jsr 0 <_atanh>
  ba:	4fef 0010      	lea %sp@(16),%sp
  be:	2800           	movel %d0,%d4
  c0:	2a01           	movel %d1,%d5
  c2:	2f03           	movel %d3,%sp@-
  c4:	2f02           	movel %d2,%sp@-
  c6:	42a7           	clrl %sp@-
  c8:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  ce:	4eb9 0000 0000 	jsr 0 <_atanh>
  d4:	4fef 000c      	lea %sp@(12),%sp
  d8:	2e81           	movel %d1,%sp@
  da:	2f00           	movel %d0,%sp@-
  dc:	2f05           	movel %d5,%sp@-
  de:	2f04           	movel %d4,%sp@-
  e0:	4eb9 0000 0000 	jsr 0 <_atanh>
  e6:	4fef 000c      	lea %sp@(12),%sp
  ea:	2e81           	movel %d1,%sp@
  ec:	2f00           	movel %d0,%sp@-
  ee:	4eb9 0000 0000 	jsr 0 <_atanh>
  f4:	42a7           	clrl %sp@-
  f6:	2f3c 3fe0 0000 	movel #1071644672,%sp@-
  fc:	2f01           	movel %d1,%sp@-
  fe:	2f00           	movel %d0,%sp@-
 100:	4eb9 0000 0000 	jsr 0 <_atanh>
 106:	2800           	movel %d0,%d4
 108:	2044           	moveal %d4,%a0
 10a:	2241           	moveal %d1,%a1
 10c:	23c8 0000 0018 	movel %a0,18 <_atanh+0x18>
 112:	23c9 0000 001c 	movel %a1,1c <_atanh+0x1c>
 118:	4fef 0018      	lea %sp@(24),%sp
 11c:	4cdf 003c      	moveml %sp@+,%d2-%d5
 120:	4e75           	rts
	...

Disassembly of section .data:

00000124 <.data>:
 124:	6174           	bsrs 19a <_atanh+0x19a>
 126:	616e           	bsrs 196 <_atanh+0x196>
 128:	6800 0000      	bvcw 12a <.data+0x6>

log.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_log-0x22>:
   0:	5349           	subqw #1,%a1
   2:	4e47           	trap #7
   4:	554c           	subqw #2,%a4
   6:	4152           	.short 0x4152
   8:	4954           	.short 0x4954
   a:	5900           	subqb #4,%d0
   c:	444f           	.short 0x444f
   e:	4d41           	.short 0x4d41
  10:	494e           	.short 0x494e
  12:	0025 733a      	orib #58,%a5@-
  16:	2025           	movel %a5@-,%d0
  18:	7320           	.short 0x7320
  1a:	6572           	bcss 8e <_log+0x6c>
  1c:	726f           	moveq #111,%d1
  1e:	720a           	moveq #10,%d1
	...

00000022 <_log>:
  22:	4e56 ffdc      	linkw %fp,#-36
  26:	48e7 3c38      	moveml %d2-%d5/%a2-%a4,%sp@-
  2a:	242e 0008      	movel %fp@(8),%d2
  2e:	262e 000c      	movel %fp@(12),%d3
  32:	42a7           	clrl %sp@-
  34:	42a7           	clrl %sp@-
  36:	2f03           	movel %d3,%sp@-
  38:	2f02           	movel %d2,%sp@-
  3a:	4eb9 0000 0000 	jsr 0 <_log-0x22>
  40:	4fef 0010      	lea %sp@(16),%sp
  44:	4a80           	tstl %d0
  46:	6e00 00ca      	bgtw 112 <_log+0xf0>
  4a:	2d7c 0000 0264 	movel #612,%fp@(-32)
  50:	ffe0 
  52:	2d42 ffe4      	movel %d2,%fp@(-28)
  56:	2d43 ffe8      	movel %d3,%fp@(-24)
  5a:	42a7           	clrl %sp@-
  5c:	42a7           	clrl %sp@-
  5e:	2f03           	movel %d3,%sp@-
  60:	2f02           	movel %d2,%sp@-
  62:	4eb9 0000 0000 	jsr 0 <_log-0x22>
  68:	4fef 0010      	lea %sp@(16),%sp
  6c:	4a80           	tstl %d0
  6e:	6640           	bnes b0 <_log+0x8e>
  70:	2d7c ffee 42d1 	movel #-1162543,%fp@(-12)
  76:	fff4 
  78:	2d7c 3077 3b76 	movel #813120374,%fp@(-8)
  7e:	fff8 
  80:	103c 0002      	moveb #2,%d0
  84:	2d40 ffdc      	movel %d0,%fp@(-36)
  88:	243c 0000 0000 	movel #0,%d2
  8e:	486e ffdc      	pea %fp@(-36)
  92:	4eb9 0000 0000 	jsr 0 <_log-0x22>
  98:	588f           	addql #4,%sp
  9a:	4a80           	tstl %d0
  9c:	673e           	beqs dc <_log+0xba>
  9e:	202e fff4      	movel %fp@(-12),%d0
  a2:	222e fff8      	movel %fp@(-8),%d1
  a6:	4cee 1c3c ffc0 	moveml %fp@(-64),%d2-%d5/%a2-%a4
  ac:	4e5e           	unlk %fp
  ae:	4e75           	rts
  b0:	2d7c 7fee 42d1 	movel #2146321105,%fp@(-12)
  b6:	fff4 
  b8:	2d7c 3077 3b76 	movel #813120374,%fp@(-8)
  be:	fff8 
  c0:	7001           	moveq #1,%d0
  c2:	2d40 ffdc      	movel %d0,%fp@(-36)
  c6:	243c 0000 000c 	movel #12,%d2
  cc:	486e ffdc      	pea %fp@(-36)
  d0:	4eb9 0000 0000 	jsr 0 <_log-0x22>
  d6:	588f           	addql #4,%sp
  d8:	4a80           	tstl %d0
  da:	66c2           	bnes 9e <_log+0x7c>
  dc:	4879 0000 0264 	pea 264 <_log+0x242>
  e2:	2f02           	movel %d2,%sp@-
  e4:	487a ff2d      	pea %pc@(13 <_log-0xf>)
  e8:	2f39 0000 0000 	movel 0 <_log-0x22>,%sp@-
  ee:	4eb9 0000 0000 	jsr 0 <_log-0x22>
  f4:	7059           	moveq #89,%d0
  f6:	23c0 0000 0000 	movel %d0,0 <_log-0x22>
  fc:	202e fff4      	movel %fp@(-12),%d0
 100:	222e fff8      	movel %fp@(-8),%d1
 104:	4fef 0010      	lea %sp@(16),%sp
 108:	4cee 1c3c ffc0 	moveml %fp@(-64),%d2-%d5/%a2-%a4
 10e:	4e5e           	unlk %fp
 110:	4e75           	rts
 112:	486e fffc      	pea %fp@(-4)
 116:	2f03           	movel %d3,%sp@-
 118:	2f02           	movel %d2,%sp@-
 11a:	4eb9 0000 0000 	jsr 0 <_log-0x22>
 120:	2400           	movel %d0,%d2
 122:	2601           	movel %d1,%d3
 124:	508f           	addql #8,%sp
 126:	4297           	clrl %sp@
 128:	2f3c 3fe0 0000 	movel #1071644672,%sp@-
 12e:	2f03           	movel %d3,%sp@-
 130:	2f00           	movel %d0,%sp@-
 132:	4eb9 0000 0000 	jsr 0 <_log-0x22>
 138:	4fef 0010      	lea %sp@(16),%sp
 13c:	4a80           	tstl %d0
 13e:	664c           	bnes 18c <_log+0x16a>
 140:	243c bff0 0000 	movel #-1074790400,%d2
 146:	4283           	clrl %d3
 148:	45f9 0000 0000 	lea 0 <_log-0x22>,%a2
 14e:	49f9 0000 0000 	lea 0 <_log-0x22>,%a4
 154:	2f2e fffc      	movel %fp@(-4),%sp@-
 158:	4eb9 0000 0000 	jsr 0 <_log-0x22>
 15e:	2e83           	movel %d3,%sp@
 160:	2f02           	movel %d2,%sp@-
 162:	2f01           	movel %d1,%sp@-
 164:	2f00           	movel %d0,%sp@-
 166:	4e92           	jsr %a2@
 168:	4fef 000c      	lea %sp@(12),%sp
 16c:	2ebc fefa 39ef 	movel #-17155601,%sp@
 172:	2f3c 3fe6 2e42 	movel #1072049730,%sp@-
 178:	2f01           	movel %d1,%sp@-
 17a:	2f00           	movel %d0,%sp@-
 17c:	4e94           	jsr %a4@
 17e:	4fef 0010      	lea %sp@(16),%sp
 182:	4cee 1c3c ffc0 	moveml %fp@(-64),%d2-%d5/%a2-%a4
 188:	4e5e           	unlk %fp
 18a:	4e75           	rts
 18c:	47f9 0000 0000 	lea 0 <_log-0x22>,%a3
 192:	2f3c 667f 3bcd 	movel #1719614413,%sp@-
 198:	2f3c 3fe6 a09e 	movel #1072079006,%sp@-
 19e:	2f03           	movel %d3,%sp@-
 1a0:	2f02           	movel %d2,%sp@-
 1a2:	4e93           	jsr %a3@
 1a4:	4fef 0010      	lea %sp@(16),%sp
 1a8:	2800           	movel %d0,%d4
 1aa:	2a01           	movel %d1,%d5
 1ac:	45f9 0000 0000 	lea 0 <_log-0x22>,%a2
 1b2:	2f3c 667f 3bcd 	movel #1719614413,%sp@-
 1b8:	2f3c 3fe6 a09e 	movel #1072079006,%sp@-
 1be:	2f03           	movel %d3,%sp@-
 1c0:	2f02           	movel %d2,%sp@-
 1c2:	4e92           	jsr %a2@
 1c4:	4fef 0010      	lea %sp@(16),%sp
 1c8:	2040           	moveal %d0,%a0
 1ca:	2f01           	movel %d1,%sp@-
 1cc:	2f08           	movel %a0,%sp@-
 1ce:	2f05           	movel %d5,%sp@-
 1d0:	2f04           	movel %d4,%sp@-
 1d2:	4eb9 0000 0000 	jsr 0 <_log-0x22>
 1d8:	4fef 0010      	lea %sp@(16),%sp
 1dc:	2400           	movel %d0,%d2
 1de:	2601           	movel %d1,%d3
 1e0:	49f9 0000 0000 	lea 0 <_log-0x22>,%a4
 1e6:	2f01           	movel %d1,%sp@-
 1e8:	2f02           	movel %d2,%sp@-
 1ea:	2f01           	movel %d1,%sp@-
 1ec:	2f02           	movel %d2,%sp@-
 1ee:	4e94           	jsr %a4@
 1f0:	4fef 000c      	lea %sp@(12),%sp
 1f4:	2e81           	movel %d1,%sp@
 1f6:	2f00           	movel %d0,%sp@-
 1f8:	4879 0000 0268 	pea 268 <_log+0x246>
 1fe:	4878 0006      	pea 6 <_log-0x1c>
 202:	4eb9 0000 0000 	jsr 0 <_log-0x22>
 208:	2f03           	movel %d3,%sp@-
 20a:	2f02           	movel %d2,%sp@-
 20c:	2f01           	movel %d1,%sp@-
 20e:	2f00           	movel %d0,%sp@-
 210:	4e94           	jsr %a4@
 212:	4fef 0010      	lea %sp@(16),%sp
 216:	2040           	moveal %d0,%a0
 218:	42a7           	clrl %sp@-
 21a:	2f3c 3fe0 0000 	movel #1071644672,%sp@-
 220:	2f01           	movel %d1,%sp@-
 222:	2f08           	movel %a0,%sp@-
 224:	4e93           	jsr %a3@
 226:	2240           	moveal %d0,%a1
 228:	2409           	movel %a1,%d2
 22a:	2601           	movel %d1,%d3
 22c:	4fef 0020      	lea %sp@(32),%sp
 230:	2f2e fffc      	movel %fp@(-4),%sp@-
 234:	4eb9 0000 0000 	jsr 0 <_log-0x22>
 23a:	2e83           	movel %d3,%sp@
 23c:	2f02           	movel %d2,%sp@-
 23e:	2f01           	movel %d1,%sp@-
 240:	2f00           	movel %d0,%sp@-
 242:	4e92           	jsr %a2@
 244:	4fef 000c      	lea %sp@(12),%sp
 248:	2ebc fefa 39ef 	movel #-17155601,%sp@
 24e:	2f3c 3fe6 2e42 	movel #1072049730,%sp@-
 254:	2f01           	movel %d1,%sp@-
 256:	2f00           	movel %d0,%sp@-
 258:	4e94           	jsr %a4@
 25a:	4fef 0010      	lea %sp@(16),%sp
 25e:	6000 ff22      	braw 182 <_log+0x160>
	...

Disassembly of section .data:

00000264 <.data>:
 264:	6c6f           	bges 2d5 <_log+0x2b3>
 266:	6700 4007      	beqw 426f <_log+0x424d>
 26a:	1547 652b      	moveb %d7,%a2@(25899)
 26e:	8307           	sbcd %d7,%d1
 270:	3fee           	.short 0x3fee
 272:	c709           	abcd %a1@-,%a3@-
 274:	dc39 5c74 3fe2 	addb 5c743fe2 <_log+0x5c743fc0>,%d6
 27a:	776c           	.short 0x776c
 27c:	51de           	sf %fp@+
 27e:	bf3e           	.short 0xbf3e
 280:	3fda           	.short 0x3fda
 282:	6174           	bsrs 2f8 <_log+0x2d6>
 284:	fdc4           	.short 0xfdc4
 286:	2b18           	movel %a0@+,%a5@-
 288:	3fd4           	.short 0x3fd4
 28a:	8512           	orb %d2,%a2@
 28c:	2000           	movel %d0,%d0
 28e:	0802 3fd0      	btst #-48,%d2
 292:	b900           	eorb %d4,%d0
 294:	f412           	.short 0xf412
 296:	b404           	cmpb %d4,%d2
 298:	3fcf           	.short 0x3fcf
 29a:	4c23           	.short 0x4c23
 29c:	1b86 6bdc      	moveb %d6,@(00000000)@(00000000)

sin.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_sin>:
   0:	48e7 3f38      	moveml %d2-%d7/%a2-%a4,%sp@-
   4:	242f 0028      	movel %sp@(40),%d2
   8:	262f 002c      	movel %sp@(44),%d3
   c:	47f9 0000 0000 	lea 0 <_sin>,%a3
  12:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  18:	2f3c c009 21fb 	movel #-1073143301,%sp@-
  1e:	2f03           	movel %d3,%sp@-
  20:	2f02           	movel %d2,%sp@-
  22:	4e93           	jsr %a3@
  24:	4fef 0010      	lea %sp@(16),%sp
  28:	45f9 0000 0000 	lea 0 <_sin>,%a2
  2e:	4a80           	tstl %d0
  30:	6d00 016c      	bltw 19e <_sin+0x19e>
  34:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  3a:	2f3c 4009 21fb 	movel #1074340347,%sp@-
  40:	2f03           	movel %d3,%sp@-
  42:	2f02           	movel %d2,%sp@-
  44:	4e92           	jsr %a2@
  46:	4fef 0010      	lea %sp@(16),%sp
  4a:	4a80           	tstl %d0
  4c:	6e00 0150      	bgtw 19e <_sin+0x19e>
  50:	49f9 0000 0000 	lea 0 <_sin>,%a4
  56:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  5c:	2f3c 3ff9 21fb 	movel #1073291771,%sp@-
  62:	2f03           	movel %d3,%sp@-
  64:	2f02           	movel %d2,%sp@-
  66:	4e92           	jsr %a2@
  68:	4fef 0010      	lea %sp@(16),%sp
  6c:	4a80           	tstl %d0
  6e:	6e00 01ac      	bgtw 21c <_sin+0x21c>
  72:	45f9 0000 0000 	lea 0 <_sin>,%a2
  78:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  7e:	2f3c bff9 21fb 	movel #-1074191877,%sp@-
  84:	2f03           	movel %d3,%sp@-
  86:	2f02           	movel %d2,%sp@-
  88:	4e93           	jsr %a3@
  8a:	4fef 0010      	lea %sp@(16),%sp
  8e:	4a80           	tstl %d0
  90:	6d00 020c      	bltw 29e <_sin+0x29e>
  94:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  9a:	2f3c 3fe9 21fb 	movel #1072243195,%sp@-
  a0:	2f03           	movel %d3,%sp@-
  a2:	2f02           	movel %d2,%sp@-
  a4:	4e94           	jsr %a4@
  a6:	4fef 0010      	lea %sp@(16),%sp
  aa:	4a80           	tstl %d0
  ac:	6e00 0268      	bgtw 316 <_sin+0x316>
  b0:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  b6:	2f3c bfe9 21fb 	movel #-1075240453,%sp@-
  bc:	2f03           	movel %d3,%sp@-
  be:	2f02           	movel %d2,%sp@-
  c0:	4e92           	jsr %a2@
  c2:	4fef 0010      	lea %sp@(16),%sp
  c6:	4a80           	tstl %d0
  c8:	6d00 0206      	bltw 2d0 <_sin+0x2d0>
  cc:	2f3c c55c 6e3a 	movel #-983798214,%sp@-
  d2:	2f3c 3544 28a2 	movel #893659298,%sp@-
  d8:	2f03           	movel %d3,%sp@-
  da:	2f02           	movel %d2,%sp@-
  dc:	4e92           	jsr %a2@
  de:	4fef 0010      	lea %sp@(16),%sp
  e2:	4a80           	tstl %d0
  e4:	6c1c           	bges 102 <_sin+0x102>
  e6:	2f3c c55c 6e3a 	movel #-983798214,%sp@-
  ec:	2f3c b544 28a2 	movel #-1253824350,%sp@-
  f2:	2f03           	movel %d3,%sp@-
  f4:	2f02           	movel %d2,%sp@-
  f6:	4e94           	jsr %a4@
  f8:	4fef 0010      	lea %sp@(16),%sp
  fc:	4a80           	tstl %d0
  fe:	6e00 014a      	bgtw 24a <_sin+0x24a>
 102:	45f9 0000 0000 	lea 0 <_sin>,%a2
 108:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 10e:	2f3c 3fe9 21fb 	movel #1072243195,%sp@-
 114:	2f03           	movel %d3,%sp@-
 116:	2f02           	movel %d2,%sp@-
 118:	4e92           	jsr %a2@
 11a:	4fef 0010      	lea %sp@(16),%sp
 11e:	2400           	movel %d0,%d2
 120:	2601           	movel %d1,%d3
 122:	47f9 0000 0000 	lea 0 <_sin>,%a3
 128:	2f01           	movel %d1,%sp@-
 12a:	2f02           	movel %d2,%sp@-
 12c:	2f01           	movel %d1,%sp@-
 12e:	2f02           	movel %d2,%sp@-
 130:	4e93           	jsr %a3@
 132:	4fef 0010      	lea %sp@(16),%sp
 136:	2800           	movel %d0,%d4
 138:	2a01           	movel %d1,%d5
 13a:	2f01           	movel %d1,%sp@-
 13c:	2f04           	movel %d4,%sp@-
 13e:	4879 0000 0358 	pea 358 <_sin+0x358>
 144:	4878 0003      	pea 3 <_sin+0x3>
 148:	49f9 0000 0000 	lea 0 <_sin>,%a4
 14e:	4e94           	jsr %a4@
 150:	2c00           	movel %d0,%d6
 152:	2e01           	movel %d1,%d7
 154:	2f05           	movel %d5,%sp@-
 156:	2f04           	movel %d4,%sp@-
 158:	4879 0000 0378 	pea 378 <_sin+0x378>
 15e:	4878 0003      	pea 3 <_sin+0x3>
 162:	4e94           	jsr %a4@
 164:	2f01           	movel %d1,%sp@-
 166:	2f00           	movel %d0,%sp@-
 168:	2f07           	movel %d7,%sp@-
 16a:	2f06           	movel %d6,%sp@-
 16c:	4e92           	jsr %a2@
 16e:	4fef 000c      	lea %sp@(12),%sp
 172:	2e83           	movel %d3,%sp@
 174:	2f02           	movel %d2,%sp@-
 176:	2f01           	movel %d1,%sp@-
 178:	2f00           	movel %d0,%sp@-
 17a:	4e93           	jsr %a3@
 17c:	2240           	moveal %d0,%a1
 17e:	2409           	movel %a1,%d2
 180:	2601           	movel %d1,%d3
 182:	2009           	movel %a1,%d0
 184:	23c0 0000 0018 	movel %d0,18 <_sin+0x18>
 18a:	23c1 0000 001c 	movel %d1,1c <_sin+0x1c>
 190:	4fef 0030      	lea %sp@(48),%sp
 194:	2002           	movel %d2,%d0
 196:	2203           	movel %d3,%d1
 198:	4cdf 1cfc      	moveml %sp@+,%d2-%d7/%a2-%a4
 19c:	4e75           	rts
 19e:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 1a4:	2f3c 4019 21fb 	movel #1075388923,%sp@-
 1aa:	2f03           	movel %d3,%sp@-
 1ac:	2f02           	movel %d2,%sp@-
 1ae:	4eb9 0000 0000 	jsr 0 <_sin>
 1b4:	2800           	movel %d0,%d4
 1b6:	2a01           	movel %d1,%d5
 1b8:	2404           	movel %d4,%d2
 1ba:	2605           	movel %d5,%d3
 1bc:	4fef 000c      	lea %sp@(12),%sp
 1c0:	2ebc 5444 2d18 	movel #1413754136,%sp@
 1c6:	2f3c 4009 21fb 	movel #1074340347,%sp@-
 1cc:	2f01           	movel %d1,%sp@-
 1ce:	2f04           	movel %d4,%sp@-
 1d0:	4e92           	jsr %a2@
 1d2:	4fef 0010      	lea %sp@(16),%sp
 1d6:	4a80           	tstl %d0
 1d8:	6f00 0086      	blew 260 <_sin+0x260>
 1dc:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 1e2:	2f3c 4019 21fb 	movel #1075388923,%sp@-
 1e8:	2f05           	movel %d5,%sp@-
 1ea:	2f04           	movel %d4,%sp@-
 1ec:	4eb9 0000 0000 	jsr 0 <_sin>
 1f2:	4fef 0010      	lea %sp@(16),%sp
 1f6:	2400           	movel %d0,%d2
 1f8:	2601           	movel %d1,%d3
 1fa:	49f9 0000 0000 	lea 0 <_sin>,%a4
 200:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 206:	2f3c 3ff9 21fb 	movel #1073291771,%sp@-
 20c:	2f03           	movel %d3,%sp@-
 20e:	2f02           	movel %d2,%sp@-
 210:	4e92           	jsr %a2@
 212:	4fef 0010      	lea %sp@(16),%sp
 216:	4a80           	tstl %d0
 218:	6f00 fe58      	blew 72 <_sin+0x72>
 21c:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 222:	2f3c 4009 21fb 	movel #1074340347,%sp@-
 228:	2f03           	movel %d3,%sp@-
 22a:	2f02           	movel %d2,%sp@-
 22c:	4eb9 0000 0000 	jsr 0 <_sin>
 232:	4fef 000c      	lea %sp@(12),%sp
 236:	2e81           	movel %d1,%sp@
 238:	2f00           	movel %d0,%sp@-
 23a:	4eba fdc4      	jsr %pc@(0 <_sin>)
 23e:	508f           	addql #8,%sp
 240:	2400           	movel %d0,%d2
 242:	0682 8000 0000 	addil #-2147483648,%d2
 248:	2601           	movel %d1,%d3
 24a:	23c2 0000 0018 	movel %d2,18 <_sin+0x18>
 250:	23c3 0000 001c 	movel %d3,1c <_sin+0x1c>
 256:	2002           	movel %d2,%d0
 258:	2203           	movel %d3,%d1
 25a:	4cdf 1cfc      	moveml %sp@+,%d2-%d7/%a2-%a4
 25e:	4e75           	rts
 260:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 266:	2f3c c009 21fb 	movel #-1073143301,%sp@-
 26c:	2f05           	movel %d5,%sp@-
 26e:	2f04           	movel %d4,%sp@-
 270:	4e93           	jsr %a3@
 272:	4fef 0010      	lea %sp@(16),%sp
 276:	4a80           	tstl %d0
 278:	6c00 fdd6      	bgew 50 <_sin+0x50>
 27c:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 282:	2f3c 4019 21fb 	movel #1075388923,%sp@-
 288:	2f05           	movel %d5,%sp@-
 28a:	2f04           	movel %d4,%sp@-
 28c:	4eb9 0000 0000 	jsr 0 <_sin>
 292:	4fef 0010      	lea %sp@(16),%sp
 296:	2400           	movel %d0,%d2
 298:	2601           	movel %d1,%d3
 29a:	6000 ff5e      	braw 1fa <_sin+0x1fa>
 29e:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 2a4:	2f3c 4009 21fb 	movel #1074340347,%sp@-
 2aa:	2f03           	movel %d3,%sp@-
 2ac:	2f02           	movel %d2,%sp@-
 2ae:	4eb9 0000 0000 	jsr 0 <_sin>
 2b4:	4fef 000c      	lea %sp@(12),%sp
 2b8:	2e81           	movel %d1,%sp@
 2ba:	2f00           	movel %d0,%sp@-
 2bc:	4eba fd42      	jsr %pc@(0 <_sin>)
 2c0:	508f           	addql #8,%sp
 2c2:	2400           	movel %d0,%d2
 2c4:	0682 8000 0000 	addil #-2147483648,%d2
 2ca:	2601           	movel %d1,%d3
 2cc:	6000 ff7c      	braw 24a <_sin+0x24a>
 2d0:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 2d6:	2f3c 3ff9 21fb 	movel #1073291771,%sp@-
 2dc:	2f03           	movel %d3,%sp@-
 2de:	2f02           	movel %d2,%sp@-
 2e0:	4eb9 0000 0000 	jsr 0 <_sin>
 2e6:	4fef 000c      	lea %sp@(12),%sp
 2ea:	2e81           	movel %d1,%sp@
 2ec:	2f00           	movel %d0,%sp@-
 2ee:	4eb9 0000 0000 	jsr 0 <_sin>
 2f4:	508f           	addql #8,%sp
 2f6:	2400           	movel %d0,%d2
 2f8:	0682 8000 0000 	addil #-2147483648,%d2
 2fe:	2601           	movel %d1,%d3
 300:	23c2 0000 0018 	movel %d2,18 <_sin+0x18>
 306:	23c3 0000 001c 	movel %d3,1c <_sin+0x1c>
 30c:	2002           	movel %d2,%d0
 30e:	2203           	movel %d3,%d1
 310:	4cdf 1cfc      	moveml %sp@+,%d2-%d7/%a2-%a4
 314:	4e75           	rts
 316:	2f03           	movel %d3,%sp@-
 318:	2f02           	movel %d2,%sp@-
 31a:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 320:	2f3c 3ff9 21fb 	movel #1073291771,%sp@-
 326:	4eb9 0000 0000 	jsr 0 <_sin>
 32c:	4fef 0010      	lea %sp@(16),%sp
 330:	2040           	moveal %d0,%a0
 332:	2f01           	movel %d1,%sp@-
 334:	2f08           	movel %a0,%sp@-
 336:	4eb9 0000 0000 	jsr 0 <_sin>
 33c:	508f           	addql #8,%sp
 33e:	2400           	movel %d0,%d2
 340:	2601           	movel %d1,%d3
 342:	23c0 0000 0018 	movel %d0,18 <_sin+0x18>
 348:	23c1 0000 001c 	movel %d1,1c <_sin+0x1c>
 34e:	2002           	movel %d2,%d0
 350:	2203           	movel %d3,%d1
 352:	4cdf 1cfc      	moveml %sp@+,%d2-%d7/%a2-%a4
 356:	4e75           	rts

Disassembly of section .data:

00000358 <.data>:
 358:	413f           	.short 0x413f
 35a:	8802           	orb %d2,%d4
 35c:	556d 5608      	subqw #2,%a5@(22024)
 360:	c106           	abcd %d6,%d0
 362:	2b1f           	movel %sp@+,%a5@-
 364:	e75e           	rolw #3,%d6
 366:	f372 40ac      	frestore %a2@(ffffffac,%d4:w)
 36a:	1fdc           	.short 0x1fdc
 36c:	840c           	.short 0x840c
 36e:	de97           	addl %sp@,%d7
 370:	c034 1b84      	andb @(00000000)@(00000000,%d1:l:2),%d0
 374:	0673 1fdb 4144 	addiw #8155,%a3@(00000000)@(00000000)
 37a:	12cc           	.short 0x12cc
 37c:	f483           	.short 0xf483
 37e:	8e55           	orw %a5@,%d7
 380:	40e3           	movew %sr,%a3@-
 382:	2cc7           	movel %d7,%fp@+
 384:	c4cf           	.short 0xc4cf
 386:	5738 4071      	subqb #3,4071 <_sin+0x4071>
 38a:	61e8           	bsrs 374 <.data+0x1c>
 38c:	38d1           	movew %a1@,%a4@+
 38e:	6677           	bnes 407 <_sin+0x407>
 390:	3ff0           	.short 0x3ff0
 392:	0000 0000      	orib #0,%d0
	...

cos.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_cos>:
   0:	48e7 3c38      	moveml %d2-%d5/%a2-%a4,%sp@-
   4:	282f 0020      	movel %sp@(32),%d4
   8:	2a2f 0024      	movel %sp@(36),%d5
   c:	47f9 0000 0000 	lea 0 <_cos>,%a3
  12:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  18:	2f3c c009 21fb 	movel #-1073143301,%sp@-
  1e:	2f05           	movel %d5,%sp@-
  20:	2f04           	movel %d4,%sp@-
  22:	4e93           	jsr %a3@
  24:	4fef 0010      	lea %sp@(16),%sp
  28:	45f9 0000 0000 	lea 0 <_cos>,%a2
  2e:	4a80           	tstl %d0
  30:	6d00 0176      	bltw 1a8 <_cos+0x1a8>
  34:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  3a:	2f3c 4009 21fb 	movel #1074340347,%sp@-
  40:	2f05           	movel %d5,%sp@-
  42:	2f04           	movel %d4,%sp@-
  44:	4e92           	jsr %a2@
  46:	4fef 0010      	lea %sp@(16),%sp
  4a:	4a80           	tstl %d0
  4c:	6e00 015a      	bgtw 1a8 <_cos+0x1a8>
  50:	49f9 0000 0000 	lea 0 <_cos>,%a4
  56:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  5c:	2f3c 3ff9 21fb 	movel #1073291771,%sp@-
  62:	2f05           	movel %d5,%sp@-
  64:	2f04           	movel %d4,%sp@-
  66:	4e92           	jsr %a2@
  68:	4fef 0010      	lea %sp@(16),%sp
  6c:	4a80           	tstl %d0
  6e:	6e00 01b6      	bgtw 226 <_cos+0x226>
  72:	45f9 0000 0000 	lea 0 <_cos>,%a2
  78:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  7e:	2f3c bff9 21fb 	movel #-1074191877,%sp@-
  84:	2f05           	movel %d5,%sp@-
  86:	2f04           	movel %d4,%sp@-
  88:	4e93           	jsr %a3@
  8a:	4fef 0010      	lea %sp@(16),%sp
  8e:	4a80           	tstl %d0
  90:	6d00 0212      	bltw 2a4 <_cos+0x2a4>
  94:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  9a:	2f3c 3fe9 21fb 	movel #1072243195,%sp@-
  a0:	2f05           	movel %d5,%sp@-
  a2:	2f04           	movel %d4,%sp@-
  a4:	4e94           	jsr %a4@
  a6:	4fef 0010      	lea %sp@(16),%sp
  aa:	4a80           	tstl %d0
  ac:	6e00 025c      	bgtw 30a <_cos+0x30a>
  b0:	2f3c 5444 2d18 	movel #1413754136,%sp@-
  b6:	2f3c bfe9 21fb 	movel #-1075240453,%sp@-
  bc:	2f05           	movel %d5,%sp@-
  be:	2f04           	movel %d4,%sp@-
  c0:	4e92           	jsr %a2@
  c2:	4fef 0010      	lea %sp@(16),%sp
  c6:	4a80           	tstl %d0
  c8:	6d00 0206      	bltw 2d0 <_cos+0x2d0>
  cc:	2f3c c55c 6e3a 	movel #-983798214,%sp@-
  d2:	2f3c 3544 28a2 	movel #893659298,%sp@-
  d8:	2f05           	movel %d5,%sp@-
  da:	2f04           	movel %d4,%sp@-
  dc:	4e92           	jsr %a2@
  de:	4fef 0010      	lea %sp@(16),%sp
  e2:	4a80           	tstl %d0
  e4:	6c1c           	bges 102 <_cos+0x102>
  e6:	2f3c c55c 6e3a 	movel #-983798214,%sp@-
  ec:	2f3c b544 28a2 	movel #-1253824350,%sp@-
  f2:	2f05           	movel %d5,%sp@-
  f4:	2f04           	movel %d4,%sp@-
  f6:	4e94           	jsr %a4@
  f8:	4fef 0010      	lea %sp@(16),%sp
  fc:	4a80           	tstl %d0
  fe:	6e00 0232      	bgtw 332 <_cos+0x332>
 102:	45f9 0000 0000 	lea 0 <_cos>,%a2
 108:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 10e:	2f3c 3fe9 21fb 	movel #1072243195,%sp@-
 114:	2f05           	movel %d5,%sp@-
 116:	2f04           	movel %d4,%sp@-
 118:	4e92           	jsr %a2@
 11a:	4fef 0010      	lea %sp@(16),%sp
 11e:	2040           	moveal %d0,%a0
 120:	2241           	moveal %d1,%a1
 122:	23c8 0000 0000 	movel %a0,0 <_cos>
 128:	23c9 0000 0004 	movel %a1,4 <_cos+0x4>
 12e:	2f01           	movel %d1,%sp@-
 130:	2f08           	movel %a0,%sp@-
 132:	2f01           	movel %d1,%sp@-
 134:	2f08           	movel %a0,%sp@-
 136:	4eb9 0000 0000 	jsr 0 <_cos>
 13c:	4fef 0010      	lea %sp@(16),%sp
 140:	2040           	moveal %d0,%a0
 142:	2241           	moveal %d1,%a1
 144:	23c8 0000 0000 	movel %a0,0 <_cos>
 14a:	23c9 0000 0004 	movel %a1,4 <_cos+0x4>
 150:	2f01           	movel %d1,%sp@-
 152:	2f08           	movel %a0,%sp@-
 154:	4879 0000 0380 	pea 380 <_cos+0x380>
 15a:	4878 0003      	pea 3 <_cos+0x3>
 15e:	47f9 0000 0000 	lea 0 <_cos>,%a3
 164:	4e93           	jsr %a3@
 166:	2400           	movel %d0,%d2
 168:	2601           	movel %d1,%d3
 16a:	2f39 0000 0004 	movel 4 <_cos+0x4>,%sp@-
 170:	2f39 0000 0000 	movel 0 <_cos>,%sp@-
 176:	4879 0000 03a0 	pea 3a0 <_cos+0x3a0>
 17c:	4878 0003      	pea 3 <_cos+0x3>
 180:	4e93           	jsr %a3@
 182:	2f01           	movel %d1,%sp@-
 184:	2f00           	movel %d0,%sp@-
 186:	2f03           	movel %d3,%sp@-
 188:	2f02           	movel %d2,%sp@-
 18a:	4e92           	jsr %a2@
 18c:	2800           	movel %d0,%d4
 18e:	2044           	moveal %d4,%a0
 190:	2241           	moveal %d1,%a1
 192:	23c8 0000 0018 	movel %a0,18 <_cos+0x18>
 198:	23c9 0000 001c 	movel %a1,1c <_cos+0x1c>
 19e:	4fef 0030      	lea %sp@(48),%sp
 1a2:	4cdf 1c3c      	moveml %sp@+,%d2-%d5/%a2-%a4
 1a6:	4e75           	rts
 1a8:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 1ae:	2f3c 4019 21fb 	movel #1075388923,%sp@-
 1b4:	2f05           	movel %d5,%sp@-
 1b6:	2f04           	movel %d4,%sp@-
 1b8:	4eb9 0000 0000 	jsr 0 <_cos>
 1be:	2400           	movel %d0,%d2
 1c0:	2601           	movel %d1,%d3
 1c2:	2802           	movel %d2,%d4
 1c4:	2a03           	movel %d3,%d5
 1c6:	4fef 000c      	lea %sp@(12),%sp
 1ca:	2ebc 5444 2d18 	movel #1413754136,%sp@
 1d0:	2f3c 4009 21fb 	movel #1074340347,%sp@-
 1d6:	2f01           	movel %d1,%sp@-
 1d8:	2f02           	movel %d2,%sp@-
 1da:	4e92           	jsr %a2@
 1dc:	4fef 0010      	lea %sp@(16),%sp
 1e0:	4a80           	tstl %d0
 1e2:	6f00 0082      	blew 266 <_cos+0x266>
 1e6:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 1ec:	2f3c 4019 21fb 	movel #1075388923,%sp@-
 1f2:	2f03           	movel %d3,%sp@-
 1f4:	2f02           	movel %d2,%sp@-
 1f6:	4eb9 0000 0000 	jsr 0 <_cos>
 1fc:	4fef 0010      	lea %sp@(16),%sp
 200:	2800           	movel %d0,%d4
 202:	2a01           	movel %d1,%d5
 204:	49f9 0000 0000 	lea 0 <_cos>,%a4
 20a:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 210:	2f3c 3ff9 21fb 	movel #1073291771,%sp@-
 216:	2f05           	movel %d5,%sp@-
 218:	2f04           	movel %d4,%sp@-
 21a:	4e92           	jsr %a2@
 21c:	4fef 0010      	lea %sp@(16),%sp
 220:	4a80           	tstl %d0
 222:	6f00 fe4e      	blew 72 <_cos+0x72>
 226:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 22c:	2f3c 4009 21fb 	movel #1074340347,%sp@-
 232:	2f05           	movel %d5,%sp@-
 234:	2f04           	movel %d4,%sp@-
 236:	4eb9 0000 0000 	jsr 0 <_cos>
 23c:	4fef 000c      	lea %sp@(12),%sp
 240:	2e81           	movel %d1,%sp@
 242:	2f00           	movel %d0,%sp@-
 244:	4eba fdba      	jsr %pc@(0 <_cos>)
 248:	508f           	addql #8,%sp
 24a:	0680 8000 0000 	addil #-2147483648,%d0
 250:	2040           	moveal %d0,%a0
 252:	2241           	moveal %d1,%a1
 254:	23c8 0000 0018 	movel %a0,18 <_cos+0x18>
 25a:	23c9 0000 001c 	movel %a1,1c <_cos+0x1c>
 260:	4cdf 1c3c      	moveml %sp@+,%d2-%d5/%a2-%a4
 264:	4e75           	rts
 266:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 26c:	2f3c c009 21fb 	movel #-1073143301,%sp@-
 272:	2f03           	movel %d3,%sp@-
 274:	2f02           	movel %d2,%sp@-
 276:	4e93           	jsr %a3@
 278:	4fef 0010      	lea %sp@(16),%sp
 27c:	4a80           	tstl %d0
 27e:	6c00 fdd0      	bgew 50 <_cos+0x50>
 282:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 288:	2f3c 4019 21fb 	movel #1075388923,%sp@-
 28e:	2f03           	movel %d3,%sp@-
 290:	2f02           	movel %d2,%sp@-
 292:	4eb9 0000 0000 	jsr 0 <_cos>
 298:	4fef 0010      	lea %sp@(16),%sp
 29c:	2800           	movel %d0,%d4
 29e:	2a01           	movel %d1,%d5
 2a0:	6000 ff62      	braw 204 <_cos+0x204>
 2a4:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 2aa:	2f3c 4009 21fb 	movel #1074340347,%sp@-
 2b0:	2f05           	movel %d5,%sp@-
 2b2:	2f04           	movel %d4,%sp@-
 2b4:	4eb9 0000 0000 	jsr 0 <_cos>
 2ba:	4fef 000c      	lea %sp@(12),%sp
 2be:	2e81           	movel %d1,%sp@
 2c0:	2f00           	movel %d0,%sp@-
 2c2:	4eba fd3c      	jsr %pc@(0 <_cos>)
 2c6:	508f           	addql #8,%sp
 2c8:	0680 8000 0000 	addil #-2147483648,%d0
 2ce:	6080           	bras 250 <_cos+0x250>
 2d0:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 2d6:	2f3c 3ff9 21fb 	movel #1073291771,%sp@-
 2dc:	2f05           	movel %d5,%sp@-
 2de:	2f04           	movel %d4,%sp@-
 2e0:	4eb9 0000 0000 	jsr 0 <_cos>
 2e6:	4fef 000c      	lea %sp@(12),%sp
 2ea:	2e81           	movel %d1,%sp@
 2ec:	2f00           	movel %d0,%sp@-
 2ee:	4eb9 0000 0000 	jsr 0 <_cos>
 2f4:	508f           	addql #8,%sp
 2f6:	2040           	moveal %d0,%a0
 2f8:	2241           	moveal %d1,%a1
 2fa:	23c8 0000 0018 	movel %a0,18 <_cos+0x18>
 300:	23c9 0000 001c 	movel %a1,1c <_cos+0x1c>
 306:	6000 ff58      	braw 260 <_cos+0x260>
 30a:	2f05           	movel %d5,%sp@-
 30c:	2f04           	movel %d4,%sp@-
 30e:	2f3c 5444 2d18 	movel #1413754136,%sp@-
 314:	2f3c 3ff9 21fb 	movel #1073291771,%sp@-
 31a:	4eb9 0000 0000 	jsr 0 <_cos>
 320:	4fef 000c      	lea %sp@(12),%sp
 324:	2e81           	movel %d1,%sp@
 326:	2f00           	movel %d0,%sp@-
 328:	4eb9 0000 0000 	jsr 0 <_cos>
 32e:	508f           	addql #8,%sp
 330:	60c4           	bras 2f6 <_cos+0x2f6>
 332:	2f05           	movel %d5,%sp@-
 334:	2f04           	movel %d4,%sp@-
 336:	2f05           	movel %d5,%sp@-
 338:	2f04           	movel %d4,%sp@-
 33a:	4eb9 0000 0000 	jsr 0 <_cos>
 340:	4fef 000c      	lea %sp@(12),%sp
 344:	2e81           	movel %d1,%sp@
 346:	2f00           	movel %d0,%sp@-
 348:	42a7           	clrl %sp@-
 34a:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
 350:	4eb9 0000 0000 	jsr 0 <_cos>
 356:	4fef 000c      	lea %sp@(12),%sp
 35a:	2e81           	movel %d1,%sp@
 35c:	2f00           	movel %d0,%sp@-
 35e:	4eb9 0000 0000 	jsr 0 <_cos>
 364:	2800           	movel %d0,%d4
 366:	2044           	moveal %d4,%a0
 368:	2241           	moveal %d1,%a1
 36a:	23c8 0000 0018 	movel %a0,18 <_cos+0x18>
 370:	23c9 0000 001c 	movel %a1,1c <_cos+0x1c>
 376:	508f           	addql #8,%sp
 378:	4cdf 1c3c      	moveml %sp@+,%d2-%d5/%a2-%a4
 37c:	4e75           	rts
	...

Disassembly of section .data:

00000380 <.data>:
 380:	4133 b12b 7745 	chkl %a3@(00007745,%a3:w)@(77a3c116),%d0
 386:	77a3 c116 
 38a:	dc9c           	addl %a4@+,%d6
 38c:	2818           	movel %a0@+,%d4
 38e:	d55c           	addw %d2,%a4@+
 390:	40ca           	.short 0x40ca
 392:	3c26           	movew %fp@-,%d6
 394:	86ba 16f4      	orl %pc@(1a8a <_cos+0x1a8a>),%d3
 398:	c05c           	andw %a4@+,%d0
 39a:	1420           	moveb %a0@-,%d2
 39c:	e724           	aslb %d3,%d4
 39e:	3436 4133 b12b 	movew %fp@(b12b7745,%d4:w)@(77a340d6),%d2
 3a4:	7745 77a3 40d6 
 3aa:	eaf1           	.short 0xeaf1
 3ac:	7a96           	moveq #-106,%d5
 3ae:	d04a           	addw %a2,%d0
 3b0:	406a 363e      	negxw %a2@(13886)
 3b4:	ee40           	asrw #7,%d0
 3b6:	c53e           	.short 0xc53e
 3b8:	3ff0           	.short 0x3ff0
 3ba:	0000 0000      	orib #0,%d0
	...

exp.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_exp-0xc>:
   0:	4f56           	.short 0x4f56
   2:	4552           	.short 0x4552
   4:	0055 4e44      	oriw #20036,%a5@
   8:	4552           	.short 0x4552
	...

0000000c <_exp>:
   c:	4e56 ffe8      	linkw %fp,#-24
  10:	48e7 3f3c      	moveml %d2-%d7/%a2-%a5,%sp@-
  14:	242e 0008      	movel %fp@(8),%d2
  18:	262e 000c      	movel %fp@(12),%d3
  1c:	2f3c fefa 39ef 	movel #-17155601,%sp@-
  22:	2f3c 4086 2e42 	movel #1082535490,%sp@-
  28:	2f03           	movel %d3,%sp@-
  2a:	2f02           	movel %d2,%sp@-
  2c:	4eb9 0000 0000 	jsr 0 <_exp-0xc>
  32:	4fef 0010      	lea %sp@(16),%sp
  36:	4a80           	tstl %d0
  38:	6f6c           	bles a6 <_exp+0x9a>
  3a:	7003           	moveq #3,%d0
  3c:	23c0 0000 0000 	movel %d0,0 <_exp-0xc>
  42:	23fc 7fee 42d1 	movel #2146321105,18 <_exp+0xc>
  48:	0000 0018 
  4c:	23fc 3077 3b76 	movel #813120374,1c <_exp+0x10>
  52:	0000 001c 
  56:	23fc 0000 0000 	movel #0,0 <_exp-0xc>
  5c:	0000 0000 
  60:	23fc 0000 0370 	movel #880,4 <_exp-0x8>
  66:	0000 0004 
  6a:	23c2 0000 0008 	movel %d2,8 <_exp-0x4>
  70:	23c3 0000 000c 	movel %d3,c <_exp>
  76:	4879 0000 0000 	pea 0 <_exp-0xc>
  7c:	4eb9 0000 0000 	jsr 0 <_exp-0xc>
  82:	588f           	addql #4,%sp
  84:	4a80           	tstl %d0
  86:	6608           	bnes 90 <_exp+0x84>
  88:	7058           	moveq #88,%d0
  8a:	23c0 0000 0000 	movel %d0,0 <_exp-0xc>
  90:	2039 0000 0018 	movel 18 <_exp+0xc>,%d0
  96:	2239 0000 001c 	movel 1c <_exp+0x10>,%d1
  9c:	4cee 3cfc ffc0 	moveml %fp@(-64),%d2-%d7/%a2-%a5
  a2:	4e5e           	unlk %fp
  a4:	4e75           	rts
  a6:	2f3c 6e3a 7b61 	movel #1849326433,%sp@-
  ac:	2f3c c086 28b7 	movel #-1064949577,%sp@-
  b2:	2f03           	movel %d3,%sp@-
  b4:	2f02           	movel %d2,%sp@-
  b6:	4eb9 0000 0000 	jsr 0 <_exp-0xc>
  bc:	4fef 0010      	lea %sp@(16),%sp
  c0:	4a80           	tstl %d0
  c2:	6e4a           	bgts 10e <_exp+0x102>
  c4:	7204           	moveq #4,%d1
  c6:	23c1 0000 0000 	movel %d1,0 <_exp-0xc>
  cc:	42b9 0000 0018 	clrl 18 <_exp+0xc>
  d2:	42b9 0000 001c 	clrl 1c <_exp+0x10>
  d8:	23fc 0000 0005 	movel #5,0 <_exp-0xc>
  de:	0000 0000 
  e2:	23fc 0000 0370 	movel #880,4 <_exp-0x8>
  e8:	0000 0004 
  ec:	23c2 0000 0008 	movel %d2,8 <_exp-0x4>
  f2:	23c3 0000 000c 	movel %d3,c <_exp>
  f8:	4879 0000 0000 	pea 0 <_exp-0xc>
  fe:	4eb9 0000 0000 	jsr 0 <_exp-0xc>
 104:	588f           	addql #4,%sp
 106:	4a80           	tstl %d0
 108:	6700 ff7e      	beqw 88 <_exp+0x7c>
 10c:	6082           	bras 90 <_exp+0x84>
 10e:	486e fff0      	pea %fp@(-16)
 112:	47f9 0000 0000 	lea 0 <_exp-0xc>,%a3
 118:	2f3c 652b 82fe 	movel #1697350398,%sp@-
 11e:	2f3c 3ff7 1547 	movel #1073157447,%sp@-
 124:	2f03           	movel %d3,%sp@-
 126:	2f02           	movel %d2,%sp@-
 128:	4e93           	jsr %a3@
 12a:	4fef 000c      	lea %sp@(12),%sp
 12e:	2e81           	movel %d1,%sp@
 130:	2f00           	movel %d0,%sp@-
 132:	4bf9 0000 0000 	lea 0 <_exp-0xc>,%a5
 138:	4e95           	jsr %a5@
 13a:	4878 0004      	pea 4 <_exp-0x8>
 13e:	2f01           	movel %d1,%sp@-
 140:	2f00           	movel %d0,%sp@-
 142:	49f9 0000 0000 	lea 0 <_exp-0xc>,%a4
 148:	4e94           	jsr %a4@
 14a:	2400           	movel %d0,%d2
 14c:	2601           	movel %d1,%d3
 14e:	45f9 0000 0000 	lea 0 <_exp-0xc>,%a2
 154:	2f2e fff4      	movel %fp@(-12),%sp@-
 158:	2f2e fff0      	movel %fp@(-16),%sp@-
 15c:	4e92           	jsr %a2@
 15e:	508f           	addql #8,%sp
 160:	2a00           	movel %d0,%d5
 162:	486e fff8      	pea %fp@(-8)
 166:	2f03           	movel %d3,%sp@-
 168:	2f02           	movel %d2,%sp@-
 16a:	4e95           	jsr %a5@
 16c:	4fef 0024      	lea %sp@(36),%sp
 170:	4878 fffc      	pea fffffffc <_exp+0xfffffff0>
 174:	2f01           	movel %d1,%sp@-
 176:	2f00           	movel %d0,%sp@-
 178:	4e94           	jsr %a4@
 17a:	2c00           	movel %d0,%d6
 17c:	2e01           	movel %d1,%d7
 17e:	2f2e fffc      	movel %fp@(-4),%sp@-
 182:	2f2e fff8      	movel %fp@(-8),%sp@-
 186:	4e92           	jsr %a2@
 188:	508f           	addql #8,%sp
 18a:	2800           	movel %d0,%d4
 18c:	2f07           	movel %d7,%sp@-
 18e:	2f06           	movel %d6,%sp@-
 190:	2f07           	movel %d7,%sp@-
 192:	2f06           	movel %d6,%sp@-
 194:	4e93           	jsr %a3@
 196:	4fef 0010      	lea %sp@(16),%sp
 19a:	2400           	movel %d0,%d2
 19c:	2601           	movel %d1,%d3
 19e:	45f9 0000 0000 	lea 0 <_exp-0xc>,%a2
 1a4:	2f3c 4f23 7e44 	movel #1327726148,%sp@-
 1aa:	2f3c 4034 d053 	movel #1077203027,%sp@-
 1b0:	2f01           	movel %d1,%sp@-
 1b2:	2f02           	movel %d2,%sp@-
 1b4:	4e92           	jsr %a2@
 1b6:	4fef 0010      	lea %sp@(16),%sp
 1ba:	2d40 ffe8      	movel %d0,%fp@(-24)
 1be:	2d41 ffec      	movel %d1,%fp@(-20)
 1c2:	202e ffe8      	movel %fp@(-24),%d0
 1c6:	222e ffec      	movel %fp@(-20),%d1
 1ca:	2d40 fff0      	movel %d0,%fp@(-16)
 1ce:	2d41 fff4      	movel %d1,%fp@(-12)
 1d2:	2f3c 1ac1 3af9 	movel #448871161,%sp@-
 1d8:	2f3c 3fad 92de 	movel #1068339934,%sp@-
 1de:	2f03           	movel %d3,%sp@-
 1e0:	2f02           	movel %d2,%sp@-
 1e2:	4e93           	jsr %a3@
 1e4:	4fef 000c      	lea %sp@(12),%sp
 1e8:	2ebc a35c a6dc 	movel #-1554209060,%sp@
 1ee:	2f3c 401c daa0 	movel #1075632800,%sp@-
 1f4:	2f01           	movel %d1,%sp@-
 1f6:	2f00           	movel %d0,%sp@-
 1f8:	4e92           	jsr %a2@
 1fa:	4fef 0010      	lea %sp@(16),%sp
 1fe:	2040           	moveal %d0,%a0
 200:	2f07           	movel %d7,%sp@-
 202:	2f06           	movel %d6,%sp@-
 204:	2f01           	movel %d1,%sp@-
 206:	2f08           	movel %a0,%sp@-
 208:	4e93           	jsr %a3@
 20a:	4fef 0010      	lea %sp@(16),%sp
 20e:	2400           	movel %d0,%d2
 210:	2601           	movel %d1,%d3
 212:	2f01           	movel %d1,%sp@-
 214:	2f02           	movel %d2,%sp@-
 216:	202e ffe8      	movel %fp@(-24),%d0
 21a:	222e ffec      	movel %fp@(-20),%d1
 21e:	2f01           	movel %d1,%sp@-
 220:	2f00           	movel %d0,%sp@-
 222:	4e92           	jsr %a2@
 224:	4fef 0010      	lea %sp@(16),%sp
 228:	2c00           	movel %d0,%d6
 22a:	2e01           	movel %d1,%d7
 22c:	2f03           	movel %d3,%sp@-
 22e:	2f02           	movel %d2,%sp@-
 230:	202e ffe8      	movel %fp@(-24),%d0
 234:	222e ffec      	movel %fp@(-20),%d1
 238:	2f01           	movel %d1,%sp@-
 23a:	2f00           	movel %d0,%sp@-
 23c:	4eb9 0000 0000 	jsr 0 <_exp-0xc>
 242:	4fef 000c      	lea %sp@(12),%sp
 246:	2e81           	movel %d1,%sp@
 248:	2f00           	movel %d0,%sp@-
 24a:	2f07           	movel %d7,%sp@-
 24c:	2f06           	movel %d6,%sp@-
 24e:	4eb9 0000 0000 	jsr 0 <_exp-0xc>
 254:	2240           	moveal %d0,%a1
 256:	2409           	movel %a1,%d2
 258:	2601           	movel %d1,%d3
 25a:	4fef 001c      	lea %sp@(28),%sp
 25e:	4a84           	tstl %d4
 260:	6d44           	blts 2a6 <_exp+0x29a>
 262:	e78c           	lsll #3,%d4
 264:	41fa 008a      	lea %pc@(2f0 <_exp+0x2e4>),%a0
 268:	2030 4800      	movel %a0@(00000000,%d4:l),%d0
 26c:	2230 4804      	movel %a0@(00000004,%d4:l),%d1
 270:	2f05           	movel %d5,%sp@-
 272:	2f01           	movel %d1,%sp@-
 274:	2f00           	movel %d0,%sp@-
 276:	2f03           	movel %d3,%sp@-
 278:	2f02           	movel %d2,%sp@-
 27a:	4e93           	jsr %a3@
 27c:	4fef 000c      	lea %sp@(12),%sp
 280:	2e81           	movel %d1,%sp@
 282:	2f00           	movel %d0,%sp@-
 284:	4e94           	jsr %a4@
 286:	2800           	movel %d0,%d4
 288:	2044           	moveal %d4,%a0
 28a:	2241           	moveal %d1,%a1
 28c:	23c8 0000 0018 	movel %a0,18 <_exp+0xc>
 292:	23c9 0000 001c 	movel %a1,1c <_exp+0x10>
 298:	4fef 000c      	lea %sp@(12),%sp
 29c:	4cee 3cfc ffc0 	moveml %fp@(-64),%d2-%d7/%a2-%a5
 2a2:	4e5e           	unlk %fp
 2a4:	4e75           	rts
 2a6:	4878 ffff      	pea ffffffff <_exp+0xfffffff3>
 2aa:	7210           	moveq #16,%d1
 2ac:	d881           	addl %d1,%d4
 2ae:	e78c           	lsll #3,%d4
 2b0:	41fa 003e      	lea %pc@(2f0 <_exp+0x2e4>),%a0
 2b4:	2f30 4804      	movel %a0@(00000004,%d4:l),%sp@-
 2b8:	2f30 4800      	movel %a0@(00000000,%d4:l),%sp@-
 2bc:	4e94           	jsr %a4@
 2be:	4fef 000c      	lea %sp@(12),%sp
 2c2:	2f05           	movel %d5,%sp@-
 2c4:	2f01           	movel %d1,%sp@-
 2c6:	2f00           	movel %d0,%sp@-
 2c8:	2f03           	movel %d3,%sp@-
 2ca:	2f02           	movel %d2,%sp@-
 2cc:	4e93           	jsr %a3@
 2ce:	4fef 000c      	lea %sp@(12),%sp
 2d2:	2e81           	movel %d1,%sp@
 2d4:	2f00           	movel %d0,%sp@-
 2d6:	4e94           	jsr %a4@
 2d8:	2800           	movel %d0,%d4
 2da:	2044           	moveal %d4,%a0
 2dc:	2241           	moveal %d1,%a1
 2de:	23c8 0000 0018 	movel %a0,18 <_exp+0xc>
 2e4:	23c9 0000 001c 	movel %a1,1c <_exp+0x10>
 2ea:	4fef 000c      	lea %sp@(12),%sp
 2ee:	60ac           	bras 29c <_exp+0x290>
 2f0:	3ff0           	.short 0x3ff0
 2f2:	0000 0000      	orib #0,%d0
 2f6:	0000 3ff0      	orib #-16,%d0
 2fa:	b558           	eorw %d2,%a0@+
 2fc:	6cf9           	bges 2f7 <_exp+0x2eb>
 2fe:	890f           	sbcd %sp@-,%a4@-
 300:	3ff1           	.short 0x3ff1
 302:	72b8           	moveq #-72,%d1
 304:	3c7d           	.short 0x3c7d
 306:	517b           	.short 0x517b
 308:	3ff2           	.short 0x3ff2
 30a:	387a 6e75      	moveaw %pc@(7181 <_exp+0x7175>),%a4
 30e:	6238           	bhis 348 <_exp+0x33c>
 310:	3ff3           	.short 0x3ff3
 312:	06fe           	.short 0x06fe
 314:	0a31 b715 3ff3 	eorib #21,@(dea64c12)@(34223ff4)
 31a:	dea6 4c12 3422 
 320:	3ff4 
 322:	bfda           	cmpal %a2@+,%sp
 324:	d536 2a27      	addb %d2,%fp@(00000027,%d2:l:2)
 328:	3ff5           	.short 0x3ff5
 32a:	ab07           	.short 0xab07
 32c:	dd48           	addxw %a0@-,%fp@-
 32e:	5429 3ff6      	addqb #2,%a1@(16374)
 332:	a09e           	.short 0xa09e
 334:	667f           	bnes 3b5 <_exp+0x3a9>
 336:	3bcd           	.short 0x3bcd
 338:	3ff7           	.short 0x3ff7
 33a:	a114           	.short 0xa114
 33c:	73eb           	.short 0x73eb
 33e:	0187           	bclr %d0,%d7
 340:	3ff8           	.short 0x3ff8
 342:	ace5           	.short 0xace5
 344:	422a a0db      	clrb %a2@(-24357)
 348:	3ff9           	.short 0x3ff9
 34a:	c491           	andl %a1@,%d2
 34c:	82a3           	orl %a3@-,%d1
 34e:	f090           	.short 0xf090
 350:	3ffa           	.short 0x3ffa
 352:	e89f           	rorl #4,%d7
 354:	995a           	subw %d4,%a2@+
 356:	d3ad 3ffc      	addl %d1,%a5@(16380)
 35a:	199b dd85      	moveb %a3@+,@(00000000)@(00000000,%a5:l:4)
 35e:	529c           	addql #1,%a4@+
 360:	3ffd           	.short 0x3ffd
 362:	5818           	addqb #4,%a0@+
 364:	dcfb a487      	addaw %pc@(2ed <_exp+0x2e1>,%a2:w:4),%fp
 368:	3ffe           	.short 0x3ffe
 36a:	a4af           	.short 0xa4af
 36c:	a2a4           	.short 0xa2a4
 36e:	90da           	subaw %a2@+,%a0

Disassembly of section .data:

00000370 <.data>:
 370:	6578           	bcss 3ea <_exp+0x3de>
 372:	7000           	moveq #0,%d0

max.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_max>:
   0:	48e7 3c00      	moveml %d2-%d5,%sp@-
   4:	242f 0014      	movel %sp@(20),%d2
   8:	262f 0018      	movel %sp@(24),%d3
   c:	282f 001c      	movel %sp@(28),%d4
  10:	2a2f 0020      	movel %sp@(32),%d5
  14:	2f05           	movel %d5,%sp@-
  16:	2f04           	movel %d4,%sp@-
  18:	2f03           	movel %d3,%sp@-
  1a:	2f02           	movel %d2,%sp@-
  1c:	4eb9 0000 0000 	jsr 0 <_max>
  22:	4fef 0010      	lea %sp@(16),%sp
  26:	4a80           	tstl %d0
  28:	6c04           	bges 2e <_max+0x2e>
  2a:	2404           	movel %d4,%d2
  2c:	2605           	movel %d5,%d3
  2e:	2002           	movel %d2,%d0
  30:	2203           	movel %d3,%d1
  32:	4cdf 003c      	moveml %sp@+,%d2-%d5
  36:	4e75           	rts

min.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_min>:
   0:	48e7 3c00      	moveml %d2-%d5,%sp@-
   4:	242f 0014      	movel %sp@(20),%d2
   8:	262f 0018      	movel %sp@(24),%d3
   c:	282f 001c      	movel %sp@(28),%d4
  10:	2a2f 0020      	movel %sp@(32),%d5
  14:	2f05           	movel %d5,%sp@-
  16:	2f04           	movel %d4,%sp@-
  18:	2f03           	movel %d3,%sp@-
  1a:	2f02           	movel %d2,%sp@-
  1c:	4eb9 0000 0000 	jsr 0 <_min>
  22:	4fef 0010      	lea %sp@(16),%sp
  26:	4a80           	tstl %d0
  28:	6f04           	bles 2e <_min+0x2e>
  2a:	2404           	movel %d4,%d2
  2c:	2605           	movel %d5,%d3
  2e:	2002           	movel %d2,%d0
  30:	2203           	movel %d3,%d1
  32:	4cdf 003c      	moveml %sp@+,%d2-%d5
  36:	4e75           	rts

floor.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_floor>:
   0:	4e56 0000      	linkw %fp,#0
   4:	486e 0008      	pea %fp@(8)
   8:	2f2e 000c      	movel %fp@(12),%sp@-
   c:	2f2e 0008      	movel %fp@(8),%sp@-
  10:	4eb9 0000 0000 	jsr 0 <_floor>
  16:	508f           	addql #8,%sp
  18:	4297           	clrl %sp@
  1a:	42a7           	clrl %sp@-
  1c:	2f01           	movel %d1,%sp@-
  1e:	2f00           	movel %d0,%sp@-
  20:	4eb9 0000 0000 	jsr 0 <_floor>
  26:	4fef 0010      	lea %sp@(16),%sp
  2a:	4a80           	tstl %d0
  2c:	6d0c           	blts 3a <_floor+0x3a>
  2e:	202e 0008      	movel %fp@(8),%d0
  32:	222e 000c      	movel %fp@(12),%d1
  36:	4e5e           	unlk %fp
  38:	4e75           	rts
  3a:	42a7           	clrl %sp@-
  3c:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  42:	2f2e 000c      	movel %fp@(12),%sp@-
  46:	2f2e 0008      	movel %fp@(8),%sp@-
  4a:	4eb9 0000 0000 	jsr 0 <_floor>
  50:	4fef 0010      	lea %sp@(16),%sp
  54:	4e5e           	unlk %fp
  56:	4e75           	rts

00000058 <_ceil>:
  58:	202f 0004      	movel %sp@(4),%d0
  5c:	0680 8000 0000 	addil #-2147483648,%d0
  62:	222f 0008      	movel %sp@(8),%d1
  66:	2f01           	movel %d1,%sp@-
  68:	2f00           	movel %d0,%sp@-
  6a:	4eba ff94      	jsr %pc@(0 <_floor>)
  6e:	508f           	addql #8,%sp
  70:	2240           	moveal %d0,%a1
  72:	d3fc 8000 0000 	addal #-2147483648,%a1
  78:	2009           	movel %a1,%d0
  7a:	4e75           	rts

pow.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_pow>:
   0:	48e7 3e20      	moveml %d2-%d6/%a2,%sp@-
   4:	282f 001c      	movel %sp@(28),%d4
   8:	2a2f 0020      	movel %sp@(32),%d5
   c:	242f 0024      	movel %sp@(36),%d2
  10:	262f 0028      	movel %sp@(40),%d3
  14:	45f9 0000 0000 	lea 0 <_pow>,%a2
  1a:	42a7           	clrl %sp@-
  1c:	42a7           	clrl %sp@-
  1e:	2f03           	movel %d3,%sp@-
  20:	2f02           	movel %d2,%sp@-
  22:	4e92           	jsr %a2@
  24:	4fef 0010      	lea %sp@(16),%sp
  28:	4a80           	tstl %d0
  2a:	662a           	bnes 56 <_pow+0x56>
  2c:	42a7           	clrl %sp@-
  2e:	42a7           	clrl %sp@-
  30:	2f05           	movel %d5,%sp@-
  32:	2f04           	movel %d4,%sp@-
  34:	4e92           	jsr %a2@
  36:	4fef 0010      	lea %sp@(16),%sp
  3a:	4a80           	tstl %d0
  3c:	6600 00d6      	bnew 114 <_pow+0x114>
  40:	7059           	moveq #89,%d0
  42:	23c0 0000 0000 	movel %d0,0 <_pow>
  48:	203c 7ff0 0000 	movel #2146435072,%d0
  4e:	7200           	moveq #0,%d1
  50:	4cdf 047c      	moveml %sp@+,%d2-%d6/%a2
  54:	4e75           	rts
  56:	42a7           	clrl %sp@-
  58:	42a7           	clrl %sp@-
  5a:	2f05           	movel %d5,%sp@-
  5c:	2f04           	movel %d4,%sp@-
  5e:	4e92           	jsr %a2@
  60:	4fef 0010      	lea %sp@(16),%sp
  64:	4a80           	tstl %d0
  66:	6620           	bnes 88 <_pow+0x88>
  68:	42a7           	clrl %sp@-
  6a:	42a7           	clrl %sp@-
  6c:	2f03           	movel %d3,%sp@-
  6e:	2f02           	movel %d2,%sp@-
  70:	4eb9 0000 0000 	jsr 0 <_pow>
  76:	4fef 0010      	lea %sp@(16),%sp
  7a:	4a80           	tstl %d0
  7c:	6fc2           	bles 40 <_pow+0x40>
  7e:	7000           	moveq #0,%d0
  80:	7200           	moveq #0,%d1
  82:	4cdf 047c      	moveml %sp@+,%d2-%d6/%a2
  86:	4e75           	rts
  88:	42a7           	clrl %sp@-
  8a:	42a7           	clrl %sp@-
  8c:	2f05           	movel %d5,%sp@-
  8e:	2f04           	movel %d4,%sp@-
  90:	4eb9 0000 0000 	jsr 0 <_pow>
  96:	4fef 0010      	lea %sp@(16),%sp
  9a:	4a80           	tstl %d0
  9c:	6c00 0084      	bgew 122 <_pow+0x122>
  a0:	2f03           	movel %d3,%sp@-
  a2:	2f02           	movel %d2,%sp@-
  a4:	4eb9 0000 0000 	jsr 0 <_pow>
  aa:	508f           	addql #8,%sp
  ac:	2c00           	movel %d0,%d6
  ae:	2f00           	movel %d0,%sp@-
  b0:	4eb9 0000 0000 	jsr 0 <_pow>
  b6:	2e83           	movel %d3,%sp@
  b8:	2f02           	movel %d2,%sp@-
  ba:	2f01           	movel %d1,%sp@-
  bc:	2f00           	movel %d0,%sp@-
  be:	4eb9 0000 0000 	jsr 0 <_pow>
  c4:	4fef 0010      	lea %sp@(16),%sp
  c8:	4a80           	tstl %d0
  ca:	6600 ff74      	bnew 40 <_pow+0x40>
  ce:	2004           	movel %d4,%d0
  d0:	0680 8000 0000 	addil #-2147483648,%d0
  d6:	2f05           	movel %d5,%sp@-
  d8:	2f00           	movel %d0,%sp@-
  da:	4eb9 0000 0000 	jsr 0 <_pow>
  e0:	2f03           	movel %d3,%sp@-
  e2:	2f02           	movel %d2,%sp@-
  e4:	2f01           	movel %d1,%sp@-
  e6:	2f00           	movel %d0,%sp@-
  e8:	4eb9 0000 0000 	jsr 0 <_pow>
  ee:	4fef 000c      	lea %sp@(12),%sp
  f2:	2e81           	movel %d1,%sp@
  f4:	2f00           	movel %d0,%sp@-
  f6:	4eb9 0000 0000 	jsr 0 <_pow>
  fc:	4fef 0010      	lea %sp@(16),%sp
 100:	0806 0000      	btst #0,%d6
 104:	6700 ff4a      	beqw 50 <_pow+0x50>
 108:	0680 8000 0000 	addil #-2147483648,%d0
 10e:	4cdf 047c      	moveml %sp@+,%d2-%d6/%a2
 112:	4e75           	rts
 114:	203c 3ff0 0000 	movel #1072693248,%d0
 11a:	7200           	moveq #0,%d1
 11c:	4cdf 047c      	moveml %sp@+,%d2-%d6/%a2
 120:	4e75           	rts
 122:	2f05           	movel %d5,%sp@-
 124:	2f04           	movel %d4,%sp@-
 126:	4eb9 0000 0000 	jsr 0 <_pow>
 12c:	588f           	addql #4,%sp
 12e:	2e83           	movel %d3,%sp@
 130:	2f02           	movel %d2,%sp@-
 132:	2f01           	movel %d1,%sp@-
 134:	2f00           	movel %d0,%sp@-
 136:	4eb9 0000 0000 	jsr 0 <_pow>
 13c:	4fef 0010      	lea %sp@(16),%sp
 140:	2f40 001c      	movel %d0,%sp@(28)
 144:	2f41 0020      	movel %d1,%sp@(32)
 148:	4cdf 047c      	moveml %sp@+,%d2-%d6/%a2
 14c:	4ef9 0000 0000 	jmp 0 <_pow>
	...

sign.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_copysign>:
   0:	4cef 0003 0004 	moveml %sp@(4),%d0-%d1
   6:	082f 001f 000c 	btst #31,%sp@(12)
   c:	6700 0008      	beqw 16 <_copysign+0x16>
  10:	08c0 001f      	bset #31,%d0
  14:	4e75           	rts
  16:	0880 001f      	bclr #31,%d0
  1a:	4e75           	rts

mod.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_fmod>:
   0:	4e56 fff8      	linkw %fp,#-8
   4:	48e7 3c00      	moveml %d2-%d5,%sp@-
   8:	242e 0008      	movel %fp@(8),%d2
   c:	262e 000c      	movel %fp@(12),%d3
  10:	282e 0010      	movel %fp@(16),%d4
  14:	2a2e 0014      	movel %fp@(20),%d5
  18:	486e fff8      	pea %fp@(-8)
  1c:	2f05           	movel %d5,%sp@-
  1e:	2f04           	movel %d4,%sp@-
  20:	2f03           	movel %d3,%sp@-
  22:	2f02           	movel %d2,%sp@-
  24:	4eb9 0000 0000 	jsr 0 <_fmod>
  2a:	4fef 000c      	lea %sp@(12),%sp
  2e:	2e81           	movel %d1,%sp@
  30:	2f00           	movel %d0,%sp@-
  32:	4eb9 0000 0000 	jsr 0 <_fmod>
  38:	2f2e fffc      	movel %fp@(-4),%sp@-
  3c:	2f2e fff8      	movel %fp@(-8),%sp@-
  40:	2f05           	movel %d5,%sp@-
  42:	2f04           	movel %d4,%sp@-
  44:	4eb9 0000 0000 	jsr 0 <_fmod>
  4a:	4fef 000c      	lea %sp@(12),%sp
  4e:	2e81           	movel %d1,%sp@
  50:	2f00           	movel %d0,%sp@-
  52:	2f03           	movel %d3,%sp@-
  54:	2f02           	movel %d2,%sp@-
  56:	4eb9 0000 0000 	jsr 0 <_fmod>
  5c:	4fef 001c      	lea %sp@(28),%sp
  60:	2240           	moveal %d0,%a1
  62:	2009           	movel %a1,%d0
  64:	4cee 003c ffe8 	moveml %fp@(-24),%d2-%d5
  6a:	4e5e           	unlk %fp
  6c:	4e75           	rts
	...

poly.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_poly>:
   0:	48e7 2f38      	moveml %d2/%d4-%d7/%a2-%a4,%sp@-
   4:	242f 0024      	movel %sp@(36),%d2
   8:	2c2f 002c      	movel %sp@(44),%d6
   c:	2e2f 0030      	movel %sp@(48),%d7
  10:	2002           	movel %d2,%d0
  12:	e788           	lsll #3,%d0
  14:	246f 0028      	moveal %sp@(40),%a2
  18:	d5c0           	addal %d0,%a2
  1a:	2812           	movel %a2@,%d4
  1c:	2a2a 0004      	movel %a2@(4),%d5
  20:	4a82           	tstl %d2
  22:	6f3c           	bles 60 <_poly+0x60>
  24:	5382           	subql #1,%d2
  26:	47f9 0000 0000 	lea 0 <_poly>,%a3
  2c:	49f9 0000 0000 	lea 0 <_poly>,%a4
  32:	2f05           	movel %d5,%sp@-
  34:	2f04           	movel %d4,%sp@-
  36:	2f07           	movel %d7,%sp@-
  38:	2f06           	movel %d6,%sp@-
  3a:	4e93           	jsr %a3@
  3c:	4fef 0010      	lea %sp@(16),%sp
  40:	2040           	moveal %d0,%a0
  42:	2f22           	movel %a2@-,%sp@-
  44:	2f22           	movel %a2@-,%sp@-
  46:	2f01           	movel %d1,%sp@-
  48:	2f08           	movel %a0,%sp@-
  4a:	4e94           	jsr %a4@
  4c:	4fef 0010      	lea %sp@(16),%sp
  50:	2240           	moveal %d0,%a1
  52:	2809           	movel %a1,%d4
  54:	2a01           	movel %d1,%d5
  56:	51ca ffda      	dbf %d2,32 <_poly+0x32>
  5a:	4242           	clrw %d2
  5c:	5382           	subql #1,%d2
  5e:	64d2           	bccs 32 <_poly+0x32>
  60:	2004           	movel %d4,%d0
  62:	2205           	movel %d5,%d1
  64:	4cdf 1cf4      	moveml %sp@+,%d2/%d4-%d7/%a2-%a4
  68:	4e75           	rts
	...

dabs.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_dabs>:
   0:	4cef 0003 0004 	moveml %sp@(4),%d0-%d1
   6:	0880 001f      	bclr #31,%d0
   a:	4e75           	rts

sqrt.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_sqrt-0x2>:
   0:	4e75           	rts

00000002 <_sqrt>:
   2:	4e56 ffdc      	linkw %fp,#-36
   6:	48e7 3b38      	moveml %d2-%d4/%d6-%d7/%a2-%a4,%sp@-
   a:	242e 0008      	movel %fp@(8),%d2
   e:	262e 000c      	movel %fp@(12),%d3
  12:	42a7           	clrl %sp@-
  14:	42a7           	clrl %sp@-
  16:	2f03           	movel %d3,%sp@-
  18:	2f02           	movel %d2,%sp@-
  1a:	4eb9 0000 0000 	jsr 0 <_sqrt-0x2>
  20:	4fef 0010      	lea %sp@(16),%sp
  24:	4a80           	tstl %d0
  26:	6700 0174      	beqw 19c <_sqrt+0x19a>
  2a:	42a7           	clrl %sp@-
  2c:	42a7           	clrl %sp@-
  2e:	2f03           	movel %d3,%sp@-
  30:	2f02           	movel %d2,%sp@-
  32:	4eb9 0000 0000 	jsr 0 <_sqrt-0x2>
  38:	4fef 0010      	lea %sp@(16),%sp
  3c:	4a80           	tstl %d0
  3e:	6c3e           	bges 7e <_sqrt+0x7c>
  40:	7001           	moveq #1,%d0
  42:	2d40 ffdc      	movel %d0,%fp@(-36)
  46:	2d7c 0000 031c 	movel #796,%fp@(-32)
  4c:	ffe0 
  4e:	2d42 ffe4      	movel %d2,%fp@(-28)
  52:	2d43 ffe8      	movel %d3,%fp@(-24)
  56:	486e ffdc      	pea %fp@(-36)
  5a:	4eb9 0000 0000 	jsr 0 <_sqrt-0x2>
  60:	588f           	addql #4,%sp
  62:	4a80           	tstl %d0
  64:	6600 0144      	bnew 1aa <_sqrt+0x1a8>
  68:	7059           	moveq #89,%d0
  6a:	23c0 0000 0000 	movel %d0,0 <_sqrt-0x2>
  70:	4200           	clrb %d0
  72:	7200           	moveq #0,%d1
  74:	4cee 1cdc ffbc 	moveml %fp@(-68),%d2-%d4/%d6-%d7/%a2-%a4
  7a:	4e5e           	unlk %fp
  7c:	4e75           	rts
  7e:	486e fffc      	pea %fp@(-4)
  82:	2f03           	movel %d3,%sp@-
  84:	2f02           	movel %d2,%sp@-
  86:	4eb9 0000 0000 	jsr 0 <_sqrt-0x2>
  8c:	2c00           	movel %d0,%d6
  8e:	2e01           	movel %d1,%d7
  90:	282e fffc      	movel %fp@(-4),%d4
  94:	4fef 000c      	lea %sp@(12),%sp
  98:	47f9 0000 0000 	lea 0 <_sqrt-0x2>,%a3
  9e:	0804 0000      	btst #0,%d4
  a2:	6600 0118      	bnew 1bc <_sqrt+0x1ba>
  a6:	49f9 0000 0000 	lea 0 <_sqrt-0x2>,%a4
  ac:	2f3c 0d72 43ba 	movel #225592250,%sp@-
  b2:	2f3c bfbc 4cc6 	movel #-1078178618,%sp@-
  b8:	2f07           	movel %d7,%sp@-
  ba:	2f06           	movel %d6,%sp@-
  bc:	4e94           	jsr %a4@
  be:	4fef 0010      	lea %sp@(16),%sp
  c2:	45f9 0000 0000 	lea 0 <_sqrt-0x2>,%a2
  c8:	2f3c d333 325d 	movel #-751619491,%sp@-
  ce:	2f3c 3fe7 edbc 	movel #1072164284,%sp@-
  d4:	2f01           	movel %d1,%sp@-
  d6:	2f00           	movel %d0,%sp@-
  d8:	4e92           	jsr %a2@
  da:	4fef 000c      	lea %sp@(12),%sp
  de:	2e87           	movel %d7,%sp@
  e0:	2f06           	movel %d6,%sp@-
  e2:	2f01           	movel %d1,%sp@-
  e4:	2f00           	movel %d0,%sp@-
  e6:	4e94           	jsr %a4@
  e8:	4fef 000c      	lea %sp@(12),%sp
  ec:	2ebc 5aa2 6978 	movel #1520593272,%sp@
  f2:	2f3c 3fd7 184c 	movel #1071061068,%sp@-
  f8:	2f01           	movel %d1,%sp@-
  fa:	2f00           	movel %d0,%sp@-
  fc:	4e92           	jsr %a2@
  fe:	4fef 0010      	lea %sp@(16),%sp
 102:	2400           	movel %d0,%d2
 104:	2601           	movel %d1,%d3
 106:	49f9 0000 0000 	lea 0 <_sqrt-0x2>,%a4
 10c:	2f01           	movel %d1,%sp@-
 10e:	2f02           	movel %d2,%sp@-
 110:	2f07           	movel %d7,%sp@-
 112:	2f06           	movel %d6,%sp@-
 114:	4e94           	jsr %a4@
 116:	4fef 000c      	lea %sp@(12),%sp
 11a:	2e83           	movel %d3,%sp@
 11c:	2f02           	movel %d2,%sp@-
 11e:	2f01           	movel %d1,%sp@-
 120:	2f00           	movel %d0,%sp@-
 122:	4e92           	jsr %a2@
 124:	4fef 0010      	lea %sp@(16),%sp
 128:	2040           	moveal %d0,%a0
 12a:	4878 ffff      	pea ffffffff <_hypot+0xfffffd41>
 12e:	2f01           	movel %d1,%sp@-
 130:	2f08           	movel %a0,%sp@-
 132:	4e93           	jsr %a3@
 134:	2400           	movel %d0,%d2
 136:	2601           	movel %d1,%d3
 138:	2f03           	movel %d3,%sp@-
 13a:	2f00           	movel %d0,%sp@-
 13c:	2f07           	movel %d7,%sp@-
 13e:	2f06           	movel %d6,%sp@-
 140:	4e94           	jsr %a4@
 142:	4fef 000c      	lea %sp@(12),%sp
 146:	2e83           	movel %d3,%sp@
 148:	2f02           	movel %d2,%sp@-
 14a:	2f01           	movel %d1,%sp@-
 14c:	2f00           	movel %d0,%sp@-
 14e:	4e92           	jsr %a2@
 150:	4fef 0010      	lea %sp@(16),%sp
 154:	2040           	moveal %d0,%a0
 156:	4878 ffff      	pea ffffffff <_hypot+0xfffffd41>
 15a:	2f01           	movel %d1,%sp@-
 15c:	2f08           	movel %a0,%sp@-
 15e:	4e93           	jsr %a3@
 160:	2400           	movel %d0,%d2
 162:	2601           	movel %d1,%d3
 164:	e284           	asrl #1,%d4
 166:	2044           	moveal %d4,%a0
 168:	4868 ffff      	pea %a0@(-1)
 16c:	2f03           	movel %d3,%sp@-
 16e:	2f00           	movel %d0,%sp@-
 170:	2f07           	movel %d7,%sp@-
 172:	2f06           	movel %d6,%sp@-
 174:	4e94           	jsr %a4@
 176:	4fef 000c      	lea %sp@(12),%sp
 17a:	2e83           	movel %d3,%sp@
 17c:	2f02           	movel %d2,%sp@-
 17e:	2f01           	movel %d1,%sp@-
 180:	2f00           	movel %d0,%sp@-
 182:	4e92           	jsr %a2@
 184:	4fef 000c      	lea %sp@(12),%sp
 188:	2e81           	movel %d1,%sp@
 18a:	2f00           	movel %d0,%sp@-
 18c:	4e93           	jsr %a3@
 18e:	4fef 0024      	lea %sp@(36),%sp
 192:	4cee 1cdc ffbc 	moveml %fp@(-68),%d2-%d4/%d6-%d7/%a2-%a4
 198:	4e5e           	unlk %fp
 19a:	4e75           	rts
 19c:	7000           	moveq #0,%d0
 19e:	7200           	moveq #0,%d1
 1a0:	4cee 1cdc ffbc 	moveml %fp@(-68),%d2-%d4/%d6-%d7/%a2-%a4
 1a6:	4e5e           	unlk %fp
 1a8:	4e75           	rts
 1aa:	202e fff4      	movel %fp@(-12),%d0
 1ae:	222e fff8      	movel %fp@(-8),%d1
 1b2:	4cee 1cdc ffbc 	moveml %fp@(-68),%d2-%d4/%d6-%d7/%a2-%a4
 1b8:	4e5e           	unlk %fp
 1ba:	4e75           	rts
 1bc:	4878 0001      	pea 1 <_sqrt-0x1>
 1c0:	2f07           	movel %d7,%sp@-
 1c2:	2f00           	movel %d0,%sp@-
 1c4:	4e93           	jsr %a3@
 1c6:	2c00           	movel %d0,%d6
 1c8:	2e01           	movel %d1,%d7
 1ca:	4fef 000c      	lea %sp@(12),%sp
 1ce:	49f9 0000 0000 	lea 0 <_sqrt-0x2>,%a4
 1d4:	2f3c 0d72 43ba 	movel #225592250,%sp@-
 1da:	2f3c bfbc 4cc6 	movel #-1078178618,%sp@-
 1e0:	2f07           	movel %d7,%sp@-
 1e2:	2f06           	movel %d6,%sp@-
 1e4:	4e94           	jsr %a4@
 1e6:	4fef 0010      	lea %sp@(16),%sp
 1ea:	45f9 0000 0000 	lea 0 <_sqrt-0x2>,%a2
 1f0:	2f3c d333 325d 	movel #-751619491,%sp@-
 1f6:	2f3c 3fe7 edbc 	movel #1072164284,%sp@-
 1fc:	2f01           	movel %d1,%sp@-
 1fe:	2f00           	movel %d0,%sp@-
 200:	4e92           	jsr %a2@
 202:	4fef 000c      	lea %sp@(12),%sp
 206:	2e87           	movel %d7,%sp@
 208:	2f06           	movel %d6,%sp@-
 20a:	2f01           	movel %d1,%sp@-
 20c:	2f00           	movel %d0,%sp@-
 20e:	4e94           	jsr %a4@
 210:	4fef 000c      	lea %sp@(12),%sp
 214:	2ebc 5aa2 6978 	movel #1520593272,%sp@
 21a:	2f3c 3fd7 184c 	movel #1071061068,%sp@-
 220:	2f01           	movel %d1,%sp@-
 222:	2f00           	movel %d0,%sp@-
 224:	4e92           	jsr %a2@
 226:	4fef 0010      	lea %sp@(16),%sp
 22a:	2400           	movel %d0,%d2
 22c:	2601           	movel %d1,%d3
 22e:	49f9 0000 0000 	lea 0 <_sqrt-0x2>,%a4
 234:	2f01           	movel %d1,%sp@-
 236:	2f02           	movel %d2,%sp@-
 238:	2f07           	movel %d7,%sp@-
 23a:	2f06           	movel %d6,%sp@-
 23c:	4e94           	jsr %a4@
 23e:	4fef 000c      	lea %sp@(12),%sp
 242:	2e83           	movel %d3,%sp@
 244:	2f02           	movel %d2,%sp@-
 246:	2f01           	movel %d1,%sp@-
 248:	2f00           	movel %d0,%sp@-
 24a:	4e92           	jsr %a2@
 24c:	4fef 0010      	lea %sp@(16),%sp
 250:	2040           	moveal %d0,%a0
 252:	4878 ffff      	pea ffffffff <_hypot+0xfffffd41>
 256:	2f01           	movel %d1,%sp@-
 258:	2f08           	movel %a0,%sp@-
 25a:	4e93           	jsr %a3@
 25c:	2400           	movel %d0,%d2
 25e:	2601           	movel %d1,%d3
 260:	2f03           	movel %d3,%sp@-
 262:	2f00           	movel %d0,%sp@-
 264:	2f07           	movel %d7,%sp@-
 266:	2f06           	movel %d6,%sp@-
 268:	4e94           	jsr %a4@
 26a:	4fef 000c      	lea %sp@(12),%sp
 26e:	2e83           	movel %d3,%sp@
 270:	2f02           	movel %d2,%sp@-
 272:	2f01           	movel %d1,%sp@-
 274:	2f00           	movel %d0,%sp@-
 276:	4e92           	jsr %a2@
 278:	4fef 0010      	lea %sp@(16),%sp
 27c:	2040           	moveal %d0,%a0
 27e:	4878 ffff      	pea ffffffff <_hypot+0xfffffd41>
 282:	2f01           	movel %d1,%sp@-
 284:	2f08           	movel %a0,%sp@-
 286:	4e93           	jsr %a3@
 288:	2400           	movel %d0,%d2
 28a:	2601           	movel %d1,%d3
 28c:	e284           	asrl #1,%d4
 28e:	2044           	moveal %d4,%a0
 290:	4868 ffff      	pea %a0@(-1)
 294:	2f03           	movel %d3,%sp@-
 296:	2f00           	movel %d0,%sp@-
 298:	2f07           	movel %d7,%sp@-
 29a:	2f06           	movel %d6,%sp@-
 29c:	4e94           	jsr %a4@
 29e:	4fef 000c      	lea %sp@(12),%sp
 2a2:	2e83           	movel %d3,%sp@
 2a4:	2f02           	movel %d2,%sp@-
 2a6:	2f01           	movel %d1,%sp@-
 2a8:	2f00           	movel %d0,%sp@-
 2aa:	4e92           	jsr %a2@
 2ac:	4fef 000c      	lea %sp@(12),%sp
 2b0:	2e81           	movel %d1,%sp@
 2b2:	2f00           	movel %d0,%sp@-
 2b4:	4e93           	jsr %a3@
 2b6:	4fef 0024      	lea %sp@(36),%sp
 2ba:	6000 fed6      	braw 192 <_sqrt+0x190>

000002be <_hypot>:
 2be:	48e7 3c20      	moveml %d2-%d5/%a2,%sp@-
 2c2:	202f 0018      	movel %sp@(24),%d0
 2c6:	222f 001c      	movel %sp@(28),%d1
 2ca:	242f 0020      	movel %sp@(32),%d2
 2ce:	262f 0024      	movel %sp@(36),%d3
 2d2:	45f9 0000 0000 	lea 0 <_sqrt-0x2>,%a2
 2d8:	2f01           	movel %d1,%sp@-
 2da:	2f00           	movel %d0,%sp@-
 2dc:	2f01           	movel %d1,%sp@-
 2de:	2f00           	movel %d0,%sp@-
 2e0:	4e92           	jsr %a2@
 2e2:	4fef 0010      	lea %sp@(16),%sp
 2e6:	2800           	movel %d0,%d4
 2e8:	2a01           	movel %d1,%d5
 2ea:	2f03           	movel %d3,%sp@-
 2ec:	2f02           	movel %d2,%sp@-
 2ee:	2f03           	movel %d3,%sp@-
 2f0:	2f02           	movel %d2,%sp@-
 2f2:	4e92           	jsr %a2@
 2f4:	4fef 000c      	lea %sp@(12),%sp
 2f8:	2e81           	movel %d1,%sp@
 2fa:	2f00           	movel %d0,%sp@-
 2fc:	2f05           	movel %d5,%sp@-
 2fe:	2f04           	movel %d4,%sp@-
 300:	4eb9 0000 0000 	jsr 0 <_sqrt-0x2>
 306:	4fef 0010      	lea %sp@(16),%sp
 30a:	2f40 0018      	movel %d0,%sp@(24)
 30e:	2f41 001c      	movel %d1,%sp@(28)
 312:	4cdf 043c      	moveml %sp@+,%d2-%d5/%a2
 316:	6000 fcea      	braw 2 <_sqrt>
	...

Disassembly of section .data:

0000031c <.data>:
 31c:	7371           	.short 0x7371
 31e:	7274           	moveq #116,%d1
 320:	0000 0000      	orib #0,%d0

rint.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_rint>:
   0:	4e56 fff8      	linkw %fp,#-8
   4:	48e7 3800      	moveml %d2-%d4,%sp@-
   8:	486e fff8      	pea %fp@(-8)
   c:	2f2e 000c      	movel %fp@(12),%sp@-
  10:	2f2e 0008      	movel %fp@(8),%sp@-
  14:	4eb9 0000 0000 	jsr 0 <_rint>
  1a:	2400           	movel %d0,%d2
  1c:	2601           	movel %d1,%d3
  1e:	2f2e fffc      	movel %fp@(-4),%sp@-
  22:	2f2e fff8      	movel %fp@(-8),%sp@-
  26:	4eb9 0000 0000 	jsr 0 <_rint>
  2c:	2800           	movel %d0,%d4
  2e:	4fef 0010      	lea %sp@(16),%sp
  32:	4297           	clrl %sp@
  34:	2f3c 3fe0 0000 	movel #1071644672,%sp@-
  3a:	2f03           	movel %d3,%sp@-
  3c:	2f02           	movel %d2,%sp@-
  3e:	4eb9 0000 0000 	jsr 0 <_rint>
  44:	4fef 0010      	lea %sp@(16),%sp
  48:	4a80           	tstl %d0
  4a:	6e20           	bgts 6c <_rint+0x6c>
  4c:	42a7           	clrl %sp@-
  4e:	2f3c 3fe0 0000 	movel #1071644672,%sp@-
  54:	2f03           	movel %d3,%sp@-
  56:	2f02           	movel %d2,%sp@-
  58:	4eb9 0000 0000 	jsr 0 <_rint>
  5e:	4fef 0010      	lea %sp@(16),%sp
  62:	4a80           	tstl %d0
  64:	6608           	bnes 6e <_rint+0x6e>
  66:	0804 0000      	btst #0,%d4
  6a:	6702           	beqs 6e <_rint+0x6e>
  6c:	5284           	addql #1,%d4
  6e:	2f04           	movel %d4,%sp@-
  70:	4eb9 0000 0000 	jsr 0 <_rint>
  76:	588f           	addql #4,%sp
  78:	2240           	moveal %d0,%a1
  7a:	2009           	movel %a1,%d0
  7c:	4cee 001c ffec 	moveml %fp@(-20),%d2-%d4
  82:	4e5e           	unlk %fp
  84:	4e75           	rts
	...

matherr.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_matherr>:
   0:	7000           	moveq #0,%d0
   2:	4e75           	rts

ident.o:     file format a.out-zero-big


Disassembly of section .data:

00000000 <___Ident_pml>:
   0:	2450           	moveal %a0@,%a2
   2:	6174           	bsrs 78 <___Ident_pml+0x78>
   4:	6368           	blss 6e <___Ident_pml+0x6e>
   6:	4c65           	.short 0x4c65
   8:	7665           	moveq #101,%d3
   a:	6c3a           	bges 46 <___Ident_pml+0x46>
   c:	2061           	moveal %a1@-,%a0
   e:	7461           	moveq #97,%d2
  10:	7269           	moveq #105,%d1
  12:	5354           	subqw #1,%a4@
  14:	2f54 5420      	movel %a4@,%sp@(21536)
  18:	504d           	addqw #8,%a5
  1a:	4c3a           	.short 0x4c3a
  1c:	2032 3320 2400 	movel %a2@(00002400,%d3:w:2),%d0
	...

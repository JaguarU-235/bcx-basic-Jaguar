In archive libgcc.a:

_mulsi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___mulsi3>:
   0:	302f 0004      	movew %sp@(4),%d0
   4:	c0ef 000a      	muluw %sp@(10),%d0
   8:	322f 0006      	movew %sp@(6),%d1
   c:	c2ef 0008      	muluw %sp@(8),%d1
  10:	d041           	addw %d1,%d0
  12:	4840           	swap %d0
  14:	4240           	clrw %d0
  16:	322f 0006      	movew %sp@(6),%d1
  1a:	c2ef 000a      	muluw %sp@(10),%d1
  1e:	d081           	addl %d1,%d0
  20:	4e75           	rts
	...

_udivsi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___udivsi3>:
   0:	2f02           	movel %d2,%sp@-
   2:	222f 000c      	movel %sp@(12),%d1
   6:	202f 0008      	movel %sp@(8),%d0
   a:	0c81 0001 0000 	cmpil #65536,%d1
  10:	6416           	bccs 28 <___udivsi3+0x28>
  12:	2400           	movel %d0,%d2
  14:	4242           	clrw %d2
  16:	4842           	swap %d2
  18:	84c1           	divuw %d1,%d2
  1a:	3002           	movew %d2,%d0
  1c:	4840           	swap %d0
  1e:	342f 000a      	movew %sp@(10),%d2
  22:	84c1           	divuw %d1,%d2
  24:	3002           	movew %d2,%d0
  26:	6030           	bras 58 <___udivsi3+0x58>
  28:	2401           	movel %d1,%d2
  2a:	e289           	lsrl #1,%d1
  2c:	e288           	lsrl #1,%d0
  2e:	0c81 0001 0000 	cmpil #65536,%d1
  34:	64f4           	bccs 2a <___udivsi3+0x2a>
  36:	80c1           	divuw %d1,%d0
  38:	0280 0000 ffff 	andil #65535,%d0
  3e:	2202           	movel %d2,%d1
  40:	c2c0           	muluw %d0,%d1
  42:	4842           	swap %d2
  44:	c4c0           	muluw %d0,%d2
  46:	4842           	swap %d2
  48:	4a42           	tstw %d2
  4a:	660a           	bnes 56 <___udivsi3+0x56>
  4c:	d282           	addl %d2,%d1
  4e:	6506           	bcss 56 <___udivsi3+0x56>
  50:	b2af 0008      	cmpl %sp@(8),%d1
  54:	6302           	blss 58 <___udivsi3+0x58>
  56:	5380           	subql #1,%d0
  58:	241f           	movel %sp@+,%d2
  5a:	4e75           	rts

_divsi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___divsi3>:
   0:	2f02           	movel %d2,%sp@-
   2:	7401           	moveq #1,%d2
   4:	222f 000c      	movel %sp@(12),%d1
   8:	6a04           	bpls e <___divsi3+0xe>
   a:	4481           	negl %d1
   c:	4402           	negb %d2
   e:	202f 0008      	movel %sp@(8),%d0
  12:	6a04           	bpls 18 <___divsi3+0x18>
  14:	4480           	negl %d0
  16:	4402           	negb %d2
  18:	2f01           	movel %d1,%sp@-
  1a:	2f00           	movel %d0,%sp@-
  1c:	4eb9 0000 0000 	jsr 0 <___divsi3>
  22:	508f           	addql #8,%sp
  24:	4a02           	tstb %d2
  26:	6a02           	bpls 2a <___divsi3+0x2a>
  28:	4480           	negl %d0
  2a:	241f           	movel %sp@+,%d2
  2c:	4e75           	rts
	...

_umodsi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___umodsi3>:
   0:	222f 0008      	movel %sp@(8),%d1
   4:	202f 0004      	movel %sp@(4),%d0
   8:	2f01           	movel %d1,%sp@-
   a:	2f00           	movel %d0,%sp@-
   c:	4eb9 0000 0000 	jsr 0 <___umodsi3>
  12:	508f           	addql #8,%sp
  14:	222f 0008      	movel %sp@(8),%d1
  18:	2f01           	movel %d1,%sp@-
  1a:	2f00           	movel %d0,%sp@-
  1c:	4eb9 0000 0000 	jsr 0 <___umodsi3>
  22:	508f           	addql #8,%sp
  24:	222f 0004      	movel %sp@(4),%d1
  28:	9280           	subl %d0,%d1
  2a:	2001           	movel %d1,%d0
  2c:	4e75           	rts
	...

_modsi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___modsi3>:
   0:	222f 0008      	movel %sp@(8),%d1
   4:	202f 0004      	movel %sp@(4),%d0
   8:	2f01           	movel %d1,%sp@-
   a:	2f00           	movel %d0,%sp@-
   c:	4eb9 0000 0000 	jsr 0 <___modsi3>
  12:	508f           	addql #8,%sp
  14:	222f 0008      	movel %sp@(8),%d1
  18:	2f01           	movel %d1,%sp@-
  1a:	2f00           	movel %d0,%sp@-
  1c:	4eb9 0000 0000 	jsr 0 <___modsi3>
  22:	508f           	addql #8,%sp
  24:	222f 0004      	movel %sp@(4),%d1
  28:	9280           	subl %d0,%d1
  2a:	2001           	movel %d1,%d0
  2c:	4e75           	rts
	...

_double.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___subdf3-0x5a>:
   0:	8087           	orl %d7,%d0
   2:	3e3c 0003      	movew #3,%d7
   6:	7c02           	moveq #2,%d6
   8:	4ef9 0000 0000 	jmp 0 <___subdf3-0x5a>
   e:	203c 7ff0 0000 	movel #2146435072,%d0
  14:	7200           	moveq #0,%d1
  16:	8087           	orl %d7,%d0
  18:	3e3c 0005      	movew #5,%d7
  1c:	7c02           	moveq #2,%d6
  1e:	4ef9 0000 0000 	jmp 0 <___subdf3-0x5a>
  24:	7000           	moveq #0,%d0
  26:	2200           	movel %d0,%d1
  28:	3e3c 0003      	movew #3,%d7
  2c:	7c02           	moveq #2,%d6
  2e:	4ef9 0000 0000 	jmp 0 <___subdf3-0x5a>
  34:	70ff           	moveq #-1,%d0
  36:	2200           	movel %d0,%d1
  38:	3e3c 0011      	movew #17,%d7
  3c:	7c02           	moveq #2,%d6
  3e:	4ef9 0000 0000 	jmp 0 <___subdf3-0x5a>
  44:	203c 7ff0 0000 	movel #2146435072,%d0
  4a:	7200           	moveq #0,%d1
  4c:	8087           	orl %d7,%d0
  4e:	3e3c 0009      	movew #9,%d7
  52:	7c02           	moveq #2,%d6
  54:	4ef9 0000 0000 	jmp 0 <___subdf3-0x5a>

0000005a <___subdf3>:
  5a:	086f 001f 000c 	bchg #31,%sp@(12)

00000060 <___adddf3>:
  60:	4e56 0000      	linkw %fp,#0
  64:	48e7 3f00      	moveml %d2-%d7,%sp@-
  68:	202e 0008      	movel %fp@(8),%d0
  6c:	222e 000c      	movel %fp@(12),%d1
  70:	242e 0010      	movel %fp@(16),%d2
  74:	262e 0014      	movel %fp@(20),%d3
  78:	2e00           	movel %d0,%d7
  7a:	d281           	addl %d1,%d1
  7c:	d180           	addxl %d0,%d0
  7e:	6700 0286      	beqw 306 <___adddf3+0x2a6>
  82:	2c02           	movel %d2,%d6
  84:	d683           	addl %d3,%d3
  86:	d582           	addxl %d2,%d2
  88:	6700 029a      	beqw 324 <___adddf3+0x2c4>
  8c:	0287 8000 0000 	andil #-2147483648,%d7
  92:	4846           	swap %d6
  94:	0246 8000      	andiw #-32768,%d6
  98:	8e46           	orw %d6,%d7
  9a:	2047           	moveal %d7,%a0
  9c:	2c3c 001f ffff 	movel #2097151,%d6
  a2:	2e3c 0020 0000 	movel #2097152,%d7
  a8:	2800           	movel %d0,%d4
  aa:	c086           	andl %d6,%d0
  ac:	4686           	notl %d6
  ae:	c886           	andl %d6,%d4
  b0:	6700 0246      	beqw 2f8 <___adddf3+0x298>
  b4:	b886           	cmpl %d6,%d4
  b6:	6700 02ca      	beqw 382 <___adddf3+0x322>
  ba:	8087           	orl %d7,%d0
  bc:	4844           	swap %d4
  be:	ea4c           	lsrw #5,%d4
  c0:	2a02           	movel %d2,%d5
  c2:	ca86           	andl %d6,%d5
  c4:	6700 0238      	beqw 2fe <___adddf3+0x29e>
  c8:	ba86           	cmpl %d6,%d5
  ca:	6700 02b6      	beqw 382 <___adddf3+0x322>
  ce:	4686           	notl %d6
  d0:	c486           	andl %d6,%d2
  d2:	8487           	orl %d7,%d2
  d4:	4845           	swap %d5
  d6:	ea4d           	lsrw #5,%d5
  d8:	48e7 0030      	moveml %a2-%a3,%sp@-
  dc:	2444           	moveal %d4,%a2
  de:	2645           	moveal %d5,%a3
  e0:	7e00           	moveq #0,%d7
  e2:	2c07           	movel %d7,%d6
  e4:	2a03           	movel %d3,%d5
  e6:	2802           	movel %d2,%d4
  e8:	2607           	movel %d7,%d3
  ea:	2407           	movel %d7,%d2
  ec:	c98a           	exg %d4,%a2
  ee:	cb8b           	exg %d5,%a3
  f0:	ba44           	cmpw %d4,%d5
  f2:	6700 00cc      	beqw 1c0 <___adddf3+0x160>
  f6:	6200 0064      	bhiw 15c <___adddf3+0xfc>
  fa:	3404           	movew %d4,%d2
  fc:	9445           	subw %d5,%d2
  fe:	c98a           	exg %d4,%a2
 100:	cb8b           	exg %d5,%a3
 102:	0c42 0037      	cmpiw #55,%d2
 106:	6c00 01d2      	bgew 2da <___adddf3+0x27a>
 10a:	0c42 0020      	cmpiw #32,%d2
 10e:	6c00 0022      	bgew 132 <___adddf3+0xd2>
 112:	0c42 0010      	cmpiw #16,%d2
 116:	6c00 002a      	bgew 142 <___adddf3+0xe2>
 11a:	6000 000a      	braw 126 <___adddf3+0xc6>
 11e:	e28c           	lsrl #1,%d4
 120:	e295           	roxrl #1,%d5
 122:	e296           	roxrl #1,%d6
 124:	e297           	roxrl #1,%d7
 126:	51ca fff6      	dbf %d2,11e <___adddf3+0xbe>
 12a:	7400           	moveq #0,%d2
 12c:	2602           	movel %d2,%d3
 12e:	6000 0094      	braw 1c4 <___adddf3+0x164>
 132:	2e06           	movel %d6,%d7
 134:	2c05           	movel %d5,%d6
 136:	2a04           	movel %d4,%d5
 138:	7800           	moveq #0,%d4
 13a:	0442 0020      	subiw #32,%d2
 13e:	6000 ffd2      	braw 112 <___adddf3+0xb2>
 142:	3e06           	movew %d6,%d7
 144:	4847           	swap %d7
 146:	3c05           	movew %d5,%d6
 148:	4846           	swap %d6
 14a:	3a04           	movew %d4,%d5
 14c:	4845           	swap %d5
 14e:	383c 0000      	movew #0,%d4
 152:	4844           	swap %d4
 154:	0442 0010      	subiw #16,%d2
 158:	6000 ffcc      	braw 126 <___adddf3+0xc6>
 15c:	c945           	exg %d4,%d5
 15e:	3c04           	movew %d4,%d6
 160:	9c45           	subw %d5,%d6
 162:	c98a           	exg %d4,%a2
 164:	cb8b           	exg %d5,%a3
 166:	0c46 0037      	cmpiw #55,%d6
 16a:	6c00 0150      	bgew 2bc <___adddf3+0x25c>
 16e:	0c46 0020      	cmpiw #32,%d6
 172:	6c00 0022      	bgew 196 <___adddf3+0x136>
 176:	0c46 0010      	cmpiw #16,%d6
 17a:	6c00 002a      	bgew 1a6 <___adddf3+0x146>
 17e:	6000 000a      	braw 18a <___adddf3+0x12a>
 182:	e288           	lsrl #1,%d0
 184:	e291           	roxrl #1,%d1
 186:	e292           	roxrl #1,%d2
 188:	e293           	roxrl #1,%d3
 18a:	51ce fff6      	dbf %d6,182 <___adddf3+0x122>
 18e:	7e00           	moveq #0,%d7
 190:	2c07           	movel %d7,%d6
 192:	6000 0030      	braw 1c4 <___adddf3+0x164>
 196:	2602           	movel %d2,%d3
 198:	2401           	movel %d1,%d2
 19a:	2200           	movel %d0,%d1
 19c:	7000           	moveq #0,%d0
 19e:	0446 0020      	subiw #32,%d6
 1a2:	6000 ffd2      	braw 176 <___adddf3+0x116>
 1a6:	3602           	movew %d2,%d3
 1a8:	4843           	swap %d3
 1aa:	3401           	movew %d1,%d2
 1ac:	4842           	swap %d2
 1ae:	3200           	movew %d0,%d1
 1b0:	4841           	swap %d1
 1b2:	303c 0000      	movew #0,%d0
 1b6:	4840           	swap %d0
 1b8:	0446 0010      	subiw #16,%d6
 1bc:	6000 ffcc      	braw 18a <___adddf3+0x12a>
 1c0:	c98a           	exg %d4,%a2
 1c2:	cb8b           	exg %d5,%a3
 1c4:	cf88           	exg %d7,%a0
 1c6:	cd8b           	exg %d6,%a3
 1c8:	2c07           	movel %d7,%d6
 1ca:	3e3c 0000      	movew #0,%d7
 1ce:	4846           	swap %d6
 1d0:	3c3c 0000      	movew #0,%d6
 1d4:	bf86           	eorl %d7,%d6
 1d6:	6b00 006e      	bmiw 246 <___adddf3+0x1e6>
 1da:	cf88           	exg %d7,%a0
 1dc:	cd8b           	exg %d6,%a3
 1de:	d687           	addl %d7,%d3
 1e0:	d586           	addxl %d6,%d2
 1e2:	d385           	addxl %d5,%d1
 1e4:	d184           	addxl %d4,%d0
 1e6:	280a           	movel %a2,%d4
 1e8:	2e08           	movel %a0,%d7
 1ea:	0287 8000 0000 	andil #-2147483648,%d7
 1f0:	4cdf 0c00      	moveml %sp@+,%a2-%a3
 1f4:	0800 0036      	btst #54,%d0
 1f8:	6700 000c      	beqw 206 <___adddf3+0x1a6>
 1fc:	e288           	lsrl #1,%d0
 1fe:	e291           	roxrl #1,%d1
 200:	e292           	roxrl #1,%d2
 202:	e293           	roxrl #1,%d3
 204:	5244           	addqw #1,%d4
 206:	41fa 0020      	lea %pc@(228 <___adddf3+0x1c8>),%a0
 20a:	43f9 0000 0000 	lea 0 <___subdf3-0x5a>,%a1
 210:	3c29 0006      	movew %a1@(6),%d6
 214:	6700 0750      	beqw 966 <___cmpdf2+0x20>
 218:	0c46 0002      	cmpiw #2,%d6
 21c:	6200 07ac      	bhiw 9ca <___cmpdf2+0x84>
 220:	6d00 07a8      	bltw 9ca <___cmpdf2+0x84>
 224:	6000 07a4      	braw 9ca <___cmpdf2+0x84>
 228:	0c44 07ff      	cmpiw #2047,%d4
 22c:	6c00 0012      	bgew 240 <___adddf3+0x1e0>
 230:	0880 0034      	bclr #52,%d0
 234:	e94c           	lslw #4,%d4
 236:	4840           	swap %d0
 238:	8044           	orw %d4,%d0
 23a:	4840           	swap %d0
 23c:	6000 0128      	braw 366 <___adddf3+0x306>
 240:	7a01           	moveq #1,%d5
 242:	6000 fdca      	braw e <___subdf3-0x4c>
 246:	cf88           	exg %d7,%a0
 248:	cd8b           	exg %d6,%a3
 24a:	9687           	subl %d7,%d3
 24c:	9586           	subxl %d6,%d2
 24e:	9385           	subxl %d5,%d1
 250:	9184           	subxl %d4,%d0
 252:	6700 010e      	beqw 362 <___adddf3+0x302>
 256:	6a00 0012      	bplw 26a <___adddf3+0x20a>
 25a:	2e08           	movel %a0,%d7
 25c:	0847 001f      	bchg #31,%d7
 260:	2047           	moveal %d7,%a0
 262:	4483           	negl %d3
 264:	4082           	negxl %d2
 266:	4081           	negxl %d1
 268:	4080           	negxl %d0
 26a:	280a           	movel %a2,%d4
 26c:	2e08           	movel %a0,%d7
 26e:	0287 8000 0000 	andil #-2147483648,%d7
 274:	4cdf 0c00      	moveml %sp@+,%a2-%a3
 278:	0800 0036      	btst #54,%d0
 27c:	6700 000c      	beqw 28a <___adddf3+0x22a>
 280:	e288           	lsrl #1,%d0
 282:	e291           	roxrl #1,%d1
 284:	e292           	roxrl #1,%d2
 286:	e293           	roxrl #1,%d3
 288:	5244           	addqw #1,%d4
 28a:	41fa 0020      	lea %pc@(2ac <___adddf3+0x24c>),%a0
 28e:	43f9 0000 0000 	lea 0 <___subdf3-0x5a>,%a1
 294:	3c29 0006      	movew %a1@(6),%d6
 298:	6700 06cc      	beqw 966 <___cmpdf2+0x20>
 29c:	0c46 0002      	cmpiw #2,%d6
 2a0:	6200 0728      	bhiw 9ca <___cmpdf2+0x84>
 2a4:	6d00 0724      	bltw 9ca <___cmpdf2+0x84>
 2a8:	6000 0720      	braw 9ca <___cmpdf2+0x84>
 2ac:	0880 0034      	bclr #52,%d0
 2b0:	e94c           	lslw #4,%d4
 2b2:	4840           	swap %d0
 2b4:	8044           	orw %d4,%d0
 2b6:	4840           	swap %d0
 2b8:	6000 00ac      	braw 366 <___adddf3+0x306>
 2bc:	4cdf 0c00      	moveml %sp@+,%a2-%a3
 2c0:	202e 0010      	movel %fp@(16),%d0
 2c4:	222e 0014      	movel %fp@(20),%d1
 2c8:	41f9 0000 0000 	lea 0 <___subdf3-0x5a>,%a0
 2ce:	30bc 0000      	movew #0,%a0@
 2d2:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 2d6:	4e5e           	unlk %fp
 2d8:	4e75           	rts
 2da:	4cdf 0c00      	moveml %sp@+,%a2-%a3
 2de:	202e 0008      	movel %fp@(8),%d0
 2e2:	222e 000c      	movel %fp@(12),%d1
 2e6:	41f9 0000 0000 	lea 0 <___subdf3-0x5a>,%a0
 2ec:	30bc 0000      	movew #0,%a0@
 2f0:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 2f4:	4e5e           	unlk %fp
 2f6:	4e75           	rts
 2f8:	2807           	movel %d7,%d4
 2fa:	6000 fdc0      	braw bc <___adddf3+0x5c>
 2fe:	2a07           	movel %d7,%d5
 300:	4686           	notl %d6
 302:	6000 fdd0      	braw d4 <___adddf3+0x74>
 306:	2002           	movel %d2,%d0
 308:	2203           	movel %d3,%d1
 30a:	6600 0020      	bnew 32c <___adddf3+0x2cc>
 30e:	0c80 8000 0000 	cmpil #-2147483648,%d0
 314:	6600 0016      	bnew 32c <___adddf3+0x2cc>
 318:	0287 8000 0000 	andil #-2147483648,%d7
 31e:	4280           	clrl %d0
 320:	6000 0044      	braw 366 <___adddf3+0x306>
 324:	202e 0008      	movel %fp@(8),%d0
 328:	222e 000c      	movel %fp@(12),%d1
 32c:	7a01           	moveq #1,%d5
 32e:	2e00           	movel %d0,%d7
 330:	0287 8000 0000 	andil #-2147483648,%d7
 336:	0880 001f      	bclr #31,%d0
 33a:	0c80 7ff0 0000 	cmpil #2146435072,%d0
 340:	6c00 0010      	bgew 352 <___adddf3+0x2f2>
 344:	2000           	movel %d0,%d0
 346:	6600 001e      	bnew 366 <___adddf3+0x306>
 34a:	0887 001f      	bclr #31,%d7
 34e:	6000 0016      	braw 366 <___adddf3+0x306>
 352:	0280 000f ffff 	andil #1048575,%d0
 358:	8081           	orl %d1,%d0
 35a:	6600 fcd8      	bnew 34 <___subdf3-0x26>
 35e:	6000 fcae      	braw e <___subdf3-0x4c>
 362:	4cdf 0c00      	moveml %sp@+,%a2-%a3
 366:	41f9 0000 0000 	lea 0 <___subdf3-0x5a>,%a0
 36c:	30bc 0000      	movew #0,%a0@
 370:	8087           	orl %d7,%d0
 372:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 376:	4e5e           	unlk %fp
 378:	4e75           	rts
 37a:	e288           	lsrl #1,%d0
 37c:	e291           	roxrl #1,%d1
 37e:	6000 ffe6      	braw 366 <___adddf3+0x306>
 382:	7a01           	moveq #1,%d5
 384:	202e 0008      	movel %fp@(8),%d0
 388:	222e 000c      	movel %fp@(12),%d1
 38c:	242e 0010      	movel %fp@(16),%d2
 390:	262e 0014      	movel %fp@(20),%d3
 394:	283c 7ff0 0000 	movel #2146435072,%d4
 39a:	2e00           	movel %d0,%d7
 39c:	2c02           	movel %d2,%d6
 39e:	0880 001f      	bclr #31,%d0
 3a2:	0882 001f      	bclr #31,%d2
 3a6:	b084           	cmpl %d4,%d0
 3a8:	6200 fc8a      	bhiw 34 <___subdf3-0x26>
 3ac:	6600 0008      	bnew 3b6 <___adddf3+0x356>
 3b0:	4a81           	tstl %d1
 3b2:	6600 fc80      	bnew 34 <___subdf3-0x26>
 3b6:	b484           	cmpl %d4,%d2
 3b8:	6200 fc7a      	bhiw 34 <___subdf3-0x26>
 3bc:	6600 0008      	bnew 3c6 <___adddf3+0x366>
 3c0:	4a83           	tstl %d3
 3c2:	6600 fc70      	bnew 34 <___subdf3-0x26>
 3c6:	bf86           	eorl %d7,%d6
 3c8:	6b00 000c      	bmiw 3d6 <___adddf3+0x376>
 3cc:	0287 8000 0000 	andil #-2147483648,%d7
 3d2:	6000 fc3a      	braw e <___subdf3-0x4c>
 3d6:	b082           	cmpl %d2,%d0
 3d8:	6600 0008      	bnew 3e2 <___adddf3+0x382>
 3dc:	b283           	cmpl %d3,%d1
 3de:	6700 fc54      	beqw 34 <___subdf3-0x26>
 3e2:	0287 8000 0000 	andil #-2147483648,%d7
 3e8:	b084           	cmpl %d4,%d0
 3ea:	6700 fc22      	beqw e <___subdf3-0x4c>
 3ee:	0847 001f      	bchg #31,%d7
 3f2:	6000 fc1a      	braw e <___subdf3-0x4c>

000003f6 <___muldf3>:
 3f6:	4e56 0000      	linkw %fp,#0
 3fa:	48e7 3f00      	moveml %d2-%d7,%sp@-
 3fe:	202e 0008      	movel %fp@(8),%d0
 402:	222e 000c      	movel %fp@(12),%d1
 406:	242e 0010      	movel %fp@(16),%d2
 40a:	262e 0014      	movel %fp@(20),%d3
 40e:	2e00           	movel %d0,%d7
 410:	b587           	eorl %d2,%d7
 412:	0287 8000 0000 	andil #-2147483648,%d7
 418:	2047           	moveal %d7,%a0
 41a:	2e3c 7ff0 0000 	movel #2146435072,%d7
 420:	2c07           	movel %d7,%d6
 422:	4686           	notl %d6
 424:	0880 001f      	bclr #31,%d0
 428:	2800           	movel %d0,%d4
 42a:	8881           	orl %d1,%d4
 42c:	6700 0120      	beqw 54e <___muldf3+0x158>
 430:	2800           	movel %d0,%d4
 432:	0882 001f      	bclr #31,%d2
 436:	2a02           	movel %d2,%d5
 438:	8a83           	orl %d3,%d5
 43a:	6700 0106      	beqw 542 <___muldf3+0x14c>
 43e:	2a02           	movel %d2,%d5
 440:	b087           	cmpl %d7,%d0
 442:	6200 00dc      	bhiw 520 <___muldf3+0x12a>
 446:	6700 00ec      	beqw 534 <___muldf3+0x13e>
 44a:	b487           	cmpl %d7,%d2
 44c:	6200 00d2      	bhiw 520 <___muldf3+0x12a>
 450:	6700 00d4      	beqw 526 <___muldf3+0x130>
 454:	c887           	andl %d7,%d4
 456:	6700 0120      	beqw 578 <___muldf3+0x182>
 45a:	c086           	andl %d6,%d0
 45c:	0080 0010 0000 	oril #1048576,%d0
 462:	4844           	swap %d4
 464:	e84c           	lsrw #4,%d4
 466:	ca87           	andl %d7,%d5
 468:	6700 0124      	beqw 58e <___muldf3+0x198>
 46c:	c486           	andl %d6,%d2
 46e:	0082 0010 0000 	oril #1048576,%d2
 474:	4845           	swap %d5
 476:	e84d           	lsrw #4,%d5
 478:	d845           	addw %d5,%d4
 47a:	0444 03ff      	subiw #1023,%d4
 47e:	48e7 0030      	moveml %a2-%a3,%sp@-
 482:	247c 0000 0000 	moveal #0,%a2
 488:	2644           	moveal %d4,%a3
 48a:	ea9a           	rorl #5,%d2
 48c:	4842           	swap %d2
 48e:	ea9b           	rorl #5,%d3
 490:	4843           	swap %d3
 492:	3c03           	movew %d3,%d6
 494:	0246 07ff      	andiw #2047,%d6
 498:	8446           	orw %d6,%d2
 49a:	0243 f800      	andiw #-2048,%d3
 49e:	2c02           	movel %d2,%d6
 4a0:	2e03           	movel %d3,%d7
 4a2:	2800           	movel %d0,%d4
 4a4:	2a01           	movel %d1,%d5
 4a6:	7600           	moveq #0,%d3
 4a8:	2403           	movel %d3,%d2
 4aa:	2203           	movel %d3,%d1
 4ac:	2003           	movel %d3,%d0
 4ae:	227c 0000 0034 	moveal #52,%a1
 4b4:	cf89           	exg %d7,%a1
 4b6:	cf89           	exg %d7,%a1
 4b8:	d683           	addl %d3,%d3
 4ba:	d582           	addxl %d2,%d2
 4bc:	d381           	addxl %d1,%d1
 4be:	d180           	addxl %d0,%d0
 4c0:	de87           	addl %d7,%d7
 4c2:	dd86           	addxl %d6,%d6
 4c4:	6400 000e      	bccw 4d4 <___muldf3+0xde>
 4c8:	cf8a           	exg %d7,%a2
 4ca:	d685           	addl %d5,%d3
 4cc:	d584           	addxl %d4,%d2
 4ce:	d387           	addxl %d7,%d1
 4d0:	d187           	addxl %d7,%d0
 4d2:	cf8a           	exg %d7,%a2
 4d4:	cf89           	exg %d7,%a1
 4d6:	51cf ffde      	dbf %d7,4b6 <___muldf3+0xc0>
 4da:	280b           	movel %a3,%d4
 4dc:	4cdf 0c00      	moveml %sp@+,%a2-%a3
 4e0:	4840           	swap %d0
 4e2:	4841           	swap %d1
 4e4:	3001           	movew %d1,%d0
 4e6:	4842           	swap %d2
 4e8:	3202           	movew %d2,%d1
 4ea:	4843           	swap %d3
 4ec:	3403           	movew %d3,%d2
 4ee:	363c 0000      	movew #0,%d3
 4f2:	e288           	lsrl #1,%d0
 4f4:	e291           	roxrl #1,%d1
 4f6:	e292           	roxrl #1,%d2
 4f8:	e293           	roxrl #1,%d3
 4fa:	e288           	lsrl #1,%d0
 4fc:	e291           	roxrl #1,%d1
 4fe:	e292           	roxrl #1,%d2
 500:	e293           	roxrl #1,%d3
 502:	e288           	lsrl #1,%d0
 504:	e291           	roxrl #1,%d1
 506:	e292           	roxrl #1,%d2
 508:	e293           	roxrl #1,%d3
 50a:	2e08           	movel %a0,%d7
 50c:	7a02           	moveq #2,%d5
 50e:	0800 0016      	btst #22,%d0
 512:	6700 027a      	beqw 78e <___divdf3+0x1ea>
 516:	e288           	lsrl #1,%d0
 518:	e291           	roxrl #1,%d1
 51a:	5244           	addqw #1,%d4
 51c:	6000 0270      	braw 78e <___divdf3+0x1ea>
 520:	7a02           	moveq #2,%d5
 522:	6000 fb10      	braw 34 <___subdf3-0x26>
 526:	7a02           	moveq #2,%d5
 528:	2e08           	movel %a0,%d7
 52a:	4a83           	tstl %d3
 52c:	6600 fb06      	bnew 34 <___subdf3-0x26>
 530:	6000 fadc      	braw e <___subdf3-0x4c>
 534:	7a02           	moveq #2,%d5
 536:	2e08           	movel %a0,%d7
 538:	4a81           	tstl %d1
 53a:	6600 faf8      	bnew 34 <___subdf3-0x26>
 53e:	6000 face      	braw e <___subdf3-0x4c>
 542:	7a02           	moveq #2,%d5
 544:	c540           	exg %d2,%d0
 546:	c741           	exg %d3,%d1
 548:	2008           	movel %a0,%d0
 54a:	6000 0010      	braw 55c <___muldf3+0x166>
 54e:	2008           	movel %a0,%d0
 550:	242e 0010      	movel %fp@(16),%d2
 554:	262e 0014      	movel %fp@(20),%d3
 558:	0882 001f      	bclr #31,%d2
 55c:	0c82 7ff0 0000 	cmpil #2146435072,%d2
 562:	6c00 fad0      	bgew 34 <___subdf3-0x26>
 566:	41f9 0000 0000 	lea 0 <___subdf3-0x5a>,%a0
 56c:	30bc 0000      	movew #0,%a0@
 570:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 574:	4e5e           	unlk %fp
 576:	4e75           	rts
 578:	7801           	moveq #1,%d4
 57a:	c086           	andl %d6,%d0
 57c:	d281           	addl %d1,%d1
 57e:	d180           	addxl %d0,%d0
 580:	5344           	subqw #1,%d4
 582:	0800 0014      	btst #20,%d0
 586:	6600 fede      	bnew 466 <___muldf3+0x70>
 58a:	6000 fff0      	braw 57c <___muldf3+0x186>
 58e:	7a01           	moveq #1,%d5
 590:	c486           	andl %d6,%d2
 592:	d683           	addl %d3,%d3
 594:	d582           	addxl %d2,%d2
 596:	5345           	subqw #1,%d5
 598:	0802 0014      	btst #20,%d2
 59c:	6600 feda      	bnew 478 <___muldf3+0x82>
 5a0:	6000 fff0      	braw 592 <___muldf3+0x19c>

000005a4 <___divdf3>:
 5a4:	4e56 0000      	linkw %fp,#0
 5a8:	48e7 3f00      	moveml %d2-%d7,%sp@-
 5ac:	202e 0008      	movel %fp@(8),%d0
 5b0:	222e 000c      	movel %fp@(12),%d1
 5b4:	242e 0010      	movel %fp@(16),%d2
 5b8:	262e 0014      	movel %fp@(20),%d3
 5bc:	2e00           	movel %d0,%d7
 5be:	b587           	eorl %d2,%d7
 5c0:	0287 8000 0000 	andil #-2147483648,%d7
 5c6:	2047           	moveal %d7,%a0
 5c8:	2e3c 7ff0 0000 	movel #2146435072,%d7
 5ce:	2c07           	movel %d7,%d6
 5d0:	4686           	notl %d6
 5d2:	0880 001f      	bclr #31,%d0
 5d6:	2800           	movel %d0,%d4
 5d8:	8881           	orl %d1,%d4
 5da:	6700 0112      	beqw 6ee <___divdf3+0x14a>
 5de:	2800           	movel %d0,%d4
 5e0:	0882 001f      	bclr #31,%d2
 5e4:	2a02           	movel %d2,%d5
 5e6:	8a83           	orl %d3,%d5
 5e8:	6700 013c      	beqw 726 <___divdf3+0x182>
 5ec:	2a02           	movel %d2,%d5
 5ee:	b087           	cmpl %d7,%d0
 5f0:	6200 00f6      	bhiw 6e8 <___divdf3+0x144>
 5f4:	6700 0154      	beqw 74a <___divdf3+0x1a6>
 5f8:	b487           	cmpl %d7,%d2
 5fa:	6200 00ec      	bhiw 6e8 <___divdf3+0x144>
 5fe:	6700 013e      	beqw 73e <___divdf3+0x19a>
 602:	c887           	andl %d7,%d4
 604:	6700 015c      	beqw 762 <___divdf3+0x1be>
 608:	c086           	andl %d6,%d0
 60a:	0080 0010 0000 	oril #1048576,%d0
 610:	4844           	swap %d4
 612:	e84c           	lsrw #4,%d4
 614:	ca87           	andl %d7,%d5
 616:	6700 0160      	beqw 778 <___divdf3+0x1d4>
 61a:	c486           	andl %d6,%d2
 61c:	0082 0010 0000 	oril #1048576,%d2
 622:	4845           	swap %d5
 624:	e84d           	lsrw #4,%d5
 626:	9845           	subw %d5,%d4
 628:	0644 03fe      	addiw #1022,%d4
 62c:	7c00           	moveq #0,%d6
 62e:	2e06           	movel %d6,%d7
 630:	227c 0000 0000 	moveal #0,%a1
 636:	7a16           	moveq #22,%d5
 638:	b480           	cmpl %d0,%d2
 63a:	6200 000c      	bhiw 648 <___divdf3+0xa4>
 63e:	6700 0014      	beqw 654 <___divdf3+0xb0>
 642:	9283           	subl %d3,%d1
 644:	9182           	subxl %d2,%d0
 646:	0bc6           	bset %d5,%d6
 648:	d281           	addl %d1,%d1
 64a:	d180           	addxl %d0,%d0
 64c:	51cd ffea      	dbf %d5,638 <___divdf3+0x94>
 650:	6000 000c      	braw 65e <___divdf3+0xba>
 654:	b681           	cmpl %d1,%d3
 656:	6200 fff0      	bhiw 648 <___divdf3+0xa4>
 65a:	6000 ffe6      	braw 642 <___divdf3+0x9e>
 65e:	7a1f           	moveq #31,%d5
 660:	b480           	cmpl %d0,%d2
 662:	6200 000c      	bhiw 670 <___divdf3+0xcc>
 666:	6700 0014      	beqw 67c <___divdf3+0xd8>
 66a:	9283           	subl %d3,%d1
 66c:	9182           	subxl %d2,%d0
 66e:	0bc7           	bset %d5,%d7
 670:	d281           	addl %d1,%d1
 672:	d180           	addxl %d0,%d0
 674:	51cd ffea      	dbf %d5,660 <___divdf3+0xbc>
 678:	6000 000c      	braw 686 <___divdf3+0xe2>
 67c:	b681           	cmpl %d1,%d3
 67e:	6200 fff0      	bhiw 670 <___divdf3+0xcc>
 682:	6000 ffe6      	braw 66a <___divdf3+0xc6>
 686:	7a35           	moveq #53,%d5
 688:	b082           	cmpl %d2,%d0
 68a:	6200 001c      	bhiw 6a8 <___divdf3+0x104>
 68e:	6700 0012      	beqw 6a2 <___divdf3+0xfe>
 692:	d281           	addl %d1,%d1
 694:	d180           	addxl %d0,%d0
 696:	51cd fff0      	dbf %d5,688 <___divdf3+0xe4>
 69a:	7400           	moveq #0,%d2
 69c:	2602           	movel %d2,%d3
 69e:	6000 0028      	braw 6c8 <___divdf3+0x124>
 6a2:	b681           	cmpl %d1,%d3
 6a4:	6200 ffec      	bhiw 692 <___divdf3+0xee>
 6a8:	7400           	moveq #0,%d2
 6aa:	2602           	movel %d2,%d3
 6ac:	0445 0035      	subiw #53,%d5
 6b0:	0645 003f      	addiw #63,%d5
 6b4:	0c45 001f      	cmpiw #31,%d5
 6b8:	6200 000c      	bhiw 6c6 <___divdf3+0x122>
 6bc:	0bc3           	bset %d5,%d3
 6be:	6000 0008      	braw 6c8 <___divdf3+0x124>
 6c2:	0445 0020      	subiw #32,%d5
 6c6:	0bc2           	bset %d5,%d2
 6c8:	2006           	movel %d6,%d0
 6ca:	2207           	movel %d7,%d1
 6cc:	7600           	moveq #0,%d3
 6ce:	0800 0016      	btst #22,%d0
 6d2:	6700 000c      	beqw 6e0 <___divdf3+0x13c>
 6d6:	e288           	lsrl #1,%d0
 6d8:	e291           	roxrl #1,%d1
 6da:	e292           	roxrl #1,%d2
 6dc:	e293           	roxrl #1,%d3
 6de:	5244           	addqw #1,%d4
 6e0:	2e08           	movel %a0,%d7
 6e2:	7a03           	moveq #3,%d5
 6e4:	6000 00a8      	braw 78e <___divdf3+0x1ea>
 6e8:	7a03           	moveq #3,%d5
 6ea:	6000 f948      	braw 34 <___subdf3-0x26>
 6ee:	7a03           	moveq #3,%d5
 6f0:	0882 001f      	bclr #31,%d2
 6f4:	2802           	movel %d2,%d4
 6f6:	8883           	orl %d3,%d4
 6f8:	6700 f93a      	beqw 34 <___subdf3-0x26>
 6fc:	0c82 7ff0 0000 	cmpil #2146435072,%d2
 702:	6200 f930      	bhiw 34 <___subdf3-0x26>
 706:	6d00 0008      	bltw 710 <___divdf3+0x16c>
 70a:	4a83           	tstl %d3
 70c:	6600 f926      	bnew 34 <___subdf3-0x26>
 710:	2008           	movel %a0,%d0
 712:	7200           	moveq #0,%d1
 714:	41f9 0000 0000 	lea 0 <___subdf3-0x5a>,%a0
 71a:	30bc 0000      	movew #0,%a0@
 71e:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 722:	4e5e           	unlk %fp
 724:	4e75           	rts
 726:	7a03           	moveq #3,%d5
 728:	2e08           	movel %a0,%d7
 72a:	0c80 7ff0 0000 	cmpil #2146435072,%d0
 730:	6200 f902      	bhiw 34 <___subdf3-0x26>
 734:	4a81           	tstl %d1
 736:	6600 f8fc      	bnew 34 <___subdf3-0x26>
 73a:	6000 f908      	braw 44 <___subdf3-0x16>
 73e:	7a03           	moveq #3,%d5
 740:	4a83           	tstl %d3
 742:	6600 f8f0      	bnew 34 <___subdf3-0x26>
 746:	6000 f8dc      	braw 24 <___subdf3-0x36>
 74a:	7a03           	moveq #3,%d5
 74c:	4a81           	tstl %d1
 74e:	6600 f8e4      	bnew 34 <___subdf3-0x26>
 752:	b487           	cmpl %d7,%d2
 754:	6c00 f8de      	bgew 34 <___subdf3-0x26>
 758:	4a83           	tstl %d3
 75a:	6600 f8d8      	bnew 34 <___subdf3-0x26>
 75e:	6000 f8ae      	braw e <___subdf3-0x4c>
 762:	7801           	moveq #1,%d4
 764:	c086           	andl %d6,%d0
 766:	d281           	addl %d1,%d1
 768:	d180           	addxl %d0,%d0
 76a:	5344           	subqw #1,%d4
 76c:	0800 0014      	btst #20,%d0
 770:	6600 fea2      	bnew 614 <___divdf3+0x70>
 774:	6000 fff0      	braw 766 <___divdf3+0x1c2>
 778:	7a01           	moveq #1,%d5
 77a:	c486           	andl %d6,%d2
 77c:	d683           	addl %d3,%d3
 77e:	d582           	addxl %d2,%d2
 780:	5345           	subqw #1,%d5
 782:	0802 0014      	btst #20,%d2
 786:	6600 fe9e      	bnew 626 <___divdf3+0x82>
 78a:	6000 fff0      	braw 77c <___divdf3+0x1d8>
 78e:	0c44 ffca      	cmpiw #-54,%d4
 792:	6d00 f890      	bltw 24 <___subdf3-0x36>
 796:	2047           	moveal %d7,%a0
 798:	7c00           	moveq #0,%d6
 79a:	2e06           	movel %d6,%d7
 79c:	0c44 0001      	cmpiw #1,%d4
 7a0:	6c00 0020      	bgew 7c2 <___divdf3+0x21e>
 7a4:	5244           	addqw #1,%d4
 7a6:	e288           	lsrl #1,%d0
 7a8:	e291           	roxrl #1,%d1
 7aa:	e292           	roxrl #1,%d2
 7ac:	e293           	roxrl #1,%d3
 7ae:	e296           	roxrl #1,%d6
 7b0:	e297           	roxrl #1,%d7
 7b2:	0c44 0001      	cmpiw #1,%d4
 7b6:	6700 000a      	beqw 7c2 <___divdf3+0x21e>
 7ba:	6000 ffe8      	braw 7a4 <___divdf3+0x200>
 7be:	6000 f864      	braw 24 <___subdf3-0x36>
 7c2:	8486           	orl %d6,%d2
 7c4:	8687           	orl %d7,%d3
 7c6:	2e08           	movel %a0,%d7
 7c8:	41fa 0020      	lea %pc@(7ea <___divdf3+0x246>),%a0
 7cc:	43f9 0000 0000 	lea 0 <___subdf3-0x5a>,%a1
 7d2:	3c29 0006      	movew %a1@(6),%d6
 7d6:	6700 018e      	beqw 966 <___cmpdf2+0x20>
 7da:	0c46 0002      	cmpiw #2,%d6
 7de:	6200 01ea      	bhiw 9ca <___cmpdf2+0x84>
 7e2:	6d00 01e6      	bltw 9ca <___cmpdf2+0x84>
 7e6:	6000 01e2      	braw 9ca <___cmpdf2+0x84>
 7ea:	0c44 07ff      	cmpiw #2047,%d4
 7ee:	6c00 f81e      	bgew e <___subdf3-0x4c>
 7f2:	3804           	movew %d4,%d4
 7f4:	6700 f80a      	beqw 0 <___subdf3-0x5a>
 7f8:	e94c           	lslw #4,%d4
 7fa:	0880 0014      	bclr #20,%d0
 7fe:	4840           	swap %d0
 800:	8044           	orw %d4,%d0
 802:	4840           	swap %d0
 804:	8087           	orl %d7,%d0
 806:	41f9 0000 0000 	lea 0 <___subdf3-0x5a>,%a0
 80c:	30bc 0000      	movew #0,%a0@
 810:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 814:	4e5e           	unlk %fp
 816:	4e75           	rts

00000818 <___negdf2>:
 818:	4e56 0000      	linkw %fp,#0
 81c:	48e7 3f00      	moveml %d2-%d7,%sp@-
 820:	7a04           	moveq #4,%d5
 822:	202e 0008      	movel %fp@(8),%d0
 826:	222e 000c      	movel %fp@(12),%d1
 82a:	0840 001f      	bchg #31,%d0
 82e:	2400           	movel %d0,%d2
 830:	0882 001f      	bclr #31,%d2
 834:	2802           	movel %d2,%d4
 836:	8881           	orl %d1,%d4
 838:	6700 0034      	beqw 86e <___negdf2+0x56>
 83c:	0c82 7ff0 0000 	cmpil #2146435072,%d2
 842:	6d00 0018      	bltw 85c <___negdf2+0x44>
 846:	6200 f7ec      	bhiw 34 <___subdf3-0x26>
 84a:	4a81           	tstl %d1
 84c:	6600 f7e6      	bnew 34 <___subdf3-0x26>
 850:	2e00           	movel %d0,%d7
 852:	0287 8000 0000 	andil #-2147483648,%d7
 858:	6000 f7b4      	braw e <___subdf3-0x4c>
 85c:	41f9 0000 0000 	lea 0 <___subdf3-0x5a>,%a0
 862:	30bc 0000      	movew #0,%a0@
 866:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 86a:	4e5e           	unlk %fp
 86c:	4e75           	rts
 86e:	0880 001f      	bclr #31,%d0
 872:	6000 ffe8      	braw 85c <___negdf2+0x44>

00000876 <___cmpdf2_internal>:
 876:	4e56 0000      	linkw %fp,#0
 87a:	48e7 3f00      	moveml %d2-%d7,%sp@-
 87e:	7a05           	moveq #5,%d5
 880:	202e 0008      	movel %fp@(8),%d0
 884:	222e 000c      	movel %fp@(12),%d1
 888:	242e 0010      	movel %fp@(16),%d2
 88c:	262e 0014      	movel %fp@(20),%d3
 890:	2c00           	movel %d0,%d6
 892:	0880 001f      	bclr #31,%d0
 896:	2e02           	movel %d2,%d7
 898:	0882 001f      	bclr #31,%d2
 89c:	0c80 7ff0 0000 	cmpil #2146435072,%d0
 8a2:	6200 0094      	bhiw 938 <___cmpdf2_internal+0xc2>
 8a6:	6700 007c      	beqw 924 <___cmpdf2_internal+0xae>
 8aa:	2800           	movel %d0,%d4
 8ac:	8881           	orl %d1,%d4
 8ae:	6700 0064      	beqw 914 <___cmpdf2_internal+0x9e>
 8b2:	0c82 7ff0 0000 	cmpil #2146435072,%d2
 8b8:	6200 007e      	bhiw 938 <___cmpdf2_internal+0xc2>
 8bc:	6700 0070      	beqw 92e <___cmpdf2_internal+0xb8>
 8c0:	2802           	movel %d2,%d4
 8c2:	8883           	orl %d3,%d4
 8c4:	6700 0056      	beqw 91c <___cmpdf2_internal+0xa6>
 8c8:	bd87           	eorl %d6,%d7
 8ca:	6a00 000c      	bplw 8d8 <___cmpdf2_internal+0x62>
 8ce:	4a86           	tstl %d6
 8d0:	6a00 002e      	bplw 900 <___cmpdf2_internal+0x8a>
 8d4:	6b00 0034      	bmiw 90a <___cmpdf2_internal+0x94>
 8d8:	4a86           	tstl %d6
 8da:	6a00 0006      	bplw 8e2 <___cmpdf2_internal+0x6c>
 8de:	c142           	exg %d0,%d2
 8e0:	c343           	exg %d1,%d3
 8e2:	b480           	cmpl %d0,%d2
 8e4:	6200 0024      	bhiw 90a <___cmpdf2_internal+0x94>
 8e8:	6600 0016      	bnew 900 <___cmpdf2_internal+0x8a>
 8ec:	b681           	cmpl %d1,%d3
 8ee:	6200 001a      	bhiw 90a <___cmpdf2_internal+0x94>
 8f2:	6600 000c      	bnew 900 <___cmpdf2_internal+0x8a>
 8f6:	7000           	moveq #0,%d0
 8f8:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 8fc:	4e5e           	unlk %fp
 8fe:	4e75           	rts
 900:	7001           	moveq #1,%d0
 902:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 906:	4e5e           	unlk %fp
 908:	4e75           	rts
 90a:	70ff           	moveq #-1,%d0
 90c:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 910:	4e5e           	unlk %fp
 912:	4e75           	rts
 914:	0886 001f      	bclr #31,%d6
 918:	6000 ff98      	braw 8b2 <___cmpdf2_internal+0x3c>
 91c:	0887 001f      	bclr #31,%d7
 920:	6000 ffa6      	braw 8c8 <___cmpdf2_internal+0x52>
 924:	4a81           	tstl %d1
 926:	6600 f70c      	bnew 34 <___subdf3-0x26>
 92a:	6000 ff86      	braw 8b2 <___cmpdf2_internal+0x3c>
 92e:	4a83           	tstl %d3
 930:	6600 f702      	bnew 34 <___subdf3-0x26>
 934:	6000 ff92      	braw 8c8 <___cmpdf2_internal+0x52>
 938:	202e 0018      	movel %fp@(24),%d0
 93c:	7e11           	moveq #17,%d7
 93e:	7c02           	moveq #2,%d6
 940:	4ef9 0000 0000 	jmp 0 <___subdf3-0x5a>

00000946 <___cmpdf2>:
 946:	4e56 0000      	linkw %fp,#0
 94a:	4878 0001      	pea 1 <___subdf3-0x59>
 94e:	2f2e 0014      	movel %fp@(20),%sp@-
 952:	2f2e 0010      	movel %fp@(16),%sp@-
 956:	2f2e 000c      	movel %fp@(12),%sp@-
 95a:	2f2e 0008      	movel %fp@(8),%sp@-
 95e:	6100 ff16      	bsrw 876 <___cmpdf2_internal>
 962:	4e5e           	unlk %fp
 964:	4e75           	rts
 966:	0800 0015      	btst #21,%d0
 96a:	6600 0016      	bnew 982 <___cmpdf2+0x3c>
 96e:	0c44 0001      	cmpiw #1,%d4
 972:	6700 000e      	beqw 982 <___cmpdf2+0x3c>
 976:	d683           	addl %d3,%d3
 978:	d582           	addxl %d2,%d2
 97a:	d381           	addxl %d1,%d1
 97c:	d180           	addxl %d0,%d0
 97e:	51cc ffe6      	dbf %d4,966 <___cmpdf2+0x20>
 982:	0801 0000      	btst #0,%d1
 986:	6700 0022      	beqw 9aa <___cmpdf2+0x64>
 98a:	8682           	orl %d2,%d3
 98c:	6600 0014      	bnew 9a2 <___cmpdf2+0x5c>
 990:	2601           	movel %d1,%d3
 992:	0283 0000 0002 	andil #2,%d3
 998:	7400           	moveq #0,%d2
 99a:	d283           	addl %d3,%d1
 99c:	d182           	addxl %d2,%d0
 99e:	6000 000a      	braw 9aa <___cmpdf2+0x64>
 9a2:	7601           	moveq #1,%d3
 9a4:	7400           	moveq #0,%d2
 9a6:	d283           	addl %d3,%d1
 9a8:	d182           	addxl %d2,%d0
 9aa:	e288           	lsrl #1,%d0
 9ac:	e291           	roxrl #1,%d1
 9ae:	0800 0015      	btst #21,%d0
 9b2:	6700 0008      	beqw 9bc <___cmpdf2+0x76>
 9b6:	e288           	lsrl #1,%d0
 9b8:	e291           	roxrl #1,%d1
 9ba:	5244           	addqw #1,%d4
 9bc:	0800 0014      	btst #20,%d0
 9c0:	6700 0004      	beqw 9c6 <___cmpdf2+0x80>
 9c4:	4ed0           	jmp %a0@
 9c6:	7800           	moveq #0,%d4
 9c8:	4ed0           	jmp %a0@
 9ca:	4ed0           	jmp %a0@

_float.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___subsf3-0x48>:
   0:	8087           	orl %d7,%d0
   2:	7e03           	moveq #3,%d7
   4:	7c01           	moveq #1,%d6
   6:	4ef9 0000 0000 	jmp 0 <___subsf3-0x48>
   c:	203c 7f80 0000 	movel #2139095040,%d0
  12:	8087           	orl %d7,%d0
  14:	7e05           	moveq #5,%d7
  16:	7c01           	moveq #1,%d6
  18:	4ef9 0000 0000 	jmp 0 <___subsf3-0x48>
  1e:	7000           	moveq #0,%d0
  20:	7e03           	moveq #3,%d7
  22:	7c01           	moveq #1,%d6
  24:	4ef9 0000 0000 	jmp 0 <___subsf3-0x48>
  2a:	70ff           	moveq #-1,%d0
  2c:	7e11           	moveq #17,%d7
  2e:	7c01           	moveq #1,%d6
  30:	4ef9 0000 0000 	jmp 0 <___subsf3-0x48>
  36:	203c 7f80 0000 	movel #2139095040,%d0
  3c:	8087           	orl %d7,%d0
  3e:	7e09           	moveq #9,%d7
  40:	7c01           	moveq #1,%d6
  42:	4ef9 0000 0000 	jmp 0 <___subsf3-0x48>

00000048 <___subsf3>:
  48:	086f 001f 0008 	bchg #31,%sp@(8)

0000004e <___addsf3>:
  4e:	4e56 0000      	linkw %fp,#0
  52:	48e7 3f00      	moveml %d2-%d7,%sp@-
  56:	202e 0008      	movel %fp@(8),%d0
  5a:	222e 000c      	movel %fp@(12),%d1
  5e:	2040           	moveal %d0,%a0
  60:	d080           	addl %d0,%d0
  62:	6700 01b6      	beqw 21a <___addsf3+0x1cc>
  66:	2241           	moveal %d1,%a1
  68:	d281           	addl %d1,%d1
  6a:	6700 01ca      	beqw 236 <___addsf3+0x1e8>
  6e:	283c 00ff ffff 	movel #16777215,%d4
  74:	2a3c 0100 0000 	movel #16777216,%d5
  7a:	2c00           	movel %d0,%d6
  7c:	c084           	andl %d4,%d0
  7e:	4684           	notl %d4
  80:	cc84           	andl %d4,%d6
  82:	6700 0184      	beqw 208 <___addsf3+0x1ba>
  86:	bc84           	cmpl %d4,%d6
  88:	6700 01fe      	beqw 288 <___addsf3+0x23a>
  8c:	4846           	swap %d6
  8e:	8085           	orl %d5,%d0
  90:	2e01           	movel %d1,%d7
  92:	ce84           	andl %d4,%d7
  94:	6700 017a      	beqw 210 <___addsf3+0x1c2>
  98:	be84           	cmpl %d4,%d7
  9a:	6700 01ec      	beqw 288 <___addsf3+0x23a>
  9e:	4847           	swap %d7
  a0:	4684           	notl %d4
  a2:	c284           	andl %d4,%d1
  a4:	8285           	orl %d5,%d1
  a6:	2401           	movel %d1,%d2
  a8:	7200           	moveq #0,%d1
  aa:	2601           	movel %d1,%d3
  ac:	be46           	cmpw %d6,%d7
  ae:	6700 0074      	beqw 124 <___addsf3+0xd6>
  b2:	6200 003a      	bhiw ee <___addsf3+0xa0>
  b6:	9e86           	subl %d6,%d7
  b8:	4487           	negl %d7
  ba:	e04f           	lsrw #8,%d7
  bc:	0c47 001a      	cmpiw #26,%d7
  c0:	6c00 0130      	bgew 1f2 <___addsf3+0x1a4>
  c4:	0c47 0010      	cmpiw #16,%d7
  c8:	6c00 0010      	bgew da <___addsf3+0x8c>
  cc:	5347           	subqw #1,%d7
  ce:	e28a           	lsrl #1,%d2
  d0:	e293           	roxrl #1,%d3
  d2:	51cf fffa      	dbf %d7,ce <___addsf3+0x80>
  d6:	6000 004c      	braw 124 <___addsf3+0xd6>
  da:	3602           	movew %d2,%d3
  dc:	4843           	swap %d3
  de:	3403           	movew %d3,%d2
  e0:	4842           	swap %d2
  e2:	0447 0010      	subiw #16,%d7
  e6:	6600 ffe4      	bnew cc <___addsf3+0x7e>
  ea:	6000 0038      	braw 124 <___addsf3+0xd6>
  ee:	cd47           	exg %d6,%d7
  f0:	9e86           	subl %d6,%d7
  f2:	4487           	negl %d7
  f4:	e04f           	lsrw #8,%d7
  f6:	0c47 001a      	cmpiw #26,%d7
  fa:	6c00 00e0      	bgew 1dc <___addsf3+0x18e>
  fe:	0c47 0010      	cmpiw #16,%d7
 102:	6c00 0010      	bgew 114 <___addsf3+0xc6>
 106:	5347           	subqw #1,%d7
 108:	e288           	lsrl #1,%d0
 10a:	e291           	roxrl #1,%d1
 10c:	51cf fffa      	dbf %d7,108 <___addsf3+0xba>
 110:	6000 0012      	braw 124 <___addsf3+0xd6>
 114:	3200           	movew %d0,%d1
 116:	4841           	swap %d1
 118:	3001           	movew %d1,%d0
 11a:	4840           	swap %d0
 11c:	0447 0010      	subiw #16,%d7
 120:	6600 ffe4      	bnew 106 <___addsf3+0xb8>
 124:	cd88           	exg %d6,%a0
 126:	cf89           	exg %d7,%a1
 128:	bd87           	eorl %d6,%d7
 12a:	6b00 0060      	bmiw 18c <___addsf3+0x13e>
 12e:	cd88           	exg %d6,%a0
 130:	2e08           	movel %a0,%d7
 132:	0287 8000 0000 	andil #-2147483648,%d7
 138:	d283           	addl %d3,%d1
 13a:	d182           	addxl %d2,%d0
 13c:	2406           	movel %d6,%d2
 13e:	e04a           	lsrw #8,%d2
 140:	0800 0019      	btst #25,%d0
 144:	6700 0008      	beqw 14e <___addsf3+0x100>
 148:	e288           	lsrl #1,%d0
 14a:	e291           	roxrl #1,%d1
 14c:	5282           	addql #1,%d2
 14e:	41fa 0020      	lea %pc@(170 <___addsf3+0x122>),%a0
 152:	43f9 0000 0000 	lea 0 <___subsf3-0x48>,%a1
 158:	3c29 0006      	movew %a1@(6),%d6
 15c:	6700 0578      	beqw 6d6 <___cmpsf2+0x18>
 160:	0c46 0002      	cmpiw #2,%d6
 164:	6200 05c4      	bhiw 72a <___cmpsf2+0x6c>
 168:	6d00 05c0      	bltw 72a <___cmpsf2+0x6c>
 16c:	6000 05bc      	braw 72a <___cmpsf2+0x6c>
 170:	0c42 00ff      	cmpiw #255,%d2
 174:	6200 0010      	bhiw 186 <___addsf3+0x138>
 178:	0880 0017      	bclr #23,%d0
 17c:	ef4a           	lslw #7,%d2
 17e:	4842           	swap %d2
 180:	8082           	orl %d2,%d0
 182:	6000 00ea      	braw 26e <___addsf3+0x220>
 186:	7a01           	moveq #1,%d5
 188:	6000 fe82      	braw c <___subsf3-0x3c>
 18c:	2e06           	movel %d6,%d7
 18e:	0287 8000 0000 	andil #-2147483648,%d7
 194:	9283           	subl %d3,%d1
 196:	9182           	subxl %d2,%d0
 198:	6700 00d4      	beqw 26e <___addsf3+0x220>
 19c:	6a00 000a      	bplw 1a8 <___addsf3+0x15a>
 1a0:	0847 001f      	bchg #31,%d7
 1a4:	4481           	negl %d1
 1a6:	4080           	negxl %d0
 1a8:	c588           	exg %d2,%a0
 1aa:	e04a           	lsrw #8,%d2
 1ac:	41fa 0020      	lea %pc@(1ce <___addsf3+0x180>),%a0
 1b0:	43f9 0000 0000 	lea 0 <___subsf3-0x48>,%a1
 1b6:	3c29 0006      	movew %a1@(6),%d6
 1ba:	6700 051a      	beqw 6d6 <___cmpsf2+0x18>
 1be:	0c46 0002      	cmpiw #2,%d6
 1c2:	6200 0566      	bhiw 72a <___cmpsf2+0x6c>
 1c6:	6d00 0562      	bltw 72a <___cmpsf2+0x6c>
 1ca:	6000 055e      	braw 72a <___cmpsf2+0x6c>
 1ce:	0880 0017      	bclr #23,%d0
 1d2:	ef4a           	lslw #7,%d2
 1d4:	4842           	swap %d2
 1d6:	8082           	orl %d2,%d0
 1d8:	6000 0094      	braw 26e <___addsf3+0x220>
 1dc:	202e 000c      	movel %fp@(12),%d0
 1e0:	41f9 0000 0000 	lea 0 <___subsf3-0x48>,%a0
 1e6:	30bc 0000      	movew #0,%a0@
 1ea:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 1ee:	4e5e           	unlk %fp
 1f0:	4e75           	rts
 1f2:	202e 0008      	movel %fp@(8),%d0
 1f6:	41f9 0000 0000 	lea 0 <___subsf3-0x48>,%a0
 1fc:	30bc 0000      	movew #0,%a0@
 200:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 204:	4e5e           	unlk %fp
 206:	4e75           	rts
 208:	2c05           	movel %d5,%d6
 20a:	4846           	swap %d6
 20c:	6000 fe82      	braw 90 <___addsf3+0x42>
 210:	2e05           	movel %d5,%d7
 212:	4847           	swap %d7
 214:	4684           	notl %d4
 216:	6000 fe8e      	braw a6 <___addsf3+0x58>
 21a:	202e 000c      	movel %fp@(12),%d0
 21e:	0c80 8000 0000 	cmpil #-2147483648,%d0
 224:	6600 0014      	bnew 23a <___addsf3+0x1ec>
 228:	2e08           	movel %a0,%d7
 22a:	0287 8000 0000 	andil #-2147483648,%d7
 230:	4280           	clrl %d0
 232:	6000 003a      	braw 26e <___addsf3+0x220>
 236:	202e 0008      	movel %fp@(8),%d0
 23a:	7a01           	moveq #1,%d5
 23c:	2e00           	movel %d0,%d7
 23e:	0287 8000 0000 	andil #-2147483648,%d7
 244:	0880 001f      	bclr #31,%d0
 248:	0c80 7f80 0000 	cmpil #2139095040,%d0
 24e:	6c00 0010      	bgew 260 <___addsf3+0x212>
 252:	2000           	movel %d0,%d0
 254:	6600 0018      	bnew 26e <___addsf3+0x220>
 258:	0887 001f      	bclr #31,%d7
 25c:	6000 0010      	braw 26e <___addsf3+0x220>
 260:	0280 007f ffff 	andil #8388607,%d0
 266:	6600 fdc2      	bnew 2a <___subsf3-0x1e>
 26a:	6000 fda0      	braw c <___subsf3-0x3c>
 26e:	41f9 0000 0000 	lea 0 <___subsf3-0x48>,%a0
 274:	30bc 0000      	movew #0,%a0@
 278:	8087           	orl %d7,%d0
 27a:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 27e:	4e5e           	unlk %fp
 280:	4e75           	rts
 282:	e288           	lsrl #1,%d0
 284:	6000 ffe8      	braw 26e <___addsf3+0x220>
 288:	7a01           	moveq #1,%d5
 28a:	202e 0008      	movel %fp@(8),%d0
 28e:	222e 000c      	movel %fp@(12),%d1
 292:	283c 7f80 0000 	movel #2139095040,%d4
 298:	2400           	movel %d0,%d2
 29a:	2601           	movel %d1,%d3
 29c:	0880 001f      	bclr #31,%d0
 2a0:	0881 001f      	bclr #31,%d1
 2a4:	b084           	cmpl %d4,%d0
 2a6:	6200 fd82      	bhiw 2a <___subsf3-0x1e>
 2aa:	b284           	cmpl %d4,%d1
 2ac:	6200 fd7c      	bhiw 2a <___subsf3-0x1e>
 2b0:	b782           	eorl %d3,%d2
 2b2:	6b00 000e      	bmiw 2c2 <___addsf3+0x274>
 2b6:	2e00           	movel %d0,%d7
 2b8:	0287 8000 0000 	andil #-2147483648,%d7
 2be:	6000 fd4c      	braw c <___subsf3-0x3c>
 2c2:	b081           	cmpl %d1,%d0
 2c4:	6700 fd64      	beqw 2a <___subsf3-0x1e>
 2c8:	2e00           	movel %d0,%d7
 2ca:	0287 8000 0000 	andil #-2147483648,%d7
 2d0:	b084           	cmpl %d4,%d0
 2d2:	6700 fd38      	beqw c <___subsf3-0x3c>
 2d6:	0847 001f      	bchg #31,%d7
 2da:	6000 fd30      	braw c <___subsf3-0x3c>

000002de <___mulsf3>:
 2de:	4e56 0000      	linkw %fp,#0
 2e2:	48e7 3f00      	moveml %d2-%d7,%sp@-
 2e6:	202e 0008      	movel %fp@(8),%d0
 2ea:	222e 000c      	movel %fp@(12),%d1
 2ee:	2e00           	movel %d0,%d7
 2f0:	b387           	eorl %d1,%d7
 2f2:	0287 8000 0000 	andil #-2147483648,%d7
 2f8:	2c3c 7f80 0000 	movel #2139095040,%d6
 2fe:	2a06           	movel %d6,%d5
 300:	4685           	notl %d5
 302:	283c 0080 0000 	movel #8388608,%d4
 308:	0880 001f      	bclr #31,%d0
 30c:	2400           	movel %d0,%d2
 30e:	6700 00ac      	beqw 3bc <___mulsf3+0xde>
 312:	0881 001f      	bclr #31,%d1
 316:	2601           	movel %d1,%d3
 318:	6700 009a      	beqw 3b4 <___mulsf3+0xd6>
 31c:	b086           	cmpl %d6,%d0
 31e:	6200 007c      	bhiw 39c <___mulsf3+0xbe>
 322:	6700 0084      	beqw 3a8 <___mulsf3+0xca>
 326:	b286           	cmpl %d6,%d1
 328:	6200 0072      	bhiw 39c <___mulsf3+0xbe>
 32c:	6700 0074      	beqw 3a2 <___mulsf3+0xc4>
 330:	c486           	andl %d6,%d2
 332:	6700 00ae      	beqw 3e2 <___mulsf3+0x104>
 336:	c085           	andl %d5,%d0
 338:	8084           	orl %d4,%d0
 33a:	4842           	swap %d2
 33c:	ee4a           	lsrw #7,%d2
 33e:	c686           	andl %d6,%d3
 340:	6700 00b4      	beqw 3f6 <___mulsf3+0x118>
 344:	c285           	andl %d5,%d1
 346:	8284           	orl %d4,%d1
 348:	4843           	swap %d3
 34a:	ee4b           	lsrw #7,%d3
 34c:	d443           	addw %d3,%d2
 34e:	0442 007f      	subiw #127,%d2
 352:	2c01           	movel %d1,%d6
 354:	2a00           	movel %d0,%d5
 356:	7800           	moveq #0,%d4
 358:	2204           	movel %d4,%d1
 35a:	2004           	movel %d4,%d0
 35c:	e18e           	lsll #8,%d6
 35e:	7617           	moveq #23,%d3
 360:	d281           	addl %d1,%d1
 362:	d180           	addxl %d0,%d0
 364:	e38e           	lsll #1,%d6
 366:	6400 0006      	bccw 36e <___mulsf3+0x90>
 36a:	d285           	addl %d5,%d1
 36c:	d184           	addxl %d4,%d0
 36e:	51cb fff0      	dbf %d3,360 <___mulsf3+0x82>
 372:	ec99           	rorl #6,%d1
 374:	4841           	swap %d1
 376:	3601           	movew %d1,%d3
 378:	0243 03ff      	andiw #1023,%d3
 37c:	0241 fd00      	andiw #-768,%d1
 380:	e188           	lsll #8,%d0
 382:	d080           	addl %d0,%d0
 384:	d080           	addl %d0,%d0
 386:	8043           	orw %d3,%d0
 388:	7a02           	moveq #2,%d5
 38a:	0800 0019      	btst #25,%d0
 38e:	6700 01c4      	beqw 554 <___divsf3+0x14a>
 392:	e288           	lsrl #1,%d0
 394:	e291           	roxrl #1,%d1
 396:	5242           	addqw #1,%d2
 398:	6000 01ba      	braw 554 <___divsf3+0x14a>
 39c:	7a02           	moveq #2,%d5
 39e:	6000 fc8a      	braw 2a <___subsf3-0x1e>
 3a2:	7a02           	moveq #2,%d5
 3a4:	6000 fc66      	braw c <___subsf3-0x3c>
 3a8:	7a02           	moveq #2,%d5
 3aa:	b286           	cmpl %d6,%d1
 3ac:	6200 fc7c      	bhiw 2a <___subsf3-0x1e>
 3b0:	6000 fc5a      	braw c <___subsf3-0x3c>
 3b4:	222e 0008      	movel %fp@(8),%d1
 3b8:	6000 0006      	braw 3c0 <___mulsf3+0xe2>
 3bc:	222e 000c      	movel %fp@(12),%d1
 3c0:	0881 001f      	bclr #31,%d1
 3c4:	0c81 7f80 0000 	cmpil #2139095040,%d1
 3ca:	6c00 fc5e      	bgew 2a <___subsf3-0x1e>
 3ce:	2007           	movel %d7,%d0
 3d0:	41f9 0000 0000 	lea 0 <___subsf3-0x48>,%a0
 3d6:	30bc 0000      	movew #0,%a0@
 3da:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 3de:	4e5e           	unlk %fp
 3e0:	4e75           	rts
 3e2:	7401           	moveq #1,%d2
 3e4:	c085           	andl %d5,%d0
 3e6:	d080           	addl %d0,%d0
 3e8:	5342           	subqw #1,%d2
 3ea:	0800 0017      	btst #23,%d0
 3ee:	6600 ff4e      	bnew 33e <___mulsf3+0x60>
 3f2:	6000 fff2      	braw 3e6 <___mulsf3+0x108>
 3f6:	7601           	moveq #1,%d3
 3f8:	c285           	andl %d5,%d1
 3fa:	d281           	addl %d1,%d1
 3fc:	5343           	subqw #1,%d3
 3fe:	0801 0017      	btst #23,%d1
 402:	6600 ff48      	bnew 34c <___mulsf3+0x6e>
 406:	6000 fff2      	braw 3fa <___mulsf3+0x11c>

0000040a <___divsf3>:
 40a:	4e56 0000      	linkw %fp,#0
 40e:	48e7 3f00      	moveml %d2-%d7,%sp@-
 412:	202e 0008      	movel %fp@(8),%d0
 416:	222e 000c      	movel %fp@(12),%d1
 41a:	2e00           	movel %d0,%d7
 41c:	b387           	eorl %d1,%d7
 41e:	0287 8000 0000 	andil #-2147483648,%d7
 424:	2c3c 7f80 0000 	movel #2139095040,%d6
 42a:	2a06           	movel %d6,%d5
 42c:	4685           	notl %d5
 42e:	283c 0080 0000 	movel #8388608,%d4
 434:	0880 001f      	bclr #31,%d0
 438:	2400           	movel %d0,%d2
 43a:	6700 00a6      	beqw 4e2 <___divsf3+0xd8>
 43e:	0881 001f      	bclr #31,%d1
 442:	2601           	movel %d1,%d3
 444:	6700 00c6      	beqw 50c <___divsf3+0x102>
 448:	b086           	cmpl %d6,%d0
 44a:	6200 0084      	bhiw 4d0 <___divsf3+0xc6>
 44e:	6700 00cc      	beqw 51c <___divsf3+0x112>
 452:	b286           	cmpl %d6,%d1
 454:	6200 007a      	bhiw 4d0 <___divsf3+0xc6>
 458:	6700 0082      	beqw 4dc <___divsf3+0xd2>
 45c:	c486           	andl %d6,%d2
 45e:	6700 00cc      	beqw 52c <___divsf3+0x122>
 462:	c085           	andl %d5,%d0
 464:	8084           	orl %d4,%d0
 466:	4842           	swap %d2
 468:	ee4a           	lsrw #7,%d2
 46a:	c686           	andl %d6,%d3
 46c:	6700 00d2      	beqw 540 <___divsf3+0x136>
 470:	c285           	andl %d5,%d1
 472:	8284           	orl %d4,%d1
 474:	4843           	swap %d3
 476:	ee4b           	lsrw #7,%d3
 478:	9443           	subw %d3,%d2
 47a:	0642 007e      	addiw #126,%d2
 47e:	2047           	moveal %d7,%a0
 480:	7c00           	moveq #0,%d6
 482:	2e06           	movel %d6,%d7
 484:	7619           	moveq #25,%d3
 486:	b280           	cmpl %d0,%d1
 488:	6200 000a      	bhiw 494 <___divsf3+0x8a>
 48c:	07c6           	bset %d3,%d6
 48e:	9081           	subl %d1,%d0
 490:	6700 0028      	beqw 4ba <___divsf3+0xb0>
 494:	d080           	addl %d0,%d0
 496:	51cb ffee      	dbf %d3,486 <___divsf3+0x7c>
 49a:	7618           	moveq #24,%d3
 49c:	b280           	cmpl %d0,%d1
 49e:	6f00 000e      	blew 4ae <___divsf3+0xa4>
 4a2:	d080           	addl %d0,%d0
 4a4:	51cb fff6      	dbf %d3,49c <___divsf3+0x92>
 4a8:	7200           	moveq #0,%d1
 4aa:	6000 000e      	braw 4ba <___divsf3+0xb0>
 4ae:	7200           	moveq #0,%d1
 4b0:	0443 0018      	subiw #24,%d3
 4b4:	0643 001f      	addiw #31,%d3
 4b8:	07c1           	bset %d3,%d1
 4ba:	2006           	movel %d6,%d0
 4bc:	2e08           	movel %a0,%d7
 4be:	0800 0019      	btst #25,%d0
 4c2:	6700 0006      	beqw 4ca <___divsf3+0xc0>
 4c6:	e288           	lsrl #1,%d0
 4c8:	5242           	addqw #1,%d2
 4ca:	7a03           	moveq #3,%d5
 4cc:	6000 0086      	braw 554 <___divsf3+0x14a>
 4d0:	7a03           	moveq #3,%d5
 4d2:	6000 fb56      	braw 2a <___subsf3-0x1e>
 4d6:	7a03           	moveq #3,%d5
 4d8:	6000 fb32      	braw c <___subsf3-0x3c>
 4dc:	7a03           	moveq #3,%d5
 4de:	6000 fb3e      	braw 1e <___subsf3-0x2a>
 4e2:	7a03           	moveq #3,%d5
 4e4:	0281 7fff ffff 	andil #2147483647,%d1
 4ea:	6700 fb3e      	beqw 2a <___subsf3-0x1e>
 4ee:	0c81 7f80 0000 	cmpil #2139095040,%d1
 4f4:	6200 fb34      	bhiw 2a <___subsf3-0x1e>
 4f8:	2007           	movel %d7,%d0
 4fa:	41f9 0000 0000 	lea 0 <___subsf3-0x48>,%a0
 500:	30bc 0000      	movew #0,%a0@
 504:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 508:	4e5e           	unlk %fp
 50a:	4e75           	rts
 50c:	7a03           	moveq #3,%d5
 50e:	0c80 7f80 0000 	cmpil #2139095040,%d0
 514:	6200 fb14      	bhiw 2a <___subsf3-0x1e>
 518:	6000 fb1c      	braw 36 <___subsf3-0x12>
 51c:	7a03           	moveq #3,%d5
 51e:	0c81 7f80 0000 	cmpil #2139095040,%d1
 524:	6c00 fb04      	bgew 2a <___subsf3-0x1e>
 528:	6000 fae2      	braw c <___subsf3-0x3c>
 52c:	7401           	moveq #1,%d2
 52e:	c085           	andl %d5,%d0
 530:	d080           	addl %d0,%d0
 532:	5342           	subqw #1,%d2
 534:	0800 0017      	btst #23,%d0
 538:	6600 ff30      	bnew 46a <___divsf3+0x60>
 53c:	6000 fff2      	braw 530 <___divsf3+0x126>
 540:	7601           	moveq #1,%d3
 542:	c285           	andl %d5,%d1
 544:	d281           	addl %d1,%d1
 546:	5343           	subqw #1,%d3
 548:	0801 0017      	btst #23,%d1
 54c:	6600 ff2a      	bnew 478 <___divsf3+0x6e>
 550:	6000 fff2      	braw 544 <___divsf3+0x13a>
 554:	0c42 ffe7      	cmpiw #-25,%d2
 558:	6d00 fac4      	bltw 1e <___subsf3-0x2a>
 55c:	7c00           	moveq #0,%d6
 55e:	0c42 0001      	cmpiw #1,%d2
 562:	6c00 001a      	bgew 57e <___divsf3+0x174>
 566:	5242           	addqw #1,%d2
 568:	e288           	lsrl #1,%d0
 56a:	e291           	roxrl #1,%d1
 56c:	e296           	roxrl #1,%d6
 56e:	0c42 0001      	cmpiw #1,%d2
 572:	6700 000a      	beqw 57e <___divsf3+0x174>
 576:	6000 ffee      	braw 566 <___divsf3+0x15c>
 57a:	6000 faa2      	braw 1e <___subsf3-0x2a>
 57e:	8286           	orl %d6,%d1
 580:	41fa 0020      	lea %pc@(5a2 <___divsf3+0x198>),%a0
 584:	43f9 0000 0000 	lea 0 <___subsf3-0x48>,%a1
 58a:	3c29 0006      	movew %a1@(6),%d6
 58e:	6700 0146      	beqw 6d6 <___cmpsf2+0x18>
 592:	0c46 0002      	cmpiw #2,%d6
 596:	6200 0192      	bhiw 72a <___cmpsf2+0x6c>
 59a:	6d00 018e      	bltw 72a <___cmpsf2+0x6c>
 59e:	6000 018a      	braw 72a <___cmpsf2+0x6c>
 5a2:	0c42 00ff      	cmpiw #255,%d2
 5a6:	6c00 fa64      	bgew c <___subsf3-0x3c>
 5aa:	3402           	movew %d2,%d2
 5ac:	6700 fa52      	beqw 0 <___subsf3-0x48>
 5b0:	ef4a           	lslw #7,%d2
 5b2:	0880 0017      	bclr #23,%d0
 5b6:	4840           	swap %d0
 5b8:	8042           	orw %d2,%d0
 5ba:	4840           	swap %d0
 5bc:	8087           	orl %d7,%d0
 5be:	41f9 0000 0000 	lea 0 <___subsf3-0x48>,%a0
 5c4:	30bc 0000      	movew #0,%a0@
 5c8:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 5cc:	4e5e           	unlk %fp
 5ce:	4e75           	rts

000005d0 <___negsf2>:
 5d0:	4e56 0000      	linkw %fp,#0
 5d4:	48e7 3f00      	moveml %d2-%d7,%sp@-
 5d8:	7a04           	moveq #4,%d5
 5da:	202e 0008      	movel %fp@(8),%d0
 5de:	0840 001f      	bchg #31,%d0
 5e2:	2200           	movel %d0,%d1
 5e4:	0881 001f      	bclr #31,%d1
 5e8:	4a81           	tstl %d1
 5ea:	6700 002e      	beqw 61a <___negsf2+0x4a>
 5ee:	0c81 7f80 0000 	cmpil #2139095040,%d1
 5f4:	6d00 0012      	bltw 608 <___negsf2+0x38>
 5f8:	6200 fa30      	bhiw 2a <___subsf3-0x1e>
 5fc:	2e00           	movel %d0,%d7
 5fe:	0287 8000 0000 	andil #-2147483648,%d7
 604:	6000 fa06      	braw c <___subsf3-0x3c>
 608:	41f9 0000 0000 	lea 0 <___subsf3-0x48>,%a0
 60e:	30bc 0000      	movew #0,%a0@
 612:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 616:	4e5e           	unlk %fp
 618:	4e75           	rts
 61a:	0880 001f      	bclr #31,%d0
 61e:	6000 ffe8      	braw 608 <___negsf2+0x38>

00000622 <___cmpsf2_internal>:
 622:	4e56 0000      	linkw %fp,#0
 626:	48e7 3f00      	moveml %d2-%d7,%sp@-
 62a:	7a05           	moveq #5,%d5
 62c:	202e 0008      	movel %fp@(8),%d0
 630:	222e 000c      	movel %fp@(12),%d1
 634:	2c00           	movel %d0,%d6
 636:	0280 7fff ffff 	andil #2147483647,%d0
 63c:	6700 0062      	beqw 6a0 <___cmpsf2_internal+0x7e>
 640:	0c80 7f80 0000 	cmpil #2139095040,%d0
 646:	6200 0068      	bhiw 6b0 <___cmpsf2_internal+0x8e>
 64a:	2e01           	movel %d1,%d7
 64c:	0281 7fff ffff 	andil #2147483647,%d1
 652:	6700 0054      	beqw 6a8 <___cmpsf2_internal+0x86>
 656:	0c81 7f80 0000 	cmpil #2139095040,%d1
 65c:	6200 0052      	bhiw 6b0 <___cmpsf2_internal+0x8e>
 660:	bd87           	eorl %d6,%d7
 662:	6a00 000c      	bplw 670 <___cmpsf2_internal+0x4e>
 666:	4a86           	tstl %d6
 668:	6a00 0022      	bplw 68c <___cmpsf2_internal+0x6a>
 66c:	6b00 0028      	bmiw 696 <___cmpsf2_internal+0x74>
 670:	4a86           	tstl %d6
 672:	6a00 0004      	bplw 678 <___cmpsf2_internal+0x56>
 676:	c141           	exg %d0,%d1
 678:	b280           	cmpl %d0,%d1
 67a:	6200 001a      	bhiw 696 <___cmpsf2_internal+0x74>
 67e:	6600 000c      	bnew 68c <___cmpsf2_internal+0x6a>
 682:	7000           	moveq #0,%d0
 684:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 688:	4e5e           	unlk %fp
 68a:	4e75           	rts
 68c:	7001           	moveq #1,%d0
 68e:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 692:	4e5e           	unlk %fp
 694:	4e75           	rts
 696:	70ff           	moveq #-1,%d0
 698:	4cdf 00fc      	moveml %sp@+,%d2-%d7
 69c:	4e5e           	unlk %fp
 69e:	4e75           	rts
 6a0:	0886 001f      	bclr #31,%d6
 6a4:	6000 ffa4      	braw 64a <___cmpsf2_internal+0x28>
 6a8:	0887 001f      	bclr #31,%d7
 6ac:	6000 ffb2      	braw 660 <___cmpsf2_internal+0x3e>
 6b0:	202e 0010      	movel %fp@(16),%d0
 6b4:	7e11           	moveq #17,%d7
 6b6:	7c01           	moveq #1,%d6
 6b8:	4ef9 0000 0000 	jmp 0 <___subsf3-0x48>

000006be <___cmpsf2>:
 6be:	4e56 0000      	linkw %fp,#0
 6c2:	4878 0001      	pea 1 <___subsf3-0x47>
 6c6:	2f2e 000c      	movel %fp@(12),%sp@-
 6ca:	2f2e 0008      	movel %fp@(8),%sp@-
 6ce:	6100 ff52      	bsrw 622 <___cmpsf2_internal>
 6d2:	4e5e           	unlk %fp
 6d4:	4e75           	rts
 6d6:	0800 0018      	btst #24,%d0
 6da:	6600 0012      	bnew 6ee <___cmpsf2+0x30>
 6de:	0c42 0001      	cmpiw #1,%d2
 6e2:	6700 000a      	beqw 6ee <___cmpsf2+0x30>
 6e6:	d281           	addl %d1,%d1
 6e8:	d180           	addxl %d0,%d0
 6ea:	51ca ffea      	dbf %d2,6d6 <___cmpsf2+0x18>
 6ee:	0800 0000      	btst #0,%d0
 6f2:	6700 001a      	beqw 70e <___cmpsf2+0x50>
 6f6:	4a81           	tstl %d1
 6f8:	6600 0010      	bnew 70a <___cmpsf2+0x4c>
 6fc:	2200           	movel %d0,%d1
 6fe:	0281 0000 0002 	andil #2,%d1
 704:	d081           	addl %d1,%d0
 706:	6000 0006      	braw 70e <___cmpsf2+0x50>
 70a:	7201           	moveq #1,%d1
 70c:	d081           	addl %d1,%d0
 70e:	e288           	lsrl #1,%d0
 710:	0800 0018      	btst #24,%d0
 714:	6700 0006      	beqw 71c <___cmpsf2+0x5e>
 718:	e288           	lsrl #1,%d0
 71a:	5242           	addqw #1,%d2
 71c:	0800 0017      	btst #23,%d0
 720:	6700 0004      	beqw 726 <___cmpsf2+0x68>
 724:	4ed0           	jmp %a0@
 726:	7400           	moveq #0,%d2
 728:	4ed0           	jmp %a0@
 72a:	4ed0           	jmp %a0@

_floatex.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___clear_sticky_bit>:
   0:	41f9 0000 006c 	lea 6c <__fpCCR>,%a0
   6:	317c 0000 0004 	movew #0,%a0@(4)
   c:	4e75           	rts

0000000e <$_exception_handler>:
   e:	41f9 0000 006c 	lea 6c <__fpCCR>,%a0
  14:	3087           	movew %d7,%a0@
  16:	8f68 0004      	orw %d7,%a0@(4)
  1a:	3146 0008      	movew %d6,%a0@(8)
  1e:	3145 000a      	movew %d5,%a0@(10)
  22:	0c46 0001      	cmpiw #1,%d6
  26:	6700 001e      	beqw 46 <$_exception_handler+0x38>
  2a:	216e 0008 000c 	movel %fp@(8),%a0@(12)
  30:	216e 000c 0010 	movel %fp@(12),%a0@(16)
  36:	216e 0010 0014 	movel %fp@(16),%a0@(20)
  3c:	216e 0014 0018 	movel %fp@(20),%a0@(24)
  42:	6000 000e      	braw 52 <$_exception_handler+0x44>
  46:	216e 0008 000c 	movel %fp@(8),%a0@(12)
  4c:	216e 000c 0014 	movel %fp@(12),%a0@(20)
  52:	ce68 0002      	andw %a0@(2),%d7
  56:	6700 000a      	beqw 62 <$_exception_handler+0x54>
  5a:	4879 0000 006c 	pea 6c <__fpCCR>
  60:	4e4f           	trap #15
  62:	4cdf 00fc      	moveml %sp@+,%d2-%d7
  66:	4e5e           	unlk %fp
  68:	4e75           	rts
	...

Disassembly of section .data:

0000006c <__fpCCR>:
	...

_eqdf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___eqdf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 0001      	pea 1 <___eqdf2+0x1>
   8:	2f2e 0014      	movel %fp@(20),%sp@-
   c:	2f2e 0010      	movel %fp@(16),%sp@-
  10:	2f2e 000c      	movel %fp@(12),%sp@-
  14:	2f2e 0008      	movel %fp@(8),%sp@-
  18:	4eb9 0000 0000 	jsr 0 <___eqdf2>
  1e:	4e5e           	unlk %fp
  20:	4e75           	rts
	...

_nedf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___nedf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 0001      	pea 1 <___nedf2+0x1>
   8:	2f2e 0014      	movel %fp@(20),%sp@-
   c:	2f2e 0010      	movel %fp@(16),%sp@-
  10:	2f2e 000c      	movel %fp@(12),%sp@-
  14:	2f2e 0008      	movel %fp@(8),%sp@-
  18:	4eb9 0000 0000 	jsr 0 <___nedf2>
  1e:	4e5e           	unlk %fp
  20:	4e75           	rts
	...

_gtdf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___gtdf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 ffff      	pea ffffffff <___gtdf2+0xffffffff>
   8:	2f2e 0014      	movel %fp@(20),%sp@-
   c:	2f2e 0010      	movel %fp@(16),%sp@-
  10:	2f2e 000c      	movel %fp@(12),%sp@-
  14:	2f2e 0008      	movel %fp@(8),%sp@-
  18:	4eb9 0000 0000 	jsr 0 <___gtdf2>
  1e:	4e5e           	unlk %fp
  20:	4e75           	rts
	...

_gedf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___gedf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 ffff      	pea ffffffff <___gedf2+0xffffffff>
   8:	2f2e 0014      	movel %fp@(20),%sp@-
   c:	2f2e 0010      	movel %fp@(16),%sp@-
  10:	2f2e 000c      	movel %fp@(12),%sp@-
  14:	2f2e 0008      	movel %fp@(8),%sp@-
  18:	4eb9 0000 0000 	jsr 0 <___gedf2>
  1e:	4e5e           	unlk %fp
  20:	4e75           	rts
	...

_ltdf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___ltdf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 0001      	pea 1 <___ltdf2+0x1>
   8:	2f2e 0014      	movel %fp@(20),%sp@-
   c:	2f2e 0010      	movel %fp@(16),%sp@-
  10:	2f2e 000c      	movel %fp@(12),%sp@-
  14:	2f2e 0008      	movel %fp@(8),%sp@-
  18:	4eb9 0000 0000 	jsr 0 <___ltdf2>
  1e:	4e5e           	unlk %fp
  20:	4e75           	rts
	...

_ledf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___ledf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 0001      	pea 1 <___ledf2+0x1>
   8:	2f2e 0014      	movel %fp@(20),%sp@-
   c:	2f2e 0010      	movel %fp@(16),%sp@-
  10:	2f2e 000c      	movel %fp@(12),%sp@-
  14:	2f2e 0008      	movel %fp@(8),%sp@-
  18:	4eb9 0000 0000 	jsr 0 <___ledf2>
  1e:	4e5e           	unlk %fp
  20:	4e75           	rts
	...

_eqsf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___eqsf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 0001      	pea 1 <___eqsf2+0x1>
   8:	2f2e 000c      	movel %fp@(12),%sp@-
   c:	2f2e 0008      	movel %fp@(8),%sp@-
  10:	4eb9 0000 0000 	jsr 0 <___eqsf2>
  16:	4e5e           	unlk %fp
  18:	4e75           	rts
	...

_nesf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___nesf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 0001      	pea 1 <___nesf2+0x1>
   8:	2f2e 000c      	movel %fp@(12),%sp@-
   c:	2f2e 0008      	movel %fp@(8),%sp@-
  10:	4eb9 0000 0000 	jsr 0 <___nesf2>
  16:	4e5e           	unlk %fp
  18:	4e75           	rts
	...

_gtsf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___gtsf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 ffff      	pea ffffffff <___gtsf2+0xffffffff>
   8:	2f2e 000c      	movel %fp@(12),%sp@-
   c:	2f2e 0008      	movel %fp@(8),%sp@-
  10:	4eb9 0000 0000 	jsr 0 <___gtsf2>
  16:	4e5e           	unlk %fp
  18:	4e75           	rts
	...

_gesf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___gesf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 ffff      	pea ffffffff <___gesf2+0xffffffff>
   8:	2f2e 000c      	movel %fp@(12),%sp@-
   c:	2f2e 0008      	movel %fp@(8),%sp@-
  10:	4eb9 0000 0000 	jsr 0 <___gesf2>
  16:	4e5e           	unlk %fp
  18:	4e75           	rts
	...

_ltsf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___ltsf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 0001      	pea 1 <___ltsf2+0x1>
   8:	2f2e 000c      	movel %fp@(12),%sp@-
   c:	2f2e 0008      	movel %fp@(8),%sp@-
  10:	4eb9 0000 0000 	jsr 0 <___ltsf2>
  16:	4e5e           	unlk %fp
  18:	4e75           	rts
	...

_lesf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___lesf2>:
   0:	4e56 0000      	linkw %fp,#0
   4:	4878 0001      	pea 1 <___lesf2+0x1>
   8:	2f2e 000c      	movel %fp@(12),%sp@-
   c:	2f2e 0008      	movel %fp@(8),%sp@-
  10:	4eb9 0000 0000 	jsr 0 <___lesf2>
  16:	4e5e           	unlk %fp
  18:	4e75           	rts
	...

_muldi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___muldi3>:
   0:	48e7 3f30      	moveml %d2-%d7/%a2-%a3,%sp@-
   4:	246f 0024      	moveal %sp@(36),%a2
   8:	206f 0028      	moveal %sp@(40),%a0
   c:	2a2f 0030      	movel %sp@(48),%d5
  10:	2008           	movel %a0,%d0
  12:	2205           	movel %d5,%d1
  14:	2400           	movel %d0,%d2
  16:	4840           	swap %d0
  18:	2601           	movel %d1,%d3
  1a:	4841           	swap %d1
  1c:	3802           	movew %d2,%d4
  1e:	c8c3           	muluw %d3,%d4
  20:	c4c1           	muluw %d1,%d2
  22:	c6c0           	muluw %d0,%d3
  24:	c2c0           	muluw %d0,%d1
  26:	2004           	movel %d4,%d0
  28:	b140           	eorw %d0,%d0
  2a:	4840           	swap %d0
  2c:	d480           	addl %d0,%d2
  2e:	d483           	addl %d3,%d2
  30:	6406           	bccs 38 <___muldi3+0x38>
  32:	0681 0001 0000 	addil #65536,%d1
  38:	4842           	swap %d2
  3a:	7000           	moveq #0,%d0
  3c:	3002           	movew %d2,%d0
  3e:	3404           	movew %d4,%d2
  40:	2c02           	movel %d2,%d6
  42:	d081           	addl %d1,%d0
  44:	2e00           	movel %d0,%d7
  46:	47f9 0000 0000 	lea 0 <___muldi3>,%a3
  4c:	2f08           	movel %a0,%sp@-
  4e:	2f2f 0030      	movel %sp@(48),%sp@-
  52:	4e93           	jsr %a3@
  54:	508f           	addql #8,%sp
  56:	2400           	movel %d0,%d2
  58:	2f0a           	movel %a2,%sp@-
  5a:	2f05           	movel %d5,%sp@-
  5c:	4e93           	jsr %a3@
  5e:	508f           	addql #8,%sp
  60:	d082           	addl %d2,%d0
  62:	d087           	addl %d7,%d0
  64:	2206           	movel %d6,%d1
  66:	4cdf 0cfc      	moveml %sp@+,%d2-%d7/%a2-%a3
  6a:	4e75           	rts

_negdi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___negdi2>:
   0:	48e7 3800      	moveml %d2-%d4,%sp@-
   4:	242f 0014      	movel %sp@(20),%d2
   8:	262f 0010      	movel %sp@(16),%d3
   c:	4483           	negl %d3
   e:	4a82           	tstl %d2
  10:	56c4           	sne %d4
  12:	4884           	extw %d4
  14:	3044           	moveaw %d4,%a0
  16:	d1c3           	addal %d3,%a0
  18:	2008           	movel %a0,%d0
  1a:	2202           	movel %d2,%d1
  1c:	4481           	negl %d1
  1e:	4cdf 001c      	moveml %sp@+,%d2-%d4
  22:	4e75           	rts

_lshrdi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___lshrdi3>:
   0:	48e7 3800      	moveml %d2-%d4,%sp@-
   4:	202f 0010      	movel %sp@(16),%d0
   8:	222f 0014      	movel %sp@(20),%d1
   c:	242f 0018      	movel %sp@(24),%d2
  10:	6718           	beqs 2a <___lshrdi3+0x2a>
  12:	7620           	moveq #32,%d3
  14:	9682           	subl %d2,%d3
  16:	4a83           	tstl %d3
  18:	6f16           	bles 30 <___lshrdi3+0x30>
  1a:	2800           	movel %d0,%d4
  1c:	e4ac           	lsrl %d2,%d4
  1e:	e7a8           	lsll %d3,%d0
  20:	2600           	movel %d0,%d3
  22:	e4a9           	lsrl %d2,%d1
  24:	8681           	orl %d1,%d3
  26:	2004           	movel %d4,%d0
  28:	2203           	movel %d3,%d1
  2a:	4cdf 001c      	moveml %sp@+,%d2-%d4
  2e:	4e75           	rts
  30:	7800           	moveq #0,%d4
  32:	4483           	negl %d3
  34:	e6a8           	lsrl %d3,%d0
  36:	2600           	movel %d0,%d3
  38:	2004           	movel %d4,%d0
  3a:	2203           	movel %d3,%d1
  3c:	60ec           	bras 2a <___lshrdi3+0x2a>
	...

_ashldi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___ashldi3>:
   0:	48e7 3800      	moveml %d2-%d4,%sp@-
   4:	202f 0010      	movel %sp@(16),%d0
   8:	222f 0014      	movel %sp@(20),%d1
   c:	242f 0018      	movel %sp@(24),%d2
  10:	6716           	beqs 28 <___ashldi3+0x28>
  12:	7620           	moveq #32,%d3
  14:	9682           	subl %d2,%d3
  16:	4a83           	tstl %d3
  18:	6f14           	bles 2e <___ashldi3+0x2e>
  1a:	2801           	movel %d1,%d4
  1c:	e5ac           	lsll %d2,%d4
  1e:	e6a9           	lsrl %d3,%d1
  20:	e5a8           	lsll %d2,%d0
  22:	8280           	orl %d0,%d1
  24:	2001           	movel %d1,%d0
  26:	2204           	movel %d4,%d1
  28:	4cdf 001c      	moveml %sp@+,%d2-%d4
  2c:	4e75           	rts
  2e:	7800           	moveq #0,%d4
  30:	4483           	negl %d3
  32:	e7a9           	lsll %d3,%d1
  34:	2001           	movel %d1,%d0
  36:	2204           	movel %d4,%d1
  38:	60ee           	bras 28 <___ashldi3+0x28>
	...

_ashrdi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___ashrdi3>:
   0:	48e7 3800      	moveml %d2-%d4,%sp@-
   4:	202f 0010      	movel %sp@(16),%d0
   8:	222f 0014      	movel %sp@(20),%d1
   c:	242f 0018      	movel %sp@(24),%d2
  10:	6718           	beqs 2a <___ashrdi3+0x2a>
  12:	7620           	moveq #32,%d3
  14:	9682           	subl %d2,%d3
  16:	2800           	movel %d0,%d4
  18:	4a83           	tstl %d3
  1a:	6f14           	bles 30 <___ashrdi3+0x30>
  1c:	e4a4           	asrl %d2,%d4
  1e:	e7a8           	lsll %d3,%d0
  20:	2600           	movel %d0,%d3
  22:	e4a9           	lsrl %d2,%d1
  24:	8681           	orl %d1,%d3
  26:	2004           	movel %d4,%d0
  28:	2203           	movel %d3,%d1
  2a:	4cdf 001c      	moveml %sp@+,%d2-%d4
  2e:	4e75           	rts
  30:	d884           	addl %d4,%d4
  32:	9984           	subxl %d4,%d4
  34:	4483           	negl %d3
  36:	e6a0           	asrl %d3,%d0
  38:	2600           	movel %d0,%d3
  3a:	2004           	movel %d4,%d0
  3c:	2203           	movel %d3,%d1
  3e:	60ea           	bras 2a <___ashrdi3+0x2a>

_cmpdi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___cmpdi2>:
   0:	222f 0004      	movel %sp@(4),%d1
   4:	226f 0008      	moveal %sp@(8),%a1
   8:	202f 000c      	movel %sp@(12),%d0
   c:	206f 0010      	moveal %sp@(16),%a0
  10:	b081           	cmpl %d1,%d0
  12:	6e14           	bgts 28 <___cmpdi2+0x28>
  14:	6c04           	bges 1a <___cmpdi2+0x1a>
  16:	7002           	moveq #2,%d0
  18:	4e75           	rts
  1a:	b1c9           	cmpal %a1,%a0
  1c:	620e           	bhis 2c <___cmpdi2+0x2c>
  1e:	54c0           	scc %d0
  20:	4880           	extw %d0
  22:	48c0           	extl %d0
  24:	5480           	addql #2,%d0
  26:	4e75           	rts
  28:	7000           	moveq #0,%d0
  2a:	4e75           	rts
  2c:	7000           	moveq #0,%d0
  2e:	4e75           	rts

_ucmpdi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___ucmpdi2>:
   0:	222f 0004      	movel %sp@(4),%d1
   4:	226f 0008      	moveal %sp@(8),%a1
   8:	202f 000c      	movel %sp@(12),%d0
   c:	206f 0010      	moveal %sp@(16),%a0
  10:	b081           	cmpl %d1,%d0
  12:	6214           	bhis 28 <___ucmpdi2+0x28>
  14:	6404           	bccs 1a <___ucmpdi2+0x1a>
  16:	7002           	moveq #2,%d0
  18:	4e75           	rts
  1a:	b1c9           	cmpal %a1,%a0
  1c:	620e           	bhis 2c <___ucmpdi2+0x2c>
  1e:	54c0           	scc %d0
  20:	4880           	extw %d0
  22:	48c0           	extl %d0
  24:	5480           	addql #2,%d0
  26:	4e75           	rts
  28:	7000           	moveq #0,%d0
  2a:	4e75           	rts
  2c:	7000           	moveq #0,%d0
  2e:	4e75           	rts

_clear_cache.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___clear_cache>:
   0:	4e75           	rts
	...

_enable_execute_stack.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___enable_execute_stack>:
   0:	4e75           	rts
	...

_trampoline.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___trampoline>:
   0:	2ea8 0016      	movel %a0@(22),%sp@
   4:	2068 0012      	moveal %a0@(18),%a0
   8:	4e75           	rts
   a:	4e75           	rts

__main.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___do_global_dtors>:
   0:	2279 0000 008c 	moveal 8c <___main+0x16>,%a1
   6:	2051           	moveal %a1@,%a0
   8:	b0fc 0000      	cmpaw #0,%a0
   c:	6718           	beqs 26 <___do_global_dtors+0x26>
   e:	5889           	addql #4,%a1
  10:	23c9 0000 008c 	movel %a1,8c <___main+0x16>
  16:	4e90           	jsr %a0@
  18:	2279 0000 008c 	moveal 8c <___main+0x16>,%a1
  1e:	2051           	moveal %a1@,%a0
  20:	b0fc 0000      	cmpaw #0,%a0
  24:	66e8           	bnes e <___do_global_dtors+0xe>
  26:	4e75           	rts

00000028 <___do_global_ctors>:
  28:	2f0a           	movel %a2,%sp@-
  2a:	2f02           	movel %d2,%sp@-
  2c:	2439 0000 0000 	movel 0 <___do_global_dtors>,%d2
  32:	70ff           	moveq #-1,%d0
  34:	b082           	cmpl %d2,%d0
  36:	672a           	beqs 62 <___do_global_ctors+0x3a>
  38:	4a82           	tstl %d2
  3a:	6714           	beqs 50 <___do_global_ctors+0x28>
  3c:	2442           	moveal %d2,%a2
  3e:	d5c2           	addal %d2,%a2
  40:	d5ca           	addal %a2,%a2
  42:	d5fc 0000 0004 	addal #4,%a2
  48:	2062           	moveal %a2@-,%a0
  4a:	4e90           	jsr %a0@
  4c:	5382           	subql #1,%d2
  4e:	66f8           	bnes 48 <___do_global_ctors+0x20>
  50:	487a ffae      	pea %pc@(0 <___do_global_dtors>)
  54:	4eb9 0000 0000 	jsr 0 <___do_global_dtors>
  5a:	588f           	addql #4,%sp
  5c:	241f           	movel %sp@+,%d2
  5e:	245f           	moveal %sp@+,%a2
  60:	4e75           	rts
  62:	41f9 0000 0004 	lea 4 <___do_global_dtors+0x4>,%a0
  68:	7400           	moveq #0,%d2
  6a:	2002           	movel %d2,%d0
  6c:	5280           	addql #1,%d0
  6e:	4a98           	tstl %a0@+
  70:	67c6           	beqs 38 <___do_global_ctors+0x10>
  72:	2400           	movel %d0,%d2
  74:	60f4           	bras 6a <___do_global_ctors+0x42>

00000076 <___main>:
  76:	4ab9 0000 0090 	tstl 90 <___main+0x1a>
  7c:	6702           	beqs 80 <___main+0xa>
  7e:	4e75           	rts
  80:	7001           	moveq #1,%d0
  82:	23c0 0000 0090 	movel %d0,90 <___main+0x1a>
  88:	609e           	bras 28 <___do_global_ctors>
	...

Disassembly of section .data:

0000008c <.data>:
  8c:	0000 0004      	orib #4,%d0

Disassembly of section .bss:

00000090 <.bss>:
  90:	0000 0000      	orib #0,%d0

_absvsi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___absvsi2>:
   0:	202f 0004      	movel %sp@(4),%d0
   4:	6d02           	blts 8 <___absvsi2+0x8>
   6:	4e75           	rts
   8:	4480           	negl %d0
   a:	6afa           	bpls 6 <___absvsi2+0x6>
   c:	4eb9 0000 0000 	jsr 0 <___absvsi2>
	...

_absvdi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___absvdi2>:
   0:	2f03           	movel %d3,%sp@-
   2:	2f02           	movel %d2,%sp@-
   4:	242f 000c      	movel %sp@(12),%d2
   8:	262f 0010      	movel %sp@(16),%d3
   c:	2002           	movel %d2,%d0
   e:	2203           	movel %d3,%d1
  10:	4a82           	tstl %d2
  12:	6b06           	bmis 1a <___absvdi2+0x1a>
  14:	241f           	movel %sp@+,%d2
  16:	261f           	movel %sp@+,%d3
  18:	4e75           	rts
  1a:	4481           	negl %d1
  1c:	4080           	negxl %d0
  1e:	6af4           	bpls 14 <___absvdi2+0x14>
  20:	4eb9 0000 0000 	jsr 0 <___absvdi2>
	...

_addvsi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___addvsi3>:
   0:	222f 0004      	movel %sp@(4),%d1
   4:	206f 0008      	moveal %sp@(8),%a0
   8:	2008           	movel %a0,%d0
   a:	d081           	addl %d1,%d0
   c:	b0fc 0000      	cmpaw #0,%a0
  10:	6d0c           	blts 1e <___addvsi3+0x1e>
  12:	b280           	cmpl %d0,%d1
  14:	5ec1           	sgt %d1
  16:	4401           	negb %d1
  18:	4a01           	tstb %d1
  1a:	660a           	bnes 26 <___addvsi3+0x26>
  1c:	4e75           	rts
  1e:	b280           	cmpl %d0,%d1
  20:	5dc1           	slt %d1
  22:	4401           	negb %d1
  24:	60f2           	bras 18 <___addvsi3+0x18>
  26:	4eb9 0000 0000 	jsr 0 <___addvsi3>

_addvdi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___addvdi3>:
   0:	2f03           	movel %d3,%sp@-
   2:	2f02           	movel %d2,%sp@-
   4:	206f 000c      	moveal %sp@(12),%a0
   8:	226f 0010      	moveal %sp@(16),%a1
   c:	242f 0014      	movel %sp@(20),%d2
  10:	262f 0018      	movel %sp@(24),%d3
  14:	2008           	movel %a0,%d0
  16:	2209           	movel %a1,%d1
  18:	d283           	addl %d3,%d1
  1a:	d182           	addxl %d2,%d0
  1c:	4a82           	tstl %d2
  1e:	6b18           	bmis 38 <___addvdi3+0x38>
  20:	b088           	cmpl %a0,%d0
  22:	6606           	bnes 2a <___addvdi3+0x2a>
  24:	b289           	cmpl %a1,%d1
  26:	55c2           	scs %d2
  28:	6002           	bras 2c <___addvdi3+0x2c>
  2a:	5dc2           	slt %d2
  2c:	4402           	negb %d2
  2e:	4a02           	tstb %d2
  30:	6616           	bnes 48 <___addvdi3+0x48>
  32:	241f           	movel %sp@+,%d2
  34:	261f           	movel %sp@+,%d3
  36:	4e75           	rts
  38:	b088           	cmpl %a0,%d0
  3a:	6606           	bnes 42 <___addvdi3+0x42>
  3c:	b289           	cmpl %a1,%d1
  3e:	52c2           	shi %d2
  40:	6002           	bras 44 <___addvdi3+0x44>
  42:	5ec2           	sgt %d2
  44:	4402           	negb %d2
  46:	60e6           	bras 2e <___addvdi3+0x2e>
  48:	4eb9 0000 0000 	jsr 0 <___addvdi3>
	...

_subvsi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___subvsi3>:
   0:	222f 0004      	movel %sp@(4),%d1
   4:	206f 0008      	moveal %sp@(8),%a0
   8:	2001           	movel %d1,%d0
   a:	9088           	subl %a0,%d0
   c:	b0fc 0000      	cmpaw #0,%a0
  10:	6d0c           	blts 1e <___subvsi3+0x1e>
  12:	b280           	cmpl %d0,%d1
  14:	5dc1           	slt %d1
  16:	4401           	negb %d1
  18:	4a01           	tstb %d1
  1a:	660a           	bnes 26 <___subvsi3+0x26>
  1c:	4e75           	rts
  1e:	b280           	cmpl %d0,%d1
  20:	5ec1           	sgt %d1
  22:	4401           	negb %d1
  24:	60f2           	bras 18 <___subvsi3+0x18>
  26:	4eb9 0000 0000 	jsr 0 <___subvsi3>

_subvdi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___subvdi3>:
   0:	48e7 3800      	moveml %d2-%d4,%sp@-
   4:	242f 0010      	movel %sp@(16),%d2
   8:	262f 0014      	movel %sp@(20),%d3
   c:	206f 0018      	moveal %sp@(24),%a0
  10:	226f 001c      	moveal %sp@(28),%a1
  14:	2002           	movel %d2,%d0
  16:	2203           	movel %d3,%d1
  18:	2808           	movel %a0,%d4
  1a:	9289           	subl %a1,%d1
  1c:	9184           	subxl %d4,%d0
  1e:	b0fc 0000      	cmpaw #0,%a0
  22:	6b18           	bmis 3c <___subvdi3+0x3c>
  24:	b082           	cmpl %d2,%d0
  26:	6606           	bnes 2e <___subvdi3+0x2e>
  28:	b283           	cmpl %d3,%d1
  2a:	52c2           	shi %d2
  2c:	6002           	bras 30 <___subvdi3+0x30>
  2e:	5ec2           	sgt %d2
  30:	4402           	negb %d2
  32:	4a02           	tstb %d2
  34:	6616           	bnes 4c <___subvdi3+0x4c>
  36:	4cdf 001c      	moveml %sp@+,%d2-%d4
  3a:	4e75           	rts
  3c:	b082           	cmpl %d2,%d0
  3e:	6606           	bnes 46 <___subvdi3+0x46>
  40:	b283           	cmpl %d3,%d1
  42:	55c2           	scs %d2
  44:	6002           	bras 48 <___subvdi3+0x48>
  46:	5dc2           	slt %d2
  48:	4402           	negb %d2
  4a:	60e6           	bras 32 <___subvdi3+0x32>
  4c:	4eb9 0000 0000 	jsr 0 <___subvdi3>
	...

_mulvsi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___mulvsi3>:
   0:	2f2f 0008      	movel %sp@(8),%sp@-
   4:	5bc0           	smi %d0
   6:	4880           	extw %d0
   8:	48c0           	extl %d0
   a:	2f00           	movel %d0,%sp@-
   c:	2f2f 000c      	movel %sp@(12),%sp@-
  10:	5bc0           	smi %d0
  12:	4880           	extw %d0
  14:	48c0           	extl %d0
  16:	2f00           	movel %d0,%sp@-
  18:	4eb9 0000 0000 	jsr 0 <___mulvsi3>
  1e:	4fef 0010      	lea %sp@(16),%sp
  22:	2040           	moveal %d0,%a0
  24:	2001           	movel %d1,%d0
  26:	d080           	addl %d0,%d0
  28:	9180           	subxl %d0,%d0
  2a:	b1c0           	cmpal %d0,%a0
  2c:	6604           	bnes 32 <___mulvsi3+0x32>
  2e:	2001           	movel %d1,%d0
  30:	4e75           	rts
  32:	4eb9 0000 0000 	jsr 0 <___mulvsi3>

_mulvdi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___mulvdi3>:
   0:	4fef ffe0      	lea %sp@(-32),%sp
   4:	48e7 3e3c      	moveml %d2-%d6/%a2-%a5,%sp@-
   8:	246f 0048      	moveal %sp@(72),%a2
   c:	266f 004c      	moveal %sp@(76),%a3
  10:	286f 0050      	moveal %sp@(80),%a4
  14:	2a6f 0054      	moveal %sp@(84),%a5
  18:	2a0a           	movel %a2,%d5
  1a:	280c           	movel %a4,%d4
  1c:	260d           	movel %a5,%d3
  1e:	2c0b           	movel %a3,%d6
  20:	200b           	movel %a3,%d0
  22:	d080           	addl %d0,%d0
  24:	9180           	subxl %d0,%d0
  26:	b085           	cmpl %d5,%d0
  28:	6634           	bnes 5e <___mulvdi3+0x5e>
  2a:	200d           	movel %a5,%d0
  2c:	d080           	addl %d0,%d0
  2e:	9180           	subxl %d0,%d0
  30:	b084           	cmpl %d4,%d0
  32:	6600 00be      	bnew f2 <___mulvdi3+0xf2>
  36:	2f0d           	movel %a5,%sp@-
  38:	5bc0           	smi %d0
  3a:	4880           	extw %d0
  3c:	48c0           	extl %d0
  3e:	2f00           	movel %d0,%sp@-
  40:	2f0b           	movel %a3,%sp@-
  42:	5bc0           	smi %d0
  44:	4880           	extw %d0
  46:	48c0           	extl %d0
  48:	2f00           	movel %d0,%sp@-
  4a:	4eb9 0000 0000 	jsr 0 <___mulvdi3>
  50:	4fef 0010      	lea %sp@(16),%sp
  54:	4cdf 3c7c      	moveml %sp@+,%d2-%d6/%a2-%a5
  58:	4fef 0020      	lea %sp@(32),%sp
  5c:	4e75           	rts
  5e:	2c0d           	movel %a5,%d6
  60:	2003           	movel %d3,%d0
  62:	d080           	addl %d0,%d0
  64:	9180           	subxl %d0,%d0
  66:	b084           	cmpl %d4,%d0
  68:	6600 013a      	bnew 1a4 <___mulvdi3+0x1a4>
  6c:	2f4d 0030      	movel %a5,%sp@(48)
  70:	7000           	moveq #0,%d0
  72:	2f40 002c      	movel %d0,%sp@(44)
  76:	49f9 0000 0000 	lea 0 <___mulvdi3>,%a4
  7c:	2f0b           	movel %a3,%sp@-
  7e:	42a7           	clrl %sp@-
  80:	2f2f 0038      	movel %sp@(56),%sp@-
  84:	2f2f 0038      	movel %sp@(56),%sp@-
  88:	4e94           	jsr %a4@
  8a:	4fef 0010      	lea %sp@(16),%sp
  8e:	2800           	movel %d0,%d4
  90:	2f41 0034      	movel %d1,%sp@(52)
  94:	2f2f 0030      	movel %sp@(48),%sp@-
  98:	2f2f 0030      	movel %sp@(48),%sp@-
  9c:	2f05           	movel %d5,%sp@-
  9e:	42a7           	clrl %sp@-
  a0:	4e94           	jsr %a4@
  a2:	4fef 0010      	lea %sp@(16),%sp
  a6:	2400           	movel %d0,%d2
  a8:	2601           	movel %d1,%d3
  aa:	4a85           	tstl %d5
  ac:	6d3c           	blts ea <___mulvdi3+0xea>
  ae:	4a86           	tstl %d6
  b0:	6d30           	blts e2 <___mulvdi3+0xe2>
  b2:	2f44 0040      	movel %d4,%sp@(64)
  b6:	7000           	moveq #0,%d0
  b8:	2f40 003c      	movel %d0,%sp@(60)
  bc:	202f 003c      	movel %sp@(60),%d0
  c0:	d6af 0040      	addl %sp@(64),%d3
  c4:	d580           	addxl %d0,%d2
  c6:	2003           	movel %d3,%d0
  c8:	d080           	addl %d0,%d0
  ca:	9180           	subxl %d0,%d0
  cc:	b480           	cmpl %d0,%d2
  ce:	6600 00ce      	bnew 19e <___mulvdi3+0x19e>
  d2:	2003           	movel %d3,%d0
  d4:	222f 0034      	movel %sp@(52),%d1
  d8:	4cdf 3c7c      	moveml %sp@+,%d2-%d6/%a2-%a5
  dc:	4fef 0020      	lea %sp@(32),%sp
  e0:	4e75           	rts
  e2:	200a           	movel %a2,%d0
  e4:	968b           	subl %a3,%d3
  e6:	9580           	subxl %d0,%d2
  e8:	60c8           	bras b2 <___mulvdi3+0xb2>
  ea:	948d           	subl %a5,%d2
  ec:	4a86           	tstl %d6
  ee:	6cc2           	bges b2 <___mulvdi3+0xb2>
  f0:	60f0           	bras e2 <___mulvdi3+0xe2>
  f2:	91c8           	subal %a0,%a0
  f4:	45f9 0000 0000 	lea 0 <___mulvdi3>,%a2
  fa:	2f0b           	movel %a3,%sp@-
  fc:	2f08           	movel %a0,%sp@-
  fe:	2f0d           	movel %a5,%sp@-
 100:	42a7           	clrl %sp@-
 102:	2f48 0038      	movel %a0,%sp@(56)
 106:	2f4b 0034      	movel %a3,%sp@(52)
 10a:	4e92           	jsr %a2@
 10c:	4fef 0010      	lea %sp@(16),%sp
 110:	2a00           	movel %d0,%d5
 112:	2f41 002c      	movel %d1,%sp@(44)
 116:	206f 0028      	moveal %sp@(40),%a0
 11a:	226f 0024      	moveal %sp@(36),%a1
 11e:	2f09           	movel %a1,%sp@-
 120:	2f08           	movel %a0,%sp@-
 122:	2f04           	movel %d4,%sp@-
 124:	42a7           	clrl %sp@-
 126:	4e92           	jsr %a2@
 128:	4fef 0010      	lea %sp@(16),%sp
 12c:	2400           	movel %d0,%d2
 12e:	2601           	movel %d1,%d3
 130:	4a84           	tstl %d4
 132:	6d3a           	blts 16e <___mulvdi3+0x16e>
 134:	4a86           	tstl %d6
 136:	6d2e           	blts 166 <___mulvdi3+0x166>
 138:	2f45 0038      	movel %d5,%sp@(56)
 13c:	7000           	moveq #0,%d0
 13e:	2f40 0034      	movel %d0,%sp@(52)
 142:	202f 0034      	movel %sp@(52),%d0
 146:	d6af 0038      	addl %sp@(56),%d3
 14a:	d580           	addxl %d0,%d2
 14c:	2003           	movel %d3,%d0
 14e:	d080           	addl %d0,%d0
 150:	9180           	subxl %d0,%d0
 152:	b480           	cmpl %d0,%d2
 154:	6648           	bnes 19e <___mulvdi3+0x19e>
 156:	2003           	movel %d3,%d0
 158:	222f 002c      	movel %sp@(44),%d1
 15c:	4cdf 3c7c      	moveml %sp@+,%d2-%d6/%a2-%a5
 160:	4fef 0020      	lea %sp@(32),%sp
 164:	4e75           	rts
 166:	200c           	movel %a4,%d0
 168:	968d           	subl %a5,%d3
 16a:	9580           	subxl %d0,%d2
 16c:	60ca           	bras 138 <___mulvdi3+0x138>
 16e:	948b           	subl %a3,%d2
 170:	4a86           	tstl %d6
 172:	6cc4           	bges 138 <___mulvdi3+0x138>
 174:	60f0           	bras 166 <___mulvdi3+0x166>
 176:	70ff           	moveq #-1,%d0
 178:	4a84           	tstl %d4
 17a:	6d00 008a      	bltw 206 <___mulvdi3+0x206>
 17e:	b085           	cmpl %d5,%d0
 180:	661c           	bnes 19e <___mulvdi3+0x19e>
 182:	4a84           	tstl %d4
 184:	6618           	bnes 19e <___mulvdi3+0x19e>
 186:	2f0b           	movel %a3,%sp@-
 188:	42a7           	clrl %sp@-
 18a:	2f0d           	movel %a5,%sp@-
 18c:	42a7           	clrl %sp@-
 18e:	4eb9 0000 0000 	jsr 0 <___mulvdi3>
 194:	4fef 0010      	lea %sp@(16),%sp
 198:	908d           	subl %a5,%d0
 19a:	6b00 feb8      	bmiw 54 <___mulvdi3+0x54>
 19e:	4eb9 0000 0000 	jsr 0 <___mulvdi3>
 1a4:	4a85           	tstl %d5
 1a6:	6dce           	blts 176 <___mulvdi3+0x176>
 1a8:	4a84           	tstl %d4
 1aa:	6d30           	blts 1dc <___mulvdi3+0x1dc>
 1ac:	4a85           	tstl %d5
 1ae:	66ee           	bnes 19e <___mulvdi3+0x19e>
 1b0:	4a84           	tstl %d4
 1b2:	66ea           	bnes 19e <___mulvdi3+0x19e>
 1b4:	2f0b           	movel %a3,%sp@-
 1b6:	42a7           	clrl %sp@-
 1b8:	2f0d           	movel %a5,%sp@-
 1ba:	42a7           	clrl %sp@-
 1bc:	4eb9 0000 0000 	jsr 0 <___mulvdi3>
 1c2:	4fef 0010      	lea %sp@(16),%sp
 1c6:	2040           	moveal %d0,%a0
 1c8:	2241           	moveal %d1,%a1
 1ca:	b0fc 0000      	cmpaw #0,%a0
 1ce:	6bce           	bmis 19e <___mulvdi3+0x19e>
 1d0:	2008           	movel %a0,%d0
 1d2:	4cdf 3c7c      	moveml %sp@+,%d2-%d6/%a2-%a5
 1d6:	4fef 0020      	lea %sp@(32),%sp
 1da:	4e75           	rts
 1dc:	4a85           	tstl %d5
 1de:	66be           	bnes 19e <___mulvdi3+0x19e>
 1e0:	70ff           	moveq #-1,%d0
 1e2:	b084           	cmpl %d4,%d0
 1e4:	66b8           	bnes 19e <___mulvdi3+0x19e>
 1e6:	2f0b           	movel %a3,%sp@-
 1e8:	42a7           	clrl %sp@-
 1ea:	2f0d           	movel %a5,%sp@-
 1ec:	42a7           	clrl %sp@-
 1ee:	4eb9 0000 0000 	jsr 0 <___mulvdi3>
 1f4:	4fef 0010      	lea %sp@(16),%sp
 1f8:	908b           	subl %a3,%d0
 1fa:	6aa2           	bpls 19e <___mulvdi3+0x19e>
 1fc:	4cdf 3c7c      	moveml %sp@+,%d2-%d6/%a2-%a5
 200:	4fef 0020      	lea %sp@(32),%sp
 204:	4e75           	rts
 206:	b085           	cmpl %d5,%d0
 208:	6694           	bnes 19e <___mulvdi3+0x19e>
 20a:	b084           	cmpl %d4,%d0
 20c:	6690           	bnes 19e <___mulvdi3+0x19e>
 20e:	2f0b           	movel %a3,%sp@-
 210:	42a7           	clrl %sp@-
 212:	2f0d           	movel %a5,%sp@-
 214:	42a7           	clrl %sp@-
 216:	4eb9 0000 0000 	jsr 0 <___mulvdi3>
 21c:	4fef 0010      	lea %sp@(16),%sp
 220:	908b           	subl %a3,%d0
 222:	908d           	subl %a5,%d0
 224:	6b00 ff78      	bmiw 19e <___mulvdi3+0x19e>
 228:	4cdf 3c7c      	moveml %sp@+,%d2-%d6/%a2-%a5
 22c:	4fef 0020      	lea %sp@(32),%sp
 230:	4e75           	rts
	...

_negvsi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___negvsi2>:
   0:	222f 0004      	movel %sp@(4),%d1
   4:	2001           	movel %d1,%d0
   6:	4480           	negl %d0
   8:	4a81           	tstl %d1
   a:	6d0c           	blts 18 <___negvsi2+0x18>
   c:	4a80           	tstl %d0
   e:	5ec1           	sgt %d1
  10:	4401           	negb %d1
  12:	4a01           	tstb %d1
  14:	660c           	bnes 22 <___negvsi2+0x22>
  16:	4e75           	rts
  18:	2200           	movel %d0,%d1
  1a:	d281           	addl %d1,%d1
  1c:	9381           	subxl %d1,%d1
  1e:	4481           	negl %d1
  20:	60f0           	bras 12 <___negvsi2+0x12>
  22:	4eb9 0000 0000 	jsr 0 <___negvsi2>

_negvdi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___negvdi2>:
   0:	2f03           	movel %d3,%sp@-
   2:	2f02           	movel %d2,%sp@-
   4:	242f 000c      	movel %sp@(12),%d2
   8:	262f 0010      	movel %sp@(16),%d3
   c:	2002           	movel %d2,%d0
   e:	2203           	movel %d3,%d1
  10:	4481           	negl %d1
  12:	4080           	negxl %d0
  14:	4a82           	tstl %d2
  16:	6b18           	bmis 30 <___negvdi2+0x30>
  18:	4a80           	tstl %d0
  1a:	6606           	bnes 22 <___negvdi2+0x22>
  1c:	4a81           	tstl %d1
  1e:	52c2           	shi %d2
  20:	6002           	bras 24 <___negvdi2+0x24>
  22:	5ec2           	sgt %d2
  24:	4402           	negb %d2
  26:	4a02           	tstb %d2
  28:	6610           	bnes 3a <___negvdi2+0x3a>
  2a:	241f           	movel %sp@+,%d2
  2c:	261f           	movel %sp@+,%d3
  2e:	4e75           	rts
  30:	2400           	movel %d0,%d2
  32:	d482           	addl %d2,%d2
  34:	9582           	subxl %d2,%d2
  36:	4482           	negl %d2
  38:	60ec           	bras 26 <___negvdi2+0x26>
  3a:	4eb9 0000 0000 	jsr 0 <___negvdi2>

_ctors.o:     file format a.out-zero-big


_ffssi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___ffssi2>:
   0:	202f 0004      	movel %sp@(4),%d0
   4:	674c           	beqs 52 <___ffssi2+0x52>
   6:	2200           	movel %d0,%d1
   8:	4481           	negl %d1
   a:	c280           	andl %d0,%d1
   c:	0c81 0000 ffff 	cmpil #65535,%d1
  12:	621e           	bhis 32 <___ffssi2+0x32>
  14:	0c81 0000 00ff 	cmpil #255,%d1
  1a:	623a           	bhis 56 <___ffssi2+0x56>
  1c:	7000           	moveq #0,%d0
  1e:	93c9           	subal %a1,%a1
  20:	e0a9           	lsrl %d0,%d1
  22:	41f9 0000 0000 	lea 0 <___ffssi2>,%a0
  28:	7000           	moveq #0,%d0
  2a:	1030 1800      	moveb %a0@(00000000,%d1:l),%d0
  2e:	d089           	addl %a1,%d0
  30:	4e75           	rts
  32:	0c81 00ff ffff 	cmpil #16777215,%d1
  38:	6234           	bhis 6e <___ffssi2+0x6e>
  3a:	7010           	moveq #16,%d0
  3c:	327c 0010      	moveaw #16,%a1
  40:	e0a9           	lsrl %d0,%d1
  42:	41f9 0000 0000 	lea 0 <___ffssi2>,%a0
  48:	7000           	moveq #0,%d0
  4a:	1030 1800      	moveb %a0@(00000000,%d1:l),%d0
  4e:	d089           	addl %a1,%d0
  50:	4e75           	rts
  52:	7000           	moveq #0,%d0
  54:	4e75           	rts
  56:	7008           	moveq #8,%d0
  58:	327c 0008      	moveaw #8,%a1
  5c:	e0a9           	lsrl %d0,%d1
  5e:	41f9 0000 0000 	lea 0 <___ffssi2>,%a0
  64:	7000           	moveq #0,%d0
  66:	1030 1800      	moveb %a0@(00000000,%d1:l),%d0
  6a:	d089           	addl %a1,%d0
  6c:	4e75           	rts
  6e:	7018           	moveq #24,%d0
  70:	327c 0018      	moveaw #24,%a1
  74:	e0a9           	lsrl %d0,%d1
  76:	41f9 0000 0000 	lea 0 <___ffssi2>,%a0
  7c:	7000           	moveq #0,%d0
  7e:	1030 1800      	moveb %a0@(00000000,%d1:l),%d0
  82:	d089           	addl %a1,%d0
  84:	4e75           	rts
	...

_ffsdi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___ffsdi2>:
   0:	2f02           	movel %d2,%sp@-
   2:	222f 0008      	movel %sp@(8),%d1
   6:	202f 000c      	movel %sp@(12),%d0
   a:	6736           	beqs 42 <___ffsdi2+0x42>
   c:	91c8           	subal %a0,%a0
   e:	2200           	movel %d0,%d1
  10:	4481           	negl %d1
  12:	c280           	andl %d0,%d1
  14:	0c81 0000 ffff 	cmpil #65535,%d1
  1a:	623e           	bhis 5a <___ffsdi2+0x5a>
  1c:	0c81 0000 00ff 	cmpil #255,%d1
  22:	6276           	bhis 9a <___ffsdi2+0x9a>
  24:	7400           	moveq #0,%d2
  26:	7000           	moveq #0,%d0
  28:	d088           	addl %a0,%d0
  2a:	e4a9           	lsrl %d2,%d1
  2c:	41f9 0000 0000 	lea 0 <___ffsdi2>,%a0
  32:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  36:	0281 0000 00ff 	andil #255,%d1
  3c:	d081           	addl %d1,%d0
  3e:	241f           	movel %sp@+,%d2
  40:	4e75           	rts
  42:	4a81           	tstl %d1
  44:	6770           	beqs b6 <___ffsdi2+0xb6>
  46:	2001           	movel %d1,%d0
  48:	307c 0020      	moveaw #32,%a0
  4c:	2200           	movel %d0,%d1
  4e:	4481           	negl %d1
  50:	c280           	andl %d0,%d1
  52:	0c81 0000 ffff 	cmpil #65535,%d1
  58:	63c2           	blss 1c <___ffsdi2+0x1c>
  5a:	0c81 00ff ffff 	cmpil #16777215,%d1
  60:	621c           	bhis 7e <___ffsdi2+0x7e>
  62:	7410           	moveq #16,%d2
  64:	7010           	moveq #16,%d0
  66:	d088           	addl %a0,%d0
  68:	e4a9           	lsrl %d2,%d1
  6a:	41f9 0000 0000 	lea 0 <___ffsdi2>,%a0
  70:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  74:	0281 0000 00ff 	andil #255,%d1
  7a:	d081           	addl %d1,%d0
  7c:	60c0           	bras 3e <___ffsdi2+0x3e>
  7e:	7418           	moveq #24,%d2
  80:	7018           	moveq #24,%d0
  82:	d088           	addl %a0,%d0
  84:	e4a9           	lsrl %d2,%d1
  86:	41f9 0000 0000 	lea 0 <___ffsdi2>,%a0
  8c:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  90:	0281 0000 00ff 	andil #255,%d1
  96:	d081           	addl %d1,%d0
  98:	60a4           	bras 3e <___ffsdi2+0x3e>
  9a:	7408           	moveq #8,%d2
  9c:	7008           	moveq #8,%d0
  9e:	d088           	addl %a0,%d0
  a0:	e4a9           	lsrl %d2,%d1
  a2:	41f9 0000 0000 	lea 0 <___ffsdi2>,%a0
  a8:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  ac:	0281 0000 00ff 	andil #255,%d1
  b2:	d081           	addl %d1,%d0
  b4:	6088           	bras 3e <___ffsdi2+0x3e>
  b6:	7000           	moveq #0,%d0
  b8:	241f           	movel %sp@+,%d2
  ba:	4e75           	rts

_clz.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___clz_tab>:
   0:	0001 0202      	orib #2,%d1
   4:	0303           	btst %d1,%d3
   6:	0303           	btst %d1,%d3
   8:	0404 0404      	subib #4,%d4
   c:	0404 0404      	subib #4,%d4
  10:	0505           	btst %d2,%d5
  12:	0505           	btst %d2,%d5
  14:	0505           	btst %d2,%d5
  16:	0505           	btst %d2,%d5
  18:	0505           	btst %d2,%d5
  1a:	0505           	btst %d2,%d5
  1c:	0505           	btst %d2,%d5
  1e:	0505           	btst %d2,%d5
  20:	0606 0606      	addib #6,%d6
  24:	0606 0606      	addib #6,%d6
  28:	0606 0606      	addib #6,%d6
  2c:	0606 0606      	addib #6,%d6
  30:	0606 0606      	addib #6,%d6
  34:	0606 0606      	addib #6,%d6
  38:	0606 0606      	addib #6,%d6
  3c:	0606 0606      	addib #6,%d6
  40:	0707           	btst %d3,%d7
  42:	0707           	btst %d3,%d7
  44:	0707           	btst %d3,%d7
  46:	0707           	btst %d3,%d7
  48:	0707           	btst %d3,%d7
  4a:	0707           	btst %d3,%d7
  4c:	0707           	btst %d3,%d7
  4e:	0707           	btst %d3,%d7
  50:	0707           	btst %d3,%d7
  52:	0707           	btst %d3,%d7
  54:	0707           	btst %d3,%d7
  56:	0707           	btst %d3,%d7
  58:	0707           	btst %d3,%d7
  5a:	0707           	btst %d3,%d7
  5c:	0707           	btst %d3,%d7
  5e:	0707           	btst %d3,%d7
  60:	0707           	btst %d3,%d7
  62:	0707           	btst %d3,%d7
  64:	0707           	btst %d3,%d7
  66:	0707           	btst %d3,%d7
  68:	0707           	btst %d3,%d7
  6a:	0707           	btst %d3,%d7
  6c:	0707           	btst %d3,%d7
  6e:	0707           	btst %d3,%d7
  70:	0707           	btst %d3,%d7
  72:	0707           	btst %d3,%d7
  74:	0707           	btst %d3,%d7
  76:	0707           	btst %d3,%d7
  78:	0707           	btst %d3,%d7
  7a:	0707           	btst %d3,%d7
  7c:	0707           	btst %d3,%d7
  7e:	0707           	btst %d3,%d7
  80:	0808           	.short 0x0808
  82:	0808           	.short 0x0808
  84:	0808           	.short 0x0808
  86:	0808           	.short 0x0808
  88:	0808           	.short 0x0808
  8a:	0808           	.short 0x0808
  8c:	0808           	.short 0x0808
  8e:	0808           	.short 0x0808
  90:	0808           	.short 0x0808
  92:	0808           	.short 0x0808
  94:	0808           	.short 0x0808
  96:	0808           	.short 0x0808
  98:	0808           	.short 0x0808
  9a:	0808           	.short 0x0808
  9c:	0808           	.short 0x0808
  9e:	0808           	.short 0x0808
  a0:	0808           	.short 0x0808
  a2:	0808           	.short 0x0808
  a4:	0808           	.short 0x0808
  a6:	0808           	.short 0x0808
  a8:	0808           	.short 0x0808
  aa:	0808           	.short 0x0808
  ac:	0808           	.short 0x0808
  ae:	0808           	.short 0x0808
  b0:	0808           	.short 0x0808
  b2:	0808           	.short 0x0808
  b4:	0808           	.short 0x0808
  b6:	0808           	.short 0x0808
  b8:	0808           	.short 0x0808
  ba:	0808           	.short 0x0808
  bc:	0808           	.short 0x0808
  be:	0808           	.short 0x0808
  c0:	0808           	.short 0x0808
  c2:	0808           	.short 0x0808
  c4:	0808           	.short 0x0808
  c6:	0808           	.short 0x0808
  c8:	0808           	.short 0x0808
  ca:	0808           	.short 0x0808
  cc:	0808           	.short 0x0808
  ce:	0808           	.short 0x0808
  d0:	0808           	.short 0x0808
  d2:	0808           	.short 0x0808
  d4:	0808           	.short 0x0808
  d6:	0808           	.short 0x0808
  d8:	0808           	.short 0x0808
  da:	0808           	.short 0x0808
  dc:	0808           	.short 0x0808
  de:	0808           	.short 0x0808
  e0:	0808           	.short 0x0808
  e2:	0808           	.short 0x0808
  e4:	0808           	.short 0x0808
  e6:	0808           	.short 0x0808
  e8:	0808           	.short 0x0808
  ea:	0808           	.short 0x0808
  ec:	0808           	.short 0x0808
  ee:	0808           	.short 0x0808
  f0:	0808           	.short 0x0808
  f2:	0808           	.short 0x0808
  f4:	0808           	.short 0x0808
  f6:	0808           	.short 0x0808
  f8:	0808           	.short 0x0808
  fa:	0808           	.short 0x0808
  fc:	0808           	.short 0x0808
  fe:	0808           	Address 0x00000100 is out of bounds.
.short 0x0808

_clzsi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___clzsi2>:
   0:	2f02           	movel %d2,%sp@-
   2:	222f 0008      	movel %sp@(8),%d1
   6:	0c81 0000 ffff 	cmpil #65535,%d1
   c:	6224           	bhis 32 <___clzsi2+0x32>
   e:	0c81 0000 00ff 	cmpil #255,%d1
  14:	635c           	blss 72 <___clzsi2+0x72>
  16:	7018           	moveq #24,%d0
  18:	7408           	moveq #8,%d2
  1a:	e4a9           	lsrl %d2,%d1
  1c:	41f9 0000 0000 	lea 0 <___clzsi2>,%a0
  22:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  26:	0281 0000 00ff 	andil #255,%d1
  2c:	9081           	subl %d1,%d0
  2e:	241f           	movel %sp@+,%d2
  30:	4e75           	rts
  32:	0c81 00ff ffff 	cmpil #16777215,%d1
  38:	621c           	bhis 56 <___clzsi2+0x56>
  3a:	7010           	moveq #16,%d0
  3c:	7410           	moveq #16,%d2
  3e:	e4a9           	lsrl %d2,%d1
  40:	41f9 0000 0000 	lea 0 <___clzsi2>,%a0
  46:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  4a:	0281 0000 00ff 	andil #255,%d1
  50:	9081           	subl %d1,%d0
  52:	241f           	movel %sp@+,%d2
  54:	4e75           	rts
  56:	7008           	moveq #8,%d0
  58:	7418           	moveq #24,%d2
  5a:	e4a9           	lsrl %d2,%d1
  5c:	41f9 0000 0000 	lea 0 <___clzsi2>,%a0
  62:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  66:	0281 0000 00ff 	andil #255,%d1
  6c:	9081           	subl %d1,%d0
  6e:	241f           	movel %sp@+,%d2
  70:	4e75           	rts
  72:	7020           	moveq #32,%d0
  74:	7400           	moveq #0,%d2
  76:	e4a9           	lsrl %d2,%d1
  78:	41f9 0000 0000 	lea 0 <___clzsi2>,%a0
  7e:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  82:	0281 0000 00ff 	andil #255,%d1
  88:	9081           	subl %d1,%d0
  8a:	241f           	movel %sp@+,%d2
  8c:	4e75           	rts
	...

_clzdi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___clzdi2>:
   0:	2f02           	movel %d2,%sp@-
   2:	202f 0008      	movel %sp@(8),%d0
   6:	222f 000c      	movel %sp@(12),%d1
   a:	4a80           	tstl %d0
   c:	6732           	beqs 40 <___clzdi2+0x40>
   e:	2200           	movel %d0,%d1
  10:	91c8           	subal %a0,%a0
  12:	0c81 0000 ffff 	cmpil #65535,%d1
  18:	6232           	bhis 4c <___clzdi2+0x4c>
  1a:	0c81 0000 00ff 	cmpil #255,%d1
  20:	636e           	blss 90 <___clzdi2+0x90>
  22:	7018           	moveq #24,%d0
  24:	7408           	moveq #8,%d2
  26:	e4a9           	lsrl %d2,%d1
  28:	43f9 0000 0000 	lea 0 <___clzdi2>,%a1
  2e:	1231 1800      	moveb %a1@(00000000,%d1:l),%d1
  32:	0281 0000 00ff 	andil #255,%d1
  38:	9081           	subl %d1,%d0
  3a:	d088           	addl %a0,%d0
  3c:	241f           	movel %sp@+,%d2
  3e:	4e75           	rts
  40:	307c 0020      	moveaw #32,%a0
  44:	0c81 0000 ffff 	cmpil #65535,%d1
  4a:	63ce           	blss 1a <___clzdi2+0x1a>
  4c:	0c81 00ff ffff 	cmpil #16777215,%d1
  52:	621e           	bhis 72 <___clzdi2+0x72>
  54:	7010           	moveq #16,%d0
  56:	7410           	moveq #16,%d2
  58:	e4a9           	lsrl %d2,%d1
  5a:	43f9 0000 0000 	lea 0 <___clzdi2>,%a1
  60:	1231 1800      	moveb %a1@(00000000,%d1:l),%d1
  64:	0281 0000 00ff 	andil #255,%d1
  6a:	9081           	subl %d1,%d0
  6c:	d088           	addl %a0,%d0
  6e:	241f           	movel %sp@+,%d2
  70:	4e75           	rts
  72:	7008           	moveq #8,%d0
  74:	7418           	moveq #24,%d2
  76:	e4a9           	lsrl %d2,%d1
  78:	43f9 0000 0000 	lea 0 <___clzdi2>,%a1
  7e:	1231 1800      	moveb %a1@(00000000,%d1:l),%d1
  82:	0281 0000 00ff 	andil #255,%d1
  88:	9081           	subl %d1,%d0
  8a:	d088           	addl %a0,%d0
  8c:	241f           	movel %sp@+,%d2
  8e:	4e75           	rts
  90:	7020           	moveq #32,%d0
  92:	7400           	moveq #0,%d2
  94:	e4a9           	lsrl %d2,%d1
  96:	43f9 0000 0000 	lea 0 <___clzdi2>,%a1
  9c:	1231 1800      	moveb %a1@(00000000,%d1:l),%d1
  a0:	0281 0000 00ff 	andil #255,%d1
  a6:	9081           	subl %d1,%d0
  a8:	d088           	addl %a0,%d0
  aa:	241f           	movel %sp@+,%d2
  ac:	4e75           	rts
	...

_ctzsi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___ctzsi2>:
   0:	2f02           	movel %d2,%sp@-
   2:	202f 0008      	movel %sp@(8),%d0
   6:	2200           	movel %d0,%d1
   8:	4481           	negl %d1
   a:	c280           	andl %d0,%d1
   c:	0c81 0000 ffff 	cmpil #65535,%d1
  12:	6224           	bhis 38 <___ctzsi2+0x38>
  14:	0c81 0000 00ff 	cmpil #255,%d1
  1a:	635c           	blss 78 <___ctzsi2+0x78>
  1c:	7007           	moveq #7,%d0
  1e:	7408           	moveq #8,%d2
  20:	e4a9           	lsrl %d2,%d1
  22:	41f9 0000 0000 	lea 0 <___ctzsi2>,%a0
  28:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  2c:	0281 0000 00ff 	andil #255,%d1
  32:	d081           	addl %d1,%d0
  34:	241f           	movel %sp@+,%d2
  36:	4e75           	rts
  38:	0c81 00ff ffff 	cmpil #16777215,%d1
  3e:	621c           	bhis 5c <___ctzsi2+0x5c>
  40:	700f           	moveq #15,%d0
  42:	7410           	moveq #16,%d2
  44:	e4a9           	lsrl %d2,%d1
  46:	41f9 0000 0000 	lea 0 <___ctzsi2>,%a0
  4c:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  50:	0281 0000 00ff 	andil #255,%d1
  56:	d081           	addl %d1,%d0
  58:	241f           	movel %sp@+,%d2
  5a:	4e75           	rts
  5c:	7017           	moveq #23,%d0
  5e:	7418           	moveq #24,%d2
  60:	e4a9           	lsrl %d2,%d1
  62:	41f9 0000 0000 	lea 0 <___ctzsi2>,%a0
  68:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  6c:	0281 0000 00ff 	andil #255,%d1
  72:	d081           	addl %d1,%d0
  74:	241f           	movel %sp@+,%d2
  76:	4e75           	rts
  78:	70ff           	moveq #-1,%d0
  7a:	7400           	moveq #0,%d2
  7c:	e4a9           	lsrl %d2,%d1
  7e:	41f9 0000 0000 	lea 0 <___ctzsi2>,%a0
  84:	1230 1800      	moveb %a0@(00000000,%d1:l),%d1
  88:	0281 0000 00ff 	andil #255,%d1
  8e:	d081           	addl %d1,%d0
  90:	241f           	movel %sp@+,%d2
  92:	4e75           	rts

_ctzdi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___ctzdi2>:
   0:	2f02           	movel %d2,%sp@-
   2:	242f 0008      	movel %sp@(8),%d2
   6:	202f 000c      	movel %sp@(12),%d0
   a:	6738           	beqs 44 <___ctzdi2+0x44>
   c:	2400           	movel %d0,%d2
   e:	91c8           	subal %a0,%a0
  10:	2202           	movel %d2,%d1
  12:	4481           	negl %d1
  14:	c282           	andl %d2,%d1
  16:	0c81 0000 ffff 	cmpil #65535,%d1
  1c:	6238           	bhis 56 <___ctzdi2+0x56>
  1e:	0c81 0000 00ff 	cmpil #255,%d1
  24:	6374           	blss 9a <___ctzdi2+0x9a>
  26:	7007           	moveq #7,%d0
  28:	7408           	moveq #8,%d2
  2a:	e4a9           	lsrl %d2,%d1
  2c:	43f9 0000 0000 	lea 0 <___ctzdi2>,%a1
  32:	1231 1800      	moveb %a1@(00000000,%d1:l),%d1
  36:	0281 0000 00ff 	andil #255,%d1
  3c:	d081           	addl %d1,%d0
  3e:	d088           	addl %a0,%d0
  40:	241f           	movel %sp@+,%d2
  42:	4e75           	rts
  44:	307c 0020      	moveaw #32,%a0
  48:	2202           	movel %d2,%d1
  4a:	4481           	negl %d1
  4c:	c282           	andl %d2,%d1
  4e:	0c81 0000 ffff 	cmpil #65535,%d1
  54:	63c8           	blss 1e <___ctzdi2+0x1e>
  56:	0c81 00ff ffff 	cmpil #16777215,%d1
  5c:	621e           	bhis 7c <___ctzdi2+0x7c>
  5e:	700f           	moveq #15,%d0
  60:	7410           	moveq #16,%d2
  62:	e4a9           	lsrl %d2,%d1
  64:	43f9 0000 0000 	lea 0 <___ctzdi2>,%a1
  6a:	1231 1800      	moveb %a1@(00000000,%d1:l),%d1
  6e:	0281 0000 00ff 	andil #255,%d1
  74:	d081           	addl %d1,%d0
  76:	d088           	addl %a0,%d0
  78:	241f           	movel %sp@+,%d2
  7a:	4e75           	rts
  7c:	7017           	moveq #23,%d0
  7e:	7418           	moveq #24,%d2
  80:	e4a9           	lsrl %d2,%d1
  82:	43f9 0000 0000 	lea 0 <___ctzdi2>,%a1
  88:	1231 1800      	moveb %a1@(00000000,%d1:l),%d1
  8c:	0281 0000 00ff 	andil #255,%d1
  92:	d081           	addl %d1,%d0
  94:	d088           	addl %a0,%d0
  96:	241f           	movel %sp@+,%d2
  98:	4e75           	rts
  9a:	70ff           	moveq #-1,%d0
  9c:	7400           	moveq #0,%d2
  9e:	e4a9           	lsrl %d2,%d1
  a0:	43f9 0000 0000 	lea 0 <___ctzdi2>,%a1
  a6:	1231 1800      	moveb %a1@(00000000,%d1:l),%d1
  aa:	0281 0000 00ff 	andil #255,%d1
  b0:	d081           	addl %d1,%d0
  b2:	d088           	addl %a0,%d0
  b4:	241f           	movel %sp@+,%d2
  b6:	4e75           	rts

_popcount_tab.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___popcount_tab>:
   0:	0001 0102      	orib #2,%d1
   4:	0102           	btst %d0,%d2
   6:	0203 0102      	andib #2,%d3
   a:	0203 0203      	andib #3,%d3
   e:	0304           	btst %d1,%d4
  10:	0102           	btst %d0,%d2
  12:	0203 0203      	andib #3,%d3
  16:	0304           	btst %d1,%d4
  18:	0203 0304      	andib #4,%d3
  1c:	0304           	btst %d1,%d4
  1e:	0405 0102      	subib #2,%d5
  22:	0203 0203      	andib #3,%d3
  26:	0304           	btst %d1,%d4
  28:	0203 0304      	andib #4,%d3
  2c:	0304           	btst %d1,%d4
  2e:	0405 0203      	subib #3,%d5
  32:	0304           	btst %d1,%d4
  34:	0304           	btst %d1,%d4
  36:	0405 0304      	subib #4,%d5
  3a:	0405 0405      	subib #5,%d5
  3e:	0506           	btst %d2,%d6
  40:	0102           	btst %d0,%d2
  42:	0203 0203      	andib #3,%d3
  46:	0304           	btst %d1,%d4
  48:	0203 0304      	andib #4,%d3
  4c:	0304           	btst %d1,%d4
  4e:	0405 0203      	subib #3,%d5
  52:	0304           	btst %d1,%d4
  54:	0304           	btst %d1,%d4
  56:	0405 0304      	subib #4,%d5
  5a:	0405 0405      	subib #5,%d5
  5e:	0506           	btst %d2,%d6
  60:	0203 0304      	andib #4,%d3
  64:	0304           	btst %d1,%d4
  66:	0405 0304      	subib #4,%d5
  6a:	0405 0405      	subib #5,%d5
  6e:	0506           	btst %d2,%d6
  70:	0304           	btst %d1,%d4
  72:	0405 0405      	subib #5,%d5
  76:	0506           	btst %d2,%d6
  78:	0405 0506      	subib #6,%d5
  7c:	0506           	btst %d2,%d6
  7e:	0607 0102      	addib #2,%d7
  82:	0203 0203      	andib #3,%d3
  86:	0304           	btst %d1,%d4
  88:	0203 0304      	andib #4,%d3
  8c:	0304           	btst %d1,%d4
  8e:	0405 0203      	subib #3,%d5
  92:	0304           	btst %d1,%d4
  94:	0304           	btst %d1,%d4
  96:	0405 0304      	subib #4,%d5
  9a:	0405 0405      	subib #5,%d5
  9e:	0506           	btst %d2,%d6
  a0:	0203 0304      	andib #4,%d3
  a4:	0304           	btst %d1,%d4
  a6:	0405 0304      	subib #4,%d5
  aa:	0405 0405      	subib #5,%d5
  ae:	0506           	btst %d2,%d6
  b0:	0304           	btst %d1,%d4
  b2:	0405 0405      	subib #5,%d5
  b6:	0506           	btst %d2,%d6
  b8:	0405 0506      	subib #6,%d5
  bc:	0506           	btst %d2,%d6
  be:	0607 0203      	addib #3,%d7
  c2:	0304           	btst %d1,%d4
  c4:	0304           	btst %d1,%d4
  c6:	0405 0304      	subib #4,%d5
  ca:	0405 0405      	subib #5,%d5
  ce:	0506           	btst %d2,%d6
  d0:	0304           	btst %d1,%d4
  d2:	0405 0405      	subib #5,%d5
  d6:	0506           	btst %d2,%d6
  d8:	0405 0506      	subib #6,%d5
  dc:	0506           	btst %d2,%d6
  de:	0607 0304      	addib #4,%d7
  e2:	0405 0405      	subib #5,%d5
  e6:	0506           	btst %d2,%d6
  e8:	0405 0506      	subib #6,%d5
  ec:	0506           	btst %d2,%d6
  ee:	0607 0405      	addib #5,%d7
  f2:	0506           	btst %d2,%d6
  f4:	0506           	btst %d2,%d6
  f6:	0607 0506      	addib #6,%d7
  fa:	0607 0607      	addib #7,%d7
  fe:	0708           	.short 0x0708

_popcountsi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___popcountsi2>:
   0:	48e7 3800      	moveml %d2-%d4,%sp@-
   4:	262f 0010      	movel %sp@(16),%d3
   8:	7000           	moveq #0,%d0
   a:	7200           	moveq #0,%d1
   c:	41f9 0000 0000 	lea 0 <___popcountsi2>,%a0
  12:	2403           	movel %d3,%d2
  14:	e2aa           	lsrl %d1,%d2
  16:	7800           	moveq #0,%d4
  18:	4604           	notb %d4
  1a:	c484           	andl %d4,%d2
  1c:	1430 2800      	moveb %a0@(00000000,%d2:l),%d2
  20:	0282 0000 00ff 	andil #255,%d2
  26:	d082           	addl %d2,%d0
  28:	5081           	addql #8,%d1
  2a:	7420           	moveq #32,%d2
  2c:	b481           	cmpl %d1,%d2
  2e:	66e2           	bnes 12 <___popcountsi2+0x12>
  30:	4cdf 001c      	moveml %sp@+,%d2-%d4
  34:	4e75           	rts
	...

_popcountdi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___popcountdi2>:
   0:	48e7 3f20      	moveml %d2-%d7/%a2,%sp@-
   4:	222f 0020      	movel %sp@(32),%d1
   8:	2e2f 0024      	movel %sp@(36),%d7
   c:	7000           	moveq #0,%d0
   e:	91c8           	subal %a0,%a0
  10:	45f9 0000 0000 	lea 0 <___popcountdi2>,%a2
  16:	2c01           	movel %d1,%d6
  18:	dc86           	addl %d6,%d6
  1a:	43e8 ffe0      	lea %a0@(-32),%a1
  1e:	b2fc 0000      	cmpaw #0,%a1
  22:	6d2a           	blts 4e <___popcountdi2+0x4e>
  24:	2601           	movel %d1,%d3
  26:	2809           	movel %a1,%d4
  28:	e8ab           	lsrl %d4,%d3
  2a:	7400           	moveq #0,%d2
  2c:	2802           	movel %d2,%d4
  2e:	2a03           	movel %d3,%d5
  30:	4284           	clrl %d4
  32:	0285 0000 00ff 	andil #255,%d5
  38:	7800           	moveq #0,%d4
  3a:	1832 5800      	moveb %a2@(00000000,%d5:l),%d4
  3e:	d084           	addl %d4,%d0
  40:	5088           	addql #8,%a0
  42:	7840           	moveq #64,%d4
  44:	b888           	cmpl %a0,%d4
  46:	66d2           	bnes 1a <___popcountdi2+0x1a>
  48:	4cdf 04fc      	moveml %sp@+,%d2-%d7/%a2
  4c:	4e75           	rts
  4e:	781f           	moveq #31,%d4
  50:	9888           	subl %a0,%d4
  52:	2a06           	movel %d6,%d5
  54:	e9ad           	lsll %d4,%d5
  56:	2805           	movel %d5,%d4
  58:	2607           	movel %d7,%d3
  5a:	2a08           	movel %a0,%d5
  5c:	eaab           	lsrl %d5,%d3
  5e:	8684           	orl %d4,%d3
  60:	2401           	movel %d1,%d2
  62:	eaaa           	lsrl %d5,%d2
  64:	2802           	movel %d2,%d4
  66:	2a03           	movel %d3,%d5
  68:	4284           	clrl %d4
  6a:	0285 0000 00ff 	andil #255,%d5
  70:	7800           	moveq #0,%d4
  72:	1832 5800      	moveb %a2@(00000000,%d5:l),%d4
  76:	d084           	addl %d4,%d0
  78:	5088           	addql #8,%a0
  7a:	7840           	moveq #64,%d4
  7c:	b888           	cmpl %a0,%d4
  7e:	669a           	bnes 1a <___popcountdi2+0x1a>
  80:	60c6           	bras 48 <___popcountdi2+0x48>
	...

_paritysi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___paritysi2>:
   0:	7200           	moveq #0,%d1
   2:	322f 0004      	movew %sp@(4),%d1
   6:	202f 0004      	movel %sp@(4),%d0
   a:	b181           	eorl %d0,%d1
   c:	2001           	movel %d1,%d0
   e:	e088           	lsrl #8,%d0
  10:	b380           	eorl %d1,%d0
  12:	2200           	movel %d0,%d1
  14:	e889           	lsrl #4,%d1
  16:	b181           	eorl %d0,%d1
  18:	700f           	moveq #15,%d0
  1a:	c280           	andl %d0,%d1
  1c:	303c 6996      	movew #27030,%d0
  20:	e2a0           	asrl %d1,%d0
  22:	7201           	moveq #1,%d1
  24:	c081           	andl %d1,%d0
  26:	4e75           	rts

_paritydi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___paritydi2>:
   0:	202f 0004      	movel %sp@(4),%d0
   4:	222f 0008      	movel %sp@(8),%d1
   8:	b380           	eorl %d1,%d0
   a:	2200           	movel %d0,%d1
   c:	4241           	clrw %d1
   e:	4841           	swap %d1
  10:	b181           	eorl %d0,%d1
  12:	2001           	movel %d1,%d0
  14:	e088           	lsrl #8,%d0
  16:	b380           	eorl %d1,%d0
  18:	2200           	movel %d0,%d1
  1a:	e889           	lsrl #4,%d1
  1c:	b181           	eorl %d0,%d1
  1e:	700f           	moveq #15,%d0
  20:	c280           	andl %d0,%d1
  22:	303c 6996      	movew #27030,%d0
  26:	e2a0           	asrl %d1,%d0
  28:	7201           	moveq #1,%d1
  2a:	c081           	andl %d1,%d0
  2c:	4e75           	rts
	...

_powisf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___powisf2>:
   0:	48e7 3c20      	moveml %d2-%d5/%a2,%sp@-
   4:	262f 0018      	movel %sp@(24),%d3
   8:	2a2f 001c      	movel %sp@(28),%d5
   c:	2405           	movel %d5,%d2
   e:	6d64           	blts 74 <___powisf2+0x74>
  10:	0802 0000      	btst #0,%d2
  14:	6736           	beqs 4c <___powisf2+0x4c>
  16:	2803           	movel %d3,%d4
  18:	45f9 0000 0000 	lea 0 <___powisf2>,%a2
  1e:	e28a           	lsrl #1,%d2
  20:	671e           	beqs 40 <___powisf2+0x40>
  22:	2f03           	movel %d3,%sp@-
  24:	2f03           	movel %d3,%sp@-
  26:	4e92           	jsr %a2@
  28:	508f           	addql #8,%sp
  2a:	2600           	movel %d0,%d3
  2c:	0802 0000      	btst #0,%d2
  30:	67ec           	beqs 1e <___powisf2+0x1e>
  32:	2f00           	movel %d0,%sp@-
  34:	2f04           	movel %d4,%sp@-
  36:	4e92           	jsr %a2@
  38:	508f           	addql #8,%sp
  3a:	2800           	movel %d0,%d4
  3c:	e28a           	lsrl #1,%d2
  3e:	66e2           	bnes 22 <___powisf2+0x22>
  40:	4a85           	tstl %d5
  42:	6d16           	blts 5a <___powisf2+0x5a>
  44:	2004           	movel %d4,%d0
  46:	4cdf 043c      	moveml %sp@+,%d2-%d5/%a2
  4a:	4e75           	rts
  4c:	283c 3f80 0000 	movel #1065353216,%d4
  52:	45f9 0000 0000 	lea 0 <___powisf2>,%a2
  58:	60c4           	bras 1e <___powisf2+0x1e>
  5a:	2f04           	movel %d4,%sp@-
  5c:	2f3c 3f80 0000 	movel #1065353216,%sp@-
  62:	4eb9 0000 0000 	jsr 0 <___powisf2>
  68:	508f           	addql #8,%sp
  6a:	2800           	movel %d0,%d4
  6c:	2004           	movel %d4,%d0
  6e:	4cdf 043c      	moveml %sp@+,%d2-%d5/%a2
  72:	4e75           	rts
  74:	4482           	negl %d2
  76:	6098           	bras 10 <___powisf2+0x10>

_powidf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___powidf2>:
   0:	48e7 3f20      	moveml %d2-%d7/%a2,%sp@-
   4:	282f 0020      	movel %sp@(32),%d4
   8:	2a2f 0024      	movel %sp@(36),%d5
   c:	262f 0028      	movel %sp@(40),%d3
  10:	2403           	movel %d3,%d2
  12:	6d00 0090      	bltw a4 <___powidf2+0xa4>
  16:	0802 0000      	btst #0,%d2
  1a:	6752           	beqs 6e <___powidf2+0x6e>
  1c:	2c04           	movel %d4,%d6
  1e:	2e05           	movel %d5,%d7
  20:	45f9 0000 0000 	lea 0 <___powidf2>,%a2
  26:	e28a           	lsrl #1,%d2
  28:	6736           	beqs 60 <___powidf2+0x60>
  2a:	2f05           	movel %d5,%sp@-
  2c:	2f04           	movel %d4,%sp@-
  2e:	2f05           	movel %d5,%sp@-
  30:	2f04           	movel %d4,%sp@-
  32:	4e92           	jsr %a2@
  34:	4fef 0010      	lea %sp@(16),%sp
  38:	2040           	moveal %d0,%a0
  3a:	2241           	moveal %d1,%a1
  3c:	2808           	movel %a0,%d4
  3e:	2a09           	movel %a1,%d5
  40:	0802 0000      	btst #0,%d2
  44:	67e0           	beqs 26 <___powidf2+0x26>
  46:	2f01           	movel %d1,%sp@-
  48:	2f08           	movel %a0,%sp@-
  4a:	2f07           	movel %d7,%sp@-
  4c:	2f06           	movel %d6,%sp@-
  4e:	4e92           	jsr %a2@
  50:	4fef 0010      	lea %sp@(16),%sp
  54:	2240           	moveal %d0,%a1
  56:	2009           	movel %a1,%d0
  58:	2c00           	movel %d0,%d6
  5a:	2e01           	movel %d1,%d7
  5c:	e28a           	lsrl #1,%d2
  5e:	66ca           	bnes 2a <___powidf2+0x2a>
  60:	4a83           	tstl %d3
  62:	6d1a           	blts 7e <___powidf2+0x7e>
  64:	2006           	movel %d6,%d0
  66:	2207           	movel %d7,%d1
  68:	4cdf 04fc      	moveml %sp@+,%d2-%d7/%a2
  6c:	4e75           	rts
  6e:	2c3c 3ff0 0000 	movel #1072693248,%d6
  74:	4287           	clrl %d7
  76:	45f9 0000 0000 	lea 0 <___powidf2>,%a2
  7c:	60a8           	bras 26 <___powidf2+0x26>
  7e:	2f07           	movel %d7,%sp@-
  80:	2f06           	movel %d6,%sp@-
  82:	42a7           	clrl %sp@-
  84:	2f3c 3ff0 0000 	movel #1072693248,%sp@-
  8a:	4eb9 0000 0000 	jsr 0 <___powidf2>
  90:	4fef 0010      	lea %sp@(16),%sp
  94:	2240           	moveal %d0,%a1
  96:	2c09           	movel %a1,%d6
  98:	2e01           	movel %d1,%d7
  9a:	2006           	movel %d6,%d0
  9c:	2207           	movel %d7,%d1
  9e:	4cdf 04fc      	moveml %sp@+,%d2-%d7/%a2
  a2:	4e75           	rts
  a4:	4482           	negl %d2
  a6:	6000 ff6e      	braw 16 <___powidf2+0x16>
	...

_powixf2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___powixf2-0xc>:
   0:	3fff           	.short 0x3fff
   2:	0000 8000      	orib #0,%d0
   6:	0000 0000      	orib #0,%d0
	...

0000000c <___powixf2>:
   c:	4fef fff4      	lea %sp@(-12),%sp
  10:	48e7 3e3e      	moveml %d2-%d6/%a2-%fp,%sp@-
  14:	2649           	moveal %a1,%a3
  16:	262f 0038      	movel %sp@(56),%d3
  1a:	282f 003c      	movel %sp@(60),%d4
  1e:	2a2f 0040      	movel %sp@(64),%d5
  22:	2c2f 0044      	movel %sp@(68),%d6
  26:	2406           	movel %d6,%d2
  28:	6d00 00d6      	bltw 100 <___powixf2+0xf4>
  2c:	0802 0000      	btst #0,%d2
  30:	6778           	beqs aa <___powixf2+0x9e>
  32:	2843           	moveal %d3,%a4
  34:	2a44           	moveal %d4,%a5
  36:	2c45           	moveal %d5,%fp
  38:	45f9 0000 0000 	lea 0 <___powixf2-0xc>,%a2
  3e:	e28a           	lsrl #1,%d2
  40:	674e           	beqs 90 <___powixf2+0x84>
  42:	2f05           	movel %d5,%sp@-
  44:	2f04           	movel %d4,%sp@-
  46:	2f03           	movel %d3,%sp@-
  48:	2f05           	movel %d5,%sp@-
  4a:	2f04           	movel %d4,%sp@-
  4c:	2f03           	movel %d3,%sp@-
  4e:	43ef 0040      	lea %sp@(64),%a1
  52:	4e92           	jsr %a2@
  54:	4fef 0018      	lea %sp@(24),%sp
  58:	262f 0028      	movel %sp@(40),%d3
  5c:	282f 002c      	movel %sp@(44),%d4
  60:	2a2f 0030      	movel %sp@(48),%d5
  64:	0802 0000      	btst #0,%d2
  68:	67d4           	beqs 3e <___powixf2+0x32>
  6a:	2f05           	movel %d5,%sp@-
  6c:	2f04           	movel %d4,%sp@-
  6e:	2f03           	movel %d3,%sp@-
  70:	2f0e           	movel %fp,%sp@-
  72:	2f0d           	movel %a5,%sp@-
  74:	2f0c           	movel %a4,%sp@-
  76:	43ef 0040      	lea %sp@(64),%a1
  7a:	4e92           	jsr %a2@
  7c:	4fef 0018      	lea %sp@(24),%sp
  80:	286f 0028      	moveal %sp@(40),%a4
  84:	2a6f 002c      	moveal %sp@(44),%a5
  88:	2c6f 0030      	moveal %sp@(48),%fp
  8c:	e28a           	lsrl #1,%d2
  8e:	66b2           	bnes 42 <___powixf2+0x36>
  90:	4a86           	tstl %d6
  92:	6d2a           	blts be <___powixf2+0xb2>
  94:	268c           	movel %a4,%a3@
  96:	274d 0004      	movel %a5,%a3@(4)
  9a:	274e 0008      	movel %fp,%a3@(8)
  9e:	200b           	movel %a3,%d0
  a0:	4cdf 7c7c      	moveml %sp@+,%d2-%d6/%a2-%fp
  a4:	4fef 000c      	lea %sp@(12),%sp
  a8:	4e75           	rts
  aa:	287a ff54      	moveal %pc@(0 <___powixf2-0xc>),%a4
  ae:	2a7a ff54      	moveal %pc@(4 <___powixf2-0x8>),%a5
  b2:	2c7a ff54      	moveal %pc@(8 <___powixf2-0x4>),%fp
  b6:	45f9 0000 0000 	lea 0 <___powixf2-0xc>,%a2
  bc:	6080           	bras 3e <___powixf2+0x32>
  be:	2f0e           	movel %fp,%sp@-
  c0:	2f0d           	movel %a5,%sp@-
  c2:	2f0c           	movel %a4,%sp@-
  c4:	2f3a ff42      	movel %pc@(8 <___powixf2-0x4>),%sp@-
  c8:	2f3a ff3a      	movel %pc@(4 <___powixf2-0x8>),%sp@-
  cc:	2f3a ff32      	movel %pc@(0 <___powixf2-0xc>),%sp@-
  d0:	43ef 0040      	lea %sp@(64),%a1
  d4:	4eb9 0000 0000 	jsr 0 <___powixf2-0xc>
  da:	4fef 0018      	lea %sp@(24),%sp
  de:	286f 0028      	moveal %sp@(40),%a4
  e2:	2a6f 002c      	moveal %sp@(44),%a5
  e6:	2c6f 0030      	moveal %sp@(48),%fp
  ea:	268c           	movel %a4,%a3@
  ec:	274d 0004      	movel %a5,%a3@(4)
  f0:	274e 0008      	movel %fp,%a3@(8)
  f4:	200b           	movel %a3,%d0
  f6:	4cdf 7c7c      	moveml %sp@+,%d2-%d6/%a2-%fp
  fa:	4fef 000c      	lea %sp@(12),%sp
  fe:	4e75           	rts
 100:	4482           	negl %d2
 102:	6000 ff28      	braw 2c <___powixf2+0x20>
	...

_powitf2.o:     file format a.out-zero-big


_mulsc3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___mulsc3>:
   0:	518f           	subql #8,%sp
   2:	48e7 3f3e      	moveml %d2-%d7/%a2-%fp,%sp@-
   6:	2c2f 0038      	movel %sp@(56),%d6
   a:	282f 003c      	movel %sp@(60),%d4
   e:	2a2f 0044      	movel %sp@(68),%d5
  12:	45f9 0000 0000 	lea 0 <___mulsc3>,%a2
  18:	2f2f 0040      	movel %sp@(64),%sp@-
  1c:	2f06           	movel %d6,%sp@-
  1e:	4e92           	jsr %a2@
  20:	508f           	addql #8,%sp
  22:	2e00           	movel %d0,%d7
  24:	2f05           	movel %d5,%sp@-
  26:	2f04           	movel %d4,%sp@-
  28:	4e92           	jsr %a2@
  2a:	508f           	addql #8,%sp
  2c:	2a40           	moveal %d0,%a5
  2e:	2f05           	movel %d5,%sp@-
  30:	2f06           	movel %d6,%sp@-
  32:	4e92           	jsr %a2@
  34:	508f           	addql #8,%sp
  36:	2c40           	moveal %d0,%fp
  38:	2f2f 0040      	movel %sp@(64),%sp@-
  3c:	2f04           	movel %d4,%sp@-
  3e:	4e92           	jsr %a2@
  40:	508f           	addql #8,%sp
  42:	2f40 002e      	movel %d0,%sp@(46)
  46:	49f9 0000 0000 	lea 0 <___mulsc3>,%a4
  4c:	2f0d           	movel %a5,%sp@-
  4e:	2f07           	movel %d7,%sp@-
  50:	4e94           	jsr %a4@
  52:	508f           	addql #8,%sp
  54:	2400           	movel %d0,%d2
  56:	2f2f 002e      	movel %sp@(46),%sp@-
  5a:	2f0e           	movel %fp,%sp@-
  5c:	4eb9 0000 0000 	jsr 0 <___mulsc3>
  62:	508f           	addql #8,%sp
  64:	2600           	movel %d0,%d3
  66:	47f9 0000 0000 	lea 0 <___mulsc3>,%a3
  6c:	2f02           	movel %d2,%sp@-
  6e:	2f02           	movel %d2,%sp@-
  70:	4e93           	jsr %a3@
  72:	508f           	addql #8,%sp
  74:	4a80           	tstl %d0
  76:	660c           	bnes 84 <___mulsc3+0x84>
  78:	2002           	movel %d2,%d0
  7a:	2203           	movel %d3,%d1
  7c:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
  80:	508f           	addql #8,%sp
  82:	4e75           	rts
  84:	2f03           	movel %d3,%sp@-
  86:	2f03           	movel %d3,%sp@-
  88:	4e93           	jsr %a3@
  8a:	508f           	addql #8,%sp
  8c:	4a80           	tstl %d0
  8e:	67e8           	beqs 78 <___mulsc3+0x78>
  90:	2f06           	movel %d6,%sp@-
  92:	2f06           	movel %d6,%sp@-
  94:	4e94           	jsr %a4@
  96:	588f           	addql #4,%sp
  98:	2e80           	movel %d0,%sp@
  9a:	2f00           	movel %d0,%sp@-
  9c:	4e93           	jsr %a3@
  9e:	508f           	addql #8,%sp
  a0:	4a80           	tstl %d0
  a2:	670e           	beqs b2 <___mulsc3+0xb2>
  a4:	2f06           	movel %d6,%sp@-
  a6:	2f06           	movel %d6,%sp@-
  a8:	4e93           	jsr %a3@
  aa:	508f           	addql #8,%sp
  ac:	4a80           	tstl %d0
  ae:	6700 01f0      	beqw 2a0 <___mulsc3+0x2a0>
  b2:	2f04           	movel %d4,%sp@-
  b4:	2f04           	movel %d4,%sp@-
  b6:	4e94           	jsr %a4@
  b8:	588f           	addql #4,%sp
  ba:	2e80           	movel %d0,%sp@
  bc:	2f00           	movel %d0,%sp@-
  be:	4e93           	jsr %a3@
  c0:	508f           	addql #8,%sp
  c2:	4a80           	tstl %d0
  c4:	670e           	beqs d4 <___mulsc3+0xd4>
  c6:	2f04           	movel %d4,%sp@-
  c8:	2f04           	movel %d4,%sp@-
  ca:	4e93           	jsr %a3@
  cc:	508f           	addql #8,%sp
  ce:	4a80           	tstl %d0
  d0:	6700 02dc      	beqw 3ae <___mulsc3+0x3ae>
  d4:	422f 0033      	clrb %sp@(51)
  d8:	2f2f 0040      	movel %sp@(64),%sp@-
  dc:	2f2f 0044      	movel %sp@(68),%sp@-
  e0:	4e94           	jsr %a4@
  e2:	588f           	addql #4,%sp
  e4:	2e80           	movel %d0,%sp@
  e6:	2f00           	movel %d0,%sp@-
  e8:	4e93           	jsr %a3@
  ea:	508f           	addql #8,%sp
  ec:	4a80           	tstl %d0
  ee:	6712           	beqs 102 <___mulsc3+0x102>
  f0:	2f2f 0040      	movel %sp@(64),%sp@-
  f4:	2f2f 0044      	movel %sp@(68),%sp@-
  f8:	4e93           	jsr %a3@
  fa:	508f           	addql #8,%sp
  fc:	4a80           	tstl %d0
  fe:	6700 0210      	beqw 310 <___mulsc3+0x310>
 102:	2f05           	movel %d5,%sp@-
 104:	2f05           	movel %d5,%sp@-
 106:	4e94           	jsr %a4@
 108:	588f           	addql #4,%sp
 10a:	2e80           	movel %d0,%sp@
 10c:	2f00           	movel %d0,%sp@-
 10e:	4e93           	jsr %a3@
 110:	508f           	addql #8,%sp
 112:	4a80           	tstl %d0
 114:	670e           	beqs 124 <___mulsc3+0x124>
 116:	2f05           	movel %d5,%sp@-
 118:	2f05           	movel %d5,%sp@-
 11a:	4e93           	jsr %a3@
 11c:	508f           	addql #8,%sp
 11e:	4a80           	tstl %d0
 120:	6700 0272      	beqw 394 <___mulsc3+0x394>
 124:	4a2f 0033      	tstb %sp@(51)
 128:	6600 00c8      	bnew 1f2 <___mulsc3+0x1f2>
 12c:	2f07           	movel %d7,%sp@-
 12e:	2f07           	movel %d7,%sp@-
 130:	4e94           	jsr %a4@
 132:	588f           	addql #4,%sp
 134:	2e80           	movel %d0,%sp@
 136:	2f00           	movel %d0,%sp@-
 138:	4e93           	jsr %a3@
 13a:	508f           	addql #8,%sp
 13c:	4a80           	tstl %d0
 13e:	670c           	beqs 14c <___mulsc3+0x14c>
 140:	2f07           	movel %d7,%sp@-
 142:	2f07           	movel %d7,%sp@-
 144:	4e93           	jsr %a3@
 146:	508f           	addql #8,%sp
 148:	4a80           	tstl %d0
 14a:	676c           	beqs 1b8 <___mulsc3+0x1b8>
 14c:	2f0d           	movel %a5,%sp@-
 14e:	2f0d           	movel %a5,%sp@-
 150:	4e94           	jsr %a4@
 152:	588f           	addql #4,%sp
 154:	2e80           	movel %d0,%sp@
 156:	2f00           	movel %d0,%sp@-
 158:	4e93           	jsr %a3@
 15a:	508f           	addql #8,%sp
 15c:	4a80           	tstl %d0
 15e:	670c           	beqs 16c <___mulsc3+0x16c>
 160:	2f0d           	movel %a5,%sp@-
 162:	2f0d           	movel %a5,%sp@-
 164:	4e93           	jsr %a3@
 166:	508f           	addql #8,%sp
 168:	4a80           	tstl %d0
 16a:	674c           	beqs 1b8 <___mulsc3+0x1b8>
 16c:	2f0e           	movel %fp,%sp@-
 16e:	2f0e           	movel %fp,%sp@-
 170:	4e94           	jsr %a4@
 172:	588f           	addql #4,%sp
 174:	2e80           	movel %d0,%sp@
 176:	2f00           	movel %d0,%sp@-
 178:	4e93           	jsr %a3@
 17a:	508f           	addql #8,%sp
 17c:	4a80           	tstl %d0
 17e:	670c           	beqs 18c <___mulsc3+0x18c>
 180:	2f0e           	movel %fp,%sp@-
 182:	2f0e           	movel %fp,%sp@-
 184:	4e93           	jsr %a3@
 186:	508f           	addql #8,%sp
 188:	4a80           	tstl %d0
 18a:	672c           	beqs 1b8 <___mulsc3+0x1b8>
 18c:	2f2f 002e      	movel %sp@(46),%sp@-
 190:	2f2f 0032      	movel %sp@(50),%sp@-
 194:	4e94           	jsr %a4@
 196:	588f           	addql #4,%sp
 198:	2e80           	movel %d0,%sp@
 19a:	2f00           	movel %d0,%sp@-
 19c:	4e93           	jsr %a3@
 19e:	508f           	addql #8,%sp
 1a0:	4a80           	tstl %d0
 1a2:	6700 fed4      	beqw 78 <___mulsc3+0x78>
 1a6:	2f2f 002e      	movel %sp@(46),%sp@-
 1aa:	2f2f 0032      	movel %sp@(50),%sp@-
 1ae:	4e93           	jsr %a3@
 1b0:	508f           	addql #8,%sp
 1b2:	4a80           	tstl %d0
 1b4:	6600 fec2      	bnew 78 <___mulsc3+0x78>
 1b8:	2f06           	movel %d6,%sp@-
 1ba:	2f06           	movel %d6,%sp@-
 1bc:	4e93           	jsr %a3@
 1be:	508f           	addql #8,%sp
 1c0:	4a80           	tstl %d0
 1c2:	6600 00ca      	bnew 28e <___mulsc3+0x28e>
 1c6:	2f04           	movel %d4,%sp@-
 1c8:	2f04           	movel %d4,%sp@-
 1ca:	4e93           	jsr %a3@
 1cc:	508f           	addql #8,%sp
 1ce:	4a80           	tstl %d0
 1d0:	6600 00aa      	bnew 27c <___mulsc3+0x27c>
 1d4:	2f2f 0040      	movel %sp@(64),%sp@-
 1d8:	2f2f 0044      	movel %sp@(68),%sp@-
 1dc:	4e93           	jsr %a3@
 1de:	508f           	addql #8,%sp
 1e0:	4a80           	tstl %d0
 1e2:	6600 0082      	bnew 266 <___mulsc3+0x266>
 1e6:	2f05           	movel %d5,%sp@-
 1e8:	2f05           	movel %d5,%sp@-
 1ea:	4e93           	jsr %a3@
 1ec:	508f           	addql #8,%sp
 1ee:	4a80           	tstl %d0
 1f0:	6664           	bnes 256 <___mulsc3+0x256>
 1f2:	2f2f 0040      	movel %sp@(64),%sp@-
 1f6:	2f06           	movel %d6,%sp@-
 1f8:	4e92           	jsr %a2@
 1fa:	508f           	addql #8,%sp
 1fc:	2400           	movel %d0,%d2
 1fe:	2f05           	movel %d5,%sp@-
 200:	2f04           	movel %d4,%sp@-
 202:	4e92           	jsr %a2@
 204:	588f           	addql #4,%sp
 206:	2e80           	movel %d0,%sp@
 208:	2f02           	movel %d2,%sp@-
 20a:	4e94           	jsr %a4@
 20c:	588f           	addql #4,%sp
 20e:	2ebc 7f80 0000 	movel #2139095040,%sp@
 214:	2f00           	movel %d0,%sp@-
 216:	4e92           	jsr %a2@
 218:	508f           	addql #8,%sp
 21a:	2400           	movel %d0,%d2
 21c:	2f05           	movel %d5,%sp@-
 21e:	2f06           	movel %d6,%sp@-
 220:	4e92           	jsr %a2@
 222:	508f           	addql #8,%sp
 224:	2600           	movel %d0,%d3
 226:	2f2f 0040      	movel %sp@(64),%sp@-
 22a:	2f04           	movel %d4,%sp@-
 22c:	4e92           	jsr %a2@
 22e:	588f           	addql #4,%sp
 230:	2e80           	movel %d0,%sp@
 232:	2f03           	movel %d3,%sp@-
 234:	4eb9 0000 0000 	jsr 0 <___mulsc3>
 23a:	588f           	addql #4,%sp
 23c:	2ebc 7f80 0000 	movel #2139095040,%sp@
 242:	2f00           	movel %d0,%sp@-
 244:	4e92           	jsr %a2@
 246:	508f           	addql #8,%sp
 248:	2600           	movel %d0,%d3
 24a:	2002           	movel %d2,%d0
 24c:	2203           	movel %d3,%d1
 24e:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 252:	508f           	addql #8,%sp
 254:	4e75           	rts
 256:	7000           	moveq #0,%d0
 258:	4a85           	tstl %d5
 25a:	6c06           	bges 262 <___mulsc3+0x262>
 25c:	203c 8000 0000 	movel #-2147483648,%d0
 262:	2a00           	movel %d0,%d5
 264:	608c           	bras 1f2 <___mulsc3+0x1f2>
 266:	7000           	moveq #0,%d0
 268:	222f 0040      	movel %sp@(64),%d1
 26c:	6c06           	bges 274 <___mulsc3+0x274>
 26e:	203c 8000 0000 	movel #-2147483648,%d0
 274:	2f40 0040      	movel %d0,%sp@(64)
 278:	6000 ff6c      	braw 1e6 <___mulsc3+0x1e6>
 27c:	7000           	moveq #0,%d0
 27e:	4a84           	tstl %d4
 280:	6c06           	bges 288 <___mulsc3+0x288>
 282:	203c 8000 0000 	movel #-2147483648,%d0
 288:	2800           	movel %d0,%d4
 28a:	6000 ff48      	braw 1d4 <___mulsc3+0x1d4>
 28e:	7000           	moveq #0,%d0
 290:	4a86           	tstl %d6
 292:	6c06           	bges 29a <___mulsc3+0x29a>
 294:	203c 8000 0000 	movel #-2147483648,%d0
 29a:	2c00           	movel %d0,%d6
 29c:	6000 ff28      	braw 1c6 <___mulsc3+0x1c6>
 2a0:	203c 3f80 0000 	movel #1065353216,%d0
 2a6:	4a86           	tstl %d6
 2a8:	6c06           	bges 2b0 <___mulsc3+0x2b0>
 2aa:	203c bf80 0000 	movel #-1082130432,%d0
 2b0:	2c00           	movel %d0,%d6
 2b2:	2f04           	movel %d4,%sp@-
 2b4:	2f04           	movel %d4,%sp@-
 2b6:	4e94           	jsr %a4@
 2b8:	588f           	addql #4,%sp
 2ba:	2e80           	movel %d0,%sp@
 2bc:	2f00           	movel %d0,%sp@-
 2be:	4e93           	jsr %a3@
 2c0:	508f           	addql #8,%sp
 2c2:	4a80           	tstl %d0
 2c4:	670e           	beqs 2d4 <___mulsc3+0x2d4>
 2c6:	2f04           	movel %d4,%sp@-
 2c8:	2f04           	movel %d4,%sp@-
 2ca:	4e93           	jsr %a3@
 2cc:	508f           	addql #8,%sp
 2ce:	4a80           	tstl %d0
 2d0:	6700 00ea      	beqw 3bc <___mulsc3+0x3bc>
 2d4:	7000           	moveq #0,%d0
 2d6:	0880 001f      	bclr #31,%d0
 2da:	4a84           	tstl %d4
 2dc:	6c06           	bges 2e4 <___mulsc3+0x2e4>
 2de:	0680 8000 0000 	addil #-2147483648,%d0
 2e4:	2800           	movel %d0,%d4
 2e6:	2f2f 0040      	movel %sp@(64),%sp@-
 2ea:	2f2f 0044      	movel %sp@(68),%sp@-
 2ee:	4e93           	jsr %a3@
 2f0:	508f           	addql #8,%sp
 2f2:	4a80           	tstl %d0
 2f4:	6600 00e8      	bnew 3de <___mulsc3+0x3de>
 2f8:	2f05           	movel %d5,%sp@-
 2fa:	2f05           	movel %d5,%sp@-
 2fc:	4e93           	jsr %a3@
 2fe:	508f           	addql #8,%sp
 300:	4a80           	tstl %d0
 302:	6600 00c2      	bnew 3c6 <___mulsc3+0x3c6>
 306:	1f7c 0001 0033 	moveb #1,%sp@(51)
 30c:	6000 fdca      	braw d8 <___mulsc3+0xd8>
 310:	203c 3f80 0000 	movel #1065353216,%d0
 316:	222f 0040      	movel %sp@(64),%d1
 31a:	6c06           	bges 322 <___mulsc3+0x322>
 31c:	203c bf80 0000 	movel #-1082130432,%d0
 322:	2f40 0040      	movel %d0,%sp@(64)
 326:	2f05           	movel %d5,%sp@-
 328:	2f05           	movel %d5,%sp@-
 32a:	4e94           	jsr %a4@
 32c:	588f           	addql #4,%sp
 32e:	2e80           	movel %d0,%sp@
 330:	2f00           	movel %d0,%sp@-
 332:	4e93           	jsr %a3@
 334:	508f           	addql #8,%sp
 336:	4a80           	tstl %d0
 338:	670c           	beqs 346 <___mulsc3+0x346>
 33a:	2f05           	movel %d5,%sp@-
 33c:	2f05           	movel %d5,%sp@-
 33e:	4e93           	jsr %a3@
 340:	508f           	addql #8,%sp
 342:	4a80           	tstl %d0
 344:	6760           	beqs 3a6 <___mulsc3+0x3a6>
 346:	7000           	moveq #0,%d0
 348:	0880 001f      	bclr #31,%d0
 34c:	4a85           	tstl %d5
 34e:	6c06           	bges 356 <___mulsc3+0x356>
 350:	0680 8000 0000 	addil #-2147483648,%d0
 356:	2a00           	movel %d0,%d5
 358:	2f06           	movel %d6,%sp@-
 35a:	2f06           	movel %d6,%sp@-
 35c:	4e93           	jsr %a3@
 35e:	508f           	addql #8,%sp
 360:	4a80           	tstl %d0
 362:	6620           	bnes 384 <___mulsc3+0x384>
 364:	2f04           	movel %d4,%sp@-
 366:	2f04           	movel %d4,%sp@-
 368:	4e93           	jsr %a3@
 36a:	508f           	addql #8,%sp
 36c:	4a80           	tstl %d0
 36e:	6700 fe82      	beqw 1f2 <___mulsc3+0x1f2>
 372:	7000           	moveq #0,%d0
 374:	4a84           	tstl %d4
 376:	6c06           	bges 37e <___mulsc3+0x37e>
 378:	203c 8000 0000 	movel #-2147483648,%d0
 37e:	2800           	movel %d0,%d4
 380:	6000 fe70      	braw 1f2 <___mulsc3+0x1f2>
 384:	7000           	moveq #0,%d0
 386:	4a86           	tstl %d6
 388:	6c06           	bges 390 <___mulsc3+0x390>
 38a:	203c 8000 0000 	movel #-2147483648,%d0
 390:	2c00           	movel %d0,%d6
 392:	60d0           	bras 364 <___mulsc3+0x364>
 394:	7000           	moveq #0,%d0
 396:	222f 0040      	movel %sp@(64),%d1
 39a:	6c06           	bges 3a2 <___mulsc3+0x3a2>
 39c:	203c 8000 0000 	movel #-2147483648,%d0
 3a2:	2f40 0040      	movel %d0,%sp@(64)
 3a6:	203c 3f80 0000 	movel #1065353216,%d0
 3ac:	609a           	bras 348 <___mulsc3+0x348>
 3ae:	7000           	moveq #0,%d0
 3b0:	4a86           	tstl %d6
 3b2:	6c06           	bges 3ba <___mulsc3+0x3ba>
 3b4:	203c 8000 0000 	movel #-2147483648,%d0
 3ba:	2c00           	movel %d0,%d6
 3bc:	203c 3f80 0000 	movel #1065353216,%d0
 3c2:	6000 ff12      	braw 2d6 <___mulsc3+0x2d6>
 3c6:	7000           	moveq #0,%d0
 3c8:	4a85           	tstl %d5
 3ca:	6c06           	bges 3d2 <___mulsc3+0x3d2>
 3cc:	203c 8000 0000 	movel #-2147483648,%d0
 3d2:	2a00           	movel %d0,%d5
 3d4:	1f7c 0001 0033 	moveb #1,%sp@(51)
 3da:	6000 fcfc      	braw d8 <___mulsc3+0xd8>
 3de:	7000           	moveq #0,%d0
 3e0:	222f 0040      	movel %sp@(64),%d1
 3e4:	6c06           	bges 3ec <___mulsc3+0x3ec>
 3e6:	203c 8000 0000 	movel #-2147483648,%d0
 3ec:	2f40 0040      	movel %d0,%sp@(64)
 3f0:	6000 ff06      	braw 2f8 <___mulsc3+0x2f8>

_muldc3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___muldc3>:
   0:	4fef ffd8      	lea %sp@(-40),%sp
   4:	48e7 3f3e      	moveml %d2-%d7/%a2-%fp,%sp@-
   8:	2649           	moveal %a1,%a3
   a:	45f9 0000 0000 	lea 0 <___muldc3>,%a2
  10:	2f2f 006c      	movel %sp@(108),%sp@-
  14:	2f2f 006c      	movel %sp@(108),%sp@-
  18:	2f2f 0064      	movel %sp@(100),%sp@-
  1c:	2f2f 0064      	movel %sp@(100),%sp@-
  20:	4e92           	jsr %a2@
  22:	4fef 0010      	lea %sp@(16),%sp
  26:	2800           	movel %d0,%d4
  28:	2a01           	movel %d1,%d5
  2a:	2f44 0034      	movel %d4,%sp@(52)
  2e:	2f45 0038      	movel %d5,%sp@(56)
  32:	2f2f 0074      	movel %sp@(116),%sp@-
  36:	2f2f 0074      	movel %sp@(116),%sp@-
  3a:	2f2f 006c      	movel %sp@(108),%sp@-
  3e:	2f2f 006c      	movel %sp@(108),%sp@-
  42:	4e92           	jsr %a2@
  44:	4fef 0010      	lea %sp@(16),%sp
  48:	2400           	movel %d0,%d2
  4a:	2601           	movel %d1,%d3
  4c:	2f42 003c      	movel %d2,%sp@(60)
  50:	2f43 0040      	movel %d3,%sp@(64)
  54:	2f2f 0074      	movel %sp@(116),%sp@-
  58:	2f2f 0074      	movel %sp@(116),%sp@-
  5c:	2f2f 0064      	movel %sp@(100),%sp@-
  60:	2f2f 0064      	movel %sp@(100),%sp@-
  64:	4e92           	jsr %a2@
  66:	4fef 0010      	lea %sp@(16),%sp
  6a:	2840           	moveal %d0,%a4
  6c:	2a41           	moveal %d1,%a5
  6e:	2f4c 0044      	movel %a4,%sp@(68)
  72:	2f4d 0048      	movel %a5,%sp@(72)
  76:	2f2f 006c      	movel %sp@(108),%sp@-
  7a:	2f2f 006c      	movel %sp@(108),%sp@-
  7e:	2f2f 006c      	movel %sp@(108),%sp@-
  82:	2f2f 006c      	movel %sp@(108),%sp@-
  86:	4e92           	jsr %a2@
  88:	4fef 0010      	lea %sp@(16),%sp
  8c:	2c00           	movel %d0,%d6
  8e:	2e01           	movel %d1,%d7
  90:	2f46 004c      	movel %d6,%sp@(76)
  94:	2f47 0050      	movel %d7,%sp@(80)
  98:	2f03           	movel %d3,%sp@-
  9a:	2f02           	movel %d2,%sp@-
  9c:	2f05           	movel %d5,%sp@-
  9e:	2f04           	movel %d4,%sp@-
  a0:	4eb9 0000 0000 	jsr 0 <___muldc3>
  a6:	4fef 0010      	lea %sp@(16),%sp
  aa:	2400           	movel %d0,%d2
  ac:	2601           	movel %d1,%d3
  ae:	2f42 002c      	movel %d2,%sp@(44)
  b2:	2f43 0030      	movel %d3,%sp@(48)
  b6:	4df9 0000 0000 	lea 0 <___muldc3>,%fp
  bc:	2f07           	movel %d7,%sp@-
  be:	2f06           	movel %d6,%sp@-
  c0:	2f0d           	movel %a5,%sp@-
  c2:	2f0c           	movel %a4,%sp@-
  c4:	4e96           	jsr %fp@
  c6:	4fef 0010      	lea %sp@(16),%sp
  ca:	2800           	movel %d0,%d4
  cc:	2a01           	movel %d1,%d5
  ce:	2c04           	movel %d4,%d6
  d0:	2e05           	movel %d5,%d7
  d2:	49f9 0000 0000 	lea 0 <___muldc3>,%a4
  d8:	2f03           	movel %d3,%sp@-
  da:	2f02           	movel %d2,%sp@-
  dc:	2f03           	movel %d3,%sp@-
  de:	2f02           	movel %d2,%sp@-
  e0:	4e94           	jsr %a4@
  e2:	4fef 0010      	lea %sp@(16),%sp
  e6:	4a80           	tstl %d0
  e8:	661e           	bnes 108 <___muldc3+0x108>
  ea:	26af 002c      	movel %sp@(44),%a3@
  ee:	276f 0030 0004 	movel %sp@(48),%a3@(4)
  f4:	2746 0008      	movel %d6,%a3@(8)
  f8:	2747 000c      	movel %d7,%a3@(12)
  fc:	200b           	movel %a3,%d0
  fe:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 102:	4fef 0028      	lea %sp@(40),%sp
 106:	4e75           	rts
 108:	2f05           	movel %d5,%sp@-
 10a:	2f04           	movel %d4,%sp@-
 10c:	2f05           	movel %d5,%sp@-
 10e:	2f04           	movel %d4,%sp@-
 110:	4e94           	jsr %a4@
 112:	4fef 0010      	lea %sp@(16),%sp
 116:	4a80           	tstl %d0
 118:	67d0           	beqs ea <___muldc3+0xea>
 11a:	2f2f 005c      	movel %sp@(92),%sp@-
 11e:	2f2f 005c      	movel %sp@(92),%sp@-
 122:	2f2f 0064      	movel %sp@(100),%sp@-
 126:	2f2f 0064      	movel %sp@(100),%sp@-
 12a:	4eb9 0000 0000 	jsr 0 <___muldc3>
 130:	4fef 0010      	lea %sp@(16),%sp
 134:	2040           	moveal %d0,%a0
 136:	2f01           	movel %d1,%sp@-
 138:	2f08           	movel %a0,%sp@-
 13a:	2f01           	movel %d1,%sp@-
 13c:	2f08           	movel %a0,%sp@-
 13e:	4e94           	jsr %a4@
 140:	4fef 0010      	lea %sp@(16),%sp
 144:	4a80           	tstl %d0
 146:	671c           	beqs 164 <___muldc3+0x164>
 148:	2f2f 005c      	movel %sp@(92),%sp@-
 14c:	2f2f 005c      	movel %sp@(92),%sp@-
 150:	2f2f 0064      	movel %sp@(100),%sp@-
 154:	2f2f 0064      	movel %sp@(100),%sp@-
 158:	4e94           	jsr %a4@
 15a:	4fef 0010      	lea %sp@(16),%sp
 15e:	4a80           	tstl %d0
 160:	6700 03cc      	beqw 52e <___muldc3+0x52e>
 164:	2f2f 0064      	movel %sp@(100),%sp@-
 168:	2f2f 0064      	movel %sp@(100),%sp@-
 16c:	2f2f 006c      	movel %sp@(108),%sp@-
 170:	2f2f 006c      	movel %sp@(108),%sp@-
 174:	4eb9 0000 0000 	jsr 0 <___muldc3>
 17a:	4fef 0010      	lea %sp@(16),%sp
 17e:	2040           	moveal %d0,%a0
 180:	2f01           	movel %d1,%sp@-
 182:	2f08           	movel %a0,%sp@-
 184:	2f01           	movel %d1,%sp@-
 186:	2f08           	movel %a0,%sp@-
 188:	4e94           	jsr %a4@
 18a:	4fef 0010      	lea %sp@(16),%sp
 18e:	4a80           	tstl %d0
 190:	671c           	beqs 1ae <___muldc3+0x1ae>
 192:	2f2f 0064      	movel %sp@(100),%sp@-
 196:	2f2f 0064      	movel %sp@(100),%sp@-
 19a:	2f2f 006c      	movel %sp@(108),%sp@-
 19e:	2f2f 006c      	movel %sp@(108),%sp@-
 1a2:	4e94           	jsr %a4@
 1a4:	4fef 0010      	lea %sp@(16),%sp
 1a8:	4a80           	tstl %d0
 1aa:	6700 0560      	beqw 70c <___muldc3+0x70c>
 1ae:	4202           	clrb %d2
 1b0:	2f2f 006c      	movel %sp@(108),%sp@-
 1b4:	2f2f 006c      	movel %sp@(108),%sp@-
 1b8:	2f2f 0074      	movel %sp@(116),%sp@-
 1bc:	2f2f 0074      	movel %sp@(116),%sp@-
 1c0:	4eb9 0000 0000 	jsr 0 <___muldc3>
 1c6:	4fef 0010      	lea %sp@(16),%sp
 1ca:	2040           	moveal %d0,%a0
 1cc:	2f01           	movel %d1,%sp@-
 1ce:	2f08           	movel %a0,%sp@-
 1d0:	2f01           	movel %d1,%sp@-
 1d2:	2f08           	movel %a0,%sp@-
 1d4:	4e94           	jsr %a4@
 1d6:	4fef 0010      	lea %sp@(16),%sp
 1da:	4a80           	tstl %d0
 1dc:	671c           	beqs 1fa <___muldc3+0x1fa>
 1de:	2f2f 006c      	movel %sp@(108),%sp@-
 1e2:	2f2f 006c      	movel %sp@(108),%sp@-
 1e6:	2f2f 0074      	movel %sp@(116),%sp@-
 1ea:	2f2f 0074      	movel %sp@(116),%sp@-
 1ee:	4e94           	jsr %a4@
 1f0:	4fef 0010      	lea %sp@(16),%sp
 1f4:	4a80           	tstl %d0
 1f6:	6700 03fa      	beqw 5f2 <___muldc3+0x5f2>
 1fa:	2f2f 0074      	movel %sp@(116),%sp@-
 1fe:	2f2f 0074      	movel %sp@(116),%sp@-
 202:	2f2f 007c      	movel %sp@(124),%sp@-
 206:	2f2f 007c      	movel %sp@(124),%sp@-
 20a:	4eb9 0000 0000 	jsr 0 <___muldc3>
 210:	4fef 0010      	lea %sp@(16),%sp
 214:	2040           	moveal %d0,%a0
 216:	2f01           	movel %d1,%sp@-
 218:	2f08           	movel %a0,%sp@-
 21a:	2f01           	movel %d1,%sp@-
 21c:	2f08           	movel %a0,%sp@-
 21e:	4e94           	jsr %a4@
 220:	4fef 0010      	lea %sp@(16),%sp
 224:	4a80           	tstl %d0
 226:	671c           	beqs 244 <___muldc3+0x244>
 228:	2f2f 0074      	movel %sp@(116),%sp@-
 22c:	2f2f 0074      	movel %sp@(116),%sp@-
 230:	2f2f 007c      	movel %sp@(124),%sp@-
 234:	2f2f 007c      	movel %sp@(124),%sp@-
 238:	4e94           	jsr %a4@
 23a:	4fef 0010      	lea %sp@(16),%sp
 23e:	4a80           	tstl %d0
 240:	6700 04a6      	beqw 6e8 <___muldc3+0x6e8>
 244:	4a02           	tstb %d2
 246:	6600 019a      	bnew 3e2 <___muldc3+0x3e2>
 24a:	2f2f 0038      	movel %sp@(56),%sp@-
 24e:	2f2f 0038      	movel %sp@(56),%sp@-
 252:	2f2f 0040      	movel %sp@(64),%sp@-
 256:	2f2f 0040      	movel %sp@(64),%sp@-
 25a:	4eb9 0000 0000 	jsr 0 <___muldc3>
 260:	4fef 0010      	lea %sp@(16),%sp
 264:	2040           	moveal %d0,%a0
 266:	2f01           	movel %d1,%sp@-
 268:	2f08           	movel %a0,%sp@-
 26a:	2f01           	movel %d1,%sp@-
 26c:	2f08           	movel %a0,%sp@-
 26e:	4e94           	jsr %a4@
 270:	4fef 0010      	lea %sp@(16),%sp
 274:	4a80           	tstl %d0
 276:	671c           	beqs 294 <___muldc3+0x294>
 278:	2f2f 0038      	movel %sp@(56),%sp@-
 27c:	2f2f 0038      	movel %sp@(56),%sp@-
 280:	2f2f 0040      	movel %sp@(64),%sp@-
 284:	2f2f 0040      	movel %sp@(64),%sp@-
 288:	4e94           	jsr %a4@
 28a:	4fef 0010      	lea %sp@(16),%sp
 28e:	4a80           	tstl %d0
 290:	6700 00e0      	beqw 372 <___muldc3+0x372>
 294:	2f2f 0040      	movel %sp@(64),%sp@-
 298:	2f2f 0040      	movel %sp@(64),%sp@-
 29c:	2f2f 0048      	movel %sp@(72),%sp@-
 2a0:	2f2f 0048      	movel %sp@(72),%sp@-
 2a4:	4eb9 0000 0000 	jsr 0 <___muldc3>
 2aa:	4fef 0010      	lea %sp@(16),%sp
 2ae:	2040           	moveal %d0,%a0
 2b0:	2f01           	movel %d1,%sp@-
 2b2:	2f08           	movel %a0,%sp@-
 2b4:	2f01           	movel %d1,%sp@-
 2b6:	2f08           	movel %a0,%sp@-
 2b8:	4e94           	jsr %a4@
 2ba:	4fef 0010      	lea %sp@(16),%sp
 2be:	4a80           	tstl %d0
 2c0:	671c           	beqs 2de <___muldc3+0x2de>
 2c2:	2f2f 0040      	movel %sp@(64),%sp@-
 2c6:	2f2f 0040      	movel %sp@(64),%sp@-
 2ca:	2f2f 0048      	movel %sp@(72),%sp@-
 2ce:	2f2f 0048      	movel %sp@(72),%sp@-
 2d2:	4e94           	jsr %a4@
 2d4:	4fef 0010      	lea %sp@(16),%sp
 2d8:	4a80           	tstl %d0
 2da:	6700 0096      	beqw 372 <___muldc3+0x372>
 2de:	2f2f 0048      	movel %sp@(72),%sp@-
 2e2:	2f2f 0048      	movel %sp@(72),%sp@-
 2e6:	2f2f 0050      	movel %sp@(80),%sp@-
 2ea:	2f2f 0050      	movel %sp@(80),%sp@-
 2ee:	4eb9 0000 0000 	jsr 0 <___muldc3>
 2f4:	4fef 0010      	lea %sp@(16),%sp
 2f8:	2040           	moveal %d0,%a0
 2fa:	2f01           	movel %d1,%sp@-
 2fc:	2f08           	movel %a0,%sp@-
 2fe:	2f01           	movel %d1,%sp@-
 300:	2f08           	movel %a0,%sp@-
 302:	4e94           	jsr %a4@
 304:	4fef 0010      	lea %sp@(16),%sp
 308:	4a80           	tstl %d0
 30a:	671a           	beqs 326 <___muldc3+0x326>
 30c:	2f2f 0048      	movel %sp@(72),%sp@-
 310:	2f2f 0048      	movel %sp@(72),%sp@-
 314:	2f2f 0050      	movel %sp@(80),%sp@-
 318:	2f2f 0050      	movel %sp@(80),%sp@-
 31c:	4e94           	jsr %a4@
 31e:	4fef 0010      	lea %sp@(16),%sp
 322:	4a80           	tstl %d0
 324:	674c           	beqs 372 <___muldc3+0x372>
 326:	2f2f 0050      	movel %sp@(80),%sp@-
 32a:	2f2f 0050      	movel %sp@(80),%sp@-
 32e:	2f2f 0058      	movel %sp@(88),%sp@-
 332:	2f2f 0058      	movel %sp@(88),%sp@-
 336:	4eb9 0000 0000 	jsr 0 <___muldc3>
 33c:	4fef 0010      	lea %sp@(16),%sp
 340:	2040           	moveal %d0,%a0
 342:	2f01           	movel %d1,%sp@-
 344:	2f08           	movel %a0,%sp@-
 346:	2f01           	movel %d1,%sp@-
 348:	2f08           	movel %a0,%sp@-
 34a:	4e94           	jsr %a4@
 34c:	4fef 0010      	lea %sp@(16),%sp
 350:	4a80           	tstl %d0
 352:	6700 fd96      	beqw ea <___muldc3+0xea>
 356:	2f2f 0050      	movel %sp@(80),%sp@-
 35a:	2f2f 0050      	movel %sp@(80),%sp@-
 35e:	2f2f 0058      	movel %sp@(88),%sp@-
 362:	2f2f 0058      	movel %sp@(88),%sp@-
 366:	4e94           	jsr %a4@
 368:	4fef 0010      	lea %sp@(16),%sp
 36c:	4a80           	tstl %d0
 36e:	6600 fd7a      	bnew ea <___muldc3+0xea>
 372:	2f2f 005c      	movel %sp@(92),%sp@-
 376:	2f2f 005c      	movel %sp@(92),%sp@-
 37a:	2f2f 0064      	movel %sp@(100),%sp@-
 37e:	2f2f 0064      	movel %sp@(100),%sp@-
 382:	4e94           	jsr %a4@
 384:	4fef 0010      	lea %sp@(16),%sp
 388:	4a80           	tstl %d0
 38a:	6600 0184      	bnew 510 <___muldc3+0x510>
 38e:	2f2f 0064      	movel %sp@(100),%sp@-
 392:	2f2f 0064      	movel %sp@(100),%sp@-
 396:	2f2f 006c      	movel %sp@(108),%sp@-
 39a:	2f2f 006c      	movel %sp@(108),%sp@-
 39e:	4e94           	jsr %a4@
 3a0:	4fef 0010      	lea %sp@(16),%sp
 3a4:	4a80           	tstl %d0
 3a6:	6600 014a      	bnew 4f2 <___muldc3+0x4f2>
 3aa:	2f2f 006c      	movel %sp@(108),%sp@-
 3ae:	2f2f 006c      	movel %sp@(108),%sp@-
 3b2:	2f2f 0074      	movel %sp@(116),%sp@-
 3b6:	2f2f 0074      	movel %sp@(116),%sp@-
 3ba:	4e94           	jsr %a4@
 3bc:	4fef 0010      	lea %sp@(16),%sp
 3c0:	4a80           	tstl %d0
 3c2:	6600 0110      	bnew 4d4 <___muldc3+0x4d4>
 3c6:	2f2f 0074      	movel %sp@(116),%sp@-
 3ca:	2f2f 0074      	movel %sp@(116),%sp@-
 3ce:	2f2f 007c      	movel %sp@(124),%sp@-
 3d2:	2f2f 007c      	movel %sp@(124),%sp@-
 3d6:	4e94           	jsr %a4@
 3d8:	4fef 0010      	lea %sp@(16),%sp
 3dc:	4a80           	tstl %d0
 3de:	6600 00d6      	bnew 4b6 <___muldc3+0x4b6>
 3e2:	2f2f 006c      	movel %sp@(108),%sp@-
 3e6:	2f2f 006c      	movel %sp@(108),%sp@-
 3ea:	2f2f 0064      	movel %sp@(100),%sp@-
 3ee:	2f2f 0064      	movel %sp@(100),%sp@-
 3f2:	4e92           	jsr %a2@
 3f4:	4fef 0010      	lea %sp@(16),%sp
 3f8:	2400           	movel %d0,%d2
 3fa:	2601           	movel %d1,%d3
 3fc:	2f2f 0074      	movel %sp@(116),%sp@-
 400:	2f2f 0074      	movel %sp@(116),%sp@-
 404:	2f2f 006c      	movel %sp@(108),%sp@-
 408:	2f2f 006c      	movel %sp@(108),%sp@-
 40c:	4e92           	jsr %a2@
 40e:	4fef 000c      	lea %sp@(12),%sp
 412:	2e81           	movel %d1,%sp@
 414:	2f00           	movel %d0,%sp@-
 416:	2f03           	movel %d3,%sp@-
 418:	2f02           	movel %d2,%sp@-
 41a:	4eb9 0000 0000 	jsr 0 <___muldc3>
 420:	4fef 000c      	lea %sp@(12),%sp
 424:	4297           	clrl %sp@
 426:	2f3c 7ff0 0000 	movel #2146435072,%sp@-
 42c:	2f01           	movel %d1,%sp@-
 42e:	2f00           	movel %d0,%sp@-
 430:	4e92           	jsr %a2@
 432:	4fef 0010      	lea %sp@(16),%sp
 436:	2040           	moveal %d0,%a0
 438:	2008           	movel %a0,%d0
 43a:	2f40 002c      	movel %d0,%sp@(44)
 43e:	2f41 0030      	movel %d1,%sp@(48)
 442:	2f2f 0074      	movel %sp@(116),%sp@-
 446:	2f2f 0074      	movel %sp@(116),%sp@-
 44a:	2f2f 0064      	movel %sp@(100),%sp@-
 44e:	2f2f 0064      	movel %sp@(100),%sp@-
 452:	4e92           	jsr %a2@
 454:	4fef 0010      	lea %sp@(16),%sp
 458:	2400           	movel %d0,%d2
 45a:	2601           	movel %d1,%d3
 45c:	2f2f 006c      	movel %sp@(108),%sp@-
 460:	2f2f 006c      	movel %sp@(108),%sp@-
 464:	2f2f 006c      	movel %sp@(108),%sp@-
 468:	2f2f 006c      	movel %sp@(108),%sp@-
 46c:	4e92           	jsr %a2@
 46e:	4fef 000c      	lea %sp@(12),%sp
 472:	2e81           	movel %d1,%sp@
 474:	2f00           	movel %d0,%sp@-
 476:	2f03           	movel %d3,%sp@-
 478:	2f02           	movel %d2,%sp@-
 47a:	4e96           	jsr %fp@
 47c:	4fef 000c      	lea %sp@(12),%sp
 480:	4297           	clrl %sp@
 482:	2f3c 7ff0 0000 	movel #2146435072,%sp@-
 488:	2f01           	movel %d1,%sp@-
 48a:	2f00           	movel %d0,%sp@-
 48c:	4e92           	jsr %a2@
 48e:	4fef 0010      	lea %sp@(16),%sp
 492:	2240           	moveal %d0,%a1
 494:	2c09           	movel %a1,%d6
 496:	2e01           	movel %d1,%d7
 498:	26af 002c      	movel %sp@(44),%a3@
 49c:	276f 0030 0004 	movel %sp@(48),%a3@(4)
 4a2:	2746 0008      	movel %d6,%a3@(8)
 4a6:	2747 000c      	movel %d7,%a3@(12)
 4aa:	200b           	movel %a3,%d0
 4ac:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 4b0:	4fef 0028      	lea %sp@(40),%sp
 4b4:	4e75           	rts
 4b6:	7000           	moveq #0,%d0
 4b8:	222f 0070      	movel %sp@(112),%d1
 4bc:	6c06           	bges 4c4 <___muldc3+0x4c4>
 4be:	203c 8000 0000 	movel #-2147483648,%d0
 4c4:	93c9           	subal %a1,%a1
 4c6:	2209           	movel %a1,%d1
 4c8:	2f40 0070      	movel %d0,%sp@(112)
 4cc:	2f41 0074      	movel %d1,%sp@(116)
 4d0:	6000 ff10      	braw 3e2 <___muldc3+0x3e2>
 4d4:	7000           	moveq #0,%d0
 4d6:	222f 0068      	movel %sp@(104),%d1
 4da:	6c06           	bges 4e2 <___muldc3+0x4e2>
 4dc:	203c 8000 0000 	movel #-2147483648,%d0
 4e2:	93c9           	subal %a1,%a1
 4e4:	2209           	movel %a1,%d1
 4e6:	2f40 0068      	movel %d0,%sp@(104)
 4ea:	2f41 006c      	movel %d1,%sp@(108)
 4ee:	6000 fed6      	braw 3c6 <___muldc3+0x3c6>
 4f2:	7000           	moveq #0,%d0
 4f4:	222f 0060      	movel %sp@(96),%d1
 4f8:	6c06           	bges 500 <___muldc3+0x500>
 4fa:	203c 8000 0000 	movel #-2147483648,%d0
 500:	93c9           	subal %a1,%a1
 502:	2209           	movel %a1,%d1
 504:	2f40 0060      	movel %d0,%sp@(96)
 508:	2f41 0064      	movel %d1,%sp@(100)
 50c:	6000 fe9c      	braw 3aa <___muldc3+0x3aa>
 510:	7000           	moveq #0,%d0
 512:	222f 0058      	movel %sp@(88),%d1
 516:	6c06           	bges 51e <___muldc3+0x51e>
 518:	203c 8000 0000 	movel #-2147483648,%d0
 51e:	93c9           	subal %a1,%a1
 520:	2209           	movel %a1,%d1
 522:	2f40 0058      	movel %d0,%sp@(88)
 526:	2f41 005c      	movel %d1,%sp@(92)
 52a:	6000 fe62      	braw 38e <___muldc3+0x38e>
 52e:	203c 3ff0 0000 	movel #1072693248,%d0
 534:	222f 0058      	movel %sp@(88),%d1
 538:	6c06           	bges 540 <___muldc3+0x540>
 53a:	203c bff0 0000 	movel #-1074790400,%d0
 540:	93c9           	subal %a1,%a1
 542:	2209           	movel %a1,%d1
 544:	2f40 0058      	movel %d0,%sp@(88)
 548:	2f41 005c      	movel %d1,%sp@(92)
 54c:	2f2f 0064      	movel %sp@(100),%sp@-
 550:	2f2f 0064      	movel %sp@(100),%sp@-
 554:	2f2f 006c      	movel %sp@(108),%sp@-
 558:	2f2f 006c      	movel %sp@(108),%sp@-
 55c:	4eb9 0000 0000 	jsr 0 <___muldc3>
 562:	4fef 0010      	lea %sp@(16),%sp
 566:	2040           	moveal %d0,%a0
 568:	2f01           	movel %d1,%sp@-
 56a:	2f08           	movel %a0,%sp@-
 56c:	2f01           	movel %d1,%sp@-
 56e:	2f08           	movel %a0,%sp@-
 570:	4e94           	jsr %a4@
 572:	4fef 0010      	lea %sp@(16),%sp
 576:	4a80           	tstl %d0
 578:	671c           	beqs 596 <___muldc3+0x596>
 57a:	2f2f 0064      	movel %sp@(100),%sp@-
 57e:	2f2f 0064      	movel %sp@(100),%sp@-
 582:	2f2f 006c      	movel %sp@(108),%sp@-
 586:	2f2f 006c      	movel %sp@(108),%sp@-
 58a:	4e94           	jsr %a4@
 58c:	4fef 0010      	lea %sp@(16),%sp
 590:	4a80           	tstl %d0
 592:	6700 0192      	beqw 726 <___muldc3+0x726>
 596:	7000           	moveq #0,%d0
 598:	0880 001f      	bclr #31,%d0
 59c:	222f 0060      	movel %sp@(96),%d1
 5a0:	6c06           	bges 5a8 <___muldc3+0x5a8>
 5a2:	0680 8000 0000 	addil #-2147483648,%d0
 5a8:	93c9           	subal %a1,%a1
 5aa:	2209           	movel %a1,%d1
 5ac:	2f40 0060      	movel %d0,%sp@(96)
 5b0:	2f41 0064      	movel %d1,%sp@(100)
 5b4:	2f2f 006c      	movel %sp@(108),%sp@-
 5b8:	2f2f 006c      	movel %sp@(108),%sp@-
 5bc:	2f2f 0074      	movel %sp@(116),%sp@-
 5c0:	2f2f 0074      	movel %sp@(116),%sp@-
 5c4:	4e94           	jsr %a4@
 5c6:	4fef 0010      	lea %sp@(16),%sp
 5ca:	4a80           	tstl %d0
 5cc:	6600 0182      	bnew 750 <___muldc3+0x750>
 5d0:	2f2f 0074      	movel %sp@(116),%sp@-
 5d4:	2f2f 0074      	movel %sp@(116),%sp@-
 5d8:	2f2f 007c      	movel %sp@(124),%sp@-
 5dc:	2f2f 007c      	movel %sp@(124),%sp@-
 5e0:	4e94           	jsr %a4@
 5e2:	4fef 0010      	lea %sp@(16),%sp
 5e6:	4a80           	tstl %d0
 5e8:	6600 0146      	bnew 730 <___muldc3+0x730>
 5ec:	7401           	moveq #1,%d2
 5ee:	6000 fbc0      	braw 1b0 <___muldc3+0x1b0>
 5f2:	203c 3ff0 0000 	movel #1072693248,%d0
 5f8:	222f 0068      	movel %sp@(104),%d1
 5fc:	6c06           	bges 604 <___muldc3+0x604>
 5fe:	203c bff0 0000 	movel #-1074790400,%d0
 604:	93c9           	subal %a1,%a1
 606:	2209           	movel %a1,%d1
 608:	2f40 0068      	movel %d0,%sp@(104)
 60c:	2f41 006c      	movel %d1,%sp@(108)
 610:	2f2f 0074      	movel %sp@(116),%sp@-
 614:	2f2f 0074      	movel %sp@(116),%sp@-
 618:	2f2f 007c      	movel %sp@(124),%sp@-
 61c:	2f2f 007c      	movel %sp@(124),%sp@-
 620:	4eb9 0000 0000 	jsr 0 <___muldc3>
 626:	4fef 0010      	lea %sp@(16),%sp
 62a:	2040           	moveal %d0,%a0
 62c:	2f01           	movel %d1,%sp@-
 62e:	2f08           	movel %a0,%sp@-
 630:	2f01           	movel %d1,%sp@-
 632:	2f08           	movel %a0,%sp@-
 634:	4e94           	jsr %a4@
 636:	4fef 0010      	lea %sp@(16),%sp
 63a:	4a80           	tstl %d0
 63c:	671c           	beqs 65a <___muldc3+0x65a>
 63e:	2f2f 0074      	movel %sp@(116),%sp@-
 642:	2f2f 0074      	movel %sp@(116),%sp@-
 646:	2f2f 007c      	movel %sp@(124),%sp@-
 64a:	2f2f 007c      	movel %sp@(124),%sp@-
 64e:	4e94           	jsr %a4@
 650:	4fef 0010      	lea %sp@(16),%sp
 654:	4a80           	tstl %d0
 656:	6700 00aa      	beqw 702 <___muldc3+0x702>
 65a:	7000           	moveq #0,%d0
 65c:	0880 001f      	bclr #31,%d0
 660:	222f 0070      	movel %sp@(112),%d1
 664:	6c06           	bges 66c <___muldc3+0x66c>
 666:	0680 8000 0000 	addil #-2147483648,%d0
 66c:	93c9           	subal %a1,%a1
 66e:	2209           	movel %a1,%d1
 670:	2f40 0070      	movel %d0,%sp@(112)
 674:	2f41 0074      	movel %d1,%sp@(116)
 678:	2f2f 005c      	movel %sp@(92),%sp@-
 67c:	2f2f 005c      	movel %sp@(92),%sp@-
 680:	2f2f 0064      	movel %sp@(100),%sp@-
 684:	2f2f 0064      	movel %sp@(100),%sp@-
 688:	4e94           	jsr %a4@
 68a:	4fef 0010      	lea %sp@(16),%sp
 68e:	4a80           	tstl %d0
 690:	663a           	bnes 6cc <___muldc3+0x6cc>
 692:	2f2f 0064      	movel %sp@(100),%sp@-
 696:	2f2f 0064      	movel %sp@(100),%sp@-
 69a:	2f2f 006c      	movel %sp@(108),%sp@-
 69e:	2f2f 006c      	movel %sp@(108),%sp@-
 6a2:	4e94           	jsr %a4@
 6a4:	4fef 0010      	lea %sp@(16),%sp
 6a8:	4a80           	tstl %d0
 6aa:	6700 fd36      	beqw 3e2 <___muldc3+0x3e2>
 6ae:	7000           	moveq #0,%d0
 6b0:	222f 0060      	movel %sp@(96),%d1
 6b4:	6c06           	bges 6bc <___muldc3+0x6bc>
 6b6:	203c 8000 0000 	movel #-2147483648,%d0
 6bc:	93c9           	subal %a1,%a1
 6be:	2209           	movel %a1,%d1
 6c0:	2f40 0060      	movel %d0,%sp@(96)
 6c4:	2f41 0064      	movel %d1,%sp@(100)
 6c8:	6000 fd18      	braw 3e2 <___muldc3+0x3e2>
 6cc:	7000           	moveq #0,%d0
 6ce:	222f 0058      	movel %sp@(88),%d1
 6d2:	6c06           	bges 6da <___muldc3+0x6da>
 6d4:	203c 8000 0000 	movel #-2147483648,%d0
 6da:	93c9           	subal %a1,%a1
 6dc:	2209           	movel %a1,%d1
 6de:	2f40 0058      	movel %d0,%sp@(88)
 6e2:	2f41 005c      	movel %d1,%sp@(92)
 6e6:	60aa           	bras 692 <___muldc3+0x692>
 6e8:	7000           	moveq #0,%d0
 6ea:	222f 0068      	movel %sp@(104),%d1
 6ee:	6c06           	bges 6f6 <___muldc3+0x6f6>
 6f0:	203c 8000 0000 	movel #-2147483648,%d0
 6f6:	93c9           	subal %a1,%a1
 6f8:	2209           	movel %a1,%d1
 6fa:	2f40 0068      	movel %d0,%sp@(104)
 6fe:	2f41 006c      	movel %d1,%sp@(108)
 702:	203c 3ff0 0000 	movel #1072693248,%d0
 708:	6000 ff52      	braw 65c <___muldc3+0x65c>
 70c:	7000           	moveq #0,%d0
 70e:	222f 0058      	movel %sp@(88),%d1
 712:	6c06           	bges 71a <___muldc3+0x71a>
 714:	203c 8000 0000 	movel #-2147483648,%d0
 71a:	93c9           	subal %a1,%a1
 71c:	2209           	movel %a1,%d1
 71e:	2f40 0058      	movel %d0,%sp@(88)
 722:	2f41 005c      	movel %d1,%sp@(92)
 726:	203c 3ff0 0000 	movel #1072693248,%d0
 72c:	6000 fe6a      	braw 598 <___muldc3+0x598>
 730:	7000           	moveq #0,%d0
 732:	222f 0070      	movel %sp@(112),%d1
 736:	6c06           	bges 73e <___muldc3+0x73e>
 738:	203c 8000 0000 	movel #-2147483648,%d0
 73e:	93c9           	subal %a1,%a1
 740:	2209           	movel %a1,%d1
 742:	2f40 0070      	movel %d0,%sp@(112)
 746:	2f41 0074      	movel %d1,%sp@(116)
 74a:	7401           	moveq #1,%d2
 74c:	6000 fa62      	braw 1b0 <___muldc3+0x1b0>
 750:	7000           	moveq #0,%d0
 752:	222f 0068      	movel %sp@(104),%d1
 756:	6c06           	bges 75e <___muldc3+0x75e>
 758:	203c 8000 0000 	movel #-2147483648,%d0
 75e:	93c9           	subal %a1,%a1
 760:	2209           	movel %a1,%d1
 762:	2f40 0068      	movel %d0,%sp@(104)
 766:	2f41 006c      	movel %d1,%sp@(108)
 76a:	6000 fe64      	braw 5d0 <___muldc3+0x5d0>
	...

_mulxc3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___mulxc3-0x3c>:
   0:	3fff           	.short 0x3fff
   2:	0000 8000      	orib #0,%d0
	...
  16:	0000 bfff      	orib #-1,%d0
  1a:	0000 8000      	orib #0,%d0
  1e:	0000 0000      	orib #0,%d0
  22:	0000 8000      	orib #0,%d0
	...
  2e:	0000 7fff      	orib #-1,%d0
  32:	0000 8000      	orib #0,%d0
  36:	0000 0000      	orib #0,%d0
	...

0000003c <___mulxc3>:
  3c:	4fef ff88      	lea %sp@(-120),%sp
  40:	48e7 3f3e      	moveml %d2-%d7/%a2-%fp,%sp@-
  44:	2649           	moveal %a1,%a3
  46:	45f9 0000 0000 	lea 0 <___mulxc3-0x3c>,%a2
  4c:	2f2f 00c8      	movel %sp@(200),%sp@-
  50:	2f2f 00c8      	movel %sp@(200),%sp@-
  54:	2f2f 00c8      	movel %sp@(200),%sp@-
  58:	2f2f 00bc      	movel %sp@(188),%sp@-
  5c:	2f2f 00bc      	movel %sp@(188),%sp@-
  60:	2f2f 00bc      	movel %sp@(188),%sp@-
  64:	43ef 00b0      	lea %sp@(176),%a1
  68:	4e92           	jsr %a2@
  6a:	4fef 0018      	lea %sp@(24),%sp
  6e:	2f6f 0098 002c 	movel %sp@(152),%sp@(44)
  74:	2f6f 009c 0030 	movel %sp@(156),%sp@(48)
  7a:	2f6f 00a0 0034 	movel %sp@(160),%sp@(52)
  80:	2f2f 00d4      	movel %sp@(212),%sp@-
  84:	2f2f 00d4      	movel %sp@(212),%sp@-
  88:	2f2f 00d4      	movel %sp@(212),%sp@-
  8c:	2f2f 00c8      	movel %sp@(200),%sp@-
  90:	2f2f 00c8      	movel %sp@(200),%sp@-
  94:	2f2f 00c8      	movel %sp@(200),%sp@-
  98:	43ef 00b0      	lea %sp@(176),%a1
  9c:	4e92           	jsr %a2@
  9e:	4fef 0018      	lea %sp@(24),%sp
  a2:	2f6f 0098 0038 	movel %sp@(152),%sp@(56)
  a8:	2f6f 009c 003c 	movel %sp@(156),%sp@(60)
  ae:	2f6f 00a0 0040 	movel %sp@(160),%sp@(64)
  b4:	2f2f 00d4      	movel %sp@(212),%sp@-
  b8:	2f2f 00d4      	movel %sp@(212),%sp@-
  bc:	2f2f 00d4      	movel %sp@(212),%sp@-
  c0:	2f2f 00bc      	movel %sp@(188),%sp@-
  c4:	2f2f 00bc      	movel %sp@(188),%sp@-
  c8:	2f2f 00bc      	movel %sp@(188),%sp@-
  cc:	43ef 00b0      	lea %sp@(176),%a1
  d0:	4e92           	jsr %a2@
  d2:	4fef 0018      	lea %sp@(24),%sp
  d6:	2f6f 0098 0044 	movel %sp@(152),%sp@(68)
  dc:	2f6f 009c 0048 	movel %sp@(156),%sp@(72)
  e2:	2f6f 00a0 004c 	movel %sp@(160),%sp@(76)
  e8:	2f2f 00c8      	movel %sp@(200),%sp@-
  ec:	2f2f 00c8      	movel %sp@(200),%sp@-
  f0:	2f2f 00c8      	movel %sp@(200),%sp@-
  f4:	2f2f 00c8      	movel %sp@(200),%sp@-
  f8:	2f2f 00c8      	movel %sp@(200),%sp@-
  fc:	2f2f 00c8      	movel %sp@(200),%sp@-
 100:	43ef 00b0      	lea %sp@(176),%a1
 104:	4e92           	jsr %a2@
 106:	4fef 0018      	lea %sp@(24),%sp
 10a:	286f 0098      	moveal %sp@(152),%a4
 10e:	2a6f 009c      	moveal %sp@(156),%a5
 112:	2c6f 00a0      	moveal %sp@(160),%fp
 116:	2c3c 0000 0000 	movel #0,%d6
 11c:	2f2f 0040      	movel %sp@(64),%sp@-
 120:	2f2f 0040      	movel %sp@(64),%sp@-
 124:	2f2f 0040      	movel %sp@(64),%sp@-
 128:	2f2f 0040      	movel %sp@(64),%sp@-
 12c:	2f2f 0040      	movel %sp@(64),%sp@-
 130:	2f2f 0040      	movel %sp@(64),%sp@-
 134:	43ef 00b0      	lea %sp@(176),%a1
 138:	2046           	moveal %d6,%a0
 13a:	4e90           	jsr %a0@
 13c:	4fef 0018      	lea %sp@(24),%sp
 140:	262f 0098      	movel %sp@(152),%d3
 144:	282f 009c      	movel %sp@(156),%d4
 148:	2a2f 00a0      	movel %sp@(160),%d5
 14c:	2e3c 0000 0000 	movel #0,%d7
 152:	2f0e           	movel %fp,%sp@-
 154:	2f0d           	movel %a5,%sp@-
 156:	2f0c           	movel %a4,%sp@-
 158:	2f2f 0058      	movel %sp@(88),%sp@-
 15c:	2f2f 0058      	movel %sp@(88),%sp@-
 160:	2f2f 0058      	movel %sp@(88),%sp@-
 164:	43ef 00b0      	lea %sp@(176),%a1
 168:	2047           	moveal %d7,%a0
 16a:	4e90           	jsr %a0@
 16c:	4fef 0018      	lea %sp@(24),%sp
 170:	2f6f 0098 0050 	movel %sp@(152),%sp@(80)
 176:	2f6f 009c 0054 	movel %sp@(156),%sp@(84)
 17c:	2f6f 00a0 0058 	movel %sp@(160),%sp@(88)
 182:	243c 0000 0000 	movel #0,%d2
 188:	2f05           	movel %d5,%sp@-
 18a:	2f04           	movel %d4,%sp@-
 18c:	2f03           	movel %d3,%sp@-
 18e:	2f05           	movel %d5,%sp@-
 190:	2f04           	movel %d4,%sp@-
 192:	2f03           	movel %d3,%sp@-
 194:	2042           	moveal %d2,%a0
 196:	4e90           	jsr %a0@
 198:	4fef 0018      	lea %sp@(24),%sp
 19c:	4a80           	tstl %d0
 19e:	6628           	bnes 1c8 <___mulxc3+0x18c>
 1a0:	2683           	movel %d3,%a3@
 1a2:	2744 0004      	movel %d4,%a3@(4)
 1a6:	2745 0008      	movel %d5,%a3@(8)
 1aa:	276f 0050 000c 	movel %sp@(80),%a3@(12)
 1b0:	276f 0054 0010 	movel %sp@(84),%a3@(16)
 1b6:	276f 0058 0014 	movel %sp@(88),%a3@(20)
 1bc:	200b           	movel %a3,%d0
 1be:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 1c2:	4fef 0078      	lea %sp@(120),%sp
 1c6:	4e75           	rts
 1c8:	2f2f 0058      	movel %sp@(88),%sp@-
 1cc:	2f2f 0058      	movel %sp@(88),%sp@-
 1d0:	2f2f 0058      	movel %sp@(88),%sp@-
 1d4:	2f2f 0064      	movel %sp@(100),%sp@-
 1d8:	2f2f 0064      	movel %sp@(100),%sp@-
 1dc:	2f2f 0064      	movel %sp@(100),%sp@-
 1e0:	2042           	moveal %d2,%a0
 1e2:	4e90           	jsr %a0@
 1e4:	4fef 0018      	lea %sp@(24),%sp
 1e8:	4a80           	tstl %d0
 1ea:	67b4           	beqs 1a0 <___mulxc3+0x164>
 1ec:	2f2f 00b0      	movel %sp@(176),%sp@-
 1f0:	2f2f 00b0      	movel %sp@(176),%sp@-
 1f4:	2f2f 00b0      	movel %sp@(176),%sp@-
 1f8:	2f2f 00bc      	movel %sp@(188),%sp@-
 1fc:	2f2f 00bc      	movel %sp@(188),%sp@-
 200:	2f2f 00bc      	movel %sp@(188),%sp@-
 204:	43ef 00b0      	lea %sp@(176),%a1
 208:	2046           	moveal %d6,%a0
 20a:	4e90           	jsr %a0@
 20c:	4fef 0018      	lea %sp@(24),%sp
 210:	2f2f 00a0      	movel %sp@(160),%sp@-
 214:	2f2f 00a0      	movel %sp@(160),%sp@-
 218:	2f2f 00a0      	movel %sp@(160),%sp@-
 21c:	2f2f 00ac      	movel %sp@(172),%sp@-
 220:	2f2f 00ac      	movel %sp@(172),%sp@-
 224:	2f2f 00ac      	movel %sp@(172),%sp@-
 228:	2042           	moveal %d2,%a0
 22a:	4e90           	jsr %a0@
 22c:	4fef 0018      	lea %sp@(24),%sp
 230:	4a80           	tstl %d0
 232:	6726           	beqs 25a <___mulxc3+0x21e>
 234:	2f2f 00b0      	movel %sp@(176),%sp@-
 238:	2f2f 00b0      	movel %sp@(176),%sp@-
 23c:	2f2f 00b0      	movel %sp@(176),%sp@-
 240:	2f2f 00bc      	movel %sp@(188),%sp@-
 244:	2f2f 00bc      	movel %sp@(188),%sp@-
 248:	2f2f 00bc      	movel %sp@(188),%sp@-
 24c:	2042           	moveal %d2,%a0
 24e:	4e90           	jsr %a0@
 250:	4fef 0018      	lea %sp@(24),%sp
 254:	4a80           	tstl %d0
 256:	6700 05ae      	beqw 806 <___mulxc3+0x7ca>
 25a:	2f2f 00bc      	movel %sp@(188),%sp@-
 25e:	2f2f 00bc      	movel %sp@(188),%sp@-
 262:	2f2f 00bc      	movel %sp@(188),%sp@-
 266:	2f2f 00c8      	movel %sp@(200),%sp@-
 26a:	2f2f 00c8      	movel %sp@(200),%sp@-
 26e:	2f2f 00c8      	movel %sp@(200),%sp@-
 272:	43ef 00b0      	lea %sp@(176),%a1
 276:	2046           	moveal %d6,%a0
 278:	4e90           	jsr %a0@
 27a:	4fef 0018      	lea %sp@(24),%sp
 27e:	2f2f 00a0      	movel %sp@(160),%sp@-
 282:	2f2f 00a0      	movel %sp@(160),%sp@-
 286:	2f2f 00a0      	movel %sp@(160),%sp@-
 28a:	2f2f 00ac      	movel %sp@(172),%sp@-
 28e:	2f2f 00ac      	movel %sp@(172),%sp@-
 292:	2f2f 00ac      	movel %sp@(172),%sp@-
 296:	2042           	moveal %d2,%a0
 298:	4e90           	jsr %a0@
 29a:	4fef 0018      	lea %sp@(24),%sp
 29e:	4a80           	tstl %d0
 2a0:	6726           	beqs 2c8 <___mulxc3+0x28c>
 2a2:	2f2f 00bc      	movel %sp@(188),%sp@-
 2a6:	2f2f 00bc      	movel %sp@(188),%sp@-
 2aa:	2f2f 00bc      	movel %sp@(188),%sp@-
 2ae:	2f2f 00c8      	movel %sp@(200),%sp@-
 2b2:	2f2f 00c8      	movel %sp@(200),%sp@-
 2b6:	2f2f 00c8      	movel %sp@(200),%sp@-
 2ba:	2042           	moveal %d2,%a0
 2bc:	4e90           	jsr %a0@
 2be:	4fef 0018      	lea %sp@(24),%sp
 2c2:	4a80           	tstl %d0
 2c4:	6700 086c      	beqw b32 <___mulxc3+0xaf6>
 2c8:	422f 005c      	clrb %sp@(92)
 2cc:	2f2f 00c8      	movel %sp@(200),%sp@-
 2d0:	2f2f 00c8      	movel %sp@(200),%sp@-
 2d4:	2f2f 00c8      	movel %sp@(200),%sp@-
 2d8:	2f2f 00d4      	movel %sp@(212),%sp@-
 2dc:	2f2f 00d4      	movel %sp@(212),%sp@-
 2e0:	2f2f 00d4      	movel %sp@(212),%sp@-
 2e4:	43ef 00b0      	lea %sp@(176),%a1
 2e8:	2046           	moveal %d6,%a0
 2ea:	4e90           	jsr %a0@
 2ec:	4fef 0018      	lea %sp@(24),%sp
 2f0:	2f2f 00a0      	movel %sp@(160),%sp@-
 2f4:	2f2f 00a0      	movel %sp@(160),%sp@-
 2f8:	2f2f 00a0      	movel %sp@(160),%sp@-
 2fc:	2f2f 00ac      	movel %sp@(172),%sp@-
 300:	2f2f 00ac      	movel %sp@(172),%sp@-
 304:	2f2f 00ac      	movel %sp@(172),%sp@-
 308:	2042           	moveal %d2,%a0
 30a:	4e90           	jsr %a0@
 30c:	4fef 0018      	lea %sp@(24),%sp
 310:	4a80           	tstl %d0
 312:	6726           	beqs 33a <___mulxc3+0x2fe>
 314:	2f2f 00c8      	movel %sp@(200),%sp@-
 318:	2f2f 00c8      	movel %sp@(200),%sp@-
 31c:	2f2f 00c8      	movel %sp@(200),%sp@-
 320:	2f2f 00d4      	movel %sp@(212),%sp@-
 324:	2f2f 00d4      	movel %sp@(212),%sp@-
 328:	2f2f 00d4      	movel %sp@(212),%sp@-
 32c:	2042           	moveal %d2,%a0
 32e:	4e90           	jsr %a0@
 330:	4fef 0018      	lea %sp@(24),%sp
 334:	4a80           	tstl %d0
 336:	6700 0634      	beqw 96c <___mulxc3+0x930>
 33a:	2f2f 00d4      	movel %sp@(212),%sp@-
 33e:	2f2f 00d4      	movel %sp@(212),%sp@-
 342:	2f2f 00d4      	movel %sp@(212),%sp@-
 346:	2f2f 00e0      	movel %sp@(224),%sp@-
 34a:	2f2f 00e0      	movel %sp@(224),%sp@-
 34e:	2f2f 00e0      	movel %sp@(224),%sp@-
 352:	43ef 00b0      	lea %sp@(176),%a1
 356:	2046           	moveal %d6,%a0
 358:	4e90           	jsr %a0@
 35a:	4fef 0018      	lea %sp@(24),%sp
 35e:	2f2f 00a0      	movel %sp@(160),%sp@-
 362:	2f2f 00a0      	movel %sp@(160),%sp@-
 366:	2f2f 00a0      	movel %sp@(160),%sp@-
 36a:	2f2f 00ac      	movel %sp@(172),%sp@-
 36e:	2f2f 00ac      	movel %sp@(172),%sp@-
 372:	2f2f 00ac      	movel %sp@(172),%sp@-
 376:	2042           	moveal %d2,%a0
 378:	4e90           	jsr %a0@
 37a:	4fef 0018      	lea %sp@(24),%sp
 37e:	4a80           	tstl %d0
 380:	6726           	beqs 3a8 <___mulxc3+0x36c>
 382:	2f2f 00d4      	movel %sp@(212),%sp@-
 386:	2f2f 00d4      	movel %sp@(212),%sp@-
 38a:	2f2f 00d4      	movel %sp@(212),%sp@-
 38e:	2f2f 00e0      	movel %sp@(224),%sp@-
 392:	2f2f 00e0      	movel %sp@(224),%sp@-
 396:	2f2f 00e0      	movel %sp@(224),%sp@-
 39a:	2042           	moveal %d2,%a0
 39c:	4e90           	jsr %a0@
 39e:	4fef 0018      	lea %sp@(24),%sp
 3a2:	4a80           	tstl %d0
 3a4:	6700 0742      	beqw ae8 <___mulxc3+0xaac>
 3a8:	4a2f 005c      	tstb %sp@(92)
 3ac:	6600 023a      	bnew 5e8 <___mulxc3+0x5ac>
 3b0:	2f2f 0034      	movel %sp@(52),%sp@-
 3b4:	2f2f 0034      	movel %sp@(52),%sp@-
 3b8:	2f2f 0034      	movel %sp@(52),%sp@-
 3bc:	2f2f 0040      	movel %sp@(64),%sp@-
 3c0:	2f2f 0040      	movel %sp@(64),%sp@-
 3c4:	2f2f 0040      	movel %sp@(64),%sp@-
 3c8:	43ef 00b0      	lea %sp@(176),%a1
 3cc:	2046           	moveal %d6,%a0
 3ce:	4e90           	jsr %a0@
 3d0:	4fef 0018      	lea %sp@(24),%sp
 3d4:	2f2f 00a0      	movel %sp@(160),%sp@-
 3d8:	2f2f 00a0      	movel %sp@(160),%sp@-
 3dc:	2f2f 00a0      	movel %sp@(160),%sp@-
 3e0:	2f2f 00ac      	movel %sp@(172),%sp@-
 3e4:	2f2f 00ac      	movel %sp@(172),%sp@-
 3e8:	2f2f 00ac      	movel %sp@(172),%sp@-
 3ec:	2042           	moveal %d2,%a0
 3ee:	4e90           	jsr %a0@
 3f0:	4fef 0018      	lea %sp@(24),%sp
 3f4:	4a80           	tstl %d0
 3f6:	6726           	beqs 41e <___mulxc3+0x3e2>
 3f8:	2f2f 0034      	movel %sp@(52),%sp@-
 3fc:	2f2f 0034      	movel %sp@(52),%sp@-
 400:	2f2f 0034      	movel %sp@(52),%sp@-
 404:	2f2f 0040      	movel %sp@(64),%sp@-
 408:	2f2f 0040      	movel %sp@(64),%sp@-
 40c:	2f2f 0040      	movel %sp@(64),%sp@-
 410:	2042           	moveal %d2,%a0
 412:	4e90           	jsr %a0@
 414:	4fef 0018      	lea %sp@(24),%sp
 418:	4a80           	tstl %d0
 41a:	6700 0134      	beqw 550 <___mulxc3+0x514>
 41e:	2f2f 0040      	movel %sp@(64),%sp@-
 422:	2f2f 0040      	movel %sp@(64),%sp@-
 426:	2f2f 0040      	movel %sp@(64),%sp@-
 42a:	2f2f 004c      	movel %sp@(76),%sp@-
 42e:	2f2f 004c      	movel %sp@(76),%sp@-
 432:	2f2f 004c      	movel %sp@(76),%sp@-
 436:	43ef 00b0      	lea %sp@(176),%a1
 43a:	2046           	moveal %d6,%a0
 43c:	4e90           	jsr %a0@
 43e:	4fef 0018      	lea %sp@(24),%sp
 442:	2f2f 00a0      	movel %sp@(160),%sp@-
 446:	2f2f 00a0      	movel %sp@(160),%sp@-
 44a:	2f2f 00a0      	movel %sp@(160),%sp@-
 44e:	2f2f 00ac      	movel %sp@(172),%sp@-
 452:	2f2f 00ac      	movel %sp@(172),%sp@-
 456:	2f2f 00ac      	movel %sp@(172),%sp@-
 45a:	2042           	moveal %d2,%a0
 45c:	4e90           	jsr %a0@
 45e:	4fef 0018      	lea %sp@(24),%sp
 462:	4a80           	tstl %d0
 464:	6726           	beqs 48c <___mulxc3+0x450>
 466:	2f2f 0040      	movel %sp@(64),%sp@-
 46a:	2f2f 0040      	movel %sp@(64),%sp@-
 46e:	2f2f 0040      	movel %sp@(64),%sp@-
 472:	2f2f 004c      	movel %sp@(76),%sp@-
 476:	2f2f 004c      	movel %sp@(76),%sp@-
 47a:	2f2f 004c      	movel %sp@(76),%sp@-
 47e:	2042           	moveal %d2,%a0
 480:	4e90           	jsr %a0@
 482:	4fef 0018      	lea %sp@(24),%sp
 486:	4a80           	tstl %d0
 488:	6700 00c6      	beqw 550 <___mulxc3+0x514>
 48c:	2f2f 004c      	movel %sp@(76),%sp@-
 490:	2f2f 004c      	movel %sp@(76),%sp@-
 494:	2f2f 004c      	movel %sp@(76),%sp@-
 498:	2f2f 0058      	movel %sp@(88),%sp@-
 49c:	2f2f 0058      	movel %sp@(88),%sp@-
 4a0:	2f2f 0058      	movel %sp@(88),%sp@-
 4a4:	43ef 00b0      	lea %sp@(176),%a1
 4a8:	2046           	moveal %d6,%a0
 4aa:	4e90           	jsr %a0@
 4ac:	4fef 0018      	lea %sp@(24),%sp
 4b0:	2f2f 00a0      	movel %sp@(160),%sp@-
 4b4:	2f2f 00a0      	movel %sp@(160),%sp@-
 4b8:	2f2f 00a0      	movel %sp@(160),%sp@-
 4bc:	2f2f 00ac      	movel %sp@(172),%sp@-
 4c0:	2f2f 00ac      	movel %sp@(172),%sp@-
 4c4:	2f2f 00ac      	movel %sp@(172),%sp@-
 4c8:	2042           	moveal %d2,%a0
 4ca:	4e90           	jsr %a0@
 4cc:	4fef 0018      	lea %sp@(24),%sp
 4d0:	4a80           	tstl %d0
 4d2:	6724           	beqs 4f8 <___mulxc3+0x4bc>
 4d4:	2f2f 004c      	movel %sp@(76),%sp@-
 4d8:	2f2f 004c      	movel %sp@(76),%sp@-
 4dc:	2f2f 004c      	movel %sp@(76),%sp@-
 4e0:	2f2f 0058      	movel %sp@(88),%sp@-
 4e4:	2f2f 0058      	movel %sp@(88),%sp@-
 4e8:	2f2f 0058      	movel %sp@(88),%sp@-
 4ec:	2042           	moveal %d2,%a0
 4ee:	4e90           	jsr %a0@
 4f0:	4fef 0018      	lea %sp@(24),%sp
 4f4:	4a80           	tstl %d0
 4f6:	6758           	beqs 550 <___mulxc3+0x514>
 4f8:	2f0e           	movel %fp,%sp@-
 4fa:	2f0d           	movel %a5,%sp@-
 4fc:	2f0c           	movel %a4,%sp@-
 4fe:	2f0e           	movel %fp,%sp@-
 500:	2f0d           	movel %a5,%sp@-
 502:	2f0c           	movel %a4,%sp@-
 504:	43ef 00b0      	lea %sp@(176),%a1
 508:	2046           	moveal %d6,%a0
 50a:	4e90           	jsr %a0@
 50c:	4fef 0018      	lea %sp@(24),%sp
 510:	2f2f 00a0      	movel %sp@(160),%sp@-
 514:	2f2f 00a0      	movel %sp@(160),%sp@-
 518:	2f2f 00a0      	movel %sp@(160),%sp@-
 51c:	2f2f 00ac      	movel %sp@(172),%sp@-
 520:	2f2f 00ac      	movel %sp@(172),%sp@-
 524:	2f2f 00ac      	movel %sp@(172),%sp@-
 528:	2042           	moveal %d2,%a0
 52a:	4e90           	jsr %a0@
 52c:	4fef 0018      	lea %sp@(24),%sp
 530:	4a80           	tstl %d0
 532:	6700 fc6c      	beqw 1a0 <___mulxc3+0x164>
 536:	2f0e           	movel %fp,%sp@-
 538:	2f0d           	movel %a5,%sp@-
 53a:	2f0c           	movel %a4,%sp@-
 53c:	2f0e           	movel %fp,%sp@-
 53e:	2f0d           	movel %a5,%sp@-
 540:	2f0c           	movel %a4,%sp@-
 542:	2042           	moveal %d2,%a0
 544:	4e90           	jsr %a0@
 546:	4fef 0018      	lea %sp@(24),%sp
 54a:	4a80           	tstl %d0
 54c:	6600 fc52      	bnew 1a0 <___mulxc3+0x164>
 550:	2f2f 00b0      	movel %sp@(176),%sp@-
 554:	2f2f 00b0      	movel %sp@(176),%sp@-
 558:	2f2f 00b0      	movel %sp@(176),%sp@-
 55c:	2f2f 00bc      	movel %sp@(188),%sp@-
 560:	2f2f 00bc      	movel %sp@(188),%sp@-
 564:	2f2f 00bc      	movel %sp@(188),%sp@-
 568:	2042           	moveal %d2,%a0
 56a:	4e90           	jsr %a0@
 56c:	4fef 0018      	lea %sp@(24),%sp
 570:	4a80           	tstl %d0
 572:	6600 0264      	bnew 7d8 <___mulxc3+0x79c>
 576:	2f2f 00bc      	movel %sp@(188),%sp@-
 57a:	2f2f 00bc      	movel %sp@(188),%sp@-
 57e:	2f2f 00bc      	movel %sp@(188),%sp@-
 582:	2f2f 00c8      	movel %sp@(200),%sp@-
 586:	2f2f 00c8      	movel %sp@(200),%sp@-
 58a:	2f2f 00c8      	movel %sp@(200),%sp@-
 58e:	2042           	moveal %d2,%a0
 590:	4e90           	jsr %a0@
 592:	4fef 0018      	lea %sp@(24),%sp
 596:	4a80           	tstl %d0
 598:	6600 0210      	bnew 7aa <___mulxc3+0x76e>
 59c:	2f2f 00c8      	movel %sp@(200),%sp@-
 5a0:	2f2f 00c8      	movel %sp@(200),%sp@-
 5a4:	2f2f 00c8      	movel %sp@(200),%sp@-
 5a8:	2f2f 00d4      	movel %sp@(212),%sp@-
 5ac:	2f2f 00d4      	movel %sp@(212),%sp@-
 5b0:	2f2f 00d4      	movel %sp@(212),%sp@-
 5b4:	2042           	moveal %d2,%a0
 5b6:	4e90           	jsr %a0@
 5b8:	4fef 0018      	lea %sp@(24),%sp
 5bc:	4a80           	tstl %d0
 5be:	6600 01bc      	bnew 77c <___mulxc3+0x740>
 5c2:	2f2f 00d4      	movel %sp@(212),%sp@-
 5c6:	2f2f 00d4      	movel %sp@(212),%sp@-
 5ca:	2f2f 00d4      	movel %sp@(212),%sp@-
 5ce:	2f2f 00e0      	movel %sp@(224),%sp@-
 5d2:	2f2f 00e0      	movel %sp@(224),%sp@-
 5d6:	2f2f 00e0      	movel %sp@(224),%sp@-
 5da:	2042           	moveal %d2,%a0
 5dc:	4e90           	jsr %a0@
 5de:	4fef 0018      	lea %sp@(24),%sp
 5e2:	4a80           	tstl %d0
 5e4:	6600 0168      	bnew 74e <___mulxc3+0x712>
 5e8:	2f2f 00c8      	movel %sp@(200),%sp@-
 5ec:	2f2f 00c8      	movel %sp@(200),%sp@-
 5f0:	2f2f 00c8      	movel %sp@(200),%sp@-
 5f4:	2f2f 00bc      	movel %sp@(188),%sp@-
 5f8:	2f2f 00bc      	movel %sp@(188),%sp@-
 5fc:	2f2f 00bc      	movel %sp@(188),%sp@-
 600:	43ef 00b0      	lea %sp@(176),%a1
 604:	4e92           	jsr %a2@
 606:	4fef 0018      	lea %sp@(24),%sp
 60a:	262f 0098      	movel %sp@(152),%d3
 60e:	282f 009c      	movel %sp@(156),%d4
 612:	2a2f 00a0      	movel %sp@(160),%d5
 616:	2f2f 00d4      	movel %sp@(212),%sp@-
 61a:	2f2f 00d4      	movel %sp@(212),%sp@-
 61e:	2f2f 00d4      	movel %sp@(212),%sp@-
 622:	2f2f 00c8      	movel %sp@(200),%sp@-
 626:	2f2f 00c8      	movel %sp@(200),%sp@-
 62a:	2f2f 00c8      	movel %sp@(200),%sp@-
 62e:	43ef 00a4      	lea %sp@(164),%a1
 632:	4e92           	jsr %a2@
 634:	4fef 0018      	lea %sp@(24),%sp
 638:	2f2f 0094      	movel %sp@(148),%sp@-
 63c:	2f2f 0094      	movel %sp@(148),%sp@-
 640:	2f2f 0094      	movel %sp@(148),%sp@-
 644:	2f05           	movel %d5,%sp@-
 646:	2f04           	movel %d4,%sp@-
 648:	2f03           	movel %d3,%sp@-
 64a:	43ef 0098      	lea %sp@(152),%a1
 64e:	2046           	moveal %d6,%a0
 650:	4e90           	jsr %a0@
 652:	4fef 0018      	lea %sp@(24),%sp
 656:	2f3a f9e0      	movel %pc@(38 <___mulxc3-0x4>),%sp@-
 65a:	2f3a f9d8      	movel %pc@(34 <___mulxc3-0x8>),%sp@-
 65e:	2f3a f9d0      	movel %pc@(30 <___mulxc3-0xc>),%sp@-
 662:	2f2f 0094      	movel %sp@(148),%sp@-
 666:	2f2f 0094      	movel %sp@(148),%sp@-
 66a:	2f2f 0094      	movel %sp@(148),%sp@-
 66e:	43ef 008c      	lea %sp@(140),%a1
 672:	4e92           	jsr %a2@
 674:	4fef 0018      	lea %sp@(24),%sp
 678:	262f 0074      	movel %sp@(116),%d3
 67c:	282f 0078      	movel %sp@(120),%d4
 680:	2a2f 007c      	movel %sp@(124),%d5
 684:	2f2f 00d4      	movel %sp@(212),%sp@-
 688:	2f2f 00d4      	movel %sp@(212),%sp@-
 68c:	2f2f 00d4      	movel %sp@(212),%sp@-
 690:	2f2f 00bc      	movel %sp@(188),%sp@-
 694:	2f2f 00bc      	movel %sp@(188),%sp@-
 698:	2f2f 00bc      	movel %sp@(188),%sp@-
 69c:	43ef 00b0      	lea %sp@(176),%a1
 6a0:	4e92           	jsr %a2@
 6a2:	4fef 0018      	lea %sp@(24),%sp
 6a6:	286f 0098      	moveal %sp@(152),%a4
 6aa:	2a6f 009c      	moveal %sp@(156),%a5
 6ae:	2c6f 00a0      	moveal %sp@(160),%fp
 6b2:	2f2f 00c8      	movel %sp@(200),%sp@-
 6b6:	2f2f 00c8      	movel %sp@(200),%sp@-
 6ba:	2f2f 00c8      	movel %sp@(200),%sp@-
 6be:	2f2f 00c8      	movel %sp@(200),%sp@-
 6c2:	2f2f 00c8      	movel %sp@(200),%sp@-
 6c6:	2f2f 00c8      	movel %sp@(200),%sp@-
 6ca:	43ef 00a4      	lea %sp@(164),%a1
 6ce:	4e92           	jsr %a2@
 6d0:	4fef 0018      	lea %sp@(24),%sp
 6d4:	2f2f 0094      	movel %sp@(148),%sp@-
 6d8:	2f2f 0094      	movel %sp@(148),%sp@-
 6dc:	2f2f 0094      	movel %sp@(148),%sp@-
 6e0:	2f0e           	movel %fp,%sp@-
 6e2:	2f0d           	movel %a5,%sp@-
 6e4:	2f0c           	movel %a4,%sp@-
 6e6:	43ef 0098      	lea %sp@(152),%a1
 6ea:	2047           	moveal %d7,%a0
 6ec:	4e90           	jsr %a0@
 6ee:	4fef 0018      	lea %sp@(24),%sp
 6f2:	2f3a f944      	movel %pc@(38 <___mulxc3-0x4>),%sp@-
 6f6:	2f3a f93c      	movel %pc@(34 <___mulxc3-0x8>),%sp@-
 6fa:	2f3a f934      	movel %pc@(30 <___mulxc3-0xc>),%sp@-
 6fe:	2f2f 0094      	movel %sp@(148),%sp@-
 702:	2f2f 0094      	movel %sp@(148),%sp@-
 706:	2f2f 0094      	movel %sp@(148),%sp@-
 70a:	43ef 008c      	lea %sp@(140),%a1
 70e:	4e92           	jsr %a2@
 710:	4fef 0018      	lea %sp@(24),%sp
 714:	2f6f 0074 0050 	movel %sp@(116),%sp@(80)
 71a:	2f6f 0078 0054 	movel %sp@(120),%sp@(84)
 720:	2f6f 007c 0058 	movel %sp@(124),%sp@(88)
 726:	2683           	movel %d3,%a3@
 728:	2744 0004      	movel %d4,%a3@(4)
 72c:	2745 0008      	movel %d5,%a3@(8)
 730:	276f 0050 000c 	movel %sp@(80),%a3@(12)
 736:	276f 0054 0010 	movel %sp@(84),%a3@(16)
 73c:	276f 0058 0014 	movel %sp@(88),%a3@(20)
 742:	200b           	movel %a3,%d0
 744:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 748:	4fef 0078      	lea %sp@(120),%sp
 74c:	4e75           	rts
 74e:	203a f8bc      	movel %pc@(c <___mulxc3-0x30>),%d0
 752:	223a f8bc      	movel %pc@(10 <___mulxc3-0x2c>),%d1
 756:	243a f8bc      	movel %pc@(14 <___mulxc3-0x28>),%d2
 75a:	262f 00cc      	movel %sp@(204),%d3
 75e:	6c0c           	bges 76c <___mulxc3+0x730>
 760:	203a f8c2      	movel %pc@(24 <___mulxc3-0x18>),%d0
 764:	223a f8c2      	movel %pc@(28 <___mulxc3-0x14>),%d1
 768:	243a f8c2      	movel %pc@(2c <___mulxc3-0x10>),%d2
 76c:	2f40 00cc      	movel %d0,%sp@(204)
 770:	2f41 00d0      	movel %d1,%sp@(208)
 774:	2f42 00d4      	movel %d2,%sp@(212)
 778:	6000 fe6e      	braw 5e8 <___mulxc3+0x5ac>
 77c:	263a f88e      	movel %pc@(c <___mulxc3-0x30>),%d3
 780:	283a f88e      	movel %pc@(10 <___mulxc3-0x2c>),%d4
 784:	2a3a f88e      	movel %pc@(14 <___mulxc3-0x28>),%d5
 788:	202f 00c0      	movel %sp@(192),%d0
 78c:	6c0c           	bges 79a <___mulxc3+0x75e>
 78e:	263a f894      	movel %pc@(24 <___mulxc3-0x18>),%d3
 792:	283a f894      	movel %pc@(28 <___mulxc3-0x14>),%d4
 796:	2a3a f894      	movel %pc@(2c <___mulxc3-0x10>),%d5
 79a:	2f43 00c0      	movel %d3,%sp@(192)
 79e:	2f44 00c4      	movel %d4,%sp@(196)
 7a2:	2f45 00c8      	movel %d5,%sp@(200)
 7a6:	6000 fe1a      	braw 5c2 <___mulxc3+0x586>
 7aa:	263a f860      	movel %pc@(c <___mulxc3-0x30>),%d3
 7ae:	283a f860      	movel %pc@(10 <___mulxc3-0x2c>),%d4
 7b2:	2a3a f860      	movel %pc@(14 <___mulxc3-0x28>),%d5
 7b6:	202f 00b4      	movel %sp@(180),%d0
 7ba:	6c0c           	bges 7c8 <___mulxc3+0x78c>
 7bc:	263a f866      	movel %pc@(24 <___mulxc3-0x18>),%d3
 7c0:	283a f866      	movel %pc@(28 <___mulxc3-0x14>),%d4
 7c4:	2a3a f866      	movel %pc@(2c <___mulxc3-0x10>),%d5
 7c8:	2f43 00b4      	movel %d3,%sp@(180)
 7cc:	2f44 00b8      	movel %d4,%sp@(184)
 7d0:	2f45 00bc      	movel %d5,%sp@(188)
 7d4:	6000 fdc6      	braw 59c <___mulxc3+0x560>
 7d8:	263a f832      	movel %pc@(c <___mulxc3-0x30>),%d3
 7dc:	283a f832      	movel %pc@(10 <___mulxc3-0x2c>),%d4
 7e0:	2a3a f832      	movel %pc@(14 <___mulxc3-0x28>),%d5
 7e4:	202f 00a8      	movel %sp@(168),%d0
 7e8:	6c0c           	bges 7f6 <___mulxc3+0x7ba>
 7ea:	263a f838      	movel %pc@(24 <___mulxc3-0x18>),%d3
 7ee:	283a f838      	movel %pc@(28 <___mulxc3-0x14>),%d4
 7f2:	2a3a f838      	movel %pc@(2c <___mulxc3-0x10>),%d5
 7f6:	2f43 00a8      	movel %d3,%sp@(168)
 7fa:	2f44 00ac      	movel %d4,%sp@(172)
 7fe:	2f45 00b0      	movel %d5,%sp@(176)
 802:	6000 fd72      	braw 576 <___mulxc3+0x53a>
 806:	2f7a f7f8 005c 	movel %pc@(0 <___mulxc3-0x3c>),%sp@(92)
 80c:	2f7a f7f6 0060 	movel %pc@(4 <___mulxc3-0x38>),%sp@(96)
 812:	2f7a f7f4 0064 	movel %pc@(8 <___mulxc3-0x34>),%sp@(100)
 818:	2f6f 005c 0068 	movel %sp@(92),%sp@(104)
 81e:	2f6f 0060 006c 	movel %sp@(96),%sp@(108)
 824:	2f6f 0064 0070 	movel %sp@(100),%sp@(112)
 82a:	202f 00a8      	movel %sp@(168),%d0
 82e:	6c12           	bges 842 <___mulxc3+0x806>
 830:	2f7a f7e6 0068 	movel %pc@(18 <___mulxc3-0x24>),%sp@(104)
 836:	2f7a f7e4 006c 	movel %pc@(1c <___mulxc3-0x20>),%sp@(108)
 83c:	2f7a f7e2 0070 	movel %pc@(20 <___mulxc3-0x1c>),%sp@(112)
 842:	2f6f 0068 00a8 	movel %sp@(104),%sp@(168)
 848:	2f6f 006c 00ac 	movel %sp@(108),%sp@(172)
 84e:	2f6f 0070 00b0 	movel %sp@(112),%sp@(176)
 854:	2f2f 00bc      	movel %sp@(188),%sp@-
 858:	2f2f 00bc      	movel %sp@(188),%sp@-
 85c:	2f2f 00bc      	movel %sp@(188),%sp@-
 860:	2f2f 00c8      	movel %sp@(200),%sp@-
 864:	2f2f 00c8      	movel %sp@(200),%sp@-
 868:	2f2f 00c8      	movel %sp@(200),%sp@-
 86c:	43ef 00b0      	lea %sp@(176),%a1
 870:	2046           	moveal %d6,%a0
 872:	4e90           	jsr %a0@
 874:	4fef 0018      	lea %sp@(24),%sp
 878:	2f2f 00a0      	movel %sp@(160),%sp@-
 87c:	2f2f 00a0      	movel %sp@(160),%sp@-
 880:	2f2f 00a0      	movel %sp@(160),%sp@-
 884:	2f2f 00ac      	movel %sp@(172),%sp@-
 888:	2f2f 00ac      	movel %sp@(172),%sp@-
 88c:	2f2f 00ac      	movel %sp@(172),%sp@-
 890:	2042           	moveal %d2,%a0
 892:	4e90           	jsr %a0@
 894:	4fef 0018      	lea %sp@(24),%sp
 898:	4a80           	tstl %d0
 89a:	6726           	beqs 8c2 <___mulxc3+0x886>
 89c:	2f2f 00bc      	movel %sp@(188),%sp@-
 8a0:	2f2f 00bc      	movel %sp@(188),%sp@-
 8a4:	2f2f 00bc      	movel %sp@(188),%sp@-
 8a8:	2f2f 00c8      	movel %sp@(200),%sp@-
 8ac:	2f2f 00c8      	movel %sp@(200),%sp@-
 8b0:	2f2f 00c8      	movel %sp@(200),%sp@-
 8b4:	2042           	moveal %d2,%a0
 8b6:	4e90           	jsr %a0@
 8b8:	4fef 0018      	lea %sp@(24),%sp
 8bc:	4a80           	tstl %d0
 8be:	6700 02c4      	beqw b84 <___mulxc3+0xb48>
 8c2:	2f7a f748 0068 	movel %pc@(c <___mulxc3-0x30>),%sp@(104)
 8c8:	2f7a f746 006c 	movel %pc@(10 <___mulxc3-0x2c>),%sp@(108)
 8ce:	2f7a f744 0070 	movel %pc@(14 <___mulxc3-0x28>),%sp@(112)
 8d4:	202f 0068      	movel %sp@(104),%d0
 8d8:	0880 001f      	bclr #31,%d0
 8dc:	2f40 005c      	movel %d0,%sp@(92)
 8e0:	206f 006c      	moveal %sp@(108),%a0
 8e4:	2f48 0060      	movel %a0,%sp@(96)
 8e8:	202f 0070      	movel %sp@(112),%d0
 8ec:	2f40 0064      	movel %d0,%sp@(100)
 8f0:	202f 00b4      	movel %sp@(180),%d0
 8f4:	6c0e           	bges 904 <___mulxc3+0x8c8>
 8f6:	202f 005c      	movel %sp@(92),%d0
 8fa:	0680 8000 0000 	addil #-2147483648,%d0
 900:	2f40 005c      	movel %d0,%sp@(92)
 904:	2f6f 005c 00b4 	movel %sp@(92),%sp@(180)
 90a:	2f6f 0060 00b8 	movel %sp@(96),%sp@(184)
 910:	2f6f 0064 00bc 	movel %sp@(100),%sp@(188)
 916:	2f2f 00c8      	movel %sp@(200),%sp@-
 91a:	2f2f 00c8      	movel %sp@(200),%sp@-
 91e:	2f2f 00c8      	movel %sp@(200),%sp@-
 922:	2f2f 00d4      	movel %sp@(212),%sp@-
 926:	2f2f 00d4      	movel %sp@(212),%sp@-
 92a:	2f2f 00d4      	movel %sp@(212),%sp@-
 92e:	2042           	moveal %d2,%a0
 930:	4e90           	jsr %a0@
 932:	4fef 0018      	lea %sp@(24),%sp
 936:	4a80           	tstl %d0
 938:	6600 02a6      	bnew be0 <___mulxc3+0xba4>
 93c:	2f2f 00d4      	movel %sp@(212),%sp@-
 940:	2f2f 00d4      	movel %sp@(212),%sp@-
 944:	2f2f 00d4      	movel %sp@(212),%sp@-
 948:	2f2f 00e0      	movel %sp@(224),%sp@-
 94c:	2f2f 00e0      	movel %sp@(224),%sp@-
 950:	2f2f 00e0      	movel %sp@(224),%sp@-
 954:	2042           	moveal %d2,%a0
 956:	4e90           	jsr %a0@
 958:	4fef 0018      	lea %sp@(24),%sp
 95c:	4a80           	tstl %d0
 95e:	6600 023a      	bnew b9a <___mulxc3+0xb5e>
 962:	1f7c 0001 005c 	moveb #1,%sp@(92)
 968:	6000 f962      	braw 2cc <___mulxc3+0x290>
 96c:	2f7a f692 005c 	movel %pc@(0 <___mulxc3-0x3c>),%sp@(92)
 972:	2f7a f690 0060 	movel %pc@(4 <___mulxc3-0x38>),%sp@(96)
 978:	2f7a f68e 0064 	movel %pc@(8 <___mulxc3-0x34>),%sp@(100)
 97e:	262f 005c      	movel %sp@(92),%d3
 982:	282f 0060      	movel %sp@(96),%d4
 986:	2a2f 0064      	movel %sp@(100),%d5
 98a:	202f 00c0      	movel %sp@(192),%d0
 98e:	6c0c           	bges 99c <___mulxc3+0x960>
 990:	263a f686      	movel %pc@(18 <___mulxc3-0x24>),%d3
 994:	283a f686      	movel %pc@(1c <___mulxc3-0x20>),%d4
 998:	2a3a f686      	movel %pc@(20 <___mulxc3-0x1c>),%d5
 99c:	2f43 00c0      	movel %d3,%sp@(192)
 9a0:	2f44 00c4      	movel %d4,%sp@(196)
 9a4:	2f45 00c8      	movel %d5,%sp@(200)
 9a8:	2f2f 00d4      	movel %sp@(212),%sp@-
 9ac:	2f2f 00d4      	movel %sp@(212),%sp@-
 9b0:	2f2f 00d4      	movel %sp@(212),%sp@-
 9b4:	2f2f 00e0      	movel %sp@(224),%sp@-
 9b8:	2f2f 00e0      	movel %sp@(224),%sp@-
 9bc:	2f2f 00e0      	movel %sp@(224),%sp@-
 9c0:	43ef 00b0      	lea %sp@(176),%a1
 9c4:	2046           	moveal %d6,%a0
 9c6:	4e90           	jsr %a0@
 9c8:	4fef 0018      	lea %sp@(24),%sp
 9cc:	262f 0098      	movel %sp@(152),%d3
 9d0:	282f 009c      	movel %sp@(156),%d4
 9d4:	2a2f 00a0      	movel %sp@(160),%d5
 9d8:	2f05           	movel %d5,%sp@-
 9da:	2f04           	movel %d4,%sp@-
 9dc:	2f03           	movel %d3,%sp@-
 9de:	2f05           	movel %d5,%sp@-
 9e0:	2f04           	movel %d4,%sp@-
 9e2:	2f03           	movel %d3,%sp@-
 9e4:	2042           	moveal %d2,%a0
 9e6:	4e90           	jsr %a0@
 9e8:	4fef 0018      	lea %sp@(24),%sp
 9ec:	4a80           	tstl %d0
 9ee:	6726           	beqs a16 <___mulxc3+0x9da>
 9f0:	2f2f 00d4      	movel %sp@(212),%sp@-
 9f4:	2f2f 00d4      	movel %sp@(212),%sp@-
 9f8:	2f2f 00d4      	movel %sp@(212),%sp@-
 9fc:	2f2f 00e0      	movel %sp@(224),%sp@-
 a00:	2f2f 00e0      	movel %sp@(224),%sp@-
 a04:	2f2f 00e0      	movel %sp@(224),%sp@-
 a08:	2042           	moveal %d2,%a0
 a0a:	4e90           	jsr %a0@
 a0c:	4fef 0018      	lea %sp@(24),%sp
 a10:	4a80           	tstl %d0
 a12:	6700 010e      	beqw b22 <___mulxc3+0xae6>
 a16:	287a f5f4      	moveal %pc@(c <___mulxc3-0x30>),%a4
 a1a:	2a7a f5f4      	moveal %pc@(10 <___mulxc3-0x2c>),%a5
 a1e:	2c7a f5f4      	moveal %pc@(14 <___mulxc3-0x28>),%fp
 a22:	260c           	movel %a4,%d3
 a24:	0883 001f      	bclr #31,%d3
 a28:	280d           	movel %a5,%d4
 a2a:	2a0e           	movel %fp,%d5
 a2c:	202f 00cc      	movel %sp@(204),%d0
 a30:	6c06           	bges a38 <___mulxc3+0x9fc>
 a32:	0683 8000 0000 	addil #-2147483648,%d3
 a38:	2f43 00cc      	movel %d3,%sp@(204)
 a3c:	2f44 00d0      	movel %d4,%sp@(208)
 a40:	2f45 00d4      	movel %d5,%sp@(212)
 a44:	2f2f 00b0      	movel %sp@(176),%sp@-
 a48:	2f2f 00b0      	movel %sp@(176),%sp@-
 a4c:	2f2f 00b0      	movel %sp@(176),%sp@-
 a50:	2f2f 00bc      	movel %sp@(188),%sp@-
 a54:	2f2f 00bc      	movel %sp@(188),%sp@-
 a58:	2f2f 00bc      	movel %sp@(188),%sp@-
 a5c:	2042           	moveal %d2,%a0
 a5e:	4e90           	jsr %a0@
 a60:	4fef 0018      	lea %sp@(24),%sp
 a64:	4a80           	tstl %d0
 a66:	6654           	bnes abc <___mulxc3+0xa80>
 a68:	2f2f 00bc      	movel %sp@(188),%sp@-
 a6c:	2f2f 00bc      	movel %sp@(188),%sp@-
 a70:	2f2f 00bc      	movel %sp@(188),%sp@-
 a74:	2f2f 00c8      	movel %sp@(200),%sp@-
 a78:	2f2f 00c8      	movel %sp@(200),%sp@-
 a7c:	2f2f 00c8      	movel %sp@(200),%sp@-
 a80:	2042           	moveal %d2,%a0
 a82:	4e90           	jsr %a0@
 a84:	4fef 0018      	lea %sp@(24),%sp
 a88:	4a80           	tstl %d0
 a8a:	6700 fb5c      	beqw 5e8 <___mulxc3+0x5ac>
 a8e:	203a f57c      	movel %pc@(c <___mulxc3-0x30>),%d0
 a92:	223a f57c      	movel %pc@(10 <___mulxc3-0x2c>),%d1
 a96:	243a f57c      	movel %pc@(14 <___mulxc3-0x28>),%d2
 a9a:	262f 00b4      	movel %sp@(180),%d3
 a9e:	6c0c           	bges aac <___mulxc3+0xa70>
 aa0:	203a f582      	movel %pc@(24 <___mulxc3-0x18>),%d0
 aa4:	223a f582      	movel %pc@(28 <___mulxc3-0x14>),%d1
 aa8:	243a f582      	movel %pc@(2c <___mulxc3-0x10>),%d2
 aac:	2f40 00b4      	movel %d0,%sp@(180)
 ab0:	2f41 00b8      	movel %d1,%sp@(184)
 ab4:	2f42 00bc      	movel %d2,%sp@(188)
 ab8:	6000 fb2e      	braw 5e8 <___mulxc3+0x5ac>
 abc:	263a f54e      	movel %pc@(c <___mulxc3-0x30>),%d3
 ac0:	283a f54e      	movel %pc@(10 <___mulxc3-0x2c>),%d4
 ac4:	2a3a f54e      	movel %pc@(14 <___mulxc3-0x28>),%d5
 ac8:	202f 00a8      	movel %sp@(168),%d0
 acc:	6c0c           	bges ada <___mulxc3+0xa9e>
 ace:	263a f554      	movel %pc@(24 <___mulxc3-0x18>),%d3
 ad2:	283a f554      	movel %pc@(28 <___mulxc3-0x14>),%d4
 ad6:	2a3a f554      	movel %pc@(2c <___mulxc3-0x10>),%d5
 ada:	2f43 00a8      	movel %d3,%sp@(168)
 ade:	2f44 00ac      	movel %d4,%sp@(172)
 ae2:	2f45 00b0      	movel %d5,%sp@(176)
 ae6:	6080           	bras a68 <___mulxc3+0xa2c>
 ae8:	263a f522      	movel %pc@(c <___mulxc3-0x30>),%d3
 aec:	283a f522      	movel %pc@(10 <___mulxc3-0x2c>),%d4
 af0:	2a3a f522      	movel %pc@(14 <___mulxc3-0x28>),%d5
 af4:	202f 00c0      	movel %sp@(192),%d0
 af8:	6c0c           	bges b06 <___mulxc3+0xaca>
 afa:	263a f528      	movel %pc@(24 <___mulxc3-0x18>),%d3
 afe:	283a f528      	movel %pc@(28 <___mulxc3-0x14>),%d4
 b02:	2a3a f528      	movel %pc@(2c <___mulxc3-0x10>),%d5
 b06:	2f43 00c0      	movel %d3,%sp@(192)
 b0a:	2f44 00c4      	movel %d4,%sp@(196)
 b0e:	2f45 00c8      	movel %d5,%sp@(200)
 b12:	287a f4ec      	moveal %pc@(0 <___mulxc3-0x3c>),%a4
 b16:	2a7a f4ec      	moveal %pc@(4 <___mulxc3-0x38>),%a5
 b1a:	2c7a f4ec      	moveal %pc@(8 <___mulxc3-0x34>),%fp
 b1e:	6000 ff02      	braw a22 <___mulxc3+0x9e6>
 b22:	286f 005c      	moveal %sp@(92),%a4
 b26:	2a6f 0060      	moveal %sp@(96),%a5
 b2a:	2c6f 0064      	moveal %sp@(100),%fp
 b2e:	6000 fef2      	braw a22 <___mulxc3+0x9e6>
 b32:	2f7a f4d8 005c 	movel %pc@(c <___mulxc3-0x30>),%sp@(92)
 b38:	2f7a f4d6 0060 	movel %pc@(10 <___mulxc3-0x2c>),%sp@(96)
 b3e:	2f7a f4d4 0064 	movel %pc@(14 <___mulxc3-0x28>),%sp@(100)
 b44:	202f 00a8      	movel %sp@(168),%d0
 b48:	6c12           	bges b5c <___mulxc3+0xb20>
 b4a:	2f7a f4d8 005c 	movel %pc@(24 <___mulxc3-0x18>),%sp@(92)
 b50:	2f7a f4d6 0060 	movel %pc@(28 <___mulxc3-0x14>),%sp@(96)
 b56:	2f7a f4d4 0064 	movel %pc@(2c <___mulxc3-0x10>),%sp@(100)
 b5c:	2f6f 005c 00a8 	movel %sp@(92),%sp@(168)
 b62:	2f6f 0060 00ac 	movel %sp@(96),%sp@(172)
 b68:	2f6f 0064 00b0 	movel %sp@(100),%sp@(176)
 b6e:	2f7a f490 0068 	movel %pc@(0 <___mulxc3-0x3c>),%sp@(104)
 b74:	2f7a f48e 006c 	movel %pc@(4 <___mulxc3-0x38>),%sp@(108)
 b7a:	2f7a f48c 0070 	movel %pc@(8 <___mulxc3-0x34>),%sp@(112)
 b80:	6000 fd52      	braw 8d4 <___mulxc3+0x898>
 b84:	2f6f 005c 0068 	movel %sp@(92),%sp@(104)
 b8a:	2f6f 0060 006c 	movel %sp@(96),%sp@(108)
 b90:	2f6f 0064 0070 	movel %sp@(100),%sp@(112)
 b96:	6000 fd3c      	braw 8d4 <___mulxc3+0x898>
 b9a:	2f7a f470 005c 	movel %pc@(c <___mulxc3-0x30>),%sp@(92)
 ba0:	2f7a f46e 0060 	movel %pc@(10 <___mulxc3-0x2c>),%sp@(96)
 ba6:	2f7a f46c 0064 	movel %pc@(14 <___mulxc3-0x28>),%sp@(100)
 bac:	202f 00cc      	movel %sp@(204),%d0
 bb0:	6c12           	bges bc4 <___mulxc3+0xb88>
 bb2:	2f7a f470 005c 	movel %pc@(24 <___mulxc3-0x18>),%sp@(92)
 bb8:	2f7a f46e 0060 	movel %pc@(28 <___mulxc3-0x14>),%sp@(96)
 bbe:	2f7a f46c 0064 	movel %pc@(2c <___mulxc3-0x10>),%sp@(100)
 bc4:	2f6f 005c 00cc 	movel %sp@(92),%sp@(204)
 bca:	2f6f 0060 00d0 	movel %sp@(96),%sp@(208)
 bd0:	2f6f 0064 00d4 	movel %sp@(100),%sp@(212)
 bd6:	1f7c 0001 005c 	moveb #1,%sp@(92)
 bdc:	6000 f6ee      	braw 2cc <___mulxc3+0x290>
 be0:	2f7a f42a 005c 	movel %pc@(c <___mulxc3-0x30>),%sp@(92)
 be6:	2f7a f428 0060 	movel %pc@(10 <___mulxc3-0x2c>),%sp@(96)
 bec:	2f7a f426 0064 	movel %pc@(14 <___mulxc3-0x28>),%sp@(100)
 bf2:	202f 00c0      	movel %sp@(192),%d0
 bf6:	6c12           	bges c0a <___mulxc3+0xbce>
 bf8:	2f7a f42a 005c 	movel %pc@(24 <___mulxc3-0x18>),%sp@(92)
 bfe:	2f7a f428 0060 	movel %pc@(28 <___mulxc3-0x14>),%sp@(96)
 c04:	2f7a f426 0064 	movel %pc@(2c <___mulxc3-0x10>),%sp@(100)
 c0a:	2f6f 005c 00c0 	movel %sp@(92),%sp@(192)
 c10:	2f6f 0060 00c4 	movel %sp@(96),%sp@(196)
 c16:	2f6f 0064 00c8 	movel %sp@(100),%sp@(200)
 c1c:	6000 fd1e      	braw 93c <___mulxc3+0x900>

_multc3.o:     file format a.out-zero-big


_divsc3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___divsc3>:
   0:	598f           	subql #4,%sp
   2:	48e7 3f3e      	moveml %d2-%d7/%a2-%fp,%sp@-
   6:	2e2f 0034      	movel %sp@(52),%d7
   a:	2c2f 0038      	movel %sp@(56),%d6
   e:	2a2f 003c      	movel %sp@(60),%d5
  12:	282f 0040      	movel %sp@(64),%d4
  16:	2005           	movel %d5,%d0
  18:	0880 001f      	bclr #31,%d0
  1c:	2204           	movel %d4,%d1
  1e:	0881 001f      	bclr #31,%d1
  22:	2f01           	movel %d1,%sp@-
  24:	2f00           	movel %d0,%sp@-
  26:	4eb9 0000 0000 	jsr 0 <___divsc3>
  2c:	508f           	addql #8,%sp
  2e:	49f9 0000 0000 	lea 0 <___divsc3>,%a4
  34:	4a80           	tstl %d0
  36:	6c00 0084      	bgew bc <___divsc3+0xbc>
  3a:	2f04           	movel %d4,%sp@-
  3c:	2f05           	movel %d5,%sp@-
  3e:	4e94           	jsr %a4@
  40:	508f           	addql #8,%sp
  42:	2600           	movel %d0,%d3
  44:	45f9 0000 0000 	lea 0 <___divsc3>,%a2
  4a:	2f00           	movel %d0,%sp@-
  4c:	2f05           	movel %d5,%sp@-
  4e:	4e92           	jsr %a2@
  50:	508f           	addql #8,%sp
  52:	47f9 0000 0000 	lea 0 <___divsc3>,%a3
  58:	2f04           	movel %d4,%sp@-
  5a:	2f00           	movel %d0,%sp@-
  5c:	4e93           	jsr %a3@
  5e:	508f           	addql #8,%sp
  60:	2c40           	moveal %d0,%fp
  62:	2f03           	movel %d3,%sp@-
  64:	2f07           	movel %d7,%sp@-
  66:	4e92           	jsr %a2@
  68:	588f           	addql #4,%sp
  6a:	2e86           	movel %d6,%sp@
  6c:	2f00           	movel %d0,%sp@-
  6e:	4e93           	jsr %a3@
  70:	588f           	addql #4,%sp
  72:	2e8e           	movel %fp,%sp@
  74:	2f00           	movel %d0,%sp@-
  76:	4e94           	jsr %a4@
  78:	508f           	addql #8,%sp
  7a:	2400           	movel %d0,%d2
  7c:	2f03           	movel %d3,%sp@-
  7e:	2f06           	movel %d6,%sp@-
  80:	4e92           	jsr %a2@
  82:	508f           	addql #8,%sp
  84:	4bf9 0000 0000 	lea 0 <___divsc3>,%a5
  8a:	2f07           	movel %d7,%sp@-
  8c:	2f00           	movel %d0,%sp@-
  8e:	4e95           	jsr %a5@
  90:	588f           	addql #4,%sp
  92:	2e8e           	movel %fp,%sp@
  94:	2f00           	movel %d0,%sp@-
  96:	4e94           	jsr %a4@
  98:	508f           	addql #8,%sp
  9a:	2600           	movel %d0,%d3
  9c:	49f9 0000 0000 	lea 0 <___divsc3>,%a4
  a2:	2f02           	movel %d2,%sp@-
  a4:	2f02           	movel %d2,%sp@-
  a6:	4e94           	jsr %a4@
  a8:	508f           	addql #8,%sp
  aa:	4a80           	tstl %d0
  ac:	6600 0082      	bnew 130 <___divsc3+0x130>
  b0:	2002           	movel %d2,%d0
  b2:	2203           	movel %d3,%d1
  b4:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
  b8:	588f           	addql #4,%sp
  ba:	4e75           	rts
  bc:	2f05           	movel %d5,%sp@-
  be:	2f04           	movel %d4,%sp@-
  c0:	4e94           	jsr %a4@
  c2:	508f           	addql #8,%sp
  c4:	2600           	movel %d0,%d3
  c6:	45f9 0000 0000 	lea 0 <___divsc3>,%a2
  cc:	2f00           	movel %d0,%sp@-
  ce:	2f04           	movel %d4,%sp@-
  d0:	4e92           	jsr %a2@
  d2:	508f           	addql #8,%sp
  d4:	47f9 0000 0000 	lea 0 <___divsc3>,%a3
  da:	2f05           	movel %d5,%sp@-
  dc:	2f00           	movel %d0,%sp@-
  de:	4e93           	jsr %a3@
  e0:	508f           	addql #8,%sp
  e2:	2c40           	moveal %d0,%fp
  e4:	2f03           	movel %d3,%sp@-
  e6:	2f06           	movel %d6,%sp@-
  e8:	4e92           	jsr %a2@
  ea:	588f           	addql #4,%sp
  ec:	2e87           	movel %d7,%sp@
  ee:	2f00           	movel %d0,%sp@-
  f0:	4e93           	jsr %a3@
  f2:	588f           	addql #4,%sp
  f4:	2e8e           	movel %fp,%sp@
  f6:	2f00           	movel %d0,%sp@-
  f8:	4e94           	jsr %a4@
  fa:	508f           	addql #8,%sp
  fc:	2400           	movel %d0,%d2
  fe:	2f03           	movel %d3,%sp@-
 100:	2f07           	movel %d7,%sp@-
 102:	4e92           	jsr %a2@
 104:	508f           	addql #8,%sp
 106:	4bf9 0000 0000 	lea 0 <___divsc3>,%a5
 10c:	2f00           	movel %d0,%sp@-
 10e:	2f06           	movel %d6,%sp@-
 110:	4e95           	jsr %a5@
 112:	588f           	addql #4,%sp
 114:	2e8e           	movel %fp,%sp@
 116:	2f00           	movel %d0,%sp@-
 118:	4e94           	jsr %a4@
 11a:	508f           	addql #8,%sp
 11c:	2600           	movel %d0,%d3
 11e:	49f9 0000 0000 	lea 0 <___divsc3>,%a4
 124:	2f02           	movel %d2,%sp@-
 126:	2f02           	movel %d2,%sp@-
 128:	4e94           	jsr %a4@
 12a:	508f           	addql #8,%sp
 12c:	4a80           	tstl %d0
 12e:	6780           	beqs b0 <___divsc3+0xb0>
 130:	2f03           	movel %d3,%sp@-
 132:	2f03           	movel %d3,%sp@-
 134:	4e94           	jsr %a4@
 136:	508f           	addql #8,%sp
 138:	4a80           	tstl %d0
 13a:	6700 ff74      	beqw b0 <___divsc3+0xb0>
 13e:	4df9 0000 0000 	lea 0 <___divsc3>,%fp
 144:	42a7           	clrl %sp@-
 146:	2f05           	movel %d5,%sp@-
 148:	4e96           	jsr %fp@
 14a:	508f           	addql #8,%sp
 14c:	4a80           	tstl %d0
 14e:	6656           	bnes 1a6 <___divsc3+0x1a6>
 150:	42a7           	clrl %sp@-
 152:	2f04           	movel %d4,%sp@-
 154:	4e96           	jsr %fp@
 156:	508f           	addql #8,%sp
 158:	4a80           	tstl %d0
 15a:	664a           	bnes 1a6 <___divsc3+0x1a6>
 15c:	2f07           	movel %d7,%sp@-
 15e:	2f07           	movel %d7,%sp@-
 160:	4e94           	jsr %a4@
 162:	508f           	addql #8,%sp
 164:	4a80           	tstl %d0
 166:	670e           	beqs 176 <___divsc3+0x176>
 168:	2f06           	movel %d6,%sp@-
 16a:	2f06           	movel %d6,%sp@-
 16c:	4e94           	jsr %a4@
 16e:	508f           	addql #8,%sp
 170:	4a80           	tstl %d0
 172:	6600 028c      	bnew 400 <___divsc3+0x400>
 176:	263c 7f80 0000 	movel #2139095040,%d3
 17c:	4a85           	tstl %d5
 17e:	6c06           	bges 186 <___divsc3+0x186>
 180:	263c ff80 0000 	movel #-8388608,%d3
 186:	2f07           	movel %d7,%sp@-
 188:	2f03           	movel %d3,%sp@-
 18a:	4e92           	jsr %a2@
 18c:	508f           	addql #8,%sp
 18e:	2400           	movel %d0,%d2
 190:	2f03           	movel %d3,%sp@-
 192:	2f06           	movel %d6,%sp@-
 194:	4e92           	jsr %a2@
 196:	508f           	addql #8,%sp
 198:	2600           	movel %d0,%d3
 19a:	2002           	movel %d2,%d0
 19c:	2203           	movel %d3,%d1
 19e:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 1a2:	588f           	addql #4,%sp
 1a4:	4e75           	rts
 1a6:	2f07           	movel %d7,%sp@-
 1a8:	2f07           	movel %d7,%sp@-
 1aa:	4e95           	jsr %a5@
 1ac:	508f           	addql #8,%sp
 1ae:	2f40 002c      	movel %d0,%sp@(44)
 1b2:	2f00           	movel %d0,%sp@-
 1b4:	2f00           	movel %d0,%sp@-
 1b6:	4e94           	jsr %a4@
 1b8:	508f           	addql #8,%sp
 1ba:	4a80           	tstl %d0
 1bc:	56c0           	sne %d0
 1be:	0200 0001      	andib #1,%d0
 1c2:	3c40           	moveaw %d0,%fp
 1c4:	2f07           	movel %d7,%sp@-
 1c6:	2f07           	movel %d7,%sp@-
 1c8:	4e94           	jsr %a4@
 1ca:	508f           	addql #8,%sp
 1cc:	4a80           	tstl %d0
 1ce:	57c0           	seq %d0
 1d0:	4400           	negb %d0
 1d2:	320e           	movew %fp,%d1
 1d4:	c200           	andb %d0,%d1
 1d6:	3c41           	moveaw %d1,%fp
 1d8:	6600 0144      	bnew 31e <___divsc3+0x31e>
 1dc:	2f06           	movel %d6,%sp@-
 1de:	2f06           	movel %d6,%sp@-
 1e0:	4e95           	jsr %a5@
 1e2:	588f           	addql #4,%sp
 1e4:	2e80           	movel %d0,%sp@
 1e6:	2f00           	movel %d0,%sp@-
 1e8:	4e94           	jsr %a4@
 1ea:	508f           	addql #8,%sp
 1ec:	4a80           	tstl %d0
 1ee:	670e           	beqs 1fe <___divsc3+0x1fe>
 1f0:	2f06           	movel %d6,%sp@-
 1f2:	2f06           	movel %d6,%sp@-
 1f4:	4e94           	jsr %a4@
 1f6:	508f           	addql #8,%sp
 1f8:	4a80           	tstl %d0
 1fa:	6700 0122      	beqw 31e <___divsc3+0x31e>
 1fe:	2f05           	movel %d5,%sp@-
 200:	2f05           	movel %d5,%sp@-
 202:	4e95           	jsr %a5@
 204:	588f           	addql #4,%sp
 206:	2e80           	movel %d0,%sp@
 208:	2f00           	movel %d0,%sp@-
 20a:	4e94           	jsr %a4@
 20c:	508f           	addql #8,%sp
 20e:	4a80           	tstl %d0
 210:	56c1           	sne %d1
 212:	0201 0001      	andib #1,%d1
 216:	3c41           	moveaw %d1,%fp
 218:	2f05           	movel %d5,%sp@-
 21a:	2f05           	movel %d5,%sp@-
 21c:	4e94           	jsr %a4@
 21e:	508f           	addql #8,%sp
 220:	4a80           	tstl %d0
 222:	57c0           	seq %d0
 224:	4400           	negb %d0
 226:	320e           	movew %fp,%d1
 228:	c200           	andb %d0,%d1
 22a:	3c41           	moveaw %d1,%fp
 22c:	6624           	bnes 252 <___divsc3+0x252>
 22e:	2f04           	movel %d4,%sp@-
 230:	2f04           	movel %d4,%sp@-
 232:	4e95           	jsr %a5@
 234:	588f           	addql #4,%sp
 236:	2e80           	movel %d0,%sp@
 238:	2f00           	movel %d0,%sp@-
 23a:	4e94           	jsr %a4@
 23c:	508f           	addql #8,%sp
 23e:	4a80           	tstl %d0
 240:	6700 fe6e      	beqw b0 <___divsc3+0xb0>
 244:	2f04           	movel %d4,%sp@-
 246:	2f04           	movel %d4,%sp@-
 248:	4e94           	jsr %a4@
 24a:	508f           	addql #8,%sp
 24c:	4a80           	tstl %d0
 24e:	6600 fe60      	bnew b0 <___divsc3+0xb0>
 252:	2f2f 002c      	movel %sp@(44),%sp@-
 256:	2f2f 0030      	movel %sp@(48),%sp@-
 25a:	4e94           	jsr %a4@
 25c:	508f           	addql #8,%sp
 25e:	4a80           	tstl %d0
 260:	6600 fe4e      	bnew b0 <___divsc3+0xb0>
 264:	2f06           	movel %d6,%sp@-
 266:	2f06           	movel %d6,%sp@-
 268:	4e95           	jsr %a5@
 26a:	588f           	addql #4,%sp
 26c:	2e80           	movel %d0,%sp@
 26e:	2f00           	movel %d0,%sp@-
 270:	4e94           	jsr %a4@
 272:	508f           	addql #8,%sp
 274:	4a80           	tstl %d0
 276:	6600 fe38      	bnew b0 <___divsc3+0xb0>
 27a:	300e           	movew %fp,%d0
 27c:	4a00           	tstb %d0
 27e:	6600 0190      	bnew 410 <___divsc3+0x410>
 282:	7000           	moveq #0,%d0
 284:	0880 001f      	bclr #31,%d0
 288:	2c40           	moveal %d0,%fp
 28a:	4a85           	tstl %d5
 28c:	6c0a           	bges 298 <___divsc3+0x298>
 28e:	2200           	movel %d0,%d1
 290:	0681 8000 0000 	addil #-2147483648,%d1
 296:	2c41           	moveal %d1,%fp
 298:	2f04           	movel %d4,%sp@-
 29a:	2f04           	movel %d4,%sp@-
 29c:	4e95           	jsr %a5@
 29e:	588f           	addql #4,%sp
 2a0:	2e80           	movel %d0,%sp@
 2a2:	2f00           	movel %d0,%sp@-
 2a4:	4e94           	jsr %a4@
 2a6:	508f           	addql #8,%sp
 2a8:	4a80           	tstl %d0
 2aa:	670e           	beqs 2ba <___divsc3+0x2ba>
 2ac:	2f04           	movel %d4,%sp@-
 2ae:	2f04           	movel %d4,%sp@-
 2b0:	4e94           	jsr %a4@
 2b2:	508f           	addql #8,%sp
 2b4:	4a80           	tstl %d0
 2b6:	6700 0162      	beqw 41a <___divsc3+0x41a>
 2ba:	7600           	moveq #0,%d3
 2bc:	0883 001f      	bclr #31,%d3
 2c0:	4a84           	tstl %d4
 2c2:	6c06           	bges 2ca <___divsc3+0x2ca>
 2c4:	0683 8000 0000 	addil #-2147483648,%d3
 2ca:	2f0e           	movel %fp,%sp@-
 2cc:	2f07           	movel %d7,%sp@-
 2ce:	4e92           	jsr %a2@
 2d0:	508f           	addql #8,%sp
 2d2:	2400           	movel %d0,%d2
 2d4:	2f03           	movel %d3,%sp@-
 2d6:	2f06           	movel %d6,%sp@-
 2d8:	4e92           	jsr %a2@
 2da:	588f           	addql #4,%sp
 2dc:	2e80           	movel %d0,%sp@
 2de:	2f02           	movel %d2,%sp@-
 2e0:	4e93           	jsr %a3@
 2e2:	588f           	addql #4,%sp
 2e4:	4297           	clrl %sp@
 2e6:	2f00           	movel %d0,%sp@-
 2e8:	4e92           	jsr %a2@
 2ea:	508f           	addql #8,%sp
 2ec:	2400           	movel %d0,%d2
 2ee:	2f0e           	movel %fp,%sp@-
 2f0:	2f06           	movel %d6,%sp@-
 2f2:	4e92           	jsr %a2@
 2f4:	508f           	addql #8,%sp
 2f6:	2800           	movel %d0,%d4
 2f8:	2f03           	movel %d3,%sp@-
 2fa:	2f07           	movel %d7,%sp@-
 2fc:	4e92           	jsr %a2@
 2fe:	588f           	addql #4,%sp
 300:	2e80           	movel %d0,%sp@
 302:	2f04           	movel %d4,%sp@-
 304:	4e95           	jsr %a5@
 306:	588f           	addql #4,%sp
 308:	4297           	clrl %sp@
 30a:	2f00           	movel %d0,%sp@-
 30c:	4e92           	jsr %a2@
 30e:	508f           	addql #8,%sp
 310:	2600           	movel %d0,%d3
 312:	2002           	movel %d2,%d0
 314:	2203           	movel %d3,%d1
 316:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 31a:	588f           	addql #4,%sp
 31c:	4e75           	rts
 31e:	2f05           	movel %d5,%sp@-
 320:	2f05           	movel %d5,%sp@-
 322:	4e95           	jsr %a5@
 324:	588f           	addql #4,%sp
 326:	2e80           	movel %d0,%sp@
 328:	2f00           	movel %d0,%sp@-
 32a:	4e94           	jsr %a4@
 32c:	508f           	addql #8,%sp
 32e:	4a80           	tstl %d0
 330:	6600 fecc      	bnew 1fe <___divsc3+0x1fe>
 334:	2f04           	movel %d4,%sp@-
 336:	2f04           	movel %d4,%sp@-
 338:	4e95           	jsr %a5@
 33a:	588f           	addql #4,%sp
 33c:	2e80           	movel %d0,%sp@
 33e:	2f00           	movel %d0,%sp@-
 340:	4e94           	jsr %a4@
 342:	508f           	addql #8,%sp
 344:	4a80           	tstl %d0
 346:	6600 feb6      	bnew 1fe <___divsc3+0x1fe>
 34a:	300e           	movew %fp,%d0
 34c:	4a00           	tstb %d0
 34e:	6600 00a6      	bnew 3f6 <___divsc3+0x3f6>
 352:	7600           	moveq #0,%d3
 354:	0883 001f      	bclr #31,%d3
 358:	4a87           	tstl %d7
 35a:	6c06           	bges 362 <___divsc3+0x362>
 35c:	0683 8000 0000 	addil #-2147483648,%d3
 362:	2f06           	movel %d6,%sp@-
 364:	2f06           	movel %d6,%sp@-
 366:	4e95           	jsr %a5@
 368:	588f           	addql #4,%sp
 36a:	2e80           	movel %d0,%sp@
 36c:	2f00           	movel %d0,%sp@-
 36e:	4e94           	jsr %a4@
 370:	508f           	addql #8,%sp
 372:	4a80           	tstl %d0
 374:	670c           	beqs 382 <___divsc3+0x382>
 376:	2f06           	movel %d6,%sp@-
 378:	2f06           	movel %d6,%sp@-
 37a:	4e94           	jsr %a4@
 37c:	508f           	addql #8,%sp
 37e:	4a80           	tstl %d0
 380:	676c           	beqs 3ee <___divsc3+0x3ee>
 382:	7e00           	moveq #0,%d7
 384:	0887 001f      	bclr #31,%d7
 388:	4a86           	tstl %d6
 38a:	6c06           	bges 392 <___divsc3+0x392>
 38c:	0687 8000 0000 	addil #-2147483648,%d7
 392:	2f05           	movel %d5,%sp@-
 394:	2f03           	movel %d3,%sp@-
 396:	4e92           	jsr %a2@
 398:	508f           	addql #8,%sp
 39a:	2400           	movel %d0,%d2
 39c:	2f04           	movel %d4,%sp@-
 39e:	2f07           	movel %d7,%sp@-
 3a0:	4e92           	jsr %a2@
 3a2:	588f           	addql #4,%sp
 3a4:	2e80           	movel %d0,%sp@
 3a6:	2f02           	movel %d2,%sp@-
 3a8:	4e93           	jsr %a3@
 3aa:	588f           	addql #4,%sp
 3ac:	2ebc 7f80 0000 	movel #2139095040,%sp@
 3b2:	2f00           	movel %d0,%sp@-
 3b4:	4e92           	jsr %a2@
 3b6:	508f           	addql #8,%sp
 3b8:	2400           	movel %d0,%d2
 3ba:	2f05           	movel %d5,%sp@-
 3bc:	2f07           	movel %d7,%sp@-
 3be:	4e92           	jsr %a2@
 3c0:	508f           	addql #8,%sp
 3c2:	2a00           	movel %d0,%d5
 3c4:	2f04           	movel %d4,%sp@-
 3c6:	2f03           	movel %d3,%sp@-
 3c8:	4e92           	jsr %a2@
 3ca:	588f           	addql #4,%sp
 3cc:	2e80           	movel %d0,%sp@
 3ce:	2f05           	movel %d5,%sp@-
 3d0:	4e95           	jsr %a5@
 3d2:	588f           	addql #4,%sp
 3d4:	2ebc 7f80 0000 	movel #2139095040,%sp@
 3da:	2f00           	movel %d0,%sp@-
 3dc:	4e92           	jsr %a2@
 3de:	508f           	addql #8,%sp
 3e0:	2600           	movel %d0,%d3
 3e2:	2002           	movel %d2,%d0
 3e4:	2203           	movel %d3,%d1
 3e6:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 3ea:	588f           	addql #4,%sp
 3ec:	4e75           	rts
 3ee:	2e3c 3f80 0000 	movel #1065353216,%d7
 3f4:	608e           	bras 384 <___divsc3+0x384>
 3f6:	263c 3f80 0000 	movel #1065353216,%d3
 3fc:	6000 ff56      	braw 354 <___divsc3+0x354>
 400:	2f07           	movel %d7,%sp@-
 402:	2f07           	movel %d7,%sp@-
 404:	4e95           	jsr %a5@
 406:	508f           	addql #8,%sp
 408:	2f40 002c      	movel %d0,%sp@(44)
 40c:	6000 fdf0      	braw 1fe <___divsc3+0x1fe>
 410:	203c 3f80 0000 	movel #1065353216,%d0
 416:	6000 fe6c      	braw 284 <___divsc3+0x284>
 41a:	263c 3f80 0000 	movel #1065353216,%d3
 420:	6000 fe9a      	braw 2bc <___divsc3+0x2bc>

_divdc3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___divdc3>:
   0:	4fef fff0      	lea %sp@(-16),%sp
   4:	48e7 3f3e      	moveml %d2-%d7/%a2-%fp,%sp@-
   8:	2c49           	moveal %a1,%fp
   a:	242f 0050      	movel %sp@(80),%d2
   e:	0882 001f      	bclr #31,%d2
  12:	202f 0054      	movel %sp@(84),%d0
  16:	2600           	movel %d0,%d3
  18:	202f 0058      	movel %sp@(88),%d0
  1c:	0880 001f      	bclr #31,%d0
  20:	206f 005c      	moveal %sp@(92),%a0
  24:	2f08           	movel %a0,%sp@-
  26:	2f00           	movel %d0,%sp@-
  28:	2f03           	movel %d3,%sp@-
  2a:	2f02           	movel %d2,%sp@-
  2c:	4eb9 0000 0000 	jsr 0 <___divdc3>
  32:	4fef 0010      	lea %sp@(16),%sp
  36:	45f9 0000 0000 	lea 0 <___divdc3>,%a2
  3c:	4a80           	tstl %d0
  3e:	6c00 00fc      	bgew 13c <___divdc3+0x13c>
  42:	2f2f 005c      	movel %sp@(92),%sp@-
  46:	2f2f 005c      	movel %sp@(92),%sp@-
  4a:	2f2f 005c      	movel %sp@(92),%sp@-
  4e:	2f2f 005c      	movel %sp@(92),%sp@-
  52:	4e92           	jsr %a2@
  54:	4fef 0010      	lea %sp@(16),%sp
  58:	2400           	movel %d0,%d2
  5a:	2601           	movel %d1,%d3
  5c:	47f9 0000 0000 	lea 0 <___divdc3>,%a3
  62:	2f01           	movel %d1,%sp@-
  64:	2f02           	movel %d2,%sp@-
  66:	2f2f 005c      	movel %sp@(92),%sp@-
  6a:	2f2f 005c      	movel %sp@(92),%sp@-
  6e:	4e93           	jsr %a3@
  70:	4fef 0010      	lea %sp@(16),%sp
  74:	4bf9 0000 0000 	lea 0 <___divdc3>,%a5
  7a:	2f2f 005c      	movel %sp@(92),%sp@-
  7e:	2f2f 005c      	movel %sp@(92),%sp@-
  82:	2f01           	movel %d1,%sp@-
  84:	2f00           	movel %d0,%sp@-
  86:	4e95           	jsr %a5@
  88:	4fef 0010      	lea %sp@(16),%sp
  8c:	2800           	movel %d0,%d4
  8e:	2a01           	movel %d1,%d5
  90:	2f03           	movel %d3,%sp@-
  92:	2f02           	movel %d2,%sp@-
  94:	2f2f 004c      	movel %sp@(76),%sp@-
  98:	2f2f 004c      	movel %sp@(76),%sp@-
  9c:	4e93           	jsr %a3@
  9e:	4fef 0010      	lea %sp@(16),%sp
  a2:	2f2f 004c      	movel %sp@(76),%sp@-
  a6:	2f2f 004c      	movel %sp@(76),%sp@-
  aa:	2f01           	movel %d1,%sp@-
  ac:	2f00           	movel %d0,%sp@-
  ae:	4e95           	jsr %a5@
  b0:	4fef 000c      	lea %sp@(12),%sp
  b4:	2e85           	movel %d5,%sp@
  b6:	2f04           	movel %d4,%sp@-
  b8:	2f01           	movel %d1,%sp@-
  ba:	2f00           	movel %d0,%sp@-
  bc:	4e92           	jsr %a2@
  be:	4fef 0010      	lea %sp@(16),%sp
  c2:	2040           	moveal %d0,%a0
  c4:	2008           	movel %a0,%d0
  c6:	2c00           	movel %d0,%d6
  c8:	2e01           	movel %d1,%d7
  ca:	2f03           	movel %d3,%sp@-
  cc:	2f02           	movel %d2,%sp@-
  ce:	2f2f 0054      	movel %sp@(84),%sp@-
  d2:	2f2f 0054      	movel %sp@(84),%sp@-
  d6:	4e93           	jsr %a3@
  d8:	4fef 0010      	lea %sp@(16),%sp
  dc:	243c 0000 0000 	movel #0,%d2
  e2:	2f2f 0044      	movel %sp@(68),%sp@-
  e6:	2f2f 0044      	movel %sp@(68),%sp@-
  ea:	2f01           	movel %d1,%sp@-
  ec:	2f00           	movel %d0,%sp@-
  ee:	2042           	moveal %d2,%a0
  f0:	4e90           	jsr %a0@
  f2:	4fef 000c      	lea %sp@(12),%sp
  f6:	2e85           	movel %d5,%sp@
  f8:	2f04           	movel %d4,%sp@-
  fa:	2f01           	movel %d1,%sp@-
  fc:	2f00           	movel %d0,%sp@-
  fe:	4e92           	jsr %a2@
 100:	4fef 0010      	lea %sp@(16),%sp
 104:	2800           	movel %d0,%d4
 106:	2a01           	movel %d1,%d5
 108:	49f9 0000 0000 	lea 0 <___divdc3>,%a4
 10e:	2f07           	movel %d7,%sp@-
 110:	2f06           	movel %d6,%sp@-
 112:	2f07           	movel %d7,%sp@-
 114:	2f06           	movel %d6,%sp@-
 116:	4e94           	jsr %a4@
 118:	4fef 0010      	lea %sp@(16),%sp
 11c:	4a80           	tstl %d0
 11e:	6600 00fc      	bnew 21c <___divdc3+0x21c>
 122:	2c86           	movel %d6,%fp@
 124:	2d47 0004      	movel %d7,%fp@(4)
 128:	2d44 0008      	movel %d4,%fp@(8)
 12c:	2d45 000c      	movel %d5,%fp@(12)
 130:	200e           	movel %fp,%d0
 132:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 136:	4fef 0010      	lea %sp@(16),%sp
 13a:	4e75           	rts
 13c:	2f2f 0054      	movel %sp@(84),%sp@-
 140:	2f2f 0054      	movel %sp@(84),%sp@-
 144:	2f2f 0064      	movel %sp@(100),%sp@-
 148:	2f2f 0064      	movel %sp@(100),%sp@-
 14c:	4e92           	jsr %a2@
 14e:	4fef 0010      	lea %sp@(16),%sp
 152:	2400           	movel %d0,%d2
 154:	2601           	movel %d1,%d3
 156:	47f9 0000 0000 	lea 0 <___divdc3>,%a3
 15c:	2f01           	movel %d1,%sp@-
 15e:	2f02           	movel %d2,%sp@-
 160:	2f2f 0064      	movel %sp@(100),%sp@-
 164:	2f2f 0064      	movel %sp@(100),%sp@-
 168:	4e93           	jsr %a3@
 16a:	4fef 0010      	lea %sp@(16),%sp
 16e:	4bf9 0000 0000 	lea 0 <___divdc3>,%a5
 174:	2f2f 0054      	movel %sp@(84),%sp@-
 178:	2f2f 0054      	movel %sp@(84),%sp@-
 17c:	2f01           	movel %d1,%sp@-
 17e:	2f00           	movel %d0,%sp@-
 180:	4e95           	jsr %a5@
 182:	4fef 0010      	lea %sp@(16),%sp
 186:	2800           	movel %d0,%d4
 188:	2a01           	movel %d1,%d5
 18a:	2f03           	movel %d3,%sp@-
 18c:	2f02           	movel %d2,%sp@-
 18e:	2f2f 0054      	movel %sp@(84),%sp@-
 192:	2f2f 0054      	movel %sp@(84),%sp@-
 196:	4e93           	jsr %a3@
 198:	4fef 0010      	lea %sp@(16),%sp
 19c:	2f2f 0044      	movel %sp@(68),%sp@-
 1a0:	2f2f 0044      	movel %sp@(68),%sp@-
 1a4:	2f01           	movel %d1,%sp@-
 1a6:	2f00           	movel %d0,%sp@-
 1a8:	4e95           	jsr %a5@
 1aa:	4fef 000c      	lea %sp@(12),%sp
 1ae:	2e85           	movel %d5,%sp@
 1b0:	2f04           	movel %d4,%sp@-
 1b2:	2f01           	movel %d1,%sp@-
 1b4:	2f00           	movel %d0,%sp@-
 1b6:	4e92           	jsr %a2@
 1b8:	4fef 0010      	lea %sp@(16),%sp
 1bc:	2040           	moveal %d0,%a0
 1be:	2008           	movel %a0,%d0
 1c0:	2c00           	movel %d0,%d6
 1c2:	2e01           	movel %d1,%d7
 1c4:	2f03           	movel %d3,%sp@-
 1c6:	2f02           	movel %d2,%sp@-
 1c8:	2f2f 004c      	movel %sp@(76),%sp@-
 1cc:	2f2f 004c      	movel %sp@(76),%sp@-
 1d0:	4e93           	jsr %a3@
 1d2:	4fef 0010      	lea %sp@(16),%sp
 1d6:	243c 0000 0000 	movel #0,%d2
 1dc:	2f01           	movel %d1,%sp@-
 1de:	2f00           	movel %d0,%sp@-
 1e0:	2f2f 0054      	movel %sp@(84),%sp@-
 1e4:	2f2f 0054      	movel %sp@(84),%sp@-
 1e8:	2042           	moveal %d2,%a0
 1ea:	4e90           	jsr %a0@
 1ec:	4fef 000c      	lea %sp@(12),%sp
 1f0:	2e85           	movel %d5,%sp@
 1f2:	2f04           	movel %d4,%sp@-
 1f4:	2f01           	movel %d1,%sp@-
 1f6:	2f00           	movel %d0,%sp@-
 1f8:	4e92           	jsr %a2@
 1fa:	4fef 0010      	lea %sp@(16),%sp
 1fe:	2800           	movel %d0,%d4
 200:	2a01           	movel %d1,%d5
 202:	49f9 0000 0000 	lea 0 <___divdc3>,%a4
 208:	2f07           	movel %d7,%sp@-
 20a:	2f06           	movel %d6,%sp@-
 20c:	2f07           	movel %d7,%sp@-
 20e:	2f06           	movel %d6,%sp@-
 210:	4e94           	jsr %a4@
 212:	4fef 0010      	lea %sp@(16),%sp
 216:	4a80           	tstl %d0
 218:	6700 ff08      	beqw 122 <___divdc3+0x122>
 21c:	2f05           	movel %d5,%sp@-
 21e:	2f04           	movel %d4,%sp@-
 220:	2f05           	movel %d5,%sp@-
 222:	2f04           	movel %d4,%sp@-
 224:	4e94           	jsr %a4@
 226:	4fef 0010      	lea %sp@(16),%sp
 22a:	4a80           	tstl %d0
 22c:	6700 fef4      	beqw 122 <___divdc3+0x122>
 230:	45f9 0000 0000 	lea 0 <___divdc3>,%a2
 236:	42a7           	clrl %sp@-
 238:	42a7           	clrl %sp@-
 23a:	2f2f 005c      	movel %sp@(92),%sp@-
 23e:	2f2f 005c      	movel %sp@(92),%sp@-
 242:	4e92           	jsr %a2@
 244:	4fef 0010      	lea %sp@(16),%sp
 248:	4a80           	tstl %d0
 24a:	6600 00ae      	bnew 2fa <___divdc3+0x2fa>
 24e:	42a7           	clrl %sp@-
 250:	42a7           	clrl %sp@-
 252:	2f2f 0064      	movel %sp@(100),%sp@-
 256:	2f2f 0064      	movel %sp@(100),%sp@-
 25a:	4e92           	jsr %a2@
 25c:	4fef 0010      	lea %sp@(16),%sp
 260:	4a80           	tstl %d0
 262:	6600 0096      	bnew 2fa <___divdc3+0x2fa>
 266:	2f2f 0044      	movel %sp@(68),%sp@-
 26a:	2f2f 0044      	movel %sp@(68),%sp@-
 26e:	2f2f 004c      	movel %sp@(76),%sp@-
 272:	2f2f 004c      	movel %sp@(76),%sp@-
 276:	4e94           	jsr %a4@
 278:	4fef 0010      	lea %sp@(16),%sp
 27c:	4a80           	tstl %d0
 27e:	671c           	beqs 29c <___divdc3+0x29c>
 280:	2f2f 004c      	movel %sp@(76),%sp@-
 284:	2f2f 004c      	movel %sp@(76),%sp@-
 288:	2f2f 0054      	movel %sp@(84),%sp@-
 28c:	2f2f 0054      	movel %sp@(84),%sp@-
 290:	4e94           	jsr %a4@
 292:	4fef 0010      	lea %sp@(16),%sp
 296:	4a80           	tstl %d0
 298:	6600 04aa      	bnew 744 <___divdc3+0x744>
 29c:	243c 7ff0 0000 	movel #2146435072,%d2
 2a2:	4283           	clrl %d3
 2a4:	202f 0050      	movel %sp@(80),%d0
 2a8:	6c08           	bges 2b2 <___divdc3+0x2b2>
 2aa:	243c fff0 0000 	movel #-1048576,%d2
 2b0:	4283           	clrl %d3
 2b2:	2f2f 0044      	movel %sp@(68),%sp@-
 2b6:	2f2f 0044      	movel %sp@(68),%sp@-
 2ba:	2f03           	movel %d3,%sp@-
 2bc:	2f02           	movel %d2,%sp@-
 2be:	4e93           	jsr %a3@
 2c0:	4fef 0010      	lea %sp@(16),%sp
 2c4:	2040           	moveal %d0,%a0
 2c6:	2c08           	movel %a0,%d6
 2c8:	2e01           	movel %d1,%d7
 2ca:	2f03           	movel %d3,%sp@-
 2cc:	2f02           	movel %d2,%sp@-
 2ce:	2f2f 0054      	movel %sp@(84),%sp@-
 2d2:	2f2f 0054      	movel %sp@(84),%sp@-
 2d6:	4e93           	jsr %a3@
 2d8:	4fef 0010      	lea %sp@(16),%sp
 2dc:	2800           	movel %d0,%d4
 2de:	2a01           	movel %d1,%d5
 2e0:	2c86           	movel %d6,%fp@
 2e2:	2d47 0004      	movel %d7,%fp@(4)
 2e6:	2d44 0008      	movel %d4,%fp@(8)
 2ea:	2d45 000c      	movel %d5,%fp@(12)
 2ee:	200e           	movel %fp,%d0
 2f0:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 2f4:	4fef 0010      	lea %sp@(16),%sp
 2f8:	4e75           	rts
 2fa:	2f2f 0044      	movel %sp@(68),%sp@-
 2fe:	2f2f 0044      	movel %sp@(68),%sp@-
 302:	2f2f 004c      	movel %sp@(76),%sp@-
 306:	2f2f 004c      	movel %sp@(76),%sp@-
 30a:	2042           	moveal %d2,%a0
 30c:	4e90           	jsr %a0@
 30e:	4fef 0010      	lea %sp@(16),%sp
 312:	2040           	moveal %d0,%a0
 314:	2241           	moveal %d1,%a1
 316:	2f48 0034      	movel %a0,%sp@(52)
 31a:	2f49 0038      	movel %a1,%sp@(56)
 31e:	2f01           	movel %d1,%sp@-
 320:	2f08           	movel %a0,%sp@-
 322:	2f01           	movel %d1,%sp@-
 324:	2f08           	movel %a0,%sp@-
 326:	4e94           	jsr %a4@
 328:	4fef 0010      	lea %sp@(16),%sp
 32c:	4a80           	tstl %d0
 32e:	56c3           	sne %d3
 330:	0203 0001      	andib #1,%d3
 334:	2f2f 0044      	movel %sp@(68),%sp@-
 338:	2f2f 0044      	movel %sp@(68),%sp@-
 33c:	2f2f 004c      	movel %sp@(76),%sp@-
 340:	2f2f 004c      	movel %sp@(76),%sp@-
 344:	4e94           	jsr %a4@
 346:	4fef 0010      	lea %sp@(16),%sp
 34a:	4a80           	tstl %d0
 34c:	57c0           	seq %d0
 34e:	4400           	negb %d0
 350:	c600           	andb %d0,%d3
 352:	6600 0268      	bnew 5bc <___divdc3+0x5bc>
 356:	2f2f 004c      	movel %sp@(76),%sp@-
 35a:	2f2f 004c      	movel %sp@(76),%sp@-
 35e:	2f2f 0054      	movel %sp@(84),%sp@-
 362:	2f2f 0054      	movel %sp@(84),%sp@-
 366:	2042           	moveal %d2,%a0
 368:	4e90           	jsr %a0@
 36a:	4fef 0010      	lea %sp@(16),%sp
 36e:	2040           	moveal %d0,%a0
 370:	2f01           	movel %d1,%sp@-
 372:	2f08           	movel %a0,%sp@-
 374:	2f01           	movel %d1,%sp@-
 376:	2f08           	movel %a0,%sp@-
 378:	4e94           	jsr %a4@
 37a:	4fef 0010      	lea %sp@(16),%sp
 37e:	4a80           	tstl %d0
 380:	671c           	beqs 39e <___divdc3+0x39e>
 382:	2f2f 004c      	movel %sp@(76),%sp@-
 386:	2f2f 004c      	movel %sp@(76),%sp@-
 38a:	2f2f 0054      	movel %sp@(84),%sp@-
 38e:	2f2f 0054      	movel %sp@(84),%sp@-
 392:	4e94           	jsr %a4@
 394:	4fef 0010      	lea %sp@(16),%sp
 398:	4a80           	tstl %d0
 39a:	6700 0220      	beqw 5bc <___divdc3+0x5bc>
 39e:	2f2f 0054      	movel %sp@(84),%sp@-
 3a2:	2f2f 0054      	movel %sp@(84),%sp@-
 3a6:	2f2f 005c      	movel %sp@(92),%sp@-
 3aa:	2f2f 005c      	movel %sp@(92),%sp@-
 3ae:	2042           	moveal %d2,%a0
 3b0:	4e90           	jsr %a0@
 3b2:	4fef 0010      	lea %sp@(16),%sp
 3b6:	2040           	moveal %d0,%a0
 3b8:	2f01           	movel %d1,%sp@-
 3ba:	2f08           	movel %a0,%sp@-
 3bc:	2f01           	movel %d1,%sp@-
 3be:	2f08           	movel %a0,%sp@-
 3c0:	4e94           	jsr %a4@
 3c2:	4fef 0010      	lea %sp@(16),%sp
 3c6:	4a80           	tstl %d0
 3c8:	56c3           	sne %d3
 3ca:	0203 0001      	andib #1,%d3
 3ce:	2f2f 0054      	movel %sp@(84),%sp@-
 3d2:	2f2f 0054      	movel %sp@(84),%sp@-
 3d6:	2f2f 005c      	movel %sp@(92),%sp@-
 3da:	2f2f 005c      	movel %sp@(92),%sp@-
 3de:	4e94           	jsr %a4@
 3e0:	4fef 0010      	lea %sp@(16),%sp
 3e4:	4a80           	tstl %d0
 3e6:	57c0           	seq %d0
 3e8:	4400           	negb %d0
 3ea:	c600           	andb %d0,%d3
 3ec:	664a           	bnes 438 <___divdc3+0x438>
 3ee:	2f2f 005c      	movel %sp@(92),%sp@-
 3f2:	2f2f 005c      	movel %sp@(92),%sp@-
 3f6:	2f2f 0064      	movel %sp@(100),%sp@-
 3fa:	2f2f 0064      	movel %sp@(100),%sp@-
 3fe:	2042           	moveal %d2,%a0
 400:	4e90           	jsr %a0@
 402:	4fef 0010      	lea %sp@(16),%sp
 406:	2040           	moveal %d0,%a0
 408:	2f01           	movel %d1,%sp@-
 40a:	2f08           	movel %a0,%sp@-
 40c:	2f01           	movel %d1,%sp@-
 40e:	2f08           	movel %a0,%sp@-
 410:	4e94           	jsr %a4@
 412:	4fef 0010      	lea %sp@(16),%sp
 416:	4a80           	tstl %d0
 418:	6700 fd08      	beqw 122 <___divdc3+0x122>
 41c:	2f2f 005c      	movel %sp@(92),%sp@-
 420:	2f2f 005c      	movel %sp@(92),%sp@-
 424:	2f2f 0064      	movel %sp@(100),%sp@-
 428:	2f2f 0064      	movel %sp@(100),%sp@-
 42c:	4e94           	jsr %a4@
 42e:	4fef 0010      	lea %sp@(16),%sp
 432:	4a80           	tstl %d0
 434:	6600 fcec      	bnew 122 <___divdc3+0x122>
 438:	2f2f 0038      	movel %sp@(56),%sp@-
 43c:	2f2f 0038      	movel %sp@(56),%sp@-
 440:	2f2f 0040      	movel %sp@(64),%sp@-
 444:	2f2f 0040      	movel %sp@(64),%sp@-
 448:	4e94           	jsr %a4@
 44a:	4fef 0010      	lea %sp@(16),%sp
 44e:	4a80           	tstl %d0
 450:	6600 fcd0      	bnew 122 <___divdc3+0x122>
 454:	2f2f 004c      	movel %sp@(76),%sp@-
 458:	2f2f 004c      	movel %sp@(76),%sp@-
 45c:	2f2f 0054      	movel %sp@(84),%sp@-
 460:	2f2f 0054      	movel %sp@(84),%sp@-
 464:	2042           	moveal %d2,%a0
 466:	4e90           	jsr %a0@
 468:	4fef 0010      	lea %sp@(16),%sp
 46c:	2040           	moveal %d0,%a0
 46e:	2f01           	movel %d1,%sp@-
 470:	2f08           	movel %a0,%sp@-
 472:	2f01           	movel %d1,%sp@-
 474:	2f08           	movel %a0,%sp@-
 476:	4e94           	jsr %a4@
 478:	4fef 0010      	lea %sp@(16),%sp
 47c:	4a80           	tstl %d0
 47e:	6600 fca2      	bnew 122 <___divdc3+0x122>
 482:	203c 3ff0 0000 	movel #1072693248,%d0
 488:	4a03           	tstb %d3
 48a:	6602           	bnes 48e <___divdc3+0x48e>
 48c:	7000           	moveq #0,%d0
 48e:	2800           	movel %d0,%d4
 490:	0884 001f      	bclr #31,%d4
 494:	7a00           	moveq #0,%d5
 496:	202f 0050      	movel %sp@(80),%d0
 49a:	6c06           	bges 4a2 <___divdc3+0x4a2>
 49c:	0684 8000 0000 	addil #-2147483648,%d4
 4a2:	2f2f 005c      	movel %sp@(92),%sp@-
 4a6:	2f2f 005c      	movel %sp@(92),%sp@-
 4aa:	2f2f 0064      	movel %sp@(100),%sp@-
 4ae:	2f2f 0064      	movel %sp@(100),%sp@-
 4b2:	2042           	moveal %d2,%a0
 4b4:	4e90           	jsr %a0@
 4b6:	4fef 0010      	lea %sp@(16),%sp
 4ba:	2040           	moveal %d0,%a0
 4bc:	2f01           	movel %d1,%sp@-
 4be:	2f08           	movel %a0,%sp@-
 4c0:	2f01           	movel %d1,%sp@-
 4c2:	2f08           	movel %a0,%sp@-
 4c4:	4e94           	jsr %a4@
 4c6:	4fef 0010      	lea %sp@(16),%sp
 4ca:	4a80           	tstl %d0
 4cc:	671c           	beqs 4ea <___divdc3+0x4ea>
 4ce:	2f2f 005c      	movel %sp@(92),%sp@-
 4d2:	2f2f 005c      	movel %sp@(92),%sp@-
 4d6:	2f2f 0064      	movel %sp@(100),%sp@-
 4da:	2f2f 0064      	movel %sp@(100),%sp@-
 4de:	4e94           	jsr %a4@
 4e0:	4fef 0010      	lea %sp@(16),%sp
 4e4:	4a80           	tstl %d0
 4e6:	6700 00ca      	beqw 5b2 <___divdc3+0x5b2>
 4ea:	7000           	moveq #0,%d0
 4ec:	0880 001f      	bclr #31,%d0
 4f0:	2040           	moveal %d0,%a0
 4f2:	93c9           	subal %a1,%a1
 4f4:	202f 0058      	movel %sp@(88),%d0
 4f8:	6c06           	bges 500 <___divdc3+0x500>
 4fa:	d1fc 8000 0000 	addal #-2147483648,%a0
 500:	2f05           	movel %d5,%sp@-
 502:	2f04           	movel %d4,%sp@-
 504:	2f2f 004c      	movel %sp@(76),%sp@-
 508:	2f2f 004c      	movel %sp@(76),%sp@-
 50c:	2f48 0040      	movel %a0,%sp@(64)
 510:	2f49 003c      	movel %a1,%sp@(60)
 514:	4e93           	jsr %a3@
 516:	4fef 0010      	lea %sp@(16),%sp
 51a:	2c00           	movel %d0,%d6
 51c:	2e01           	movel %d1,%d7
 51e:	206f 0030      	moveal %sp@(48),%a0
 522:	226f 002c      	moveal %sp@(44),%a1
 526:	2f09           	movel %a1,%sp@-
 528:	2f08           	movel %a0,%sp@-
 52a:	2f2f 0054      	movel %sp@(84),%sp@-
 52e:	2f2f 0054      	movel %sp@(84),%sp@-
 532:	2f48 0040      	movel %a0,%sp@(64)
 536:	2f49 003c      	movel %a1,%sp@(60)
 53a:	4e93           	jsr %a3@
 53c:	4fef 000c      	lea %sp@(12),%sp
 540:	2e81           	movel %d1,%sp@
 542:	2f00           	movel %d0,%sp@-
 544:	2f07           	movel %d7,%sp@-
 546:	2f06           	movel %d6,%sp@-
 548:	4e95           	jsr %a5@
 54a:	4fef 000c      	lea %sp@(12),%sp
 54e:	4297           	clrl %sp@
 550:	42a7           	clrl %sp@-
 552:	2f01           	movel %d1,%sp@-
 554:	2f00           	movel %d0,%sp@-
 556:	4e93           	jsr %a3@
 558:	4fef 0010      	lea %sp@(16),%sp
 55c:	2600           	movel %d0,%d3
 55e:	2003           	movel %d3,%d0
 560:	2c00           	movel %d0,%d6
 562:	2e01           	movel %d1,%d7
 564:	2f05           	movel %d5,%sp@-
 566:	2f04           	movel %d4,%sp@-
 568:	2f2f 0054      	movel %sp@(84),%sp@-
 56c:	2f2f 0054      	movel %sp@(84),%sp@-
 570:	4e93           	jsr %a3@
 572:	4fef 0010      	lea %sp@(16),%sp
 576:	2800           	movel %d0,%d4
 578:	2a01           	movel %d1,%d5
 57a:	206f 0030      	moveal %sp@(48),%a0
 57e:	226f 002c      	moveal %sp@(44),%a1
 582:	2f09           	movel %a1,%sp@-
 584:	2f08           	movel %a0,%sp@-
 586:	2f2f 004c      	movel %sp@(76),%sp@-
 58a:	2f2f 004c      	movel %sp@(76),%sp@-
 58e:	4e93           	jsr %a3@
 590:	4fef 000c      	lea %sp@(12),%sp
 594:	2e81           	movel %d1,%sp@
 596:	2f00           	movel %d0,%sp@-
 598:	2f05           	movel %d5,%sp@-
 59a:	2f04           	movel %d4,%sp@-
 59c:	2042           	moveal %d2,%a0
 59e:	4e90           	jsr %a0@
 5a0:	4fef 000c      	lea %sp@(12),%sp
 5a4:	4297           	clrl %sp@
 5a6:	42a7           	clrl %sp@-
 5a8:	2f01           	movel %d1,%sp@-
 5aa:	2f00           	movel %d0,%sp@-
 5ac:	4e93           	jsr %a3@
 5ae:	6000 fd28      	braw 2d8 <___divdc3+0x2d8>
 5b2:	203c 3ff0 0000 	movel #1072693248,%d0
 5b8:	6000 ff32      	braw 4ec <___divdc3+0x4ec>
 5bc:	2f2f 0054      	movel %sp@(84),%sp@-
 5c0:	2f2f 0054      	movel %sp@(84),%sp@-
 5c4:	2f2f 005c      	movel %sp@(92),%sp@-
 5c8:	2f2f 005c      	movel %sp@(92),%sp@-
 5cc:	2042           	moveal %d2,%a0
 5ce:	4e90           	jsr %a0@
 5d0:	4fef 0010      	lea %sp@(16),%sp
 5d4:	2040           	moveal %d0,%a0
 5d6:	2f01           	movel %d1,%sp@-
 5d8:	2f08           	movel %a0,%sp@-
 5da:	2f01           	movel %d1,%sp@-
 5dc:	2f08           	movel %a0,%sp@-
 5de:	4e94           	jsr %a4@
 5e0:	4fef 0010      	lea %sp@(16),%sp
 5e4:	4a80           	tstl %d0
 5e6:	6600 fdb6      	bnew 39e <___divdc3+0x39e>
 5ea:	2f2f 005c      	movel %sp@(92),%sp@-
 5ee:	2f2f 005c      	movel %sp@(92),%sp@-
 5f2:	2f2f 0064      	movel %sp@(100),%sp@-
 5f6:	2f2f 0064      	movel %sp@(100),%sp@-
 5fa:	2042           	moveal %d2,%a0
 5fc:	4e90           	jsr %a0@
 5fe:	4fef 0010      	lea %sp@(16),%sp
 602:	2040           	moveal %d0,%a0
 604:	2f01           	movel %d1,%sp@-
 606:	2f08           	movel %a0,%sp@-
 608:	2f01           	movel %d1,%sp@-
 60a:	2f08           	movel %a0,%sp@-
 60c:	4e94           	jsr %a4@
 60e:	4fef 0010      	lea %sp@(16),%sp
 612:	4a80           	tstl %d0
 614:	6600 fd88      	bnew 39e <___divdc3+0x39e>
 618:	203c 3ff0 0000 	movel #1072693248,%d0
 61e:	4a03           	tstb %d3
 620:	6602           	bnes 624 <___divdc3+0x624>
 622:	7000           	moveq #0,%d0
 624:	0880 001f      	bclr #31,%d0
 628:	2f40 0034      	movel %d0,%sp@(52)
 62c:	7000           	moveq #0,%d0
 62e:	2f40 0038      	movel %d0,%sp@(56)
 632:	202f 0040      	movel %sp@(64),%d0
 636:	6c0e           	bges 646 <___divdc3+0x646>
 638:	202f 0034      	movel %sp@(52),%d0
 63c:	0680 8000 0000 	addil #-2147483648,%d0
 642:	2f40 0034      	movel %d0,%sp@(52)
 646:	2f2f 004c      	movel %sp@(76),%sp@-
 64a:	2f2f 004c      	movel %sp@(76),%sp@-
 64e:	2f2f 0054      	movel %sp@(84),%sp@-
 652:	2f2f 0054      	movel %sp@(84),%sp@-
 656:	2042           	moveal %d2,%a0
 658:	4e90           	jsr %a0@
 65a:	4fef 0010      	lea %sp@(16),%sp
 65e:	2040           	moveal %d0,%a0
 660:	2f01           	movel %d1,%sp@-
 662:	2f08           	movel %a0,%sp@-
 664:	2f01           	movel %d1,%sp@-
 666:	2f08           	movel %a0,%sp@-
 668:	4e94           	jsr %a4@
 66a:	4fef 0010      	lea %sp@(16),%sp
 66e:	4a80           	tstl %d0
 670:	671c           	beqs 68e <___divdc3+0x68e>
 672:	2f2f 004c      	movel %sp@(76),%sp@-
 676:	2f2f 004c      	movel %sp@(76),%sp@-
 67a:	2f2f 0054      	movel %sp@(84),%sp@-
 67e:	2f2f 0054      	movel %sp@(84),%sp@-
 682:	4e94           	jsr %a4@
 684:	4fef 0010      	lea %sp@(16),%sp
 688:	4a80           	tstl %d0
 68a:	6700 00e0      	beqw 76c <___divdc3+0x76c>
 68e:	7000           	moveq #0,%d0
 690:	2800           	movel %d0,%d4
 692:	0884 001f      	bclr #31,%d4
 696:	7a00           	moveq #0,%d5
 698:	202f 0048      	movel %sp@(72),%d0
 69c:	6c06           	bges 6a4 <___divdc3+0x6a4>
 69e:	0684 8000 0000 	addil #-2147483648,%d4
 6a4:	2f2f 0054      	movel %sp@(84),%sp@-
 6a8:	2f2f 0054      	movel %sp@(84),%sp@-
 6ac:	2f2f 0040      	movel %sp@(64),%sp@-
 6b0:	2f2f 0040      	movel %sp@(64),%sp@-
 6b4:	4e93           	jsr %a3@
 6b6:	4fef 0010      	lea %sp@(16),%sp
 6ba:	2c00           	movel %d0,%d6
 6bc:	2e01           	movel %d1,%d7
 6be:	2f2f 005c      	movel %sp@(92),%sp@-
 6c2:	2f2f 005c      	movel %sp@(92),%sp@-
 6c6:	2f05           	movel %d5,%sp@-
 6c8:	2f04           	movel %d4,%sp@-
 6ca:	4e93           	jsr %a3@
 6cc:	4fef 000c      	lea %sp@(12),%sp
 6d0:	2e81           	movel %d1,%sp@
 6d2:	2f00           	movel %d0,%sp@-
 6d4:	2f07           	movel %d7,%sp@-
 6d6:	2f06           	movel %d6,%sp@-
 6d8:	4e95           	jsr %a5@
 6da:	4fef 000c      	lea %sp@(12),%sp
 6de:	4297           	clrl %sp@
 6e0:	2f3c 7ff0 0000 	movel #2146435072,%sp@-
 6e6:	2f01           	movel %d1,%sp@-
 6e8:	2f00           	movel %d0,%sp@-
 6ea:	4e93           	jsr %a3@
 6ec:	4fef 0010      	lea %sp@(16),%sp
 6f0:	2040           	moveal %d0,%a0
 6f2:	2c08           	movel %a0,%d6
 6f4:	2e01           	movel %d1,%d7
 6f6:	2f2f 0054      	movel %sp@(84),%sp@-
 6fa:	2f2f 0054      	movel %sp@(84),%sp@-
 6fe:	2f05           	movel %d5,%sp@-
 700:	2f04           	movel %d4,%sp@-
 702:	4e93           	jsr %a3@
 704:	4fef 0010      	lea %sp@(16),%sp
 708:	2800           	movel %d0,%d4
 70a:	2a01           	movel %d1,%d5
 70c:	2f2f 005c      	movel %sp@(92),%sp@-
 710:	2f2f 005c      	movel %sp@(92),%sp@-
 714:	2f2f 0040      	movel %sp@(64),%sp@-
 718:	2f2f 0040      	movel %sp@(64),%sp@-
 71c:	4e93           	jsr %a3@
 71e:	4fef 000c      	lea %sp@(12),%sp
 722:	2e81           	movel %d1,%sp@
 724:	2f00           	movel %d0,%sp@-
 726:	2f05           	movel %d5,%sp@-
 728:	2f04           	movel %d4,%sp@-
 72a:	2042           	moveal %d2,%a0
 72c:	4e90           	jsr %a0@
 72e:	4fef 000c      	lea %sp@(12),%sp
 732:	4297           	clrl %sp@
 734:	2f3c 7ff0 0000 	movel #2146435072,%sp@-
 73a:	2f01           	movel %d1,%sp@-
 73c:	2f00           	movel %d0,%sp@-
 73e:	4e93           	jsr %a3@
 740:	6000 fb96      	braw 2d8 <___divdc3+0x2d8>
 744:	2f2f 0044      	movel %sp@(68),%sp@-
 748:	2f2f 0044      	movel %sp@(68),%sp@-
 74c:	2f2f 004c      	movel %sp@(76),%sp@-
 750:	2f2f 004c      	movel %sp@(76),%sp@-
 754:	2042           	moveal %d2,%a0
 756:	4e90           	jsr %a0@
 758:	4fef 0010      	lea %sp@(16),%sp
 75c:	2040           	moveal %d0,%a0
 75e:	2008           	movel %a0,%d0
 760:	2f40 0034      	movel %d0,%sp@(52)
 764:	2f41 0038      	movel %d1,%sp@(56)
 768:	6000 fc34      	braw 39e <___divdc3+0x39e>
 76c:	203c 3ff0 0000 	movel #1072693248,%d0
 772:	6000 ff1c      	braw 690 <___divdc3+0x690>
	...

_divxc3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___divxc3-0x30>:
   0:	3fff           	.short 0x3fff
   2:	0000 8000      	orib #0,%d0
	...
  16:	0000 7fff      	orib #-1,%d0
  1a:	0000 8000      	orib #0,%d0
  1e:	0000 0000      	orib #0,%d0
  22:	0000 ffff      	orib #-1,%d0
  26:	0000 8000      	orib #0,%d0
  2a:	0000 0000      	orib #0,%d0
	...

00000030 <___divxc3>:
  30:	4fef ff84      	lea %sp@(-124),%sp
  34:	48e7 3f3e      	moveml %d2-%d7/%a2-%fp,%sp@-
  38:	2a49           	moveal %a1,%a5
  3a:	262f 00d0      	movel %sp@(208),%d3
  3e:	282f 00d4      	movel %sp@(212),%d4
  42:	2a2f 00d8      	movel %sp@(216),%d5
  46:	202f 00c4      	movel %sp@(196),%d0
  4a:	0880 001f      	bclr #31,%d0
  4e:	2c2f 00c8      	movel %sp@(200),%d6
  52:	2206           	movel %d6,%d1
  54:	206f 00cc      	moveal %sp@(204),%a0
  58:	2408           	movel %a0,%d2
  5a:	2c03           	movel %d3,%d6
  5c:	0886 001f      	bclr #31,%d6
  60:	2246           	moveal %d6,%a1
  62:	2444           	moveal %d4,%a2
  64:	2645           	moveal %d5,%a3
  66:	2f0b           	movel %a3,%sp@-
  68:	2f0a           	movel %a2,%sp@-
  6a:	2f09           	movel %a1,%sp@-
  6c:	2f02           	movel %d2,%sp@-
  6e:	2f01           	movel %d1,%sp@-
  70:	2f00           	movel %d0,%sp@-
  72:	4eb9 0000 0000 	jsr 0 <___divxc3-0x30>
  78:	4fef 0018      	lea %sp@(24),%sp
  7c:	2c3c 0000 0000 	movel #0,%d6
  82:	45ef 009c      	lea %sp@(156),%a2
  86:	4a80           	tstl %d0
  88:	6c00 01de      	bgew 268 <___divxc3+0x238>
  8c:	2f05           	movel %d5,%sp@-
  8e:	2f04           	movel %d4,%sp@-
  90:	2f03           	movel %d3,%sp@-
  92:	2f2f 00d8      	movel %sp@(216),%sp@-
  96:	2f2f 00d8      	movel %sp@(216),%sp@-
  9a:	2f2f 00d8      	movel %sp@(216),%sp@-
  9e:	224a           	moveal %a2,%a1
  a0:	2046           	moveal %d6,%a0
  a2:	4e90           	jsr %a0@
  a4:	4fef 0018      	lea %sp@(24),%sp
  a8:	2f6f 009c 003c 	movel %sp@(156),%sp@(60)
  ae:	2f6f 00a0 0040 	movel %sp@(160),%sp@(64)
  b4:	2f6f 00a4 0044 	movel %sp@(164),%sp@(68)
  ba:	47f9 0000 0000 	lea 0 <___divxc3-0x30>,%a3
  c0:	2f2f 0044      	movel %sp@(68),%sp@-
  c4:	2f2f 0044      	movel %sp@(68),%sp@-
  c8:	2f2f 0044      	movel %sp@(68),%sp@-
  cc:	2f2f 00d8      	movel %sp@(216),%sp@-
  d0:	2f2f 00d8      	movel %sp@(216),%sp@-
  d4:	2f2f 00d8      	movel %sp@(216),%sp@-
  d8:	224a           	moveal %a2,%a1
  da:	4e93           	jsr %a3@
  dc:	4fef 0018      	lea %sp@(24),%sp
  e0:	243c 0000 0000 	movel #0,%d2
  e6:	49ef 0090      	lea %sp@(144),%a4
  ea:	2f05           	movel %d5,%sp@-
  ec:	2f04           	movel %d4,%sp@-
  ee:	2f03           	movel %d3,%sp@-
  f0:	2f2f 00b0      	movel %sp@(176),%sp@-
  f4:	2f2f 00b0      	movel %sp@(176),%sp@-
  f8:	2f2f 00b0      	movel %sp@(176),%sp@-
  fc:	224c           	moveal %a4,%a1
  fe:	2042           	moveal %d2,%a0
 100:	4e90           	jsr %a0@
 102:	4fef 0018      	lea %sp@(24),%sp
 106:	2f6f 0090 0060 	movel %sp@(144),%sp@(96)
 10c:	2f6f 0094 0064 	movel %sp@(148),%sp@(100)
 112:	2f6f 0098 0068 	movel %sp@(152),%sp@(104)
 118:	2f2f 0044      	movel %sp@(68),%sp@-
 11c:	2f2f 0044      	movel %sp@(68),%sp@-
 120:	2f2f 0044      	movel %sp@(68),%sp@-
 124:	2f2f 00c0      	movel %sp@(192),%sp@-
 128:	2f2f 00c0      	movel %sp@(192),%sp@-
 12c:	2f2f 00c0      	movel %sp@(192),%sp@-
 130:	224a           	moveal %a2,%a1
 132:	4e93           	jsr %a3@
 134:	4fef 0018      	lea %sp@(24),%sp
 138:	2f2f 00c0      	movel %sp@(192),%sp@-
 13c:	2f2f 00c0      	movel %sp@(192),%sp@-
 140:	2f2f 00c0      	movel %sp@(192),%sp@-
 144:	2f2f 00b0      	movel %sp@(176),%sp@-
 148:	2f2f 00b0      	movel %sp@(176),%sp@-
 14c:	2f2f 00b0      	movel %sp@(176),%sp@-
 150:	224c           	moveal %a4,%a1
 152:	2042           	moveal %d2,%a0
 154:	4e90           	jsr %a0@
 156:	4fef 0018      	lea %sp@(24),%sp
 15a:	4def 0084      	lea %sp@(132),%fp
 15e:	2f2f 0068      	movel %sp@(104),%sp@-
 162:	2f2f 0068      	movel %sp@(104),%sp@-
 166:	2f2f 0068      	movel %sp@(104),%sp@-
 16a:	2f2f 00a4      	movel %sp@(164),%sp@-
 16e:	2f2f 00a4      	movel %sp@(164),%sp@-
 172:	2f2f 00a4      	movel %sp@(164),%sp@-
 176:	224e           	moveal %fp,%a1
 178:	2046           	moveal %d6,%a0
 17a:	4e90           	jsr %a0@
 17c:	4fef 0018      	lea %sp@(24),%sp
 180:	2f6f 0084 0048 	movel %sp@(132),%sp@(72)
 186:	2f6f 0088 004c 	movel %sp@(136),%sp@(76)
 18c:	2f6f 008c 0050 	movel %sp@(140),%sp@(80)
 192:	2f2f 0044      	movel %sp@(68),%sp@-
 196:	2f2f 0044      	movel %sp@(68),%sp@-
 19a:	2f2f 0044      	movel %sp@(68),%sp@-
 19e:	2f2f 00cc      	movel %sp@(204),%sp@-
 1a2:	2f2f 00cc      	movel %sp@(204),%sp@-
 1a6:	2f2f 00cc      	movel %sp@(204),%sp@-
 1aa:	224a           	moveal %a2,%a1
 1ac:	4e93           	jsr %a3@
 1ae:	4fef 0018      	lea %sp@(24),%sp
 1b2:	2e3c 0000 0000 	movel #0,%d7
 1b8:	2f2f 00b4      	movel %sp@(180),%sp@-
 1bc:	2f2f 00b4      	movel %sp@(180),%sp@-
 1c0:	2f2f 00b4      	movel %sp@(180),%sp@-
 1c4:	2f2f 00b0      	movel %sp@(176),%sp@-
 1c8:	2f2f 00b0      	movel %sp@(176),%sp@-
 1cc:	2f2f 00b0      	movel %sp@(176),%sp@-
 1d0:	224c           	moveal %a4,%a1
 1d2:	2047           	moveal %d7,%a0
 1d4:	4e90           	jsr %a0@
 1d6:	4fef 0018      	lea %sp@(24),%sp
 1da:	2f2f 0068      	movel %sp@(104),%sp@-
 1de:	2f2f 0068      	movel %sp@(104),%sp@-
 1e2:	2f2f 0068      	movel %sp@(104),%sp@-
 1e6:	2f2f 00a4      	movel %sp@(164),%sp@-
 1ea:	2f2f 00a4      	movel %sp@(164),%sp@-
 1ee:	2f2f 00a4      	movel %sp@(164),%sp@-
 1f2:	224e           	moveal %fp,%a1
 1f4:	2046           	moveal %d6,%a0
 1f6:	4e90           	jsr %a0@
 1f8:	4fef 0018      	lea %sp@(24),%sp
 1fc:	2f6f 0084 003c 	movel %sp@(132),%sp@(60)
 202:	2f6f 0088 0040 	movel %sp@(136),%sp@(64)
 208:	2f6f 008c 0044 	movel %sp@(140),%sp@(68)
 20e:	2c3c 0000 0000 	movel #0,%d6
 214:	2f2f 0050      	movel %sp@(80),%sp@-
 218:	2f2f 0050      	movel %sp@(80),%sp@-
 21c:	2f2f 0050      	movel %sp@(80),%sp@-
 220:	2f2f 005c      	movel %sp@(92),%sp@-
 224:	2f2f 005c      	movel %sp@(92),%sp@-
 228:	2f2f 005c      	movel %sp@(92),%sp@-
 22c:	2046           	moveal %d6,%a0
 22e:	4e90           	jsr %a0@
 230:	4fef 0018      	lea %sp@(24),%sp
 234:	4a80           	tstl %d0
 236:	6600 01de      	bnew 416 <___divxc3+0x3e6>
 23a:	2aaf 0048      	movel %sp@(72),%a5@
 23e:	2b6f 004c 0004 	movel %sp@(76),%a5@(4)
 244:	2b6f 0050 0008 	movel %sp@(80),%a5@(8)
 24a:	2b6f 003c 000c 	movel %sp@(60),%a5@(12)
 250:	2b6f 0040 0010 	movel %sp@(64),%a5@(16)
 256:	2b6f 0044 0014 	movel %sp@(68),%a5@(20)
 25c:	200d           	movel %a5,%d0
 25e:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 262:	4fef 007c      	lea %sp@(124),%sp
 266:	4e75           	rts
 268:	2f2f 00cc      	movel %sp@(204),%sp@-
 26c:	2f2f 00cc      	movel %sp@(204),%sp@-
 270:	2f2f 00cc      	movel %sp@(204),%sp@-
 274:	2f05           	movel %d5,%sp@-
 276:	2f04           	movel %d4,%sp@-
 278:	2f03           	movel %d3,%sp@-
 27a:	224a           	moveal %a2,%a1
 27c:	2046           	moveal %d6,%a0
 27e:	4e90           	jsr %a0@
 280:	4fef 0018      	lea %sp@(24),%sp
 284:	2f6f 009c 003c 	movel %sp@(156),%sp@(60)
 28a:	2f6f 00a0 0040 	movel %sp@(160),%sp@(64)
 290:	2f6f 00a4 0044 	movel %sp@(164),%sp@(68)
 296:	47f9 0000 0000 	lea 0 <___divxc3-0x30>,%a3
 29c:	2f2f 0044      	movel %sp@(68),%sp@-
 2a0:	2f2f 0044      	movel %sp@(68),%sp@-
 2a4:	2f2f 0044      	movel %sp@(68),%sp@-
 2a8:	2f05           	movel %d5,%sp@-
 2aa:	2f04           	movel %d4,%sp@-
 2ac:	2f03           	movel %d3,%sp@-
 2ae:	224a           	moveal %a2,%a1
 2b0:	4e93           	jsr %a3@
 2b2:	4fef 0018      	lea %sp@(24),%sp
 2b6:	243c 0000 0000 	movel #0,%d2
 2bc:	49ef 0090      	lea %sp@(144),%a4
 2c0:	2f2f 00cc      	movel %sp@(204),%sp@-
 2c4:	2f2f 00cc      	movel %sp@(204),%sp@-
 2c8:	2f2f 00cc      	movel %sp@(204),%sp@-
 2cc:	2f2f 00b0      	movel %sp@(176),%sp@-
 2d0:	2f2f 00b0      	movel %sp@(176),%sp@-
 2d4:	2f2f 00b0      	movel %sp@(176),%sp@-
 2d8:	224c           	moveal %a4,%a1
 2da:	2042           	moveal %d2,%a0
 2dc:	4e90           	jsr %a0@
 2de:	4fef 0018      	lea %sp@(24),%sp
 2e2:	2f6f 0090 0060 	movel %sp@(144),%sp@(96)
 2e8:	2f6f 0094 0064 	movel %sp@(148),%sp@(100)
 2ee:	2f6f 0098 0068 	movel %sp@(152),%sp@(104)
 2f4:	2f2f 0044      	movel %sp@(68),%sp@-
 2f8:	2f2f 0044      	movel %sp@(68),%sp@-
 2fc:	2f2f 0044      	movel %sp@(68),%sp@-
 300:	2f2f 00cc      	movel %sp@(204),%sp@-
 304:	2f2f 00cc      	movel %sp@(204),%sp@-
 308:	2f2f 00cc      	movel %sp@(204),%sp@-
 30c:	224a           	moveal %a2,%a1
 30e:	4e93           	jsr %a3@
 310:	4fef 0018      	lea %sp@(24),%sp
 314:	2f2f 00b4      	movel %sp@(180),%sp@-
 318:	2f2f 00b4      	movel %sp@(180),%sp@-
 31c:	2f2f 00b4      	movel %sp@(180),%sp@-
 320:	2f2f 00b0      	movel %sp@(176),%sp@-
 324:	2f2f 00b0      	movel %sp@(176),%sp@-
 328:	2f2f 00b0      	movel %sp@(176),%sp@-
 32c:	224c           	moveal %a4,%a1
 32e:	2042           	moveal %d2,%a0
 330:	4e90           	jsr %a0@
 332:	4fef 0018      	lea %sp@(24),%sp
 336:	4def 0084      	lea %sp@(132),%fp
 33a:	2f2f 0068      	movel %sp@(104),%sp@-
 33e:	2f2f 0068      	movel %sp@(104),%sp@-
 342:	2f2f 0068      	movel %sp@(104),%sp@-
 346:	2f2f 00a4      	movel %sp@(164),%sp@-
 34a:	2f2f 00a4      	movel %sp@(164),%sp@-
 34e:	2f2f 00a4      	movel %sp@(164),%sp@-
 352:	224e           	moveal %fp,%a1
 354:	2046           	moveal %d6,%a0
 356:	4e90           	jsr %a0@
 358:	4fef 0018      	lea %sp@(24),%sp
 35c:	2f6f 0084 0048 	movel %sp@(132),%sp@(72)
 362:	2f6f 0088 004c 	movel %sp@(136),%sp@(76)
 368:	2f6f 008c 0050 	movel %sp@(140),%sp@(80)
 36e:	2f2f 0044      	movel %sp@(68),%sp@-
 372:	2f2f 0044      	movel %sp@(68),%sp@-
 376:	2f2f 0044      	movel %sp@(68),%sp@-
 37a:	2f2f 00c0      	movel %sp@(192),%sp@-
 37e:	2f2f 00c0      	movel %sp@(192),%sp@-
 382:	2f2f 00c0      	movel %sp@(192),%sp@-
 386:	224a           	moveal %a2,%a1
 388:	4e93           	jsr %a3@
 38a:	4fef 0018      	lea %sp@(24),%sp
 38e:	2e3c 0000 0000 	movel #0,%d7
 394:	2f2f 00a4      	movel %sp@(164),%sp@-
 398:	2f2f 00a4      	movel %sp@(164),%sp@-
 39c:	2f2f 00a4      	movel %sp@(164),%sp@-
 3a0:	2f2f 00cc      	movel %sp@(204),%sp@-
 3a4:	2f2f 00cc      	movel %sp@(204),%sp@-
 3a8:	2f2f 00cc      	movel %sp@(204),%sp@-
 3ac:	224c           	moveal %a4,%a1
 3ae:	2047           	moveal %d7,%a0
 3b0:	4e90           	jsr %a0@
 3b2:	4fef 0018      	lea %sp@(24),%sp
 3b6:	2f2f 0068      	movel %sp@(104),%sp@-
 3ba:	2f2f 0068      	movel %sp@(104),%sp@-
 3be:	2f2f 0068      	movel %sp@(104),%sp@-
 3c2:	2f2f 00a4      	movel %sp@(164),%sp@-
 3c6:	2f2f 00a4      	movel %sp@(164),%sp@-
 3ca:	2f2f 00a4      	movel %sp@(164),%sp@-
 3ce:	224e           	moveal %fp,%a1
 3d0:	2046           	moveal %d6,%a0
 3d2:	4e90           	jsr %a0@
 3d4:	4fef 0018      	lea %sp@(24),%sp
 3d8:	2f6f 0084 003c 	movel %sp@(132),%sp@(60)
 3de:	2f6f 0088 0040 	movel %sp@(136),%sp@(64)
 3e4:	2f6f 008c 0044 	movel %sp@(140),%sp@(68)
 3ea:	2c3c 0000 0000 	movel #0,%d6
 3f0:	2f2f 0050      	movel %sp@(80),%sp@-
 3f4:	2f2f 0050      	movel %sp@(80),%sp@-
 3f8:	2f2f 0050      	movel %sp@(80),%sp@-
 3fc:	2f2f 005c      	movel %sp@(92),%sp@-
 400:	2f2f 005c      	movel %sp@(92),%sp@-
 404:	2f2f 005c      	movel %sp@(92),%sp@-
 408:	2046           	moveal %d6,%a0
 40a:	4e90           	jsr %a0@
 40c:	4fef 0018      	lea %sp@(24),%sp
 410:	4a80           	tstl %d0
 412:	6700 fe26      	beqw 23a <___divxc3+0x20a>
 416:	2f2f 0044      	movel %sp@(68),%sp@-
 41a:	2f2f 0044      	movel %sp@(68),%sp@-
 41e:	2f2f 0044      	movel %sp@(68),%sp@-
 422:	2f2f 0050      	movel %sp@(80),%sp@-
 426:	2f2f 0050      	movel %sp@(80),%sp@-
 42a:	2f2f 0050      	movel %sp@(80),%sp@-
 42e:	2046           	moveal %d6,%a0
 430:	4e90           	jsr %a0@
 432:	4fef 0018      	lea %sp@(24),%sp
 436:	4a80           	tstl %d0
 438:	6700 fe00      	beqw 23a <___divxc3+0x20a>
 43c:	41f9 0000 0000 	lea 0 <___divxc3-0x30>,%a0
 442:	2f3a fbd0      	movel %pc@(14 <___divxc3-0x1c>),%sp@-
 446:	2f3a fbc8      	movel %pc@(10 <___divxc3-0x20>),%sp@-
 44a:	2f3a fbc0      	movel %pc@(c <___divxc3-0x24>),%sp@-
 44e:	2f2f 00d8      	movel %sp@(216),%sp@-
 452:	2f2f 00d8      	movel %sp@(216),%sp@-
 456:	2f2f 00d8      	movel %sp@(216),%sp@-
 45a:	2f48 0044      	movel %a0,%sp@(68)
 45e:	4e90           	jsr %a0@
 460:	4fef 0018      	lea %sp@(24),%sp
 464:	206f 002c      	moveal %sp@(44),%a0
 468:	4a80           	tstl %d0
 46a:	6600 010e      	bnew 57a <___divxc3+0x54a>
 46e:	2f3a fba4      	movel %pc@(14 <___divxc3-0x1c>),%sp@-
 472:	2f3a fb9c      	movel %pc@(10 <___divxc3-0x20>),%sp@-
 476:	2f3a fb94      	movel %pc@(c <___divxc3-0x24>),%sp@-
 47a:	2f05           	movel %d5,%sp@-
 47c:	2f04           	movel %d4,%sp@-
 47e:	2f03           	movel %d3,%sp@-
 480:	4e90           	jsr %a0@
 482:	4fef 0018      	lea %sp@(24),%sp
 486:	4a80           	tstl %d0
 488:	6600 00f0      	bnew 57a <___divxc3+0x54a>
 48c:	2f2f 00b4      	movel %sp@(180),%sp@-
 490:	2f2f 00b4      	movel %sp@(180),%sp@-
 494:	2f2f 00b4      	movel %sp@(180),%sp@-
 498:	2f2f 00c0      	movel %sp@(192),%sp@-
 49c:	2f2f 00c0      	movel %sp@(192),%sp@-
 4a0:	2f2f 00c0      	movel %sp@(192),%sp@-
 4a4:	2046           	moveal %d6,%a0
 4a6:	4e90           	jsr %a0@
 4a8:	4fef 0018      	lea %sp@(24),%sp
 4ac:	4a80           	tstl %d0
 4ae:	6726           	beqs 4d6 <___divxc3+0x4a6>
 4b0:	2f2f 00c0      	movel %sp@(192),%sp@-
 4b4:	2f2f 00c0      	movel %sp@(192),%sp@-
 4b8:	2f2f 00c0      	movel %sp@(192),%sp@-
 4bc:	2f2f 00cc      	movel %sp@(204),%sp@-
 4c0:	2f2f 00cc      	movel %sp@(204),%sp@-
 4c4:	2f2f 00cc      	movel %sp@(204),%sp@-
 4c8:	2046           	moveal %d6,%a0
 4ca:	4e90           	jsr %a0@
 4cc:	4fef 0018      	lea %sp@(24),%sp
 4d0:	4a80           	tstl %d0
 4d2:	6600 07ea      	bnew cbe <___divxc3+0xc8e>
 4d6:	263a fb40      	movel %pc@(18 <___divxc3-0x18>),%d3
 4da:	283a fb40      	movel %pc@(1c <___divxc3-0x14>),%d4
 4de:	2a3a fb40      	movel %pc@(20 <___divxc3-0x10>),%d5
 4e2:	202f 00c4      	movel %sp@(196),%d0
 4e6:	6c0c           	bges 4f4 <___divxc3+0x4c4>
 4e8:	263a fb3a      	movel %pc@(24 <___divxc3-0xc>),%d3
 4ec:	283a fb3a      	movel %pc@(28 <___divxc3-0x8>),%d4
 4f0:	2a3a fb3a      	movel %pc@(2c <___divxc3-0x4>),%d5
 4f4:	2f2f 00b4      	movel %sp@(180),%sp@-
 4f8:	2f2f 00b4      	movel %sp@(180),%sp@-
 4fc:	2f2f 00b4      	movel %sp@(180),%sp@-
 500:	2f05           	movel %d5,%sp@-
 502:	2f04           	movel %d4,%sp@-
 504:	2f03           	movel %d3,%sp@-
 506:	224a           	moveal %a2,%a1
 508:	4e93           	jsr %a3@
 50a:	4fef 0018      	lea %sp@(24),%sp
 50e:	2f6f 009c 0048 	movel %sp@(156),%sp@(72)
 514:	2f6f 00a0 004c 	movel %sp@(160),%sp@(76)
 51a:	2f6f 00a4 0050 	movel %sp@(164),%sp@(80)
 520:	2f05           	movel %d5,%sp@-
 522:	2f04           	movel %d4,%sp@-
 524:	2f03           	movel %d3,%sp@-
 526:	2f2f 00cc      	movel %sp@(204),%sp@-
 52a:	2f2f 00cc      	movel %sp@(204),%sp@-
 52e:	2f2f 00cc      	movel %sp@(204),%sp@-
 532:	224a           	moveal %a2,%a1
 534:	4e93           	jsr %a3@
 536:	4fef 0018      	lea %sp@(24),%sp
 53a:	2f6f 009c 003c 	movel %sp@(156),%sp@(60)
 540:	2f6f 00a0 0040 	movel %sp@(160),%sp@(64)
 546:	2f6f 00a4 0044 	movel %sp@(164),%sp@(68)
 54c:	2aaf 0048      	movel %sp@(72),%a5@
 550:	2b6f 004c 0004 	movel %sp@(76),%a5@(4)
 556:	2b6f 0050 0008 	movel %sp@(80),%a5@(8)
 55c:	2b6f 003c 000c 	movel %sp@(60),%a5@(12)
 562:	2b6f 0040 0010 	movel %sp@(64),%a5@(16)
 568:	2b6f 0044 0014 	movel %sp@(68),%a5@(20)
 56e:	200d           	movel %a5,%d0
 570:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 574:	4fef 007c      	lea %sp@(124),%sp
 578:	4e75           	rts
 57a:	2f2f 00b4      	movel %sp@(180),%sp@-
 57e:	2f2f 00b4      	movel %sp@(180),%sp@-
 582:	2f2f 00b4      	movel %sp@(180),%sp@-
 586:	2f2f 00c0      	movel %sp@(192),%sp@-
 58a:	2f2f 00c0      	movel %sp@(192),%sp@-
 58e:	2f2f 00c0      	movel %sp@(192),%sp@-
 592:	224a           	moveal %a2,%a1
 594:	2047           	moveal %d7,%a0
 596:	4e90           	jsr %a0@
 598:	4fef 0018      	lea %sp@(24),%sp
 59c:	2f6f 009c 006c 	movel %sp@(156),%sp@(108)
 5a2:	2f6f 00a0 0070 	movel %sp@(160),%sp@(112)
 5a8:	2f6f 00a4 0074 	movel %sp@(164),%sp@(116)
 5ae:	2f2f 0074      	movel %sp@(116),%sp@-
 5b2:	2f2f 0074      	movel %sp@(116),%sp@-
 5b6:	2f2f 0074      	movel %sp@(116),%sp@-
 5ba:	2f2f 0080      	movel %sp@(128),%sp@-
 5be:	2f2f 0080      	movel %sp@(128),%sp@-
 5c2:	2f2f 0080      	movel %sp@(128),%sp@-
 5c6:	2046           	moveal %d6,%a0
 5c8:	4e90           	jsr %a0@
 5ca:	4fef 0018      	lea %sp@(24),%sp
 5ce:	4a80           	tstl %d0
 5d0:	56c0           	sne %d0
 5d2:	1f40 0060      	moveb %d0,%sp@(96)
 5d6:	022f 0001 0060 	andib #1,%sp@(96)
 5dc:	2f2f 00b4      	movel %sp@(180),%sp@-
 5e0:	2f2f 00b4      	movel %sp@(180),%sp@-
 5e4:	2f2f 00b4      	movel %sp@(180),%sp@-
 5e8:	2f2f 00c0      	movel %sp@(192),%sp@-
 5ec:	2f2f 00c0      	movel %sp@(192),%sp@-
 5f0:	2f2f 00c0      	movel %sp@(192),%sp@-
 5f4:	2046           	moveal %d6,%a0
 5f6:	4e90           	jsr %a0@
 5f8:	4fef 0018      	lea %sp@(24),%sp
 5fc:	4a80           	tstl %d0
 5fe:	57c0           	seq %d0
 600:	4400           	negb %d0
 602:	c12f 0060      	andb %d0,%sp@(96)
 606:	6600 03ee      	bnew 9f6 <___divxc3+0x9c6>
 60a:	2f2f 00c0      	movel %sp@(192),%sp@-
 60e:	2f2f 00c0      	movel %sp@(192),%sp@-
 612:	2f2f 00c0      	movel %sp@(192),%sp@-
 616:	2f2f 00cc      	movel %sp@(204),%sp@-
 61a:	2f2f 00cc      	movel %sp@(204),%sp@-
 61e:	2f2f 00cc      	movel %sp@(204),%sp@-
 622:	224a           	moveal %a2,%a1
 624:	2047           	moveal %d7,%a0
 626:	4e90           	jsr %a0@
 628:	4fef 0018      	lea %sp@(24),%sp
 62c:	2f2f 00a4      	movel %sp@(164),%sp@-
 630:	2f2f 00a4      	movel %sp@(164),%sp@-
 634:	2f2f 00a4      	movel %sp@(164),%sp@-
 638:	2f2f 00b0      	movel %sp@(176),%sp@-
 63c:	2f2f 00b0      	movel %sp@(176),%sp@-
 640:	2f2f 00b0      	movel %sp@(176),%sp@-
 644:	2046           	moveal %d6,%a0
 646:	4e90           	jsr %a0@
 648:	4fef 0018      	lea %sp@(24),%sp
 64c:	4a80           	tstl %d0
 64e:	6726           	beqs 676 <___divxc3+0x646>
 650:	2f2f 00c0      	movel %sp@(192),%sp@-
 654:	2f2f 00c0      	movel %sp@(192),%sp@-
 658:	2f2f 00c0      	movel %sp@(192),%sp@-
 65c:	2f2f 00cc      	movel %sp@(204),%sp@-
 660:	2f2f 00cc      	movel %sp@(204),%sp@-
 664:	2f2f 00cc      	movel %sp@(204),%sp@-
 668:	2046           	moveal %d6,%a0
 66a:	4e90           	jsr %a0@
 66c:	4fef 0018      	lea %sp@(24),%sp
 670:	4a80           	tstl %d0
 672:	6700 0382      	beqw 9f6 <___divxc3+0x9c6>
 676:	2f2f 00cc      	movel %sp@(204),%sp@-
 67a:	2f2f 00cc      	movel %sp@(204),%sp@-
 67e:	2f2f 00cc      	movel %sp@(204),%sp@-
 682:	2f2f 00d8      	movel %sp@(216),%sp@-
 686:	2f2f 00d8      	movel %sp@(216),%sp@-
 68a:	2f2f 00d8      	movel %sp@(216),%sp@-
 68e:	224a           	moveal %a2,%a1
 690:	2047           	moveal %d7,%a0
 692:	4e90           	jsr %a0@
 694:	4fef 0018      	lea %sp@(24),%sp
 698:	2f2f 00a4      	movel %sp@(164),%sp@-
 69c:	2f2f 00a4      	movel %sp@(164),%sp@-
 6a0:	2f2f 00a4      	movel %sp@(164),%sp@-
 6a4:	2f2f 00b0      	movel %sp@(176),%sp@-
 6a8:	2f2f 00b0      	movel %sp@(176),%sp@-
 6ac:	2f2f 00b0      	movel %sp@(176),%sp@-
 6b0:	2046           	moveal %d6,%a0
 6b2:	4e90           	jsr %a0@
 6b4:	4fef 0018      	lea %sp@(24),%sp
 6b8:	4a80           	tstl %d0
 6ba:	56c0           	sne %d0
 6bc:	1f40 0060      	moveb %d0,%sp@(96)
 6c0:	022f 0001 0060 	andib #1,%sp@(96)
 6c6:	2f2f 00cc      	movel %sp@(204),%sp@-
 6ca:	2f2f 00cc      	movel %sp@(204),%sp@-
 6ce:	2f2f 00cc      	movel %sp@(204),%sp@-
 6d2:	2f2f 00d8      	movel %sp@(216),%sp@-
 6d6:	2f2f 00d8      	movel %sp@(216),%sp@-
 6da:	2f2f 00d8      	movel %sp@(216),%sp@-
 6de:	2046           	moveal %d6,%a0
 6e0:	4e90           	jsr %a0@
 6e2:	4fef 0018      	lea %sp@(24),%sp
 6e6:	4a80           	tstl %d0
 6e8:	57c0           	seq %d0
 6ea:	4400           	negb %d0
 6ec:	c12f 0060      	andb %d0,%sp@(96)
 6f0:	6656           	bnes 748 <___divxc3+0x718>
 6f2:	2f05           	movel %d5,%sp@-
 6f4:	2f04           	movel %d4,%sp@-
 6f6:	2f03           	movel %d3,%sp@-
 6f8:	2f05           	movel %d5,%sp@-
 6fa:	2f04           	movel %d4,%sp@-
 6fc:	2f03           	movel %d3,%sp@-
 6fe:	224a           	moveal %a2,%a1
 700:	2047           	moveal %d7,%a0
 702:	4e90           	jsr %a0@
 704:	4fef 0018      	lea %sp@(24),%sp
 708:	2f2f 00a4      	movel %sp@(164),%sp@-
 70c:	2f2f 00a4      	movel %sp@(164),%sp@-
 710:	2f2f 00a4      	movel %sp@(164),%sp@-
 714:	2f2f 00b0      	movel %sp@(176),%sp@-
 718:	2f2f 00b0      	movel %sp@(176),%sp@-
 71c:	2f2f 00b0      	movel %sp@(176),%sp@-
 720:	2046           	moveal %d6,%a0
 722:	4e90           	jsr %a0@
 724:	4fef 0018      	lea %sp@(24),%sp
 728:	4a80           	tstl %d0
 72a:	6700 fb0e      	beqw 23a <___divxc3+0x20a>
 72e:	2f05           	movel %d5,%sp@-
 730:	2f04           	movel %d4,%sp@-
 732:	2f03           	movel %d3,%sp@-
 734:	2f05           	movel %d5,%sp@-
 736:	2f04           	movel %d4,%sp@-
 738:	2f03           	movel %d3,%sp@-
 73a:	2046           	moveal %d6,%a0
 73c:	4e90           	jsr %a0@
 73e:	4fef 0018      	lea %sp@(24),%sp
 742:	4a80           	tstl %d0
 744:	6600 faf4      	bnew 23a <___divxc3+0x20a>
 748:	2f2f 0074      	movel %sp@(116),%sp@-
 74c:	2f2f 0074      	movel %sp@(116),%sp@-
 750:	2f2f 0074      	movel %sp@(116),%sp@-
 754:	2f2f 0080      	movel %sp@(128),%sp@-
 758:	2f2f 0080      	movel %sp@(128),%sp@-
 75c:	2f2f 0080      	movel %sp@(128),%sp@-
 760:	2046           	moveal %d6,%a0
 762:	4e90           	jsr %a0@
 764:	4fef 0018      	lea %sp@(24),%sp
 768:	4a80           	tstl %d0
 76a:	6600 face      	bnew 23a <___divxc3+0x20a>
 76e:	2f2f 00c0      	movel %sp@(192),%sp@-
 772:	2f2f 00c0      	movel %sp@(192),%sp@-
 776:	2f2f 00c0      	movel %sp@(192),%sp@-
 77a:	2f2f 00cc      	movel %sp@(204),%sp@-
 77e:	2f2f 00cc      	movel %sp@(204),%sp@-
 782:	2f2f 00cc      	movel %sp@(204),%sp@-
 786:	224a           	moveal %a2,%a1
 788:	2047           	moveal %d7,%a0
 78a:	4e90           	jsr %a0@
 78c:	4fef 0018      	lea %sp@(24),%sp
 790:	2f2f 00a4      	movel %sp@(164),%sp@-
 794:	2f2f 00a4      	movel %sp@(164),%sp@-
 798:	2f2f 00a4      	movel %sp@(164),%sp@-
 79c:	2f2f 00b0      	movel %sp@(176),%sp@-
 7a0:	2f2f 00b0      	movel %sp@(176),%sp@-
 7a4:	2f2f 00b0      	movel %sp@(176),%sp@-
 7a8:	2046           	moveal %d6,%a0
 7aa:	4e90           	jsr %a0@
 7ac:	4fef 0018      	lea %sp@(24),%sp
 7b0:	4a80           	tstl %d0
 7b2:	6600 fa86      	bnew 23a <___divxc3+0x20a>
 7b6:	4a2f 0060      	tstb %sp@(96)
 7ba:	6600 053a      	bnew cf6 <___divxc3+0xcc6>
 7be:	2f7a f84c 0048 	movel %pc@(c <___divxc3-0x24>),%sp@(72)
 7c4:	2f7a f84a 004c 	movel %pc@(10 <___divxc3-0x20>),%sp@(76)
 7ca:	2f7a f848 0050 	movel %pc@(14 <___divxc3-0x1c>),%sp@(80)
 7d0:	202f 0048      	movel %sp@(72),%d0
 7d4:	0880 001f      	bclr #31,%d0
 7d8:	2f40 003c      	movel %d0,%sp@(60)
 7dc:	206f 004c      	moveal %sp@(76),%a0
 7e0:	2f48 0040      	movel %a0,%sp@(64)
 7e4:	202f 0050      	movel %sp@(80),%d0
 7e8:	2f40 0044      	movel %d0,%sp@(68)
 7ec:	202f 00c4      	movel %sp@(196),%d0
 7f0:	6c0e           	bges 800 <___divxc3+0x7d0>
 7f2:	202f 003c      	movel %sp@(60),%d0
 7f6:	0680 8000 0000 	addil #-2147483648,%d0
 7fc:	2f40 003c      	movel %d0,%sp@(60)
 800:	2f05           	movel %d5,%sp@-
 802:	2f04           	movel %d4,%sp@-
 804:	2f03           	movel %d3,%sp@-
 806:	2f05           	movel %d5,%sp@-
 808:	2f04           	movel %d4,%sp@-
 80a:	2f03           	movel %d3,%sp@-
 80c:	224a           	moveal %a2,%a1
 80e:	2047           	moveal %d7,%a0
 810:	4e90           	jsr %a0@
 812:	4fef 0018      	lea %sp@(24),%sp
 816:	2f2f 00a4      	movel %sp@(164),%sp@-
 81a:	2f2f 00a4      	movel %sp@(164),%sp@-
 81e:	2f2f 00a4      	movel %sp@(164),%sp@-
 822:	2f2f 00b0      	movel %sp@(176),%sp@-
 826:	2f2f 00b0      	movel %sp@(176),%sp@-
 82a:	2f2f 00b0      	movel %sp@(176),%sp@-
 82e:	2046           	moveal %d6,%a0
 830:	4e90           	jsr %a0@
 832:	4fef 0018      	lea %sp@(24),%sp
 836:	4a80           	tstl %d0
 838:	671a           	beqs 854 <___divxc3+0x824>
 83a:	2f05           	movel %d5,%sp@-
 83c:	2f04           	movel %d4,%sp@-
 83e:	2f03           	movel %d3,%sp@-
 840:	2f05           	movel %d5,%sp@-
 842:	2f04           	movel %d4,%sp@-
 844:	2f03           	movel %d3,%sp@-
 846:	2046           	moveal %d6,%a0
 848:	4e90           	jsr %a0@
 84a:	4fef 0018      	lea %sp@(24),%sp
 84e:	4a80           	tstl %d0
 850:	6700 04ba      	beqw d0c <___divxc3+0xcdc>
 854:	2f7a f7b6 0048 	movel %pc@(c <___divxc3-0x24>),%sp@(72)
 85a:	2f7a f7b4 004c 	movel %pc@(10 <___divxc3-0x20>),%sp@(76)
 860:	2f7a f7b2 0050 	movel %pc@(14 <___divxc3-0x1c>),%sp@(80)
 866:	202f 0048      	movel %sp@(72),%d0
 86a:	0880 001f      	bclr #31,%d0
 86e:	2f40 0030      	movel %d0,%sp@(48)
 872:	2c2f 004c      	movel %sp@(76),%d6
 876:	2f46 0034      	movel %d6,%sp@(52)
 87a:	206f 0050      	moveal %sp@(80),%a0
 87e:	2f48 0038      	movel %a0,%sp@(56)
 882:	4a83           	tstl %d3
 884:	6c0a           	bges 890 <___divxc3+0x860>
 886:	0680 8000 0000 	addil #-2147483648,%d0
 88c:	2f40 0030      	movel %d0,%sp@(48)
 890:	2f2f 0044      	movel %sp@(68),%sp@-
 894:	2f2f 0044      	movel %sp@(68),%sp@-
 898:	2f2f 0044      	movel %sp@(68),%sp@-
 89c:	2f2f 00c0      	movel %sp@(192),%sp@-
 8a0:	2f2f 00c0      	movel %sp@(192),%sp@-
 8a4:	2f2f 00c0      	movel %sp@(192),%sp@-
 8a8:	224a           	moveal %a2,%a1
 8aa:	4e93           	jsr %a3@
 8ac:	4fef 0018      	lea %sp@(24),%sp
 8b0:	262f 009c      	movel %sp@(156),%d3
 8b4:	282f 00a0      	movel %sp@(160),%d4
 8b8:	2a2f 00a4      	movel %sp@(164),%d5
 8bc:	2f2f 0038      	movel %sp@(56),%sp@-
 8c0:	2f2f 0038      	movel %sp@(56),%sp@-
 8c4:	2f2f 0038      	movel %sp@(56),%sp@-
 8c8:	2f2f 00cc      	movel %sp@(204),%sp@-
 8cc:	2f2f 00cc      	movel %sp@(204),%sp@-
 8d0:	2f2f 00cc      	movel %sp@(204),%sp@-
 8d4:	224c           	moveal %a4,%a1
 8d6:	4e93           	jsr %a3@
 8d8:	4fef 0018      	lea %sp@(24),%sp
 8dc:	2f2f 0098      	movel %sp@(152),%sp@-
 8e0:	2f2f 0098      	movel %sp@(152),%sp@-
 8e4:	2f2f 0098      	movel %sp@(152),%sp@-
 8e8:	2f05           	movel %d5,%sp@-
 8ea:	2f04           	movel %d4,%sp@-
 8ec:	2f03           	movel %d3,%sp@-
 8ee:	224e           	moveal %fp,%a1
 8f0:	2042           	moveal %d2,%a0
 8f2:	4e90           	jsr %a0@
 8f4:	4fef 0018      	lea %sp@(24),%sp
 8f8:	2f3a f71a      	movel %pc@(14 <___divxc3-0x1c>),%sp@-
 8fc:	2f3a f712      	movel %pc@(10 <___divxc3-0x20>),%sp@-
 900:	2f3a f70a      	movel %pc@(c <___divxc3-0x24>),%sp@-
 904:	2f2f 0098      	movel %sp@(152),%sp@-
 908:	2f2f 0098      	movel %sp@(152),%sp@-
 90c:	2f2f 0098      	movel %sp@(152),%sp@-
 910:	43ef 0090      	lea %sp@(144),%a1
 914:	4e93           	jsr %a3@
 916:	4fef 0018      	lea %sp@(24),%sp
 91a:	2f6f 0078 0048 	movel %sp@(120),%sp@(72)
 920:	2f6f 007c 004c 	movel %sp@(124),%sp@(76)
 926:	2f6f 0080 0050 	movel %sp@(128),%sp@(80)
 92c:	2f2f 0044      	movel %sp@(68),%sp@-
 930:	2f2f 0044      	movel %sp@(68),%sp@-
 934:	2f2f 0044      	movel %sp@(68),%sp@-
 938:	2f2f 00cc      	movel %sp@(204),%sp@-
 93c:	2f2f 00cc      	movel %sp@(204),%sp@-
 940:	2f2f 00cc      	movel %sp@(204),%sp@-
 944:	224a           	moveal %a2,%a1
 946:	4e93           	jsr %a3@
 948:	4fef 0018      	lea %sp@(24),%sp
 94c:	262f 009c      	movel %sp@(156),%d3
 950:	282f 00a0      	movel %sp@(160),%d4
 954:	2a2f 00a4      	movel %sp@(164),%d5
 958:	2f2f 0038      	movel %sp@(56),%sp@-
 95c:	2f2f 0038      	movel %sp@(56),%sp@-
 960:	2f2f 0038      	movel %sp@(56),%sp@-
 964:	2f2f 00c0      	movel %sp@(192),%sp@-
 968:	2f2f 00c0      	movel %sp@(192),%sp@-
 96c:	2f2f 00c0      	movel %sp@(192),%sp@-
 970:	224c           	moveal %a4,%a1
 972:	4e93           	jsr %a3@
 974:	4fef 0018      	lea %sp@(24),%sp
 978:	2f2f 0098      	movel %sp@(152),%sp@-
 97c:	2f2f 0098      	movel %sp@(152),%sp@-
 980:	2f2f 0098      	movel %sp@(152),%sp@-
 984:	2f05           	movel %d5,%sp@-
 986:	2f04           	movel %d4,%sp@-
 988:	2f03           	movel %d3,%sp@-
 98a:	224e           	moveal %fp,%a1
 98c:	2047           	moveal %d7,%a0
 98e:	4e90           	jsr %a0@
 990:	4fef 0018      	lea %sp@(24),%sp
 994:	2f3a f67e      	movel %pc@(14 <___divxc3-0x1c>),%sp@-
 998:	2f3a f676      	movel %pc@(10 <___divxc3-0x20>),%sp@-
 99c:	2f3a f66e      	movel %pc@(c <___divxc3-0x24>),%sp@-
 9a0:	2f2f 0098      	movel %sp@(152),%sp@-
 9a4:	2f2f 0098      	movel %sp@(152),%sp@-
 9a8:	2f2f 0098      	movel %sp@(152),%sp@-
 9ac:	43ef 0090      	lea %sp@(144),%a1
 9b0:	4e93           	jsr %a3@
 9b2:	4fef 0018      	lea %sp@(24),%sp
 9b6:	2f6f 0078 003c 	movel %sp@(120),%sp@(60)
 9bc:	2f6f 007c 0040 	movel %sp@(124),%sp@(64)
 9c2:	2f6f 0080 0044 	movel %sp@(128),%sp@(68)
 9c8:	2aaf 0048      	movel %sp@(72),%a5@
 9cc:	2b6f 004c 0004 	movel %sp@(76),%a5@(4)
 9d2:	2b6f 0050 0008 	movel %sp@(80),%a5@(8)
 9d8:	2b6f 003c 000c 	movel %sp@(60),%a5@(12)
 9de:	2b6f 0040 0010 	movel %sp@(64),%a5@(16)
 9e4:	2b6f 0044 0014 	movel %sp@(68),%a5@(20)
 9ea:	200d           	movel %a5,%d0
 9ec:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 9f0:	4fef 007c      	lea %sp@(124),%sp
 9f4:	4e75           	rts
 9f6:	2f2f 00cc      	movel %sp@(204),%sp@-
 9fa:	2f2f 00cc      	movel %sp@(204),%sp@-
 9fe:	2f2f 00cc      	movel %sp@(204),%sp@-
 a02:	2f2f 00d8      	movel %sp@(216),%sp@-
 a06:	2f2f 00d8      	movel %sp@(216),%sp@-
 a0a:	2f2f 00d8      	movel %sp@(216),%sp@-
 a0e:	224a           	moveal %a2,%a1
 a10:	2047           	moveal %d7,%a0
 a12:	4e90           	jsr %a0@
 a14:	4fef 0018      	lea %sp@(24),%sp
 a18:	2f2f 00a4      	movel %sp@(164),%sp@-
 a1c:	2f2f 00a4      	movel %sp@(164),%sp@-
 a20:	2f2f 00a4      	movel %sp@(164),%sp@-
 a24:	2f2f 00b0      	movel %sp@(176),%sp@-
 a28:	2f2f 00b0      	movel %sp@(176),%sp@-
 a2c:	2f2f 00b0      	movel %sp@(176),%sp@-
 a30:	2046           	moveal %d6,%a0
 a32:	4e90           	jsr %a0@
 a34:	4fef 0018      	lea %sp@(24),%sp
 a38:	4a80           	tstl %d0
 a3a:	6600 fc3a      	bnew 676 <___divxc3+0x646>
 a3e:	2f05           	movel %d5,%sp@-
 a40:	2f04           	movel %d4,%sp@-
 a42:	2f03           	movel %d3,%sp@-
 a44:	2f05           	movel %d5,%sp@-
 a46:	2f04           	movel %d4,%sp@-
 a48:	2f03           	movel %d3,%sp@-
 a4a:	224a           	moveal %a2,%a1
 a4c:	2047           	moveal %d7,%a0
 a4e:	4e90           	jsr %a0@
 a50:	4fef 0018      	lea %sp@(24),%sp
 a54:	2f2f 00a4      	movel %sp@(164),%sp@-
 a58:	2f2f 00a4      	movel %sp@(164),%sp@-
 a5c:	2f2f 00a4      	movel %sp@(164),%sp@-
 a60:	2f2f 00b0      	movel %sp@(176),%sp@-
 a64:	2f2f 00b0      	movel %sp@(176),%sp@-
 a68:	2f2f 00b0      	movel %sp@(176),%sp@-
 a6c:	2046           	moveal %d6,%a0
 a6e:	4e90           	jsr %a0@
 a70:	4fef 0018      	lea %sp@(24),%sp
 a74:	4a80           	tstl %d0
 a76:	6600 fbfe      	bnew 676 <___divxc3+0x646>
 a7a:	4a2f 0060      	tstb %sp@(96)
 a7e:	6600 0228      	bnew ca8 <___divxc3+0xc78>
 a82:	2f7a f588 0048 	movel %pc@(c <___divxc3-0x24>),%sp@(72)
 a88:	2f7a f586 004c 	movel %pc@(10 <___divxc3-0x20>),%sp@(76)
 a8e:	2f7a f584 0050 	movel %pc@(14 <___divxc3-0x1c>),%sp@(80)
 a94:	202f 0048      	movel %sp@(72),%d0
 a98:	0880 001f      	bclr #31,%d0
 a9c:	2f40 003c      	movel %d0,%sp@(60)
 aa0:	206f 004c      	moveal %sp@(76),%a0
 aa4:	2f48 0040      	movel %a0,%sp@(64)
 aa8:	202f 0050      	movel %sp@(80),%d0
 aac:	2f40 0044      	movel %d0,%sp@(68)
 ab0:	202f 00ac      	movel %sp@(172),%d0
 ab4:	6c0e           	bges ac4 <___divxc3+0xa94>
 ab6:	202f 003c      	movel %sp@(60),%d0
 aba:	0680 8000 0000 	addil #-2147483648,%d0
 ac0:	2f40 003c      	movel %d0,%sp@(60)
 ac4:	2f2f 00c0      	movel %sp@(192),%sp@-
 ac8:	2f2f 00c0      	movel %sp@(192),%sp@-
 acc:	2f2f 00c0      	movel %sp@(192),%sp@-
 ad0:	2f2f 00cc      	movel %sp@(204),%sp@-
 ad4:	2f2f 00cc      	movel %sp@(204),%sp@-
 ad8:	2f2f 00cc      	movel %sp@(204),%sp@-
 adc:	224a           	moveal %a2,%a1
 ade:	2047           	moveal %d7,%a0
 ae0:	4e90           	jsr %a0@
 ae2:	4fef 0018      	lea %sp@(24),%sp
 ae6:	2f2f 00a4      	movel %sp@(164),%sp@-
 aea:	2f2f 00a4      	movel %sp@(164),%sp@-
 aee:	2f2f 00a4      	movel %sp@(164),%sp@-
 af2:	2f2f 00b0      	movel %sp@(176),%sp@-
 af6:	2f2f 00b0      	movel %sp@(176),%sp@-
 afa:	2f2f 00b0      	movel %sp@(176),%sp@-
 afe:	2046           	moveal %d6,%a0
 b00:	4e90           	jsr %a0@
 b02:	4fef 0018      	lea %sp@(24),%sp
 b06:	4a80           	tstl %d0
 b08:	6726           	beqs b30 <___divxc3+0xb00>
 b0a:	2f2f 00c0      	movel %sp@(192),%sp@-
 b0e:	2f2f 00c0      	movel %sp@(192),%sp@-
 b12:	2f2f 00c0      	movel %sp@(192),%sp@-
 b16:	2f2f 00cc      	movel %sp@(204),%sp@-
 b1a:	2f2f 00cc      	movel %sp@(204),%sp@-
 b1e:	2f2f 00cc      	movel %sp@(204),%sp@-
 b22:	2046           	moveal %d6,%a0
 b24:	4e90           	jsr %a0@
 b26:	4fef 0018      	lea %sp@(24),%sp
 b2a:	4a80           	tstl %d0
 b2c:	6700 0164      	beqw c92 <___divxc3+0xc62>
 b30:	2f7a f4da 0048 	movel %pc@(c <___divxc3-0x24>),%sp@(72)
 b36:	2f7a f4d8 004c 	movel %pc@(10 <___divxc3-0x20>),%sp@(76)
 b3c:	2f7a f4d6 0050 	movel %pc@(14 <___divxc3-0x1c>),%sp@(80)
 b42:	202f 0048      	movel %sp@(72),%d0
 b46:	0880 001f      	bclr #31,%d0
 b4a:	2f40 0054      	movel %d0,%sp@(84)
 b4e:	2c2f 004c      	movel %sp@(76),%d6
 b52:	2f46 0058      	movel %d6,%sp@(88)
 b56:	206f 0050      	moveal %sp@(80),%a0
 b5a:	2f48 005c      	movel %a0,%sp@(92)
 b5e:	202f 00b8      	movel %sp@(184),%d0
 b62:	6c0e           	bges b72 <___divxc3+0xb42>
 b64:	2c2f 0054      	movel %sp@(84),%d6
 b68:	0686 8000 0000 	addil #-2147483648,%d6
 b6e:	2f46 0054      	movel %d6,%sp@(84)
 b72:	2f2f 00cc      	movel %sp@(204),%sp@-
 b76:	2f2f 00cc      	movel %sp@(204),%sp@-
 b7a:	2f2f 00cc      	movel %sp@(204),%sp@-
 b7e:	2f2f 0050      	movel %sp@(80),%sp@-
 b82:	2f2f 0050      	movel %sp@(80),%sp@-
 b86:	2f2f 0050      	movel %sp@(80),%sp@-
 b8a:	224a           	moveal %a2,%a1
 b8c:	4e93           	jsr %a3@
 b8e:	4fef 0018      	lea %sp@(24),%sp
 b92:	2f6f 009c 0048 	movel %sp@(156),%sp@(72)
 b98:	2f6f 00a0 004c 	movel %sp@(160),%sp@(76)
 b9e:	2f6f 00a4 0050 	movel %sp@(164),%sp@(80)
 ba4:	2f05           	movel %d5,%sp@-
 ba6:	2f04           	movel %d4,%sp@-
 ba8:	2f03           	movel %d3,%sp@-
 baa:	2f2f 0068      	movel %sp@(104),%sp@-
 bae:	2f2f 0068      	movel %sp@(104),%sp@-
 bb2:	2f2f 0068      	movel %sp@(104),%sp@-
 bb6:	224c           	moveal %a4,%a1
 bb8:	4e93           	jsr %a3@
 bba:	4fef 0018      	lea %sp@(24),%sp
 bbe:	2f2f 0098      	movel %sp@(152),%sp@-
 bc2:	2f2f 0098      	movel %sp@(152),%sp@-
 bc6:	2f2f 0098      	movel %sp@(152),%sp@-
 bca:	2f2f 005c      	movel %sp@(92),%sp@-
 bce:	2f2f 005c      	movel %sp@(92),%sp@-
 bd2:	2f2f 005c      	movel %sp@(92),%sp@-
 bd6:	224e           	moveal %fp,%a1
 bd8:	2042           	moveal %d2,%a0
 bda:	4e90           	jsr %a0@
 bdc:	4fef 0018      	lea %sp@(24),%sp
 be0:	2f3a f43e      	movel %pc@(20 <___divxc3-0x10>),%sp@-
 be4:	2f3a f436      	movel %pc@(1c <___divxc3-0x14>),%sp@-
 be8:	2f3a f42e      	movel %pc@(18 <___divxc3-0x18>),%sp@-
 bec:	2f2f 0098      	movel %sp@(152),%sp@-
 bf0:	2f2f 0098      	movel %sp@(152),%sp@-
 bf4:	2f2f 0098      	movel %sp@(152),%sp@-
 bf8:	43ef 0090      	lea %sp@(144),%a1
 bfc:	4e93           	jsr %a3@
 bfe:	4fef 0018      	lea %sp@(24),%sp
 c02:	2f6f 0078 0048 	movel %sp@(120),%sp@(72)
 c08:	2f6f 007c 004c 	movel %sp@(124),%sp@(76)
 c0e:	2f6f 0080 0050 	movel %sp@(128),%sp@(80)
 c14:	2f2f 00cc      	movel %sp@(204),%sp@-
 c18:	2f2f 00cc      	movel %sp@(204),%sp@-
 c1c:	2f2f 00cc      	movel %sp@(204),%sp@-
 c20:	2f2f 0068      	movel %sp@(104),%sp@-
 c24:	2f2f 0068      	movel %sp@(104),%sp@-
 c28:	2f2f 0068      	movel %sp@(104),%sp@-
 c2c:	224a           	moveal %a2,%a1
 c2e:	4e93           	jsr %a3@
 c30:	4fef 0018      	lea %sp@(24),%sp
 c34:	2f6f 009c 0030 	movel %sp@(156),%sp@(48)
 c3a:	2f6f 00a0 0034 	movel %sp@(160),%sp@(52)
 c40:	2f6f 00a4 0038 	movel %sp@(164),%sp@(56)
 c46:	2f05           	movel %d5,%sp@-
 c48:	2f04           	movel %d4,%sp@-
 c4a:	2f03           	movel %d3,%sp@-
 c4c:	2f2f 0050      	movel %sp@(80),%sp@-
 c50:	2f2f 0050      	movel %sp@(80),%sp@-
 c54:	2f2f 0050      	movel %sp@(80),%sp@-
 c58:	224c           	moveal %a4,%a1
 c5a:	4e93           	jsr %a3@
 c5c:	4fef 0018      	lea %sp@(24),%sp
 c60:	2f2f 0098      	movel %sp@(152),%sp@-
 c64:	2f2f 0098      	movel %sp@(152),%sp@-
 c68:	2f2f 0098      	movel %sp@(152),%sp@-
 c6c:	2f2f 0044      	movel %sp@(68),%sp@-
 c70:	2f2f 0044      	movel %sp@(68),%sp@-
 c74:	2f2f 0044      	movel %sp@(68),%sp@-
 c78:	224e           	moveal %fp,%a1
 c7a:	2047           	moveal %d7,%a0
 c7c:	4e90           	jsr %a0@
 c7e:	4fef 0018      	lea %sp@(24),%sp
 c82:	2f3a f39c      	movel %pc@(20 <___divxc3-0x10>),%sp@-
 c86:	2f3a f394      	movel %pc@(1c <___divxc3-0x14>),%sp@-
 c8a:	2f3a f38c      	movel %pc@(18 <___divxc3-0x18>),%sp@-
 c8e:	6000 fd10      	braw 9a0 <___divxc3+0x970>
 c92:	2f7a f36c 0048 	movel %pc@(0 <___divxc3-0x30>),%sp@(72)
 c98:	2f7a f36a 004c 	movel %pc@(4 <___divxc3-0x2c>),%sp@(76)
 c9e:	2f7a f368 0050 	movel %pc@(8 <___divxc3-0x28>),%sp@(80)
 ca4:	6000 fe9c      	braw b42 <___divxc3+0xb12>
 ca8:	2f7a f356 0048 	movel %pc@(0 <___divxc3-0x30>),%sp@(72)
 cae:	2f7a f354 004c 	movel %pc@(4 <___divxc3-0x2c>),%sp@(76)
 cb4:	2f7a f352 0050 	movel %pc@(8 <___divxc3-0x28>),%sp@(80)
 cba:	6000 fdd8      	braw a94 <___divxc3+0xa64>
 cbe:	2f2f 00b4      	movel %sp@(180),%sp@-
 cc2:	2f2f 00b4      	movel %sp@(180),%sp@-
 cc6:	2f2f 00b4      	movel %sp@(180),%sp@-
 cca:	2f2f 00c0      	movel %sp@(192),%sp@-
 cce:	2f2f 00c0      	movel %sp@(192),%sp@-
 cd2:	2f2f 00c0      	movel %sp@(192),%sp@-
 cd6:	224a           	moveal %a2,%a1
 cd8:	2047           	moveal %d7,%a0
 cda:	4e90           	jsr %a0@
 cdc:	4fef 0018      	lea %sp@(24),%sp
 ce0:	2f6f 009c 006c 	movel %sp@(156),%sp@(108)
 ce6:	2f6f 00a0 0070 	movel %sp@(160),%sp@(112)
 cec:	2f6f 00a4 0074 	movel %sp@(164),%sp@(116)
 cf2:	6000 f982      	braw 676 <___divxc3+0x646>
 cf6:	2f7a f308 0048 	movel %pc@(0 <___divxc3-0x30>),%sp@(72)
 cfc:	2f7a f306 004c 	movel %pc@(4 <___divxc3-0x2c>),%sp@(76)
 d02:	2f7a f304 0050 	movel %pc@(8 <___divxc3-0x28>),%sp@(80)
 d08:	6000 fac6      	braw 7d0 <___divxc3+0x7a0>
 d0c:	2f7a f2f2 0048 	movel %pc@(0 <___divxc3-0x30>),%sp@(72)
 d12:	2f7a f2f0 004c 	movel %pc@(4 <___divxc3-0x2c>),%sp@(76)
 d18:	2f7a f2ee 0050 	movel %pc@(8 <___divxc3-0x28>),%sp@(80)
 d1e:	6000 fb46      	braw 866 <___divxc3+0x836>
	...

_divtc3.o:     file format a.out-zero-big


_bswapsi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___bswapsi2>:
   0:	2f02           	movel %d2,%sp@-
   2:	202f 0008      	movel %sp@(8),%d0
   6:	2200           	movel %d0,%d1
   8:	e149           	lslw #8,%d1
   a:	4841           	swap %d1
   c:	4241           	clrw %d1
   e:	2400           	movel %d0,%d2
  10:	4242           	clrw %d2
  12:	4842           	swap %d2
  14:	e04a           	lsrw #8,%d2
  16:	8282           	orl %d2,%d1
  18:	2400           	movel %d0,%d2
  1a:	0282 00ff 0000 	andil #16711680,%d2
  20:	e082           	asrl #8,%d2
  22:	8282           	orl %d2,%d1
  24:	0280 0000 ff00 	andil #65280,%d0
  2a:	e188           	lsll #8,%d0
  2c:	8081           	orl %d1,%d0
  2e:	241f           	movel %sp@+,%d2
  30:	4e75           	rts
	...

_bswapdi2.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___bswapdi2>:
   0:	48e7 3e00      	moveml %d2-%d6,%sp@-
   4:	206f 0018      	moveal %sp@(24),%a0
   8:	226f 001c      	moveal %sp@(28),%a1
   c:	2808           	movel %a0,%d4
   e:	2a09           	movel %a1,%d5
  10:	0284 00ff 0000 	andil #16711680,%d4
  16:	4285           	clrl %d5
  18:	e08c           	lsrl #8,%d4
  1a:	2a04           	movel %d4,%d5
  1c:	7800           	moveq #0,%d4
  1e:	2008           	movel %a0,%d0
  20:	2209           	movel %a1,%d1
  22:	0280 ff00 0000 	andil #-16777216,%d0
  28:	4281           	clrl %d1
  2a:	7218           	moveq #24,%d1
  2c:	e2a8           	lsrl %d1,%d0
  2e:	2200           	movel %d0,%d1
  30:	7000           	moveq #0,%d0
  32:	8880           	orl %d0,%d4
  34:	8a81           	orl %d1,%d5
  36:	2408           	movel %a0,%d2
  38:	2609           	movel %a1,%d3
  3a:	0282 0000 ff00 	andil #65280,%d2
  40:	4283           	clrl %d3
  42:	2c02           	movel %d2,%d6
  44:	e18e           	lsll #8,%d6
  46:	2203           	movel %d3,%d1
  48:	4241           	clrw %d1
  4a:	4841           	swap %d1
  4c:	e049           	lsrw #8,%d1
  4e:	8286           	orl %d6,%d1
  50:	2002           	movel %d2,%d0
  52:	4240           	clrw %d0
  54:	4840           	swap %d0
  56:	e048           	lsrw #8,%d0
  58:	8880           	orl %d0,%d4
  5a:	8a81           	orl %d1,%d5
  5c:	2008           	movel %a0,%d0
  5e:	2209           	movel %a1,%d1
  60:	0280 0000 00ff 	andil #255,%d0
  66:	4281           	clrl %d1
  68:	1200           	moveb %d0,%d1
  6a:	e088           	lsrl #8,%d0
  6c:	e099           	rorl #8,%d1
  6e:	8880           	orl %d0,%d4
  70:	8a81           	orl %d1,%d5
  72:	2008           	movel %a0,%d0
  74:	2209           	movel %a1,%d1
  76:	4280           	clrl %d0
  78:	0281 ff00 0000 	andil #-16777216,%d1
  7e:	e198           	roll #8,%d0
  80:	e199           	roll #8,%d1
  82:	1001           	moveb %d1,%d0
  84:	4201           	clrb %d1
  86:	8880           	orl %d0,%d4
  88:	8a81           	orl %d1,%d5
  8a:	2408           	movel %a0,%d2
  8c:	2609           	movel %a1,%d3
  8e:	4282           	clrl %d2
  90:	0283 00ff 0000 	andil #16711680,%d3
  96:	2c03           	movel %d3,%d6
  98:	e08e           	lsrl #8,%d6
  9a:	2002           	movel %d2,%d0
  9c:	e148           	lslw #8,%d0
  9e:	4840           	swap %d0
  a0:	4240           	clrw %d0
  a2:	8086           	orl %d6,%d0
  a4:	2203           	movel %d3,%d1
  a6:	e149           	lslw #8,%d1
  a8:	4841           	swap %d1
  aa:	4241           	clrw %d1
  ac:	8880           	orl %d0,%d4
  ae:	8a81           	orl %d1,%d5
  b0:	2008           	movel %a0,%d0
  b2:	2209           	movel %a1,%d1
  b4:	4280           	clrl %d0
  b6:	0281 0000 ff00 	andil #65280,%d1
  bc:	e189           	lsll #8,%d1
  be:	2001           	movel %d1,%d0
  c0:	7200           	moveq #0,%d1
  c2:	8880           	orl %d0,%d4
  c4:	8a81           	orl %d1,%d5
  c6:	2008           	movel %a0,%d0
  c8:	2209           	movel %a1,%d1
  ca:	4280           	clrl %d0
  cc:	0281 0000 00ff 	andil #255,%d1
  d2:	7018           	moveq #24,%d0
  d4:	e1a9           	lsll %d0,%d1
  d6:	2001           	movel %d1,%d0
  d8:	7200           	moveq #0,%d1
  da:	8880           	orl %d0,%d4
  dc:	8a81           	orl %d1,%d5
  de:	2004           	movel %d4,%d0
  e0:	2205           	movel %d5,%d1
  e2:	4cdf 007c      	moveml %sp@+,%d2-%d6
  e6:	4e75           	rts

_fixunssfsi.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___fixunssfsi>:
   0:	2f02           	movel %d2,%sp@-
   2:	242f 0008      	movel %sp@(8),%d2
   6:	2f3c 4f00 0000 	movel #1325400064,%sp@-
   c:	2f02           	movel %d2,%sp@-
   e:	4eb9 0000 0000 	jsr 0 <___fixunssfsi>
  14:	508f           	addql #8,%sp
  16:	4a80           	tstl %d0
  18:	6c0e           	bges 28 <___fixunssfsi+0x28>
  1a:	2f02           	movel %d2,%sp@-
  1c:	4eb9 0000 0000 	jsr 0 <___fixunssfsi>
  22:	588f           	addql #4,%sp
  24:	241f           	movel %sp@+,%d2
  26:	4e75           	rts
  28:	2f3c 4f00 0000 	movel #1325400064,%sp@-
  2e:	2f02           	movel %d2,%sp@-
  30:	4eb9 0000 0000 	jsr 0 <___fixunssfsi>
  36:	588f           	addql #4,%sp
  38:	2e80           	movel %d0,%sp@
  3a:	4eb9 0000 0000 	jsr 0 <___fixunssfsi>
  40:	588f           	addql #4,%sp
  42:	0680 8000 0000 	addil #-2147483648,%d0
  48:	241f           	movel %sp@+,%d2
  4a:	4e75           	rts

_fixunsdfsi.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___fixunsdfsi>:
   0:	2f03           	movel %d3,%sp@-
   2:	2f02           	movel %d2,%sp@-
   4:	242f 000c      	movel %sp@(12),%d2
   8:	262f 0010      	movel %sp@(16),%d3
   c:	42a7           	clrl %sp@-
   e:	2f3c 41e0 0000 	movel #1105199104,%sp@-
  14:	2f03           	movel %d3,%sp@-
  16:	2f02           	movel %d2,%sp@-
  18:	4eb9 0000 0000 	jsr 0 <___fixunsdfsi>
  1e:	4fef 0010      	lea %sp@(16),%sp
  22:	4a80           	tstl %d0
  24:	6c12           	bges 38 <___fixunsdfsi+0x38>
  26:	2f03           	movel %d3,%sp@-
  28:	2f02           	movel %d2,%sp@-
  2a:	4eb9 0000 0000 	jsr 0 <___fixunsdfsi>
  30:	508f           	addql #8,%sp
  32:	241f           	movel %sp@+,%d2
  34:	261f           	movel %sp@+,%d3
  36:	4e75           	rts
  38:	42a7           	clrl %sp@-
  3a:	2f3c 41e0 0000 	movel #1105199104,%sp@-
  40:	2f03           	movel %d3,%sp@-
  42:	2f02           	movel %d2,%sp@-
  44:	4eb9 0000 0000 	jsr 0 <___fixunsdfsi>
  4a:	4fef 000c      	lea %sp@(12),%sp
  4e:	2e81           	movel %d1,%sp@
  50:	2f00           	movel %d0,%sp@-
  52:	4eb9 0000 0000 	jsr 0 <___fixunsdfsi>
  58:	508f           	addql #8,%sp
  5a:	0680 8000 0000 	addil #-2147483648,%d0
  60:	241f           	movel %sp@+,%d2
  62:	261f           	movel %sp@+,%d3
  64:	4e75           	rts
	...

_fixunsxfsi.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___fixunsxfsi-0xc>:
   0:	401e           	negxb %fp@+
   2:	0000 8000      	orib #0,%d0
   6:	0000 0000      	orib #0,%d0
	...

0000000c <___fixunsxfsi>:
   c:	4fef fff4      	lea %sp@(-12),%sp
  10:	48e7 1c0e      	moveml %d3-%d5/%a4-%fp,%sp@-
  14:	262f 0028      	movel %sp@(40),%d3
  18:	282f 002c      	movel %sp@(44),%d4
  1c:	2a2f 0030      	movel %sp@(48),%d5
  20:	287a ffde      	moveal %pc@(0 <___fixunsxfsi-0xc>),%a4
  24:	2a7a ffde      	moveal %pc@(4 <___fixunsxfsi-0x8>),%a5
  28:	2c7a ffde      	moveal %pc@(8 <___fixunsxfsi-0x4>),%fp
  2c:	2f0e           	movel %fp,%sp@-
  2e:	2f0d           	movel %a5,%sp@-
  30:	2f0c           	movel %a4,%sp@-
  32:	2f05           	movel %d5,%sp@-
  34:	2f04           	movel %d4,%sp@-
  36:	2f03           	movel %d3,%sp@-
  38:	4eb9 0000 0000 	jsr 0 <___fixunsxfsi-0xc>
  3e:	4fef 0018      	lea %sp@(24),%sp
  42:	4a80           	tstl %d0
  44:	6c1a           	bges 60 <___fixunsxfsi+0x54>
  46:	2f05           	movel %d5,%sp@-
  48:	2f04           	movel %d4,%sp@-
  4a:	2f03           	movel %d3,%sp@-
  4c:	4eb9 0000 0000 	jsr 0 <___fixunsxfsi-0xc>
  52:	4fef 000c      	lea %sp@(12),%sp
  56:	4cdf 7038      	moveml %sp@+,%d3-%d5/%a4-%fp
  5a:	4fef 000c      	lea %sp@(12),%sp
  5e:	4e75           	rts
  60:	2f0e           	movel %fp,%sp@-
  62:	2f0d           	movel %a5,%sp@-
  64:	2f0c           	movel %a4,%sp@-
  66:	2f05           	movel %d5,%sp@-
  68:	2f04           	movel %d4,%sp@-
  6a:	2f03           	movel %d3,%sp@-
  6c:	43ef 0030      	lea %sp@(48),%a1
  70:	4eb9 0000 0000 	jsr 0 <___fixunsxfsi-0xc>
  76:	4fef 0018      	lea %sp@(24),%sp
  7a:	2f2f 0020      	movel %sp@(32),%sp@-
  7e:	2f2f 0020      	movel %sp@(32),%sp@-
  82:	2f2f 0020      	movel %sp@(32),%sp@-
  86:	4eb9 0000 0000 	jsr 0 <___fixunsxfsi-0xc>
  8c:	4fef 000c      	lea %sp@(12),%sp
  90:	0680 8000 0000 	addil #-2147483648,%d0
  96:	4cdf 7038      	moveml %sp@+,%d3-%d5/%a4-%fp
  9a:	4fef 000c      	lea %sp@(12),%sp
  9e:	4e75           	rts

_fixsfdi.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___fixsfdi>:
   0:	2f02           	movel %d2,%sp@-
   2:	242f 0008      	movel %sp@(8),%d2
   6:	42a7           	clrl %sp@-
   8:	2f02           	movel %d2,%sp@-
   a:	4eb9 0000 0000 	jsr 0 <___fixsfdi>
  10:	508f           	addql #8,%sp
  12:	4a80           	tstl %d0
  14:	6d0c           	blts 22 <___fixsfdi+0x22>
  16:	2f42 0008      	movel %d2,%sp@(8)
  1a:	241f           	movel %sp@+,%d2
  1c:	4ef9 0000 0000 	jmp 0 <___fixsfdi>
  22:	0682 8000 0000 	addil #-2147483648,%d2
  28:	2f02           	movel %d2,%sp@-
  2a:	4eb9 0000 0000 	jsr 0 <___fixsfdi>
  30:	4481           	negl %d1
  32:	4080           	negxl %d0
  34:	588f           	addql #4,%sp
  36:	241f           	movel %sp@+,%d2
  38:	4e75           	rts
	...

_fixdfdi.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___fixdfdi>:
   0:	2f03           	movel %d3,%sp@-
   2:	2f02           	movel %d2,%sp@-
   4:	242f 000c      	movel %sp@(12),%d2
   8:	262f 0010      	movel %sp@(16),%d3
   c:	42a7           	clrl %sp@-
   e:	42a7           	clrl %sp@-
  10:	2f03           	movel %d3,%sp@-
  12:	2f02           	movel %d2,%sp@-
  14:	4eb9 0000 0000 	jsr 0 <___fixdfdi>
  1a:	4fef 0010      	lea %sp@(16),%sp
  1e:	4a80           	tstl %d0
  20:	6d12           	blts 34 <___fixdfdi+0x34>
  22:	2f42 000c      	movel %d2,%sp@(12)
  26:	2f43 0010      	movel %d3,%sp@(16)
  2a:	241f           	movel %sp@+,%d2
  2c:	261f           	movel %sp@+,%d3
  2e:	4ef9 0000 0000 	jmp 0 <___fixdfdi>
  34:	2002           	movel %d2,%d0
  36:	0680 8000 0000 	addil #-2147483648,%d0
  3c:	2f03           	movel %d3,%sp@-
  3e:	2f00           	movel %d0,%sp@-
  40:	4eb9 0000 0000 	jsr 0 <___fixdfdi>
  46:	4481           	negl %d1
  48:	4080           	negxl %d0
  4a:	508f           	addql #8,%sp
  4c:	241f           	movel %sp@+,%d2
  4e:	261f           	movel %sp@+,%d3
  50:	4e75           	rts
	...

_fixxfdi.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___fixxfdi-0xc>:
	...

0000000c <___fixxfdi>:
   c:	48e7 3c00      	moveml %d2-%d5,%sp@-
  10:	262f 0014      	movel %sp@(20),%d3
  14:	282f 0018      	movel %sp@(24),%d4
  18:	2a2f 001c      	movel %sp@(28),%d5
  1c:	2f3a ffea      	movel %pc@(8 <___fixxfdi-0x4>),%sp@-
  20:	2f3a ffe2      	movel %pc@(4 <___fixxfdi-0x8>),%sp@-
  24:	2f3a ffda      	movel %pc@(0 <___fixxfdi-0xc>),%sp@-
  28:	2f05           	movel %d5,%sp@-
  2a:	2f04           	movel %d4,%sp@-
  2c:	2f03           	movel %d3,%sp@-
  2e:	4eb9 0000 0000 	jsr 0 <___fixxfdi-0xc>
  34:	4fef 0018      	lea %sp@(24),%sp
  38:	4a80           	tstl %d0
  3a:	6d16           	blts 52 <___fixxfdi+0x46>
  3c:	2f43 0014      	movel %d3,%sp@(20)
  40:	2f44 0018      	movel %d4,%sp@(24)
  44:	2f45 001c      	movel %d5,%sp@(28)
  48:	4cdf 003c      	moveml %sp@+,%d2-%d5
  4c:	4ef9 0000 0000 	jmp 0 <___fixxfdi-0xc>
  52:	2003           	movel %d3,%d0
  54:	0680 8000 0000 	addil #-2147483648,%d0
  5a:	2204           	movel %d4,%d1
  5c:	2405           	movel %d5,%d2
  5e:	2f02           	movel %d2,%sp@-
  60:	2f01           	movel %d1,%sp@-
  62:	2f00           	movel %d0,%sp@-
  64:	4eb9 0000 0000 	jsr 0 <___fixxfdi-0xc>
  6a:	4481           	negl %d1
  6c:	4080           	negxl %d0
  6e:	4fef 000c      	lea %sp@(12),%sp
  72:	4cdf 003c      	moveml %sp@+,%d2-%d5
  76:	4e75           	rts

_fixtfdi.o:     file format a.out-zero-big


_fixunssfdi.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___fixunssfdi>:
   0:	48e7 3c30      	moveml %d2-%d5/%a2-%a3,%sp@-
   4:	2f2f 001c      	movel %sp@(28),%sp@-
   8:	4eb9 0000 0000 	jsr 0 <___fixunssfdi>
   e:	2400           	movel %d0,%d2
  10:	2601           	movel %d1,%d3
  12:	47f9 0000 0000 	lea 0 <___fixunssfdi>,%a3
  18:	4297           	clrl %sp@
  1a:	2f3c 3df0 0000 	movel #1039138816,%sp@-
  20:	2f01           	movel %d1,%sp@-
  22:	2f02           	movel %d2,%sp@-
  24:	4e93           	jsr %a3@
  26:	4fef 0010      	lea %sp@(16),%sp
  2a:	45f9 0000 0000 	lea 0 <___fixunssfdi>,%a2
  30:	2f01           	movel %d1,%sp@-
  32:	2f00           	movel %d0,%sp@-
  34:	4e92           	jsr %a2@
  36:	508f           	addql #8,%sp
  38:	2800           	movel %d0,%d4
  3a:	2f00           	movel %d0,%sp@-
  3c:	4eb9 0000 0000 	jsr 0 <___fixunssfdi>
  42:	4297           	clrl %sp@
  44:	2f3c 41f0 0000 	movel #1106247680,%sp@-
  4a:	2f01           	movel %d1,%sp@-
  4c:	2f00           	movel %d0,%sp@-
  4e:	4e93           	jsr %a3@
  50:	4fef 000c      	lea %sp@(12),%sp
  54:	2e81           	movel %d1,%sp@
  56:	2f00           	movel %d0,%sp@-
  58:	2f03           	movel %d3,%sp@-
  5a:	2f02           	movel %d2,%sp@-
  5c:	4eb9 0000 0000 	jsr 0 <___fixunssfdi>
  62:	4fef 000c      	lea %sp@(12),%sp
  66:	2e81           	movel %d1,%sp@
  68:	2f00           	movel %d0,%sp@-
  6a:	4e92           	jsr %a2@
  6c:	508f           	addql #8,%sp
  6e:	2404           	movel %d4,%d2
  70:	7600           	moveq #0,%d3
  72:	2802           	movel %d2,%d4
  74:	2a03           	movel %d3,%d5
  76:	8a80           	orl %d0,%d5
  78:	2004           	movel %d4,%d0
  7a:	2205           	movel %d5,%d1
  7c:	4cdf 0c3c      	moveml %sp@+,%d2-%d5/%a2-%a3
  80:	4e75           	rts
	...

_fixunsdfdi.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___fixunsdfdi>:
   0:	48e7 3c30      	moveml %d2-%d5/%a2-%a3,%sp@-
   4:	242f 001c      	movel %sp@(28),%d2
   8:	262f 0020      	movel %sp@(32),%d3
   c:	47f9 0000 0000 	lea 0 <___fixunsdfdi>,%a3
  12:	42a7           	clrl %sp@-
  14:	2f3c 3df0 0000 	movel #1039138816,%sp@-
  1a:	2f03           	movel %d3,%sp@-
  1c:	2f02           	movel %d2,%sp@-
  1e:	4e93           	jsr %a3@
  20:	4fef 0010      	lea %sp@(16),%sp
  24:	45f9 0000 0000 	lea 0 <___fixunsdfdi>,%a2
  2a:	2f01           	movel %d1,%sp@-
  2c:	2f00           	movel %d0,%sp@-
  2e:	4e92           	jsr %a2@
  30:	508f           	addql #8,%sp
  32:	2800           	movel %d0,%d4
  34:	2f00           	movel %d0,%sp@-
  36:	4eb9 0000 0000 	jsr 0 <___fixunsdfdi>
  3c:	4297           	clrl %sp@
  3e:	2f3c 41f0 0000 	movel #1106247680,%sp@-
  44:	2f01           	movel %d1,%sp@-
  46:	2f00           	movel %d0,%sp@-
  48:	4e93           	jsr %a3@
  4a:	4fef 000c      	lea %sp@(12),%sp
  4e:	2e81           	movel %d1,%sp@
  50:	2f00           	movel %d0,%sp@-
  52:	2f03           	movel %d3,%sp@-
  54:	2f02           	movel %d2,%sp@-
  56:	4eb9 0000 0000 	jsr 0 <___fixunsdfdi>
  5c:	4fef 000c      	lea %sp@(12),%sp
  60:	2e81           	movel %d1,%sp@
  62:	2f00           	movel %d0,%sp@-
  64:	4e92           	jsr %a2@
  66:	508f           	addql #8,%sp
  68:	2404           	movel %d4,%d2
  6a:	7600           	moveq #0,%d3
  6c:	2802           	movel %d2,%d4
  6e:	2a03           	movel %d3,%d5
  70:	8a80           	orl %d0,%d5
  72:	2004           	movel %d4,%d0
  74:	2205           	movel %d5,%d1
  76:	4cdf 0c3c      	moveml %sp@+,%d2-%d5/%a2-%a3
  7a:	4e75           	rts

_fixunsxfdi.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___fixunsxfdi-0x18>:
	...
   c:	3fdf           	.short 0x3fdf
   e:	0000 8000      	orib #0,%d0
  12:	0000 0000      	orib #0,%d0
	...

00000018 <___fixunsxfdi>:
  18:	4fef ffdc      	lea %sp@(-36),%sp
  1c:	48e7 3f3e      	moveml %d2-%d7/%a2-%fp,%sp@-
  20:	287a ffde      	moveal %pc@(0 <___fixunsxfdi-0x18>),%a4
  24:	2a7a ffde      	moveal %pc@(4 <___fixunsxfdi-0x14>),%a5
  28:	2c7a ffde      	moveal %pc@(8 <___fixunsxfdi-0x10>),%fp
  2c:	45f9 0000 0000 	lea 0 <___fixunsxfdi-0x18>,%a2
  32:	2f0e           	movel %fp,%sp@-
  34:	2f0d           	movel %a5,%sp@-
  36:	2f0c           	movel %a4,%sp@-
  38:	2f2f 0068      	movel %sp@(104),%sp@-
  3c:	2f2f 0068      	movel %sp@(104),%sp@-
  40:	2f2f 0068      	movel %sp@(104),%sp@-
  44:	4e92           	jsr %a2@
  46:	4fef 0018      	lea %sp@(24),%sp
  4a:	4a80           	tstl %d0
  4c:	6d00 010c      	bltw 15a <___fixunsxfdi+0x142>
  50:	2f3a ffc2      	movel %pc@(14 <___fixunsxfdi-0x4>),%sp@-
  54:	2f3a ffba      	movel %pc@(10 <___fixunsxfdi-0x8>),%sp@-
  58:	2f3a ffb2      	movel %pc@(c <___fixunsxfdi-0xc>),%sp@-
  5c:	2f2f 0068      	movel %sp@(104),%sp@-
  60:	2f2f 0068      	movel %sp@(104),%sp@-
  64:	2f2f 0068      	movel %sp@(104),%sp@-
  68:	43ef 005c      	lea %sp@(92),%a1
  6c:	4eb9 0000 0000 	jsr 0 <___fixunsxfdi-0x18>
  72:	4fef 0018      	lea %sp@(24),%sp
  76:	47f9 0000 0000 	lea 0 <___fixunsxfdi-0x18>,%a3
  7c:	2f2f 004c      	movel %sp@(76),%sp@-
  80:	2f2f 004c      	movel %sp@(76),%sp@-
  84:	2f2f 004c      	movel %sp@(76),%sp@-
  88:	4e93           	jsr %a3@
  8a:	4fef 000c      	lea %sp@(12),%sp
  8e:	2800           	movel %d0,%d4
  90:	7a00           	moveq #0,%d5
  92:	2f05           	movel %d5,%sp@-
  94:	2f00           	movel %d0,%sp@-
  96:	43ef 004c      	lea %sp@(76),%a1
  9a:	4eb9 0000 0000 	jsr 0 <___fixunsxfdi-0x18>
  a0:	508f           	addql #8,%sp
  a2:	2f2f 004c      	movel %sp@(76),%sp@-
  a6:	2f2f 004c      	movel %sp@(76),%sp@-
  aa:	2f2f 004c      	movel %sp@(76),%sp@-
  ae:	2f2f 0068      	movel %sp@(104),%sp@-
  b2:	2f2f 0068      	movel %sp@(104),%sp@-
  b6:	2f2f 0068      	movel %sp@(104),%sp@-
  ba:	43ef 0050      	lea %sp@(80),%a1
  be:	4eb9 0000 0000 	jsr 0 <___fixunsxfdi-0x18>
  c4:	4fef 0018      	lea %sp@(24),%sp
  c8:	2f6f 0038 002c 	movel %sp@(56),%sp@(44)
  ce:	2f6f 003c 0030 	movel %sp@(60),%sp@(48)
  d4:	2f6f 0040 0034 	movel %sp@(64),%sp@(52)
  da:	2f0e           	movel %fp,%sp@-
  dc:	2f0d           	movel %a5,%sp@-
  de:	2f0c           	movel %a4,%sp@-
  e0:	2f2f 0040      	movel %sp@(64),%sp@-
  e4:	2f2f 0040      	movel %sp@(64),%sp@-
  e8:	2f2f 0040      	movel %sp@(64),%sp@-
  ec:	4e92           	jsr %a2@
  ee:	4fef 0018      	lea %sp@(24),%sp
  f2:	4a80           	tstl %d0
  f4:	6c3c           	bges 132 <___fixunsxfdi+0x11a>
  f6:	202f 002c      	movel %sp@(44),%d0
  fa:	0680 8000 0000 	addil #-2147483648,%d0
 100:	206f 0030      	moveal %sp@(48),%a0
 104:	2208           	movel %a0,%d1
 106:	206f 0034      	moveal %sp@(52),%a0
 10a:	2408           	movel %a0,%d2
 10c:	2f02           	movel %d2,%sp@-
 10e:	2f01           	movel %d1,%sp@-
 110:	2f00           	movel %d0,%sp@-
 112:	4e93           	jsr %a3@
 114:	4fef 000c      	lea %sp@(12),%sp
 118:	2e00           	movel %d0,%d7
 11a:	7c00           	moveq #0,%d6
 11c:	2404           	movel %d4,%d2
 11e:	2605           	movel %d5,%d3
 120:	9687           	subl %d7,%d3
 122:	9586           	subxl %d6,%d2
 124:	2002           	movel %d2,%d0
 126:	2203           	movel %d3,%d1
 128:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 12c:	4fef 0024      	lea %sp@(36),%sp
 130:	4e75           	rts
 132:	2f2f 0034      	movel %sp@(52),%sp@-
 136:	2f2f 0034      	movel %sp@(52),%sp@-
 13a:	2f2f 0034      	movel %sp@(52),%sp@-
 13e:	4e93           	jsr %a3@
 140:	4fef 000c      	lea %sp@(12),%sp
 144:	2600           	movel %d0,%d3
 146:	7400           	moveq #0,%d2
 148:	d685           	addl %d5,%d3
 14a:	d584           	addxl %d4,%d2
 14c:	2002           	movel %d2,%d0
 14e:	2203           	movel %d3,%d1
 150:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 154:	4fef 0024      	lea %sp@(36),%sp
 158:	4e75           	rts
 15a:	4282           	clrl %d2
 15c:	4283           	clrl %d3
 15e:	2002           	movel %d2,%d0
 160:	2203           	movel %d3,%d1
 162:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
 166:	4fef 0024      	lea %sp@(36),%sp
 16a:	4e75           	rts

_fixunstfdi.o:     file format a.out-zero-big


_floatdisf.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___floatdisf>:
   0:	48e7 3c00      	moveml %d2-%d5,%sp@-
   4:	242f 0014      	movel %sp@(20),%d2
   8:	262f 0018      	movel %sp@(24),%d3
   c:	203c 001f ffff 	movel #2097151,%d0
  12:	72ff           	moveq #-1,%d1
  14:	d283           	addl %d3,%d1
  16:	d182           	addxl %d2,%d0
  18:	283c 003f ffff 	movel #4194303,%d4
  1e:	7afe           	moveq #-2,%d5
  20:	9a81           	subl %d1,%d5
  22:	9980           	subxl %d0,%d4
  24:	641a           	bccs 40 <___floatdisf+0x40>
  26:	2002           	movel %d2,%d0
  28:	2203           	movel %d3,%d1
  2a:	4280           	clrl %d0
  2c:	0281 0000 07ff 	andil #2047,%d1
  32:	2a00           	movel %d0,%d5
  34:	8a81           	orl %d1,%d5
  36:	6708           	beqs 40 <___floatdisf+0x40>
  38:	0243 f800      	andiw #-2048,%d3
  3c:	0043 0800      	oriw #2048,%d3
  40:	2f02           	movel %d2,%sp@-
  42:	4eb9 0000 0000 	jsr 0 <___floatdisf>
  48:	2040           	moveal %d0,%a0
  4a:	4297           	clrl %sp@
  4c:	2f3c 41f0 0000 	movel #1106247680,%sp@-
  52:	2f01           	movel %d1,%sp@-
  54:	2f08           	movel %a0,%sp@-
  56:	4eb9 0000 0000 	jsr 0 <___floatdisf>
  5c:	4fef 0010      	lea %sp@(16),%sp
  60:	2800           	movel %d0,%d4
  62:	2a01           	movel %d1,%d5
  64:	2f03           	movel %d3,%sp@-
  66:	4eb9 0000 0000 	jsr 0 <___floatdisf>
  6c:	2e85           	movel %d5,%sp@
  6e:	2f04           	movel %d4,%sp@-
  70:	2f01           	movel %d1,%sp@-
  72:	2f00           	movel %d0,%sp@-
  74:	4eb9 0000 0000 	jsr 0 <___floatdisf>
  7a:	4fef 000c      	lea %sp@(12),%sp
  7e:	2e81           	movel %d1,%sp@
  80:	2f00           	movel %d0,%sp@-
  82:	4eb9 0000 0000 	jsr 0 <___floatdisf>
  88:	508f           	addql #8,%sp
  8a:	4cdf 003c      	moveml %sp@+,%d2-%d5
  8e:	4e75           	rts

_floatdidf.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___floatdidf>:
   0:	48e7 3800      	moveml %d2-%d4,%sp@-
   4:	282f 0014      	movel %sp@(20),%d4
   8:	2f2f 0010      	movel %sp@(16),%sp@-
   c:	4eb9 0000 0000 	jsr 0 <___floatdidf>
  12:	2040           	moveal %d0,%a0
  14:	4297           	clrl %sp@
  16:	2f3c 41f0 0000 	movel #1106247680,%sp@-
  1c:	2f01           	movel %d1,%sp@-
  1e:	2f08           	movel %a0,%sp@-
  20:	4eb9 0000 0000 	jsr 0 <___floatdidf>
  26:	4fef 0010      	lea %sp@(16),%sp
  2a:	2400           	movel %d0,%d2
  2c:	2601           	movel %d1,%d3
  2e:	2f04           	movel %d4,%sp@-
  30:	4eb9 0000 0000 	jsr 0 <___floatdidf>
  36:	2e83           	movel %d3,%sp@
  38:	2f02           	movel %d2,%sp@-
  3a:	2f01           	movel %d1,%sp@-
  3c:	2f00           	movel %d0,%sp@-
  3e:	4eb9 0000 0000 	jsr 0 <___floatdidf>
  44:	4fef 0010      	lea %sp@(16),%sp
  48:	2240           	moveal %d0,%a1
  4a:	2009           	movel %a1,%d0
  4c:	4cdf 001c      	moveml %sp@+,%d2-%d4
  50:	4e75           	rts
	...

_floatdixf.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___floatdixf-0xc>:
   0:	401f           	negxb %sp@+
   2:	0000 8000      	orib #0,%d0
   6:	0000 0000      	orib #0,%d0
	...

0000000c <___floatdixf>:
   c:	4fef ffe8      	lea %sp@(-24),%sp
  10:	48e7 3c20      	moveml %d2-%d5/%a2,%sp@-
  14:	2449           	moveal %a1,%a2
  16:	242f 0034      	movel %sp@(52),%d2
  1a:	2f2f 0030      	movel %sp@(48),%sp@-
  1e:	43ef 0024      	lea %sp@(36),%a1
  22:	4eb9 0000 0000 	jsr 0 <___floatdixf-0xc>
  28:	588f           	addql #4,%sp
  2a:	2f3a ffdc      	movel %pc@(8 <___floatdixf-0x4>),%sp@-
  2e:	2f3a ffd4      	movel %pc@(4 <___floatdixf-0x8>),%sp@-
  32:	2f3a ffcc      	movel %pc@(0 <___floatdixf-0xc>),%sp@-
  36:	2f2f 0034      	movel %sp@(52),%sp@-
  3a:	2f2f 0034      	movel %sp@(52),%sp@-
  3e:	2f2f 0034      	movel %sp@(52),%sp@-
  42:	43ef 0038      	lea %sp@(56),%a1
  46:	4eb9 0000 0000 	jsr 0 <___floatdixf-0xc>
  4c:	4fef 0018      	lea %sp@(24),%sp
  50:	262f 0020      	movel %sp@(32),%d3
  54:	282f 0024      	movel %sp@(36),%d4
  58:	2a2f 0028      	movel %sp@(40),%d5
  5c:	2f02           	movel %d2,%sp@-
  5e:	43ef 0024      	lea %sp@(36),%a1
  62:	4eb9 0000 0000 	jsr 0 <___floatdixf-0xc>
  68:	588f           	addql #4,%sp
  6a:	2f05           	movel %d5,%sp@-
  6c:	2f04           	movel %d4,%sp@-
  6e:	2f03           	movel %d3,%sp@-
  70:	2f2f 0034      	movel %sp@(52),%sp@-
  74:	2f2f 0034      	movel %sp@(52),%sp@-
  78:	2f2f 0034      	movel %sp@(52),%sp@-
  7c:	43ef 002c      	lea %sp@(44),%a1
  80:	4eb9 0000 0000 	jsr 0 <___floatdixf-0xc>
  86:	4fef 0018      	lea %sp@(24),%sp
  8a:	202f 0014      	movel %sp@(20),%d0
  8e:	222f 0018      	movel %sp@(24),%d1
  92:	242f 001c      	movel %sp@(28),%d2
  96:	2480           	movel %d0,%a2@
  98:	2541 0004      	movel %d1,%a2@(4)
  9c:	2542 0008      	movel %d2,%a2@(8)
  a0:	200a           	movel %a2,%d0
  a2:	4cdf 043c      	moveml %sp@+,%d2-%d5/%a2
  a6:	4fef 0018      	lea %sp@(24),%sp
  aa:	4e75           	rts

_floatditf.o:     file format a.out-zero-big


_floatundisf.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___floatundisf>:
   0:	48e7 3c20      	moveml %d2-%d5/%a2,%sp@-
   4:	242f 0018      	movel %sp@(24),%d2
   8:	262f 001c      	movel %sp@(28),%d3
   c:	203c 001f ffff 	movel #2097151,%d0
  12:	72ff           	moveq #-1,%d1
  14:	9283           	subl %d3,%d1
  16:	9182           	subxl %d2,%d0
  18:	641a           	bccs 34 <___floatundisf+0x34>
  1a:	2002           	movel %d2,%d0
  1c:	2203           	movel %d3,%d1
  1e:	4280           	clrl %d0
  20:	0281 0000 07ff 	andil #2047,%d1
  26:	2800           	movel %d0,%d4
  28:	8881           	orl %d1,%d4
  2a:	6708           	beqs 34 <___floatundisf+0x34>
  2c:	0243 f800      	andiw #-2048,%d3
  30:	0043 0800      	oriw #2048,%d3
  34:	45f9 0000 0000 	lea 0 <___floatundisf>,%a2
  3a:	2f02           	movel %d2,%sp@-
  3c:	4e92           	jsr %a2@
  3e:	2040           	moveal %d0,%a0
  40:	4297           	clrl %sp@
  42:	2f3c 41f0 0000 	movel #1106247680,%sp@-
  48:	2f01           	movel %d1,%sp@-
  4a:	2f08           	movel %a0,%sp@-
  4c:	4eb9 0000 0000 	jsr 0 <___floatundisf>
  52:	4fef 0010      	lea %sp@(16),%sp
  56:	2800           	movel %d0,%d4
  58:	2a01           	movel %d1,%d5
  5a:	2f03           	movel %d3,%sp@-
  5c:	4e92           	jsr %a2@
  5e:	2e85           	movel %d5,%sp@
  60:	2f04           	movel %d4,%sp@-
  62:	2f01           	movel %d1,%sp@-
  64:	2f00           	movel %d0,%sp@-
  66:	4eb9 0000 0000 	jsr 0 <___floatundisf>
  6c:	4fef 000c      	lea %sp@(12),%sp
  70:	2e81           	movel %d1,%sp@
  72:	2f00           	movel %d0,%sp@-
  74:	4eb9 0000 0000 	jsr 0 <___floatundisf>
  7a:	508f           	addql #8,%sp
  7c:	4cdf 043c      	moveml %sp@+,%d2-%d5/%a2
  80:	4e75           	rts
	...

_floatundidf.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___floatundidf>:
   0:	48e7 3820      	moveml %d2-%d4/%a2,%sp@-
   4:	282f 0018      	movel %sp@(24),%d4
   8:	45f9 0000 0000 	lea 0 <___floatundidf>,%a2
   e:	2f2f 0014      	movel %sp@(20),%sp@-
  12:	4e92           	jsr %a2@
  14:	2040           	moveal %d0,%a0
  16:	4297           	clrl %sp@
  18:	2f3c 41f0 0000 	movel #1106247680,%sp@-
  1e:	2f01           	movel %d1,%sp@-
  20:	2f08           	movel %a0,%sp@-
  22:	4eb9 0000 0000 	jsr 0 <___floatundidf>
  28:	4fef 0010      	lea %sp@(16),%sp
  2c:	2400           	movel %d0,%d2
  2e:	2601           	movel %d1,%d3
  30:	2f04           	movel %d4,%sp@-
  32:	4e92           	jsr %a2@
  34:	2e83           	movel %d3,%sp@
  36:	2f02           	movel %d2,%sp@-
  38:	2f01           	movel %d1,%sp@-
  3a:	2f00           	movel %d0,%sp@-
  3c:	4eb9 0000 0000 	jsr 0 <___floatundidf>
  42:	4fef 0010      	lea %sp@(16),%sp
  46:	2240           	moveal %d0,%a1
  48:	2009           	movel %a1,%d0
  4a:	4cdf 041c      	moveml %sp@+,%d2-%d4/%a2
  4e:	4e75           	rts

_floatundixf.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___floatundixf-0xc>:
   0:	401f           	negxb %sp@+
   2:	0000 8000      	orib #0,%d0
   6:	0000 0000      	orib #0,%d0
	...

0000000c <___floatundixf>:
   c:	4fef ffe8      	lea %sp@(-24),%sp
  10:	48e7 3c30      	moveml %d2-%d5/%a2-%a3,%sp@-
  14:	2449           	moveal %a1,%a2
  16:	242f 0038      	movel %sp@(56),%d2
  1a:	47f9 0000 0000 	lea 0 <___floatundixf-0xc>,%a3
  20:	2f2f 0034      	movel %sp@(52),%sp@-
  24:	43ef 0028      	lea %sp@(40),%a1
  28:	4e93           	jsr %a3@
  2a:	588f           	addql #4,%sp
  2c:	2f3a ffda      	movel %pc@(8 <___floatundixf-0x4>),%sp@-
  30:	2f3a ffd2      	movel %pc@(4 <___floatundixf-0x8>),%sp@-
  34:	2f3a ffca      	movel %pc@(0 <___floatundixf-0xc>),%sp@-
  38:	2f2f 0038      	movel %sp@(56),%sp@-
  3c:	2f2f 0038      	movel %sp@(56),%sp@-
  40:	2f2f 0038      	movel %sp@(56),%sp@-
  44:	43ef 003c      	lea %sp@(60),%a1
  48:	4eb9 0000 0000 	jsr 0 <___floatundixf-0xc>
  4e:	4fef 0018      	lea %sp@(24),%sp
  52:	262f 0024      	movel %sp@(36),%d3
  56:	282f 0028      	movel %sp@(40),%d4
  5a:	2a2f 002c      	movel %sp@(44),%d5
  5e:	2f02           	movel %d2,%sp@-
  60:	43ef 0028      	lea %sp@(40),%a1
  64:	4e93           	jsr %a3@
  66:	588f           	addql #4,%sp
  68:	2f05           	movel %d5,%sp@-
  6a:	2f04           	movel %d4,%sp@-
  6c:	2f03           	movel %d3,%sp@-
  6e:	2f2f 0038      	movel %sp@(56),%sp@-
  72:	2f2f 0038      	movel %sp@(56),%sp@-
  76:	2f2f 0038      	movel %sp@(56),%sp@-
  7a:	43ef 0030      	lea %sp@(48),%a1
  7e:	4eb9 0000 0000 	jsr 0 <___floatundixf-0xc>
  84:	4fef 0018      	lea %sp@(24),%sp
  88:	202f 0018      	movel %sp@(24),%d0
  8c:	222f 001c      	movel %sp@(28),%d1
  90:	242f 0020      	movel %sp@(32),%d2
  94:	2480           	movel %d0,%a2@
  96:	2541 0004      	movel %d1,%a2@(4)
  9a:	2542 0008      	movel %d2,%a2@(8)
  9e:	200a           	movel %a2,%d0
  a0:	4cdf 0c3c      	moveml %sp@+,%d2-%d5/%a2-%a3
  a4:	4fef 0018      	lea %sp@(24),%sp
  a8:	4e75           	rts
	...

_floatunditf.o:     file format a.out-zero-big


_eprintf.o:     file format a.out-zero-big


__gcc_bcmp.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___gcc_bcmp>:
   0:	2f0a           	movel %a2,%sp@-
   2:	2f02           	movel %d2,%sp@-
   4:	246f 000c      	moveal %sp@(12),%a2
   8:	226f 0010      	moveal %sp@(16),%a1
   c:	242f 0014      	movel %sp@(20),%d2
  10:	6730           	beqs 42 <___gcc_bcmp+0x42>
  12:	1012           	moveb %a2@,%d0
  14:	1211           	moveb %a1@,%d1
  16:	b200           	cmpb %d0,%d1
  18:	6614           	bnes 2e <___gcc_bcmp+0x2e>
  1a:	41ea 0001      	lea %a2@(1),%a0
  1e:	5289           	addql #1,%a1
  20:	d48a           	addl %a2,%d2
  22:	b488           	cmpl %a0,%d2
  24:	671c           	beqs 42 <___gcc_bcmp+0x42>
  26:	1018           	moveb %a0@+,%d0
  28:	1219           	moveb %a1@+,%d1
  2a:	b200           	cmpb %d0,%d1
  2c:	67f4           	beqs 22 <___gcc_bcmp+0x22>
  2e:	0280 0000 00ff 	andil #255,%d0
  34:	0281 0000 00ff 	andil #255,%d1
  3a:	9081           	subl %d1,%d0
  3c:	241f           	movel %sp@+,%d2
  3e:	245f           	moveal %sp@+,%a2
  40:	4e75           	rts
  42:	7000           	moveq #0,%d0
  44:	241f           	movel %sp@+,%d2
  46:	245f           	moveal %sp@+,%a2
  48:	4e75           	rts
	...

_divdi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___divdi3>:
   0:	4e56 fff0      	linkw %fp,#-16
   4:	48e7 3f3c      	moveml %d2-%d7/%a2-%a5,%sp@-
   8:	202e 0008      	movel %fp@(8),%d0
   c:	222e 000c      	movel %fp@(12),%d1
  10:	242e 0010      	movel %fp@(16),%d2
  14:	262e 0014      	movel %fp@(20),%d3
  18:	2042           	moveal %d2,%a0
  1a:	4a80           	tstl %d0
  1c:	6d00 0284      	bltw 2a2 <___divdi3+0x2a2>
  20:	7a00           	moveq #0,%d5
  22:	b0fc 0000      	cmpaw #0,%a0
  26:	6d00 0126      	bltw 14e <___divdi3+0x14e>
  2a:	2803           	movel %d3,%d4
  2c:	2c01           	movel %d1,%d6
  2e:	2600           	movel %d0,%d3
  30:	4a82           	tstl %d2
  32:	6600 0110      	bnew 144 <___divdi3+0x144>
  36:	b084           	cmpl %d4,%d0
  38:	6400 015e      	bccw 198 <___divdi3+0x198>
  3c:	0c84 0000 ffff 	cmpil #65535,%d4
  42:	6200 036e      	bhiw 3b2 <___divdi3+0x3b2>
  46:	0c84 0000 00ff 	cmpil #255,%d4
  4c:	6200 0530      	bhiw 57e <___divdi3+0x57e>
  50:	7000           	moveq #0,%d0
  52:	7200           	moveq #0,%d1
  54:	2404           	movel %d4,%d2
  56:	e0aa           	lsrl %d0,%d2
  58:	2002           	movel %d2,%d0
  5a:	41f9 0000 0000 	lea 0 <___divdi3>,%a0
  60:	1030 2800      	moveb %a0@(00000000,%d2:l),%d0
  64:	0280 0000 00ff 	andil #255,%d0
  6a:	d280           	addl %d0,%d1
  6c:	7020           	moveq #32,%d0
  6e:	9081           	subl %d1,%d0
  70:	670c           	beqs 7e <___divdi3+0x7e>
  72:	e1ac           	lsll %d0,%d4
  74:	e1ab           	lsll %d0,%d3
  76:	2406           	movel %d6,%d2
  78:	e2aa           	lsrl %d1,%d2
  7a:	8682           	orl %d2,%d3
  7c:	e1ae           	lsll %d0,%d6
  7e:	2404           	movel %d4,%d2
  80:	4242           	clrw %d2
  82:	4842           	swap %d2
  84:	2004           	movel %d4,%d0
  86:	0280 0000 ffff 	andil #65535,%d0
  8c:	2440           	moveal %d0,%a2
  8e:	4bf9 0000 0000 	lea 0 <___divdi3>,%a5
  94:	2f02           	movel %d2,%sp@-
  96:	2f03           	movel %d3,%sp@-
  98:	4e95           	jsr %a5@
  9a:	508f           	addql #8,%sp
  9c:	2e00           	movel %d0,%d7
  9e:	47f9 0000 0000 	lea 0 <___divdi3>,%a3
  a4:	2f02           	movel %d2,%sp@-
  a6:	2f03           	movel %d3,%sp@-
  a8:	4e93           	jsr %a3@
  aa:	508f           	addql #8,%sp
  ac:	2600           	movel %d0,%d3
  ae:	49f9 0000 0000 	lea 0 <___divdi3>,%a4
  b4:	2f0a           	movel %a2,%sp@-
  b6:	2f00           	movel %d0,%sp@-
  b8:	4e94           	jsr %a4@
  ba:	508f           	addql #8,%sp
  bc:	4847           	swap %d7
  be:	4247           	clrw %d7
  c0:	2206           	movel %d6,%d1
  c2:	4241           	clrw %d1
  c4:	4841           	swap %d1
  c6:	8e81           	orl %d1,%d7
  c8:	be80           	cmpl %d0,%d7
  ca:	6416           	bccs e2 <___divdi3+0xe2>
  cc:	2203           	movel %d3,%d1
  ce:	5381           	subql #1,%d1
  d0:	de84           	addl %d4,%d7
  d2:	be84           	cmpl %d4,%d7
  d4:	6500 0442      	bcsw 518 <___divdi3+0x518>
  d8:	be80           	cmpl %d0,%d7
  da:	6400 043c      	bccw 518 <___divdi3+0x518>
  de:	5583           	subql #2,%d3
  e0:	de84           	addl %d4,%d7
  e2:	9e80           	subl %d0,%d7
  e4:	2f02           	movel %d2,%sp@-
  e6:	2f07           	movel %d7,%sp@-
  e8:	4e95           	jsr %a5@
  ea:	508f           	addql #8,%sp
  ec:	2a40           	moveal %d0,%a5
  ee:	2f02           	movel %d2,%sp@-
  f0:	2f07           	movel %d7,%sp@-
  f2:	4e93           	jsr %a3@
  f4:	508f           	addql #8,%sp
  f6:	2e00           	movel %d0,%d7
  f8:	2f0a           	movel %a2,%sp@-
  fa:	2f00           	movel %d0,%sp@-
  fc:	4e94           	jsr %a4@
  fe:	508f           	addql #8,%sp
 100:	220d           	movel %a5,%d1
 102:	4841           	swap %d1
 104:	4241           	clrw %d1
 106:	8246           	orw %d6,%d1
 108:	b280           	cmpl %d0,%d1
 10a:	6414           	bccs 120 <___divdi3+0x120>
 10c:	2407           	movel %d7,%d2
 10e:	5382           	subql #1,%d2
 110:	d284           	addl %d4,%d1
 112:	b284           	cmpl %d4,%d1
 114:	6500 0408      	bcsw 51e <___divdi3+0x51e>
 118:	b280           	cmpl %d0,%d1
 11a:	6400 0402      	bccw 51e <___divdi3+0x51e>
 11e:	5587           	subql #2,%d7
 120:	4843           	swap %d3
 122:	4243           	clrw %d3
 124:	2007           	movel %d7,%d0
 126:	8083           	orl %d3,%d0
 128:	7e00           	moveq #0,%d7
 12a:	2407           	movel %d7,%d2
 12c:	2600           	movel %d0,%d3
 12e:	2002           	movel %d2,%d0
 130:	2203           	movel %d3,%d1
 132:	4a85           	tstl %d5
 134:	6704           	beqs 13a <___divdi3+0x13a>
 136:	4481           	negl %d1
 138:	4080           	negxl %d0
 13a:	4cee 3cfc ffc8 	moveml %fp@(-56),%d2-%d7/%a2-%a5
 140:	4e5e           	unlk %fp
 142:	4e75           	rts
 144:	b082           	cmpl %d2,%d0
 146:	6410           	bccs 158 <___divdi3+0x158>
 148:	7000           	moveq #0,%d0
 14a:	7e00           	moveq #0,%d7
 14c:	60dc           	bras 12a <___divdi3+0x12a>
 14e:	4685           	notl %d5
 150:	4483           	negl %d3
 152:	4082           	negxl %d2
 154:	6000 fed4      	braw 2a <___divdi3+0x2a>
 158:	0c82 0000 ffff 	cmpil #65535,%d2
 15e:	6200 0264      	bhiw 3c4 <___divdi3+0x3c4>
 162:	0c82 0000 00ff 	cmpil #255,%d2
 168:	6200 03f2      	bhiw 55c <___divdi3+0x55c>
 16c:	7000           	moveq #0,%d0
 16e:	93c9           	subal %a1,%a1
 170:	2202           	movel %d2,%d1
 172:	e0a9           	lsrl %d0,%d1
 174:	41f9 0000 0000 	lea 0 <___divdi3>,%a0
 17a:	7000           	moveq #0,%d0
 17c:	1030 1800      	moveb %a0@(00000000,%d1:l),%d0
 180:	d089           	addl %a1,%d0
 182:	7e20           	moveq #32,%d7
 184:	9e80           	subl %d0,%d7
 186:	6600 0266      	bnew 3ee <___divdi3+0x3ee>
 18a:	b682           	cmpl %d2,%d3
 18c:	6204           	bhis 192 <___divdi3+0x192>
 18e:	bc84           	cmpl %d4,%d6
 190:	65b6           	bcss 148 <___divdi3+0x148>
 192:	7001           	moveq #1,%d0
 194:	7e00           	moveq #0,%d7
 196:	6092           	bras 12a <___divdi3+0x12a>
 198:	47f9 0000 0000 	lea 0 <___divdi3>,%a3
 19e:	4a84           	tstl %d4
 1a0:	660c           	bnes 1ae <___divdi3+0x1ae>
 1a2:	42a7           	clrl %sp@-
 1a4:	4878 0001      	pea 1 <___divdi3+0x1>
 1a8:	4e93           	jsr %a3@
 1aa:	508f           	addql #8,%sp
 1ac:	2800           	movel %d0,%d4
 1ae:	0c84 0000 ffff 	cmpil #65535,%d4
 1b4:	6200 00fe      	bhiw 2b4 <___divdi3+0x2b4>
 1b8:	0c84 0000 00ff 	cmpil #255,%d4
 1be:	6200 03b6      	bhiw 576 <___divdi3+0x576>
 1c2:	7000           	moveq #0,%d0
 1c4:	7200           	moveq #0,%d1
 1c6:	2404           	movel %d4,%d2
 1c8:	e0aa           	lsrl %d0,%d2
 1ca:	2002           	movel %d2,%d0
 1cc:	41f9 0000 0000 	lea 0 <___divdi3>,%a0
 1d2:	1030 2800      	moveb %a0@(00000000,%d2:l),%d0
 1d6:	0280 0000 00ff 	andil #255,%d0
 1dc:	d280           	addl %d0,%d1
 1de:	7020           	moveq #32,%d0
 1e0:	9081           	subl %d1,%d0
 1e2:	6600 00fe      	bnew 2e2 <___divdi3+0x2e2>
 1e6:	9684           	subl %d4,%d3
 1e8:	2404           	movel %d4,%d2
 1ea:	4242           	clrw %d2
 1ec:	4842           	swap %d2
 1ee:	2004           	movel %d4,%d0
 1f0:	0280 0000 ffff 	andil #65535,%d0
 1f6:	2440           	moveal %d0,%a2
 1f8:	7e01           	moveq #1,%d7
 1fa:	4bf9 0000 0000 	lea 0 <___divdi3>,%a5
 200:	49f9 0000 0000 	lea 0 <___divdi3>,%a4
 206:	2f02           	movel %d2,%sp@-
 208:	2f03           	movel %d3,%sp@-
 20a:	4e95           	jsr %a5@
 20c:	508f           	addql #8,%sp
 20e:	2f02           	movel %d2,%sp@-
 210:	2f03           	movel %d3,%sp@-
 212:	2d40 fff0      	movel %d0,%fp@(-16)
 216:	4e93           	jsr %a3@
 218:	508f           	addql #8,%sp
 21a:	2600           	movel %d0,%d3
 21c:	2f0a           	movel %a2,%sp@-
 21e:	2f00           	movel %d0,%sp@-
 220:	4e94           	jsr %a4@
 222:	508f           	addql #8,%sp
 224:	2240           	moveal %d0,%a1
 226:	222e fff0      	movel %fp@(-16),%d1
 22a:	4841           	swap %d1
 22c:	4241           	clrw %d1
 22e:	2006           	movel %d6,%d0
 230:	4240           	clrw %d0
 232:	4840           	swap %d0
 234:	8280           	orl %d0,%d1
 236:	b289           	cmpl %a1,%d1
 238:	6416           	bccs 250 <___divdi3+0x250>
 23a:	2043           	moveal %d3,%a0
 23c:	5388           	subql #1,%a0
 23e:	d284           	addl %d4,%d1
 240:	b284           	cmpl %d4,%d1
 242:	6500 02ea      	bcsw 52e <___divdi3+0x52e>
 246:	b289           	cmpl %a1,%d1
 248:	6400 02e4      	bccw 52e <___divdi3+0x52e>
 24c:	5583           	subql #2,%d3
 24e:	d284           	addl %d4,%d1
 250:	9289           	subl %a1,%d1
 252:	2f02           	movel %d2,%sp@-
 254:	2f01           	movel %d1,%sp@-
 256:	2d41 fff0      	movel %d1,%fp@(-16)
 25a:	4e95           	jsr %a5@
 25c:	508f           	addql #8,%sp
 25e:	2a40           	moveal %d0,%a5
 260:	2f02           	movel %d2,%sp@-
 262:	222e fff0      	movel %fp@(-16),%d1
 266:	2f01           	movel %d1,%sp@-
 268:	4e93           	jsr %a3@
 26a:	508f           	addql #8,%sp
 26c:	2400           	movel %d0,%d2
 26e:	2f0a           	movel %a2,%sp@-
 270:	2f00           	movel %d0,%sp@-
 272:	4e94           	jsr %a4@
 274:	508f           	addql #8,%sp
 276:	220d           	movel %a5,%d1
 278:	4841           	swap %d1
 27a:	4241           	clrw %d1
 27c:	8246           	orw %d6,%d1
 27e:	b280           	cmpl %d0,%d1
 280:	6414           	bccs 296 <___divdi3+0x296>
 282:	2c02           	movel %d2,%d6
 284:	5386           	subql #1,%d6
 286:	d284           	addl %d4,%d1
 288:	b284           	cmpl %d4,%d1
 28a:	6500 02a8      	bcsw 534 <___divdi3+0x534>
 28e:	b280           	cmpl %d0,%d1
 290:	6400 02a2      	bccw 534 <___divdi3+0x534>
 294:	5582           	subql #2,%d2
 296:	4843           	swap %d3
 298:	4243           	clrw %d3
 29a:	2002           	movel %d2,%d0
 29c:	8083           	orl %d3,%d0
 29e:	6000 fe8a      	braw 12a <___divdi3+0x12a>
 2a2:	4481           	negl %d1
 2a4:	4080           	negxl %d0
 2a6:	7aff           	moveq #-1,%d5
 2a8:	b0fc 0000      	cmpaw #0,%a0
 2ac:	6c00 fd7c      	bgew 2a <___divdi3+0x2a>
 2b0:	6000 fe9c      	braw 14e <___divdi3+0x14e>
 2b4:	0c84 00ff ffff 	cmpil #16777215,%d4
 2ba:	6200 02aa      	bhiw 566 <___divdi3+0x566>
 2be:	7010           	moveq #16,%d0
 2c0:	7210           	moveq #16,%d1
 2c2:	2404           	movel %d4,%d2
 2c4:	e0aa           	lsrl %d0,%d2
 2c6:	2002           	movel %d2,%d0
 2c8:	41f9 0000 0000 	lea 0 <___divdi3>,%a0
 2ce:	1030 2800      	moveb %a0@(00000000,%d2:l),%d0
 2d2:	0280 0000 00ff 	andil #255,%d0
 2d8:	d280           	addl %d0,%d1
 2da:	7020           	moveq #32,%d0
 2dc:	9081           	subl %d1,%d0
 2de:	6700 ff06      	beqw 1e6 <___divdi3+0x1e6>
 2e2:	e1ac           	lsll %d0,%d4
 2e4:	2e03           	movel %d3,%d7
 2e6:	e2af           	lsrl %d1,%d7
 2e8:	e1ab           	lsll %d0,%d3
 2ea:	2406           	movel %d6,%d2
 2ec:	e2aa           	lsrl %d1,%d2
 2ee:	8682           	orl %d2,%d3
 2f0:	e1ae           	lsll %d0,%d6
 2f2:	2404           	movel %d4,%d2
 2f4:	4242           	clrw %d2
 2f6:	4842           	swap %d2
 2f8:	2004           	movel %d4,%d0
 2fa:	0280 0000 ffff 	andil #65535,%d0
 300:	2440           	moveal %d0,%a2
 302:	4bf9 0000 0000 	lea 0 <___divdi3>,%a5
 308:	2f02           	movel %d2,%sp@-
 30a:	2f07           	movel %d7,%sp@-
 30c:	4e95           	jsr %a5@
 30e:	508f           	addql #8,%sp
 310:	2d40 fff8      	movel %d0,%fp@(-8)
 314:	2f02           	movel %d2,%sp@-
 316:	2f07           	movel %d7,%sp@-
 318:	4e93           	jsr %a3@
 31a:	508f           	addql #8,%sp
 31c:	2d40 fffc      	movel %d0,%fp@(-4)
 320:	49f9 0000 0000 	lea 0 <___divdi3>,%a4
 326:	2f0a           	movel %a2,%sp@-
 328:	2f00           	movel %d0,%sp@-
 32a:	4e94           	jsr %a4@
 32c:	508f           	addql #8,%sp
 32e:	2e2e fff8      	movel %fp@(-8),%d7
 332:	4847           	swap %d7
 334:	4247           	clrw %d7
 336:	2203           	movel %d3,%d1
 338:	4241           	clrw %d1
 33a:	4841           	swap %d1
 33c:	8e81           	orl %d1,%d7
 33e:	be80           	cmpl %d0,%d7
 340:	641a           	bccs 35c <___divdi3+0x35c>
 342:	222e fffc      	movel %fp@(-4),%d1
 346:	5381           	subql #1,%d1
 348:	de84           	addl %d4,%d7
 34a:	be84           	cmpl %d4,%d7
 34c:	6500 0252      	bcsw 5a0 <___divdi3+0x5a0>
 350:	be80           	cmpl %d0,%d7
 352:	6400 024c      	bccw 5a0 <___divdi3+0x5a0>
 356:	55ae fffc      	subql #2,%fp@(-4)
 35a:	de84           	addl %d4,%d7
 35c:	9e80           	subl %d0,%d7
 35e:	2f02           	movel %d2,%sp@-
 360:	2f07           	movel %d7,%sp@-
 362:	4e95           	jsr %a5@
 364:	508f           	addql #8,%sp
 366:	2d40 fff8      	movel %d0,%fp@(-8)
 36a:	2f02           	movel %d2,%sp@-
 36c:	2f07           	movel %d7,%sp@-
 36e:	4e93           	jsr %a3@
 370:	508f           	addql #8,%sp
 372:	2e00           	movel %d0,%d7
 374:	2f0a           	movel %a2,%sp@-
 376:	2f00           	movel %d0,%sp@-
 378:	4e94           	jsr %a4@
 37a:	508f           	addql #8,%sp
 37c:	222e fff8      	movel %fp@(-8),%d1
 380:	4841           	swap %d1
 382:	4241           	clrw %d1
 384:	8243           	orw %d3,%d1
 386:	b280           	cmpl %d0,%d1
 388:	6416           	bccs 3a0 <___divdi3+0x3a0>
 38a:	2607           	movel %d7,%d3
 38c:	5383           	subql #1,%d3
 38e:	d284           	addl %d4,%d1
 390:	b284           	cmpl %d4,%d1
 392:	6500 01f2      	bcsw 586 <___divdi3+0x586>
 396:	b280           	cmpl %d0,%d1
 398:	6400 01ec      	bccw 586 <___divdi3+0x586>
 39c:	5587           	subql #2,%d7
 39e:	d284           	addl %d4,%d1
 3a0:	2601           	movel %d1,%d3
 3a2:	9680           	subl %d0,%d3
 3a4:	202e fffc      	movel %fp@(-4),%d0
 3a8:	4840           	swap %d0
 3aa:	4240           	clrw %d0
 3ac:	8e80           	orl %d0,%d7
 3ae:	6000 fe56      	braw 206 <___divdi3+0x206>
 3b2:	0c84 00ff ffff 	cmpil #16777215,%d4
 3b8:	6200 01b4      	bhiw 56e <___divdi3+0x56e>
 3bc:	7010           	moveq #16,%d0
 3be:	7210           	moveq #16,%d1
 3c0:	6000 fc92      	braw 54 <___divdi3+0x54>
 3c4:	0c82 00ff ffff 	cmpil #16777215,%d2
 3ca:	6200 0186      	bhiw 552 <___divdi3+0x552>
 3ce:	7010           	moveq #16,%d0
 3d0:	327c 0010      	moveaw #16,%a1
 3d4:	2202           	movel %d2,%d1
 3d6:	e0a9           	lsrl %d0,%d1
 3d8:	41f9 0000 0000 	lea 0 <___divdi3>,%a0
 3de:	7000           	moveq #0,%d0
 3e0:	1030 1800      	moveb %a0@(00000000,%d1:l),%d0
 3e4:	d089           	addl %a1,%d0
 3e6:	7e20           	moveq #32,%d7
 3e8:	9e80           	subl %d0,%d7
 3ea:	6700 fd9e      	beqw 18a <___divdi3+0x18a>
 3ee:	efaa           	lsll %d7,%d2
 3f0:	2204           	movel %d4,%d1
 3f2:	e0a9           	lsrl %d0,%d1
 3f4:	8481           	orl %d1,%d2
 3f6:	efac           	lsll %d7,%d4
 3f8:	2d44 fffc      	movel %d4,%fp@(-4)
 3fc:	2203           	movel %d3,%d1
 3fe:	e0a9           	lsrl %d0,%d1
 400:	2441           	moveal %d1,%a2
 402:	efab           	lsll %d7,%d3
 404:	2206           	movel %d6,%d1
 406:	e0a9           	lsrl %d0,%d1
 408:	8681           	orl %d1,%d3
 40a:	2802           	movel %d2,%d4
 40c:	4244           	clrw %d4
 40e:	4844           	swap %d4
 410:	2202           	movel %d2,%d1
 412:	0281 0000 ffff 	andil #65535,%d1
 418:	2d41 fff8      	movel %d1,%fp@(-8)
 41c:	4bf9 0000 0000 	lea 0 <___divdi3>,%a5
 422:	2f04           	movel %d4,%sp@-
 424:	2f0a           	movel %a2,%sp@-
 426:	4e95           	jsr %a5@
 428:	508f           	addql #8,%sp
 42a:	47f9 0000 0000 	lea 0 <___divdi3>,%a3
 430:	2f04           	movel %d4,%sp@-
 432:	2f0a           	movel %a2,%sp@-
 434:	2d40 fff0      	movel %d0,%fp@(-16)
 438:	4e93           	jsr %a3@
 43a:	508f           	addql #8,%sp
 43c:	2440           	moveal %d0,%a2
 43e:	49f9 0000 0000 	lea 0 <___divdi3>,%a4
 444:	2f2e fff8      	movel %fp@(-8),%sp@-
 448:	2f00           	movel %d0,%sp@-
 44a:	4e94           	jsr %a4@
 44c:	508f           	addql #8,%sp
 44e:	2240           	moveal %d0,%a1
 450:	222e fff0      	movel %fp@(-16),%d1
 454:	4841           	swap %d1
 456:	4241           	clrw %d1
 458:	2003           	movel %d3,%d0
 45a:	4240           	clrw %d0
 45c:	4840           	swap %d0
 45e:	8280           	orl %d0,%d1
 460:	b289           	cmpl %a1,%d1
 462:	6416           	bccs 47a <___divdi3+0x47a>
 464:	41ea ffff      	lea %a2@(-1),%a0
 468:	d282           	addl %d2,%d1
 46a:	b282           	cmpl %d2,%d1
 46c:	6500 013a      	bcsw 5a8 <___divdi3+0x5a8>
 470:	b289           	cmpl %a1,%d1
 472:	6400 0134      	bccw 5a8 <___divdi3+0x5a8>
 476:	558a           	subql #2,%a2
 478:	d282           	addl %d2,%d1
 47a:	9289           	subl %a1,%d1
 47c:	2f04           	movel %d4,%sp@-
 47e:	2f01           	movel %d1,%sp@-
 480:	2d41 fff0      	movel %d1,%fp@(-16)
 484:	4e95           	jsr %a5@
 486:	508f           	addql #8,%sp
 488:	2a40           	moveal %d0,%a5
 48a:	2f04           	movel %d4,%sp@-
 48c:	222e fff0      	movel %fp@(-16),%d1
 490:	2f01           	movel %d1,%sp@-
 492:	4e93           	jsr %a3@
 494:	508f           	addql #8,%sp
 496:	2800           	movel %d0,%d4
 498:	2f2e fff8      	movel %fp@(-8),%sp@-
 49c:	2f00           	movel %d0,%sp@-
 49e:	4e94           	jsr %a4@
 4a0:	508f           	addql #8,%sp
 4a2:	220d           	movel %a5,%d1
 4a4:	4841           	swap %d1
 4a6:	4241           	clrw %d1
 4a8:	8243           	orw %d3,%d1
 4aa:	b280           	cmpl %d0,%d1
 4ac:	6416           	bccs 4c4 <___divdi3+0x4c4>
 4ae:	2604           	movel %d4,%d3
 4b0:	5383           	subql #1,%d3
 4b2:	d282           	addl %d2,%d1
 4b4:	b282           	cmpl %d2,%d1
 4b6:	6500 00e2      	bcsw 59a <___divdi3+0x59a>
 4ba:	b280           	cmpl %d0,%d1
 4bc:	6400 00dc      	bccw 59a <___divdi3+0x59a>
 4c0:	5584           	subql #2,%d4
 4c2:	d282           	addl %d2,%d1
 4c4:	2241           	moveal %d1,%a1
 4c6:	93c0           	subal %d0,%a1
 4c8:	200a           	movel %a2,%d0
 4ca:	4840           	swap %d0
 4cc:	4240           	clrw %d0
 4ce:	8880           	orl %d0,%d4
 4d0:	2044           	moveal %d4,%a0
 4d2:	2008           	movel %a0,%d0
 4d4:	222e fffc      	movel %fp@(-4),%d1
 4d8:	2400           	movel %d0,%d2
 4da:	4840           	swap %d0
 4dc:	2601           	movel %d1,%d3
 4de:	4841           	swap %d1
 4e0:	3802           	movew %d2,%d4
 4e2:	c8c3           	muluw %d3,%d4
 4e4:	c4c1           	muluw %d1,%d2
 4e6:	c6c0           	muluw %d0,%d3
 4e8:	c2c0           	muluw %d0,%d1
 4ea:	2004           	movel %d4,%d0
 4ec:	b140           	eorw %d0,%d0
 4ee:	4840           	swap %d0
 4f0:	d480           	addl %d0,%d2
 4f2:	d483           	addl %d3,%d2
 4f4:	6406           	bccs 4fc <___divdi3+0x4fc>
 4f6:	0681 0001 0000 	addil #65536,%d1
 4fc:	4842           	swap %d2
 4fe:	7000           	moveq #0,%d0
 500:	3002           	movew %d2,%d0
 502:	3404           	movew %d4,%d2
 504:	2642           	moveal %d2,%a3
 506:	d081           	addl %d1,%d0
 508:	2440           	moveal %d0,%a2
 50a:	b5c9           	cmpal %a1,%a2
 50c:	623a           	bhis 548 <___divdi3+0x548>
 50e:	6732           	beqs 542 <___divdi3+0x542>
 510:	2008           	movel %a0,%d0
 512:	7e00           	moveq #0,%d7
 514:	6000 fc14      	braw 12a <___divdi3+0x12a>
 518:	2601           	movel %d1,%d3
 51a:	6000 fbc6      	braw e2 <___divdi3+0xe2>
 51e:	2e02           	movel %d2,%d7
 520:	4843           	swap %d3
 522:	4243           	clrw %d3
 524:	2007           	movel %d7,%d0
 526:	8083           	orl %d3,%d0
 528:	7e00           	moveq #0,%d7
 52a:	6000 fbfe      	braw 12a <___divdi3+0x12a>
 52e:	2608           	movel %a0,%d3
 530:	6000 fd1e      	braw 250 <___divdi3+0x250>
 534:	2406           	movel %d6,%d2
 536:	4843           	swap %d3
 538:	4243           	clrw %d3
 53a:	2002           	movel %d2,%d0
 53c:	8083           	orl %d3,%d0
 53e:	6000 fbea      	braw 12a <___divdi3+0x12a>
 542:	efae           	lsll %d7,%d6
 544:	b7c6           	cmpal %d6,%a3
 546:	63c8           	blss 510 <___divdi3+0x510>
 548:	2008           	movel %a0,%d0
 54a:	5380           	subql #1,%d0
 54c:	7e00           	moveq #0,%d7
 54e:	6000 fbda      	braw 12a <___divdi3+0x12a>
 552:	7018           	moveq #24,%d0
 554:	327c 0018      	moveaw #24,%a1
 558:	6000 fc16      	braw 170 <___divdi3+0x170>
 55c:	7008           	moveq #8,%d0
 55e:	327c 0008      	moveaw #8,%a1
 562:	6000 fc0c      	braw 170 <___divdi3+0x170>
 566:	7018           	moveq #24,%d0
 568:	7218           	moveq #24,%d1
 56a:	6000 fc5a      	braw 1c6 <___divdi3+0x1c6>
 56e:	7018           	moveq #24,%d0
 570:	7218           	moveq #24,%d1
 572:	6000 fae0      	braw 54 <___divdi3+0x54>
 576:	7008           	moveq #8,%d0
 578:	7208           	moveq #8,%d1
 57a:	6000 fc4a      	braw 1c6 <___divdi3+0x1c6>
 57e:	7008           	moveq #8,%d0
 580:	7208           	moveq #8,%d1
 582:	6000 fad0      	braw 54 <___divdi3+0x54>
 586:	2e03           	movel %d3,%d7
 588:	2601           	movel %d1,%d3
 58a:	9680           	subl %d0,%d3
 58c:	202e fffc      	movel %fp@(-4),%d0
 590:	4840           	swap %d0
 592:	4240           	clrw %d0
 594:	8e80           	orl %d0,%d7
 596:	6000 fc6e      	braw 206 <___divdi3+0x206>
 59a:	2803           	movel %d3,%d4
 59c:	6000 ff26      	braw 4c4 <___divdi3+0x4c4>
 5a0:	2d41 fffc      	movel %d1,%fp@(-4)
 5a4:	6000 fdb6      	braw 35c <___divdi3+0x35c>
 5a8:	2448           	moveal %a0,%a2
 5aa:	6000 fece      	braw 47a <___divdi3+0x47a>
	...

_moddi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___moddi3>:
   0:	4e56 ffec      	linkw %fp,#-20
   4:	48e7 3f3c      	moveml %d2-%d7/%a2-%a5,%sp@-
   8:	2c2e 0008      	movel %fp@(8),%d6
   c:	2e2e 000c      	movel %fp@(12),%d7
  10:	202e 0010      	movel %fp@(16),%d0
  14:	222e 0014      	movel %fp@(20),%d1
  18:	2040           	moveal %d0,%a0
  1a:	4a86           	tstl %d6
  1c:	6d00 0224      	bltw 242 <___moddi3+0x242>
  20:	95ca           	subal %a2,%a2
  22:	b0fc 0000      	cmpaw #0,%a0
  26:	6d00 010a      	bltw 132 <___moddi3+0x132>
  2a:	2801           	movel %d1,%d4
  2c:	2607           	movel %d7,%d3
  2e:	2406           	movel %d6,%d2
  30:	4a80           	tstl %d0
  32:	6600 00f4      	bnew 128 <___moddi3+0x128>
  36:	bc81           	cmpl %d1,%d6
  38:	6400 014a      	bccw 184 <___moddi3+0x184>
  3c:	0c81 0000 ffff 	cmpil #65535,%d1
  42:	6200 02ee      	bhiw 332 <___moddi3+0x332>
  46:	0c81 0000 00ff 	cmpil #255,%d1
  4c:	6200 04ba      	bhiw 508 <___moddi3+0x508>
  50:	7000           	moveq #0,%d0
  52:	93c9           	subal %a1,%a1
  54:	2204           	movel %d4,%d1
  56:	e0a9           	lsrl %d0,%d1
  58:	41f9 0000 0000 	lea 0 <___moddi3>,%a0
  5e:	7000           	moveq #0,%d0
  60:	1030 1800      	moveb %a0@(00000000,%d1:l),%d0
  64:	d089           	addl %a1,%d0
  66:	7a20           	moveq #32,%d5
  68:	9a80           	subl %d0,%d5
  6a:	6700 02f0      	beqw 35c <___moddi3+0x35c>
  6e:	ebac           	lsll %d5,%d4
  70:	ebaa           	lsll %d5,%d2
  72:	2203           	movel %d3,%d1
  74:	e0a9           	lsrl %d0,%d1
  76:	8481           	orl %d1,%d2
  78:	ebab           	lsll %d5,%d3
  7a:	2c04           	movel %d4,%d6
  7c:	4246           	clrw %d6
  7e:	4846           	swap %d6
  80:	2e04           	movel %d4,%d7
  82:	0287 0000 ffff 	andil #65535,%d7
  88:	47f9 0000 0000 	lea 0 <___moddi3>,%a3
  8e:	2f06           	movel %d6,%sp@-
  90:	2f02           	movel %d2,%sp@-
  92:	4e93           	jsr %a3@
  94:	508f           	addql #8,%sp
  96:	2d40 fffc      	movel %d0,%fp@(-4)
  9a:	49f9 0000 0000 	lea 0 <___moddi3>,%a4
  a0:	2f06           	movel %d6,%sp@-
  a2:	2f02           	movel %d2,%sp@-
  a4:	4e94           	jsr %a4@
  a6:	508f           	addql #8,%sp
  a8:	4bf9 0000 0000 	lea 0 <___moddi3>,%a5
  ae:	2f07           	movel %d7,%sp@-
  b0:	2f00           	movel %d0,%sp@-
  b2:	4e95           	jsr %a5@
  b4:	508f           	addql #8,%sp
  b6:	242e fffc      	movel %fp@(-4),%d2
  ba:	4842           	swap %d2
  bc:	4242           	clrw %d2
  be:	2203           	movel %d3,%d1
  c0:	4241           	clrw %d1
  c2:	4841           	swap %d1
  c4:	8481           	orl %d1,%d2
  c6:	b480           	cmpl %d0,%d2
  c8:	640c           	bccs d6 <___moddi3+0xd6>
  ca:	d484           	addl %d4,%d2
  cc:	b484           	cmpl %d4,%d2
  ce:	6506           	bcss d6 <___moddi3+0xd6>
  d0:	b480           	cmpl %d0,%d2
  d2:	6402           	bccs d6 <___moddi3+0xd6>
  d4:	d484           	addl %d4,%d2
  d6:	9480           	subl %d0,%d2
  d8:	2f06           	movel %d6,%sp@-
  da:	2f02           	movel %d2,%sp@-
  dc:	4e93           	jsr %a3@
  de:	508f           	addql #8,%sp
  e0:	2640           	moveal %d0,%a3
  e2:	2f06           	movel %d6,%sp@-
  e4:	2f02           	movel %d2,%sp@-
  e6:	4e94           	jsr %a4@
  e8:	588f           	addql #4,%sp
  ea:	2e87           	movel %d7,%sp@
  ec:	2f00           	movel %d0,%sp@-
  ee:	4e95           	jsr %a5@
  f0:	508f           	addql #8,%sp
  f2:	220b           	movel %a3,%d1
  f4:	4841           	swap %d1
  f6:	4241           	clrw %d1
  f8:	8243           	orw %d3,%d1
  fa:	b280           	cmpl %d0,%d1
  fc:	640c           	bccs 10a <___moddi3+0x10a>
  fe:	d284           	addl %d4,%d1
 100:	b284           	cmpl %d4,%d1
 102:	6506           	bcss 10a <___moddi3+0x10a>
 104:	b280           	cmpl %d0,%d1
 106:	6402           	bccs 10a <___moddi3+0x10a>
 108:	d284           	addl %d4,%d1
 10a:	2401           	movel %d1,%d2
 10c:	9480           	subl %d0,%d2
 10e:	7000           	moveq #0,%d0
 110:	2202           	movel %d2,%d1
 112:	eaa9           	lsrl %d5,%d1
 114:	b4fc 0000      	cmpaw #0,%a2
 118:	6704           	beqs 11e <___moddi3+0x11e>
 11a:	4481           	negl %d1
 11c:	4080           	negxl %d0
 11e:	4cee 3cfc ffc4 	moveml %fp@(-60),%d2-%d7/%a2-%a5
 124:	4e5e           	unlk %fp
 126:	4e75           	rts
 128:	bc80           	cmpl %d0,%d6
 12a:	640e           	bccs 13a <___moddi3+0x13a>
 12c:	2006           	movel %d6,%d0
 12e:	2207           	movel %d7,%d1
 130:	60e2           	bras 114 <___moddi3+0x114>
 132:	4481           	negl %d1
 134:	4080           	negxl %d0
 136:	6000 fef2      	braw 2a <___moddi3+0x2a>
 13a:	0c80 0000 ffff 	cmpil #65535,%d0
 140:	6200 0220      	bhiw 362 <___moddi3+0x362>
 144:	0c80 0000 00ff 	cmpil #255,%d0
 14a:	6200 03ce      	bhiw 51a <___moddi3+0x51a>
 14e:	7200           	moveq #0,%d1
 150:	7c00           	moveq #0,%d6
 152:	2a00           	movel %d0,%d5
 154:	e2ad           	lsrl %d1,%d5
 156:	2205           	movel %d5,%d1
 158:	41f9 0000 0000 	lea 0 <___moddi3>,%a0
 15e:	1230 5800      	moveb %a0@(00000000,%d5:l),%d1
 162:	0281 0000 00ff 	andil #255,%d1
 168:	dc81           	addl %d1,%d6
 16a:	7e20           	moveq #32,%d7
 16c:	9e86           	subl %d6,%d7
 16e:	6600 0220      	bnew 390 <___moddi3+0x390>
 172:	b480           	cmpl %d0,%d2
 174:	6204           	bhis 17a <___moddi3+0x17a>
 176:	b684           	cmpl %d4,%d3
 178:	6504           	bcss 17e <___moddi3+0x17e>
 17a:	9684           	subl %d4,%d3
 17c:	9580           	subxl %d0,%d2
 17e:	2002           	movel %d2,%d0
 180:	2203           	movel %d3,%d1
 182:	6090           	bras 114 <___moddi3+0x114>
 184:	49f9 0000 0000 	lea 0 <___moddi3>,%a4
 18a:	4a81           	tstl %d1
 18c:	660c           	bnes 19a <___moddi3+0x19a>
 18e:	42a7           	clrl %sp@-
 190:	4878 0001      	pea 1 <___moddi3+0x1>
 194:	4e94           	jsr %a4@
 196:	508f           	addql #8,%sp
 198:	2800           	movel %d0,%d4
 19a:	0c84 0000 ffff 	cmpil #65535,%d4
 1a0:	6200 00b4      	bhiw 256 <___moddi3+0x256>
 1a4:	0c84 0000 00ff 	cmpil #255,%d4
 1aa:	6200 0352      	bhiw 4fe <___moddi3+0x4fe>
 1ae:	7000           	moveq #0,%d0
 1b0:	93c9           	subal %a1,%a1
 1b2:	2204           	movel %d4,%d1
 1b4:	e0a9           	lsrl %d0,%d1
 1b6:	41f9 0000 0000 	lea 0 <___moddi3>,%a0
 1bc:	7000           	moveq #0,%d0
 1be:	1030 1800      	moveb %a0@(00000000,%d1:l),%d0
 1c2:	d089           	addl %a1,%d0
 1c4:	7a20           	moveq #32,%d5
 1c6:	9a80           	subl %d0,%d5
 1c8:	6600 00b6      	bnew 280 <___moddi3+0x280>
 1cc:	9484           	subl %d4,%d2
 1ce:	2c04           	movel %d4,%d6
 1d0:	4246           	clrw %d6
 1d2:	4846           	swap %d6
 1d4:	2e04           	movel %d4,%d7
 1d6:	0287 0000 ffff 	andil #65535,%d7
 1dc:	47f9 0000 0000 	lea 0 <___moddi3>,%a3
 1e2:	4bf9 0000 0000 	lea 0 <___moddi3>,%a5
 1e8:	2f06           	movel %d6,%sp@-
 1ea:	2f02           	movel %d2,%sp@-
 1ec:	4e93           	jsr %a3@
 1ee:	508f           	addql #8,%sp
 1f0:	2d40 fffc      	movel %d0,%fp@(-4)
 1f4:	2f06           	movel %d6,%sp@-
 1f6:	2f02           	movel %d2,%sp@-
 1f8:	4e94           	jsr %a4@
 1fa:	588f           	addql #4,%sp
 1fc:	2e87           	movel %d7,%sp@
 1fe:	2f00           	movel %d0,%sp@-
 200:	4e95           	jsr %a5@
 202:	508f           	addql #8,%sp
 204:	242e fffc      	movel %fp@(-4),%d2
 208:	4842           	swap %d2
 20a:	4242           	clrw %d2
 20c:	2203           	movel %d3,%d1
 20e:	4241           	clrw %d1
 210:	4841           	swap %d1
 212:	8481           	orl %d1,%d2
 214:	b480           	cmpl %d0,%d2
 216:	640c           	bccs 224 <___moddi3+0x224>
 218:	d484           	addl %d4,%d2
 21a:	b484           	cmpl %d4,%d2
 21c:	6506           	bcss 224 <___moddi3+0x224>
 21e:	b480           	cmpl %d0,%d2
 220:	6402           	bccs 224 <___moddi3+0x224>
 222:	d484           	addl %d4,%d2
 224:	9480           	subl %d0,%d2
 226:	2f06           	movel %d6,%sp@-
 228:	2f02           	movel %d2,%sp@-
 22a:	4e93           	jsr %a3@
 22c:	508f           	addql #8,%sp
 22e:	2640           	moveal %d0,%a3
 230:	2f06           	movel %d6,%sp@-
 232:	2f02           	movel %d2,%sp@-
 234:	4e94           	jsr %a4@
 236:	588f           	addql #4,%sp
 238:	2e87           	movel %d7,%sp@
 23a:	2f00           	movel %d0,%sp@-
 23c:	4e95           	jsr %a5@
 23e:	6000 feb0      	braw f0 <___moddi3+0xf0>
 242:	4487           	negl %d7
 244:	4086           	negxl %d6
 246:	347c ffff      	moveaw #-1,%a2
 24a:	b0fc 0000      	cmpaw #0,%a0
 24e:	6c00 fdda      	bgew 2a <___moddi3+0x2a>
 252:	6000 fede      	braw 132 <___moddi3+0x132>
 256:	0c84 00ff ffff 	cmpil #16777215,%d4
 25c:	6200 02ce      	bhiw 52c <___moddi3+0x52c>
 260:	7010           	moveq #16,%d0
 262:	327c 0010      	moveaw #16,%a1
 266:	2204           	movel %d4,%d1
 268:	e0a9           	lsrl %d0,%d1
 26a:	41f9 0000 0000 	lea 0 <___moddi3>,%a0
 270:	7000           	moveq #0,%d0
 272:	1030 1800      	moveb %a0@(00000000,%d1:l),%d0
 276:	d089           	addl %a1,%d0
 278:	7a20           	moveq #32,%d5
 27a:	9a80           	subl %d0,%d5
 27c:	6700 ff4e      	beqw 1cc <___moddi3+0x1cc>
 280:	ebac           	lsll %d5,%d4
 282:	2202           	movel %d2,%d1
 284:	e0a9           	lsrl %d0,%d1
 286:	2a41           	moveal %d1,%a5
 288:	ebaa           	lsll %d5,%d2
 28a:	2203           	movel %d3,%d1
 28c:	e0a9           	lsrl %d0,%d1
 28e:	8481           	orl %d1,%d2
 290:	ebab           	lsll %d5,%d3
 292:	2c04           	movel %d4,%d6
 294:	4246           	clrw %d6
 296:	4846           	swap %d6
 298:	2e04           	movel %d4,%d7
 29a:	0287 0000 ffff 	andil #65535,%d7
 2a0:	47f9 0000 0000 	lea 0 <___moddi3>,%a3
 2a6:	2f06           	movel %d6,%sp@-
 2a8:	2f0d           	movel %a5,%sp@-
 2aa:	4e93           	jsr %a3@
 2ac:	508f           	addql #8,%sp
 2ae:	2f06           	movel %d6,%sp@-
 2b0:	2f0d           	movel %a5,%sp@-
 2b2:	2d40 ffec      	movel %d0,%fp@(-20)
 2b6:	4e94           	jsr %a4@
 2b8:	508f           	addql #8,%sp
 2ba:	4bf9 0000 0000 	lea 0 <___moddi3>,%a5
 2c0:	2f07           	movel %d7,%sp@-
 2c2:	2f00           	movel %d0,%sp@-
 2c4:	4e95           	jsr %a5@
 2c6:	508f           	addql #8,%sp
 2c8:	2240           	moveal %d0,%a1
 2ca:	222e ffec      	movel %fp@(-20),%d1
 2ce:	4841           	swap %d1
 2d0:	4241           	clrw %d1
 2d2:	2002           	movel %d2,%d0
 2d4:	4240           	clrw %d0
 2d6:	4840           	swap %d0
 2d8:	8280           	orl %d0,%d1
 2da:	b289           	cmpl %a1,%d1
 2dc:	640c           	bccs 2ea <___moddi3+0x2ea>
 2de:	d284           	addl %d4,%d1
 2e0:	b284           	cmpl %d4,%d1
 2e2:	6506           	bcss 2ea <___moddi3+0x2ea>
 2e4:	b289           	cmpl %a1,%d1
 2e6:	6402           	bccs 2ea <___moddi3+0x2ea>
 2e8:	d284           	addl %d4,%d1
 2ea:	9289           	subl %a1,%d1
 2ec:	2f06           	movel %d6,%sp@-
 2ee:	2f01           	movel %d1,%sp@-
 2f0:	2d41 ffec      	movel %d1,%fp@(-20)
 2f4:	4e93           	jsr %a3@
 2f6:	508f           	addql #8,%sp
 2f8:	2d40 fffc      	movel %d0,%fp@(-4)
 2fc:	2f06           	movel %d6,%sp@-
 2fe:	222e ffec      	movel %fp@(-20),%d1
 302:	2f01           	movel %d1,%sp@-
 304:	4e94           	jsr %a4@
 306:	588f           	addql #4,%sp
 308:	2e87           	movel %d7,%sp@
 30a:	2f00           	movel %d0,%sp@-
 30c:	4e95           	jsr %a5@
 30e:	508f           	addql #8,%sp
 310:	222e fffc      	movel %fp@(-4),%d1
 314:	4841           	swap %d1
 316:	4241           	clrw %d1
 318:	8242           	orw %d2,%d1
 31a:	b280           	cmpl %d0,%d1
 31c:	640c           	bccs 32a <___moddi3+0x32a>
 31e:	d284           	addl %d4,%d1
 320:	b284           	cmpl %d4,%d1
 322:	6506           	bcss 32a <___moddi3+0x32a>
 324:	b280           	cmpl %d0,%d1
 326:	6402           	bccs 32a <___moddi3+0x32a>
 328:	d284           	addl %d4,%d1
 32a:	2401           	movel %d1,%d2
 32c:	9480           	subl %d0,%d2
 32e:	6000 feb8      	braw 1e8 <___moddi3+0x1e8>
 332:	0c81 00ff ffff 	cmpil #16777215,%d1
 338:	6200 01e8      	bhiw 522 <___moddi3+0x522>
 33c:	7010           	moveq #16,%d0
 33e:	327c 0010      	moveaw #16,%a1
 342:	2204           	movel %d4,%d1
 344:	e0a9           	lsrl %d0,%d1
 346:	41f9 0000 0000 	lea 0 <___moddi3>,%a0
 34c:	7000           	moveq #0,%d0
 34e:	1030 1800      	moveb %a0@(00000000,%d1:l),%d0
 352:	d089           	addl %a1,%d0
 354:	7a20           	moveq #32,%d5
 356:	9a80           	subl %d0,%d5
 358:	6600 fd14      	bnew 6e <___moddi3+0x6e>
 35c:	7a00           	moveq #0,%d5
 35e:	6000 fd1a      	braw 7a <___moddi3+0x7a>
 362:	0c80 00ff ffff 	cmpil #16777215,%d0
 368:	6200 01a8      	bhiw 512 <___moddi3+0x512>
 36c:	7210           	moveq #16,%d1
 36e:	7c10           	moveq #16,%d6
 370:	2a00           	movel %d0,%d5
 372:	e2ad           	lsrl %d1,%d5
 374:	2205           	movel %d5,%d1
 376:	41f9 0000 0000 	lea 0 <___moddi3>,%a0
 37c:	1230 5800      	moveb %a0@(00000000,%d5:l),%d1
 380:	0281 0000 00ff 	andil #255,%d1
 386:	dc81           	addl %d1,%d6
 388:	7e20           	moveq #32,%d7
 38a:	9e86           	subl %d6,%d7
 38c:	6700 fde4      	beqw 172 <___moddi3+0x172>
 390:	2a00           	movel %d0,%d5
 392:	efad           	lsll %d7,%d5
 394:	2004           	movel %d4,%d0
 396:	eca8           	lsrl %d6,%d0
 398:	8a80           	orl %d0,%d5
 39a:	efac           	lsll %d7,%d4
 39c:	2d44 fffc      	movel %d4,%fp@(-4)
 3a0:	2802           	movel %d2,%d4
 3a2:	ecac           	lsrl %d6,%d4
 3a4:	efaa           	lsll %d7,%d2
 3a6:	2003           	movel %d3,%d0
 3a8:	eca8           	lsrl %d6,%d0
 3aa:	8480           	orl %d0,%d2
 3ac:	efab           	lsll %d7,%d3
 3ae:	2d43 fff4      	movel %d3,%fp@(-12)
 3b2:	2605           	movel %d5,%d3
 3b4:	4243           	clrw %d3
 3b6:	4843           	swap %d3
 3b8:	2205           	movel %d5,%d1
 3ba:	0281 0000 ffff 	andil #65535,%d1
 3c0:	2d41 fff8      	movel %d1,%fp@(-8)
 3c4:	47f9 0000 0000 	lea 0 <___moddi3>,%a3
 3ca:	2f03           	movel %d3,%sp@-
 3cc:	2f04           	movel %d4,%sp@-
 3ce:	4e93           	jsr %a3@
 3d0:	508f           	addql #8,%sp
 3d2:	49f9 0000 0000 	lea 0 <___moddi3>,%a4
 3d8:	2f03           	movel %d3,%sp@-
 3da:	2f04           	movel %d4,%sp@-
 3dc:	2d40 ffec      	movel %d0,%fp@(-20)
 3e0:	4e94           	jsr %a4@
 3e2:	508f           	addql #8,%sp
 3e4:	2800           	movel %d0,%d4
 3e6:	4bf9 0000 0000 	lea 0 <___moddi3>,%a5
 3ec:	2f2e fff8      	movel %fp@(-8),%sp@-
 3f0:	2f00           	movel %d0,%sp@-
 3f2:	4e95           	jsr %a5@
 3f4:	508f           	addql #8,%sp
 3f6:	2240           	moveal %d0,%a1
 3f8:	222e ffec      	movel %fp@(-20),%d1
 3fc:	4841           	swap %d1
 3fe:	4241           	clrw %d1
 400:	2002           	movel %d2,%d0
 402:	4240           	clrw %d0
 404:	4840           	swap %d0
 406:	8280           	orl %d0,%d1
 408:	b289           	cmpl %a1,%d1
 40a:	6416           	bccs 422 <___moddi3+0x422>
 40c:	2044           	moveal %d4,%a0
 40e:	5388           	subql #1,%a0
 410:	d285           	addl %d5,%d1
 412:	b285           	cmpl %d5,%d1
 414:	6500 0126      	bcsw 53c <___moddi3+0x53c>
 418:	b289           	cmpl %a1,%d1
 41a:	6400 0120      	bccw 53c <___moddi3+0x53c>
 41e:	5584           	subql #2,%d4
 420:	d285           	addl %d5,%d1
 422:	9289           	subl %a1,%d1
 424:	2f03           	movel %d3,%sp@-
 426:	2f01           	movel %d1,%sp@-
 428:	2d41 ffec      	movel %d1,%fp@(-20)
 42c:	4e93           	jsr %a3@
 42e:	508f           	addql #8,%sp
 430:	2640           	moveal %d0,%a3
 432:	2f03           	movel %d3,%sp@-
 434:	222e ffec      	movel %fp@(-20),%d1
 438:	2f01           	movel %d1,%sp@-
 43a:	4e94           	jsr %a4@
 43c:	508f           	addql #8,%sp
 43e:	2600           	movel %d0,%d3
 440:	2f2e fff8      	movel %fp@(-8),%sp@-
 444:	2f00           	movel %d0,%sp@-
 446:	4e95           	jsr %a5@
 448:	508f           	addql #8,%sp
 44a:	220b           	movel %a3,%d1
 44c:	4841           	swap %d1
 44e:	4241           	clrw %d1
 450:	8242           	orw %d2,%d1
 452:	b280           	cmpl %d0,%d1
 454:	6416           	bccs 46c <___moddi3+0x46c>
 456:	2403           	movel %d3,%d2
 458:	5382           	subql #1,%d2
 45a:	d285           	addl %d5,%d1
 45c:	b285           	cmpl %d5,%d1
 45e:	6500 00d6      	bcsw 536 <___moddi3+0x536>
 462:	b280           	cmpl %d0,%d1
 464:	6400 00d0      	bccw 536 <___moddi3+0x536>
 468:	5583           	subql #2,%d3
 46a:	d285           	addl %d5,%d1
 46c:	2041           	moveal %d1,%a0
 46e:	91c0           	subal %d0,%a0
 470:	4844           	swap %d4
 472:	4244           	clrw %d4
 474:	8684           	orl %d4,%d3
 476:	2243           	moveal %d3,%a1
 478:	2009           	movel %a1,%d0
 47a:	222e fffc      	movel %fp@(-4),%d1
 47e:	2400           	movel %d0,%d2
 480:	4840           	swap %d0
 482:	2601           	movel %d1,%d3
 484:	4841           	swap %d1
 486:	3802           	movew %d2,%d4
 488:	c8c3           	muluw %d3,%d4
 48a:	c4c1           	muluw %d1,%d2
 48c:	c6c0           	muluw %d0,%d3
 48e:	c2c0           	muluw %d0,%d1
 490:	2004           	movel %d4,%d0
 492:	b140           	eorw %d0,%d0
 494:	4840           	swap %d0
 496:	d480           	addl %d0,%d2
 498:	d483           	addl %d3,%d2
 49a:	6406           	bccs 4a2 <___moddi3+0x4a2>
 49c:	0681 0001 0000 	addil #65536,%d1
 4a2:	4842           	swap %d2
 4a4:	7000           	moveq #0,%d0
 4a6:	3002           	movew %d2,%d0
 4a8:	3404           	movew %d4,%d2
 4aa:	2642           	moveal %d2,%a3
 4ac:	d081           	addl %d1,%d0
 4ae:	2240           	moveal %d0,%a1
 4b0:	2009           	movel %a1,%d0
 4b2:	220b           	movel %a3,%d1
 4b4:	b3c8           	cmpal %a0,%a1
 4b6:	6220           	bhis 4d8 <___moddi3+0x4d8>
 4b8:	6700 0088      	beqw 542 <___moddi3+0x542>
 4bc:	2408           	movel %a0,%d2
 4be:	262e fff4      	movel %fp@(-12),%d3
 4c2:	9681           	subl %d1,%d3
 4c4:	9580           	subxl %d0,%d2
 4c6:	eeab           	lsrl %d7,%d3
 4c8:	2802           	movel %d2,%d4
 4ca:	edac           	lsll %d6,%d4
 4cc:	2002           	movel %d2,%d0
 4ce:	eea8           	lsrl %d7,%d0
 4d0:	2203           	movel %d3,%d1
 4d2:	8284           	orl %d4,%d1
 4d4:	6000 fc3e      	braw 114 <___moddi3+0x114>
 4d8:	2009           	movel %a1,%d0
 4da:	220b           	movel %a3,%d1
 4dc:	92ae fffc      	subl %fp@(-4),%d1
 4e0:	9185           	subxl %d5,%d0
 4e2:	2408           	movel %a0,%d2
 4e4:	262e fff4      	movel %fp@(-12),%d3
 4e8:	9681           	subl %d1,%d3
 4ea:	9580           	subxl %d0,%d2
 4ec:	eeab           	lsrl %d7,%d3
 4ee:	2802           	movel %d2,%d4
 4f0:	edac           	lsll %d6,%d4
 4f2:	2002           	movel %d2,%d0
 4f4:	eea8           	lsrl %d7,%d0
 4f6:	2203           	movel %d3,%d1
 4f8:	8284           	orl %d4,%d1
 4fa:	6000 fc18      	braw 114 <___moddi3+0x114>
 4fe:	7008           	moveq #8,%d0
 500:	327c 0008      	moveaw #8,%a1
 504:	6000 fcac      	braw 1b2 <___moddi3+0x1b2>
 508:	7008           	moveq #8,%d0
 50a:	327c 0008      	moveaw #8,%a1
 50e:	6000 fb44      	braw 54 <___moddi3+0x54>
 512:	7218           	moveq #24,%d1
 514:	7c18           	moveq #24,%d6
 516:	6000 fc3a      	braw 152 <___moddi3+0x152>
 51a:	7208           	moveq #8,%d1
 51c:	7c08           	moveq #8,%d6
 51e:	6000 fc32      	braw 152 <___moddi3+0x152>
 522:	7018           	moveq #24,%d0
 524:	327c 0018      	moveaw #24,%a1
 528:	6000 fb2a      	braw 54 <___moddi3+0x54>
 52c:	7018           	moveq #24,%d0
 52e:	327c 0018      	moveaw #24,%a1
 532:	6000 fc7e      	braw 1b2 <___moddi3+0x1b2>
 536:	2602           	movel %d2,%d3
 538:	6000 ff32      	braw 46c <___moddi3+0x46c>
 53c:	2808           	movel %a0,%d4
 53e:	6000 fee2      	braw 422 <___moddi3+0x422>
 542:	b7ee fff4      	cmpal %fp@(-12),%a3
 546:	6290           	bhis 4d8 <___moddi3+0x4d8>
 548:	2008           	movel %a0,%d0
 54a:	2408           	movel %a0,%d2
 54c:	262e fff4      	movel %fp@(-12),%d3
 550:	9681           	subl %d1,%d3
 552:	9580           	subxl %d0,%d2
 554:	eeab           	lsrl %d7,%d3
 556:	2802           	movel %d2,%d4
 558:	edac           	lsll %d6,%d4
 55a:	2002           	movel %d2,%d0
 55c:	eea8           	lsrl %d7,%d0
 55e:	2203           	movel %d3,%d1
 560:	8284           	orl %d4,%d1
 562:	6000 fbb0      	braw 114 <___moddi3+0x114>
	...

_udivdi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___udivdi3>:
   0:	4e56 fff4      	linkw %fp,#-12
   4:	48e7 3f3c      	moveml %d2-%d7/%a2-%a5,%sp@-
   8:	2e2e 0008      	movel %fp@(8),%d7
   c:	2a2e 000c      	movel %fp@(12),%d5
  10:	202e 0010      	movel %fp@(16),%d0
  14:	2c2e 0014      	movel %fp@(20),%d6
  18:	2206           	movel %d6,%d1
  1a:	2405           	movel %d5,%d2
  1c:	2607           	movel %d7,%d3
  1e:	4a80           	tstl %d0
  20:	6600 0108      	bnew 12a <___udivdi3+0x12a>
  24:	be86           	cmpl %d6,%d7
  26:	6400 015c      	bccw 184 <___udivdi3+0x184>
  2a:	0c86 0000 ffff 	cmpil #65535,%d6
  30:	6200 03d0      	bhiw 402 <___udivdi3+0x402>
  34:	0c86 0000 00ff 	cmpil #255,%d6
  3a:	6200 0534      	bhiw 570 <___udivdi3+0x570>
  3e:	91c8           	subal %a0,%a0
  40:	95ca           	subal %a2,%a2
  42:	2001           	movel %d1,%d0
  44:	2808           	movel %a0,%d4
  46:	e8a8           	lsrl %d4,%d0
  48:	2240           	moveal %d0,%a1
  4a:	41f9 0000 0000 	lea 0 <___udivdi3>,%a0
  50:	7000           	moveq #0,%d0
  52:	1030 9800      	moveb %a0@(00000000,%a1:l),%d0
  56:	280a           	movel %a2,%d4
  58:	d880           	addl %d0,%d4
  5a:	7020           	moveq #32,%d0
  5c:	9084           	subl %d4,%d0
  5e:	6712           	beqs 72 <___udivdi3+0x72>
  60:	2c01           	movel %d1,%d6
  62:	e1ae           	lsll %d0,%d6
  64:	2607           	movel %d7,%d3
  66:	e1ab           	lsll %d0,%d3
  68:	2205           	movel %d5,%d1
  6a:	e8a9           	lsrl %d4,%d1
  6c:	8681           	orl %d1,%d3
  6e:	2405           	movel %d5,%d2
  70:	e1aa           	lsll %d0,%d2
  72:	2a06           	movel %d6,%d5
  74:	4245           	clrw %d5
  76:	4845           	swap %d5
  78:	2806           	movel %d6,%d4
  7a:	0284 0000 ffff 	andil #65535,%d4
  80:	4bf9 0000 0000 	lea 0 <___udivdi3>,%a5
  86:	2f05           	movel %d5,%sp@-
  88:	2f03           	movel %d3,%sp@-
  8a:	4e95           	jsr %a5@
  8c:	508f           	addql #8,%sp
  8e:	2440           	moveal %d0,%a2
  90:	47f9 0000 0000 	lea 0 <___udivdi3>,%a3
  96:	2f05           	movel %d5,%sp@-
  98:	2f03           	movel %d3,%sp@-
  9a:	4e93           	jsr %a3@
  9c:	508f           	addql #8,%sp
  9e:	2e00           	movel %d0,%d7
  a0:	49f9 0000 0000 	lea 0 <___udivdi3>,%a4
  a6:	2f04           	movel %d4,%sp@-
  a8:	2f00           	movel %d0,%sp@-
  aa:	4e94           	jsr %a4@
  ac:	508f           	addql #8,%sp
  ae:	260a           	movel %a2,%d3
  b0:	4843           	swap %d3
  b2:	4243           	clrw %d3
  b4:	2202           	movel %d2,%d1
  b6:	4241           	clrw %d1
  b8:	4841           	swap %d1
  ba:	8681           	orl %d1,%d3
  bc:	b680           	cmpl %d0,%d3
  be:	6416           	bccs d6 <___udivdi3+0xd6>
  c0:	2207           	movel %d7,%d1
  c2:	5381           	subql #1,%d1
  c4:	d686           	addl %d6,%d3
  c6:	b686           	cmpl %d6,%d3
  c8:	6500 0442      	bcsw 50c <___udivdi3+0x50c>
  cc:	b680           	cmpl %d0,%d3
  ce:	6400 043c      	bccw 50c <___udivdi3+0x50c>
  d2:	5587           	subql #2,%d7
  d4:	d686           	addl %d6,%d3
  d6:	9680           	subl %d0,%d3
  d8:	2f05           	movel %d5,%sp@-
  da:	2f03           	movel %d3,%sp@-
  dc:	4e95           	jsr %a5@
  de:	508f           	addql #8,%sp
  e0:	2440           	moveal %d0,%a2
  e2:	2f05           	movel %d5,%sp@-
  e4:	2f03           	movel %d3,%sp@-
  e6:	4e93           	jsr %a3@
  e8:	508f           	addql #8,%sp
  ea:	2600           	movel %d0,%d3
  ec:	2f04           	movel %d4,%sp@-
  ee:	2f00           	movel %d0,%sp@-
  f0:	4e94           	jsr %a4@
  f2:	508f           	addql #8,%sp
  f4:	220a           	movel %a2,%d1
  f6:	4841           	swap %d1
  f8:	4241           	clrw %d1
  fa:	8242           	orw %d2,%d1
  fc:	b280           	cmpl %d0,%d1
  fe:	6414           	bccs 114 <___udivdi3+0x114>
 100:	2403           	movel %d3,%d2
 102:	5382           	subql #1,%d2
 104:	d286           	addl %d6,%d1
 106:	b286           	cmpl %d6,%d1
 108:	6500 041a      	bcsw 524 <___udivdi3+0x524>
 10c:	b280           	cmpl %d0,%d1
 10e:	6400 0414      	bccw 524 <___udivdi3+0x524>
 112:	5583           	subql #2,%d3
 114:	4847           	swap %d7
 116:	4247           	clrw %d7
 118:	8e83           	orl %d3,%d7
 11a:	7a00           	moveq #0,%d5
 11c:	2005           	movel %d5,%d0
 11e:	2207           	movel %d7,%d1
 120:	4cee 3cfc ffcc 	moveml %fp@(-52),%d2-%d7/%a2-%a5
 126:	4e5e           	unlk %fp
 128:	4e75           	rts
 12a:	be80           	cmpl %d0,%d7
 12c:	6500 0162      	bcsw 290 <___udivdi3+0x290>
 130:	0c80 0000 ffff 	cmpil #65535,%d0
 136:	6200 016a      	bhiw 2a2 <___udivdi3+0x2a2>
 13a:	0c80 0000 00ff 	cmpil #255,%d0
 140:	6200 041e      	bhiw 560 <___udivdi3+0x560>
 144:	7400           	moveq #0,%d2
 146:	7800           	moveq #0,%d4
 148:	2600           	movel %d0,%d3
 14a:	e4ab           	lsrl %d2,%d3
 14c:	2403           	movel %d3,%d2
 14e:	41f9 0000 0000 	lea 0 <___udivdi3>,%a0
 154:	1430 3800      	moveb %a0@(00000000,%d3:l),%d2
 158:	0282 0000 00ff 	andil #255,%d2
 15e:	d882           	addl %d2,%d4
 160:	7c20           	moveq #32,%d6
 162:	9c84           	subl %d4,%d6
 164:	6600 016a      	bnew 2d0 <___udivdi3+0x2d0>
 168:	be80           	cmpl %d0,%d7
 16a:	6206           	bhis 172 <___udivdi3+0x172>
 16c:	ba81           	cmpl %d1,%d5
 16e:	6500 0420      	bcsw 590 <___udivdi3+0x590>
 172:	7e01           	moveq #1,%d7
 174:	7a00           	moveq #0,%d5
 176:	2005           	movel %d5,%d0
 178:	2207           	movel %d7,%d1
 17a:	4cee 3cfc ffcc 	moveml %fp@(-52),%d2-%d7/%a2-%a5
 180:	4e5e           	unlk %fp
 182:	4e75           	rts
 184:	47f9 0000 0000 	lea 0 <___udivdi3>,%a3
 18a:	4a86           	tstl %d6
 18c:	660c           	bnes 19a <___udivdi3+0x19a>
 18e:	42a7           	clrl %sp@-
 190:	4878 0001      	pea 1 <___udivdi3+0x1>
 194:	4e93           	jsr %a3@
 196:	508f           	addql #8,%sp
 198:	2c00           	movel %d0,%d6
 19a:	0c86 0000 ffff 	cmpil #65535,%d6
 1a0:	6200 0276      	bhiw 418 <___udivdi3+0x418>
 1a4:	0c86 0000 00ff 	cmpil #255,%d6
 1aa:	6200 03bc      	bhiw 568 <___udivdi3+0x568>
 1ae:	7000           	moveq #0,%d0
 1b0:	7200           	moveq #0,%d1
 1b2:	2606           	movel %d6,%d3
 1b4:	e0ab           	lsrl %d0,%d3
 1b6:	2003           	movel %d3,%d0
 1b8:	41f9 0000 0000 	lea 0 <___udivdi3>,%a0
 1be:	1030 3800      	moveb %a0@(00000000,%d3:l),%d0
 1c2:	0280 0000 00ff 	andil #255,%d0
 1c8:	d280           	addl %d0,%d1
 1ca:	7020           	moveq #32,%d0
 1cc:	9081           	subl %d1,%d0
 1ce:	6600 0276      	bnew 446 <___udivdi3+0x446>
 1d2:	9e86           	subl %d6,%d7
 1d4:	2606           	movel %d6,%d3
 1d6:	4243           	clrw %d3
 1d8:	4843           	swap %d3
 1da:	2806           	movel %d6,%d4
 1dc:	0284 0000 ffff 	andil #65535,%d4
 1e2:	2d44 fff8      	movel %d4,%fp@(-8)
 1e6:	7a01           	moveq #1,%d5
 1e8:	4bf9 0000 0000 	lea 0 <___udivdi3>,%a5
 1ee:	49f9 0000 0000 	lea 0 <___udivdi3>,%a4
 1f4:	2f03           	movel %d3,%sp@-
 1f6:	2f07           	movel %d7,%sp@-
 1f8:	4e95           	jsr %a5@
 1fa:	508f           	addql #8,%sp
 1fc:	2440           	moveal %d0,%a2
 1fe:	2f03           	movel %d3,%sp@-
 200:	2f07           	movel %d7,%sp@-
 202:	4e93           	jsr %a3@
 204:	508f           	addql #8,%sp
 206:	2e00           	movel %d0,%d7
 208:	2f2e fff8      	movel %fp@(-8),%sp@-
 20c:	2f00           	movel %d0,%sp@-
 20e:	4e94           	jsr %a4@
 210:	508f           	addql #8,%sp
 212:	220a           	movel %a2,%d1
 214:	4841           	swap %d1
 216:	4241           	clrw %d1
 218:	2802           	movel %d2,%d4
 21a:	4244           	clrw %d4
 21c:	4844           	swap %d4
 21e:	8284           	orl %d4,%d1
 220:	b280           	cmpl %d0,%d1
 222:	6416           	bccs 23a <___udivdi3+0x23a>
 224:	2047           	moveal %d7,%a0
 226:	5388           	subql #1,%a0
 228:	d286           	addl %d6,%d1
 22a:	b286           	cmpl %d6,%d1
 22c:	6500 02e4      	bcsw 512 <___udivdi3+0x512>
 230:	b280           	cmpl %d0,%d1
 232:	6400 02de      	bccw 512 <___udivdi3+0x512>
 236:	5587           	subql #2,%d7
 238:	d286           	addl %d6,%d1
 23a:	2441           	moveal %d1,%a2
 23c:	95c0           	subal %d0,%a2
 23e:	2f03           	movel %d3,%sp@-
 240:	2f0a           	movel %a2,%sp@-
 242:	4e95           	jsr %a5@
 244:	508f           	addql #8,%sp
 246:	2a40           	moveal %d0,%a5
 248:	2f03           	movel %d3,%sp@-
 24a:	2f0a           	movel %a2,%sp@-
 24c:	4e93           	jsr %a3@
 24e:	508f           	addql #8,%sp
 250:	2600           	movel %d0,%d3
 252:	2f2e fff8      	movel %fp@(-8),%sp@-
 256:	2f00           	movel %d0,%sp@-
 258:	4e94           	jsr %a4@
 25a:	508f           	addql #8,%sp
 25c:	220d           	movel %a5,%d1
 25e:	4841           	swap %d1
 260:	4241           	clrw %d1
 262:	8242           	orw %d2,%d1
 264:	b280           	cmpl %d0,%d1
 266:	6414           	bccs 27c <___udivdi3+0x27c>
 268:	2403           	movel %d3,%d2
 26a:	5382           	subql #1,%d2
 26c:	d286           	addl %d6,%d1
 26e:	b286           	cmpl %d6,%d1
 270:	6500 02c0      	bcsw 532 <___udivdi3+0x532>
 274:	b280           	cmpl %d0,%d1
 276:	6400 02ba      	bccw 532 <___udivdi3+0x532>
 27a:	5583           	subql #2,%d3
 27c:	4847           	swap %d7
 27e:	4247           	clrw %d7
 280:	8e83           	orl %d3,%d7
 282:	2005           	movel %d5,%d0
 284:	2207           	movel %d7,%d1
 286:	4cee 3cfc ffcc 	moveml %fp@(-52),%d2-%d7/%a2-%a5
 28c:	4e5e           	unlk %fp
 28e:	4e75           	rts
 290:	7e00           	moveq #0,%d7
 292:	7a00           	moveq #0,%d5
 294:	2005           	movel %d5,%d0
 296:	2207           	movel %d7,%d1
 298:	4cee 3cfc ffcc 	moveml %fp@(-52),%d2-%d7/%a2-%a5
 29e:	4e5e           	unlk %fp
 2a0:	4e75           	rts
 2a2:	0c80 00ff ffff 	cmpil #16777215,%d0
 2a8:	6200 02ae      	bhiw 558 <___udivdi3+0x558>
 2ac:	7410           	moveq #16,%d2
 2ae:	7810           	moveq #16,%d4
 2b0:	2600           	movel %d0,%d3
 2b2:	e4ab           	lsrl %d2,%d3
 2b4:	2403           	movel %d3,%d2
 2b6:	41f9 0000 0000 	lea 0 <___udivdi3>,%a0
 2bc:	1430 3800      	moveb %a0@(00000000,%d3:l),%d2
 2c0:	0282 0000 00ff 	andil #255,%d2
 2c6:	d882           	addl %d2,%d4
 2c8:	7c20           	moveq #32,%d6
 2ca:	9c84           	subl %d4,%d6
 2cc:	6700 fe9a      	beqw 168 <___udivdi3+0x168>
 2d0:	2400           	movel %d0,%d2
 2d2:	edaa           	lsll %d6,%d2
 2d4:	2001           	movel %d1,%d0
 2d6:	e8a8           	lsrl %d4,%d0
 2d8:	8480           	orl %d0,%d2
 2da:	eda9           	lsll %d6,%d1
 2dc:	2441           	moveal %d1,%a2
 2de:	2007           	movel %d7,%d0
 2e0:	e8a8           	lsrl %d4,%d0
 2e2:	2840           	moveal %d0,%a4
 2e4:	2607           	movel %d7,%d3
 2e6:	edab           	lsll %d6,%d3
 2e8:	2005           	movel %d5,%d0
 2ea:	e8a8           	lsrl %d4,%d0
 2ec:	8680           	orl %d0,%d3
 2ee:	2802           	movel %d2,%d4
 2f0:	4244           	clrw %d4
 2f2:	4844           	swap %d4
 2f4:	2002           	movel %d2,%d0
 2f6:	0280 0000 ffff 	andil #65535,%d0
 2fc:	2d40 fffc      	movel %d0,%fp@(-4)
 300:	4bf9 0000 0000 	lea 0 <___udivdi3>,%a5
 306:	2f04           	movel %d4,%sp@-
 308:	2f0c           	movel %a4,%sp@-
 30a:	4e95           	jsr %a5@
 30c:	508f           	addql #8,%sp
 30e:	47f9 0000 0000 	lea 0 <___udivdi3>,%a3
 314:	2f04           	movel %d4,%sp@-
 316:	2f0c           	movel %a4,%sp@-
 318:	2d40 fff4      	movel %d0,%fp@(-12)
 31c:	4e93           	jsr %a3@
 31e:	508f           	addql #8,%sp
 320:	2e00           	movel %d0,%d7
 322:	49f9 0000 0000 	lea 0 <___udivdi3>,%a4
 328:	2f2e fffc      	movel %fp@(-4),%sp@-
 32c:	2f00           	movel %d0,%sp@-
 32e:	4e94           	jsr %a4@
 330:	508f           	addql #8,%sp
 332:	2240           	moveal %d0,%a1
 334:	222e fff4      	movel %fp@(-12),%d1
 338:	4841           	swap %d1
 33a:	4241           	clrw %d1
 33c:	2003           	movel %d3,%d0
 33e:	4240           	clrw %d0
 340:	4840           	swap %d0
 342:	8280           	orl %d0,%d1
 344:	b289           	cmpl %a1,%d1
 346:	6416           	bccs 35e <___udivdi3+0x35e>
 348:	2047           	moveal %d7,%a0
 34a:	5388           	subql #1,%a0
 34c:	d282           	addl %d2,%d1
 34e:	b282           	cmpl %d2,%d1
 350:	6500 01c6      	bcsw 518 <___udivdi3+0x518>
 354:	b289           	cmpl %a1,%d1
 356:	6400 01c0      	bccw 518 <___udivdi3+0x518>
 35a:	5587           	subql #2,%d7
 35c:	d282           	addl %d2,%d1
 35e:	9289           	subl %a1,%d1
 360:	2f04           	movel %d4,%sp@-
 362:	2f01           	movel %d1,%sp@-
 364:	2d41 fff4      	movel %d1,%fp@(-12)
 368:	4e95           	jsr %a5@
 36a:	508f           	addql #8,%sp
 36c:	2a40           	moveal %d0,%a5
 36e:	2f04           	movel %d4,%sp@-
 370:	222e fff4      	movel %fp@(-12),%d1
 374:	2f01           	movel %d1,%sp@-
 376:	4e93           	jsr %a3@
 378:	508f           	addql #8,%sp
 37a:	2800           	movel %d0,%d4
 37c:	2f2e fffc      	movel %fp@(-4),%sp@-
 380:	2f00           	movel %d0,%sp@-
 382:	4e94           	jsr %a4@
 384:	508f           	addql #8,%sp
 386:	220d           	movel %a5,%d1
 388:	4841           	swap %d1
 38a:	4241           	clrw %d1
 38c:	8243           	orw %d3,%d1
 38e:	b280           	cmpl %d0,%d1
 390:	6416           	bccs 3a8 <___udivdi3+0x3a8>
 392:	2604           	movel %d4,%d3
 394:	5383           	subql #1,%d3
 396:	d282           	addl %d2,%d1
 398:	b282           	cmpl %d2,%d1
 39a:	6500 0182      	bcsw 51e <___udivdi3+0x51e>
 39e:	b280           	cmpl %d0,%d1
 3a0:	6400 017c      	bccw 51e <___udivdi3+0x51e>
 3a4:	5584           	subql #2,%d4
 3a6:	d282           	addl %d2,%d1
 3a8:	2041           	moveal %d1,%a0
 3aa:	91c0           	subal %d0,%a0
 3ac:	4847           	swap %d7
 3ae:	4247           	clrw %d7
 3b0:	8e84           	orl %d4,%d7
 3b2:	2007           	movel %d7,%d0
 3b4:	220a           	movel %a2,%d1
 3b6:	2400           	movel %d0,%d2
 3b8:	4840           	swap %d0
 3ba:	2601           	movel %d1,%d3
 3bc:	4841           	swap %d1
 3be:	3802           	movew %d2,%d4
 3c0:	c8c3           	muluw %d3,%d4
 3c2:	c4c1           	muluw %d1,%d2
 3c4:	c6c0           	muluw %d0,%d3
 3c6:	c2c0           	muluw %d0,%d1
 3c8:	2004           	movel %d4,%d0
 3ca:	b140           	eorw %d0,%d0
 3cc:	4840           	swap %d0
 3ce:	d480           	addl %d0,%d2
 3d0:	d483           	addl %d3,%d2
 3d2:	6406           	bccs 3da <___udivdi3+0x3da>
 3d4:	0681 0001 0000 	addil #65536,%d1
 3da:	4842           	swap %d2
 3dc:	7000           	moveq #0,%d0
 3de:	3002           	movew %d2,%d0
 3e0:	3404           	movew %d4,%d2
 3e2:	2442           	moveal %d2,%a2
 3e4:	d081           	addl %d1,%d0
 3e6:	2240           	moveal %d0,%a1
 3e8:	b3c8           	cmpal %a0,%a1
 3ea:	6200 015a      	bhiw 546 <___udivdi3+0x546>
 3ee:	6700 014e      	beqw 53e <___udivdi3+0x53e>
 3f2:	7a00           	moveq #0,%d5
 3f4:	2005           	movel %d5,%d0
 3f6:	2207           	movel %d7,%d1
 3f8:	4cee 3cfc ffcc 	moveml %fp@(-52),%d2-%d7/%a2-%a5
 3fe:	4e5e           	unlk %fp
 400:	4e75           	rts
 402:	0c86 00ff ffff 	cmpil #16777215,%d6
 408:	6200 0172      	bhiw 57c <___udivdi3+0x57c>
 40c:	307c 0010      	moveaw #16,%a0
 410:	347c 0010      	moveaw #16,%a2
 414:	6000 fc2c      	braw 42 <___udivdi3+0x42>
 418:	0c86 00ff ffff 	cmpil #16777215,%d6
 41e:	6200 0168      	bhiw 588 <___udivdi3+0x588>
 422:	7010           	moveq #16,%d0
 424:	7210           	moveq #16,%d1
 426:	2606           	movel %d6,%d3
 428:	e0ab           	lsrl %d0,%d3
 42a:	2003           	movel %d3,%d0
 42c:	41f9 0000 0000 	lea 0 <___udivdi3>,%a0
 432:	1030 3800      	moveb %a0@(00000000,%d3:l),%d0
 436:	0280 0000 00ff 	andil #255,%d0
 43c:	d280           	addl %d0,%d1
 43e:	7020           	moveq #32,%d0
 440:	9081           	subl %d1,%d0
 442:	6700 fd8e      	beqw 1d2 <___udivdi3+0x1d2>
 446:	e1ae           	lsll %d0,%d6
 448:	2407           	movel %d7,%d2
 44a:	e2aa           	lsrl %d1,%d2
 44c:	2442           	moveal %d2,%a2
 44e:	e1af           	lsll %d0,%d7
 450:	2605           	movel %d5,%d3
 452:	e2ab           	lsrl %d1,%d3
 454:	8e83           	orl %d3,%d7
 456:	2405           	movel %d5,%d2
 458:	e1aa           	lsll %d0,%d2
 45a:	2606           	movel %d6,%d3
 45c:	4243           	clrw %d3
 45e:	4843           	swap %d3
 460:	2806           	movel %d6,%d4
 462:	0284 0000 ffff 	andil #65535,%d4
 468:	2d44 fff8      	movel %d4,%fp@(-8)
 46c:	4bf9 0000 0000 	lea 0 <___udivdi3>,%a5
 472:	2f03           	movel %d3,%sp@-
 474:	2f0a           	movel %a2,%sp@-
 476:	4e95           	jsr %a5@
 478:	508f           	addql #8,%sp
 47a:	2a00           	movel %d0,%d5
 47c:	2f03           	movel %d3,%sp@-
 47e:	2f0a           	movel %a2,%sp@-
 480:	4e93           	jsr %a3@
 482:	508f           	addql #8,%sp
 484:	2440           	moveal %d0,%a2
 486:	49f9 0000 0000 	lea 0 <___udivdi3>,%a4
 48c:	2f04           	movel %d4,%sp@-
 48e:	2f00           	movel %d0,%sp@-
 490:	4e94           	jsr %a4@
 492:	508f           	addql #8,%sp
 494:	4845           	swap %d5
 496:	4245           	clrw %d5
 498:	2207           	movel %d7,%d1
 49a:	4241           	clrw %d1
 49c:	4841           	swap %d1
 49e:	8a81           	orl %d1,%d5
 4a0:	ba80           	cmpl %d0,%d5
 4a2:	6416           	bccs 4ba <___udivdi3+0x4ba>
 4a4:	220a           	movel %a2,%d1
 4a6:	5381           	subql #1,%d1
 4a8:	da86           	addl %d6,%d5
 4aa:	ba86           	cmpl %d6,%d5
 4ac:	6500 00fc      	bcsw 5aa <___udivdi3+0x5aa>
 4b0:	ba80           	cmpl %d0,%d5
 4b2:	6400 00f6      	bccw 5aa <___udivdi3+0x5aa>
 4b6:	558a           	subql #2,%a2
 4b8:	da86           	addl %d6,%d5
 4ba:	9a80           	subl %d0,%d5
 4bc:	2f03           	movel %d3,%sp@-
 4be:	2f05           	movel %d5,%sp@-
 4c0:	4e95           	jsr %a5@
 4c2:	508f           	addql #8,%sp
 4c4:	2800           	movel %d0,%d4
 4c6:	2f03           	movel %d3,%sp@-
 4c8:	2f05           	movel %d5,%sp@-
 4ca:	4e93           	jsr %a3@
 4cc:	508f           	addql #8,%sp
 4ce:	2a00           	movel %d0,%d5
 4d0:	2f2e fff8      	movel %fp@(-8),%sp@-
 4d4:	2f00           	movel %d0,%sp@-
 4d6:	4e94           	jsr %a4@
 4d8:	508f           	addql #8,%sp
 4da:	2204           	movel %d4,%d1
 4dc:	4841           	swap %d1
 4de:	4241           	clrw %d1
 4e0:	8247           	orw %d7,%d1
 4e2:	b280           	cmpl %d0,%d1
 4e4:	6416           	bccs 4fc <___udivdi3+0x4fc>
 4e6:	2e05           	movel %d5,%d7
 4e8:	5387           	subql #1,%d7
 4ea:	d286           	addl %d6,%d1
 4ec:	b286           	cmpl %d6,%d1
 4ee:	6500 00a8      	bcsw 598 <___udivdi3+0x598>
 4f2:	b280           	cmpl %d0,%d1
 4f4:	6400 00a2      	bccw 598 <___udivdi3+0x598>
 4f8:	5585           	subql #2,%d5
 4fa:	d286           	addl %d6,%d1
 4fc:	2e01           	movel %d1,%d7
 4fe:	9e80           	subl %d0,%d7
 500:	200a           	movel %a2,%d0
 502:	4840           	swap %d0
 504:	4240           	clrw %d0
 506:	8a80           	orl %d0,%d5
 508:	6000 fcea      	braw 1f4 <___udivdi3+0x1f4>
 50c:	2e01           	movel %d1,%d7
 50e:	6000 fbc6      	braw d6 <___udivdi3+0xd6>
 512:	2e08           	movel %a0,%d7
 514:	6000 fd24      	braw 23a <___udivdi3+0x23a>
 518:	2e08           	movel %a0,%d7
 51a:	6000 fe42      	braw 35e <___udivdi3+0x35e>
 51e:	2803           	movel %d3,%d4
 520:	6000 fe86      	braw 3a8 <___udivdi3+0x3a8>
 524:	2602           	movel %d2,%d3
 526:	4847           	swap %d7
 528:	4247           	clrw %d7
 52a:	8e83           	orl %d3,%d7
 52c:	7a00           	moveq #0,%d5
 52e:	6000 fbec      	braw 11c <___udivdi3+0x11c>
 532:	2602           	movel %d2,%d3
 534:	4847           	swap %d7
 536:	4247           	clrw %d7
 538:	8e83           	orl %d3,%d7
 53a:	6000 fd46      	braw 282 <___udivdi3+0x282>
 53e:	edad           	lsll %d6,%d5
 540:	b5c5           	cmpal %d5,%a2
 542:	6300 feae      	blsw 3f2 <___udivdi3+0x3f2>
 546:	5387           	subql #1,%d7
 548:	7a00           	moveq #0,%d5
 54a:	2005           	movel %d5,%d0
 54c:	2207           	movel %d7,%d1
 54e:	4cee 3cfc ffcc 	moveml %fp@(-52),%d2-%d7/%a2-%a5
 554:	4e5e           	unlk %fp
 556:	4e75           	rts
 558:	7418           	moveq #24,%d2
 55a:	7818           	moveq #24,%d4
 55c:	6000 fbea      	braw 148 <___udivdi3+0x148>
 560:	7408           	moveq #8,%d2
 562:	7808           	moveq #8,%d4
 564:	6000 fbe2      	braw 148 <___udivdi3+0x148>
 568:	7008           	moveq #8,%d0
 56a:	7208           	moveq #8,%d1
 56c:	6000 fc44      	braw 1b2 <___udivdi3+0x1b2>
 570:	307c 0008      	moveaw #8,%a0
 574:	347c 0008      	moveaw #8,%a2
 578:	6000 fac8      	braw 42 <___udivdi3+0x42>
 57c:	307c 0018      	moveaw #24,%a0
 580:	347c 0018      	moveaw #24,%a2
 584:	6000 fabc      	braw 42 <___udivdi3+0x42>
 588:	7018           	moveq #24,%d0
 58a:	7218           	moveq #24,%d1
 58c:	6000 fc24      	braw 1b2 <___udivdi3+0x1b2>
 590:	7e00           	moveq #0,%d7
 592:	7a00           	moveq #0,%d5
 594:	6000 fe5e      	braw 3f4 <___udivdi3+0x3f4>
 598:	2a07           	movel %d7,%d5
 59a:	2e01           	movel %d1,%d7
 59c:	9e80           	subl %d0,%d7
 59e:	200a           	movel %a2,%d0
 5a0:	4840           	swap %d0
 5a2:	4240           	clrw %d0
 5a4:	8a80           	orl %d0,%d5
 5a6:	6000 fc4c      	braw 1f4 <___udivdi3+0x1f4>
 5aa:	2441           	moveal %d1,%a2
 5ac:	6000 ff0c      	braw 4ba <___udivdi3+0x4ba>

_umoddi3.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___umoddi3>:
   0:	4e56 fff0      	linkw %fp,#-16
   4:	48e7 3f3c      	moveml %d2-%d7/%a2-%a5,%sp@-
   8:	242e 0008      	movel %fp@(8),%d2
   c:	222e 000c      	movel %fp@(12),%d1
  10:	202e 0010      	movel %fp@(16),%d0
  14:	262e 0014      	movel %fp@(20),%d3
  18:	2443           	moveal %d3,%a2
  1a:	2801           	movel %d1,%d4
  1c:	2c02           	movel %d2,%d6
  1e:	4a80           	tstl %d0
  20:	6600 00e6      	bnew 108 <___umoddi3+0x108>
  24:	b483           	cmpl %d3,%d2
  26:	6400 013c      	bccw 164 <___umoddi3+0x164>
  2a:	0c83 0000 ffff 	cmpil #65535,%d3
  30:	6200 0378      	bhiw 3aa <___umoddi3+0x3aa>
  34:	0c83 0000 00ff 	cmpil #255,%d3
  3a:	6200 04ae      	bhiw 4ea <___umoddi3+0x4ea>
  3e:	93c9           	subal %a1,%a1
  40:	2a0a           	movel %a2,%d5
  42:	e0ad           	lsrl %d0,%d5
  44:	41f9 0000 0000 	lea 0 <___umoddi3>,%a0
  4a:	7000           	moveq #0,%d0
  4c:	1030 5800      	moveb %a0@(00000000,%d5:l),%d0
  50:	d089           	addl %a1,%d0
  52:	7a20           	moveq #32,%d5
  54:	9a80           	subl %d0,%d5
  56:	6700 037c      	beqw 3d4 <___umoddi3+0x3d4>
  5a:	260a           	movel %a2,%d3
  5c:	ebab           	lsll %d5,%d3
  5e:	2c02           	movel %d2,%d6
  60:	ebae           	lsll %d5,%d6
  62:	2401           	movel %d1,%d2
  64:	e0aa           	lsrl %d0,%d2
  66:	8c82           	orl %d2,%d6
  68:	2801           	movel %d1,%d4
  6a:	ebac           	lsll %d5,%d4
  6c:	2403           	movel %d3,%d2
  6e:	4242           	clrw %d2
  70:	4842           	swap %d2
  72:	2e03           	movel %d3,%d7
  74:	0287 0000 ffff 	andil #65535,%d7
  7a:	47f9 0000 0000 	lea 0 <___umoddi3>,%a3
  80:	2f02           	movel %d2,%sp@-
  82:	2f06           	movel %d6,%sp@-
  84:	4e93           	jsr %a3@
  86:	508f           	addql #8,%sp
  88:	2440           	moveal %d0,%a2
  8a:	49f9 0000 0000 	lea 0 <___umoddi3>,%a4
  90:	2f02           	movel %d2,%sp@-
  92:	2f06           	movel %d6,%sp@-
  94:	4e94           	jsr %a4@
  96:	508f           	addql #8,%sp
  98:	4bf9 0000 0000 	lea 0 <___umoddi3>,%a5
  9e:	2f07           	movel %d7,%sp@-
  a0:	2f00           	movel %d0,%sp@-
  a2:	4e95           	jsr %a5@
  a4:	508f           	addql #8,%sp
  a6:	2c0a           	movel %a2,%d6
  a8:	4846           	swap %d6
  aa:	4246           	clrw %d6
  ac:	2204           	movel %d4,%d1
  ae:	4241           	clrw %d1
  b0:	4841           	swap %d1
  b2:	8c81           	orl %d1,%d6
  b4:	bc80           	cmpl %d0,%d6
  b6:	640c           	bccs c4 <___umoddi3+0xc4>
  b8:	dc83           	addl %d3,%d6
  ba:	bc83           	cmpl %d3,%d6
  bc:	6506           	bcss c4 <___umoddi3+0xc4>
  be:	bc80           	cmpl %d0,%d6
  c0:	6402           	bccs c4 <___umoddi3+0xc4>
  c2:	dc83           	addl %d3,%d6
  c4:	9c80           	subl %d0,%d6
  c6:	2f02           	movel %d2,%sp@-
  c8:	2f06           	movel %d6,%sp@-
  ca:	4e93           	jsr %a3@
  cc:	508f           	addql #8,%sp
  ce:	2440           	moveal %d0,%a2
  d0:	2f02           	movel %d2,%sp@-
  d2:	2f06           	movel %d6,%sp@-
  d4:	4e94           	jsr %a4@
  d6:	588f           	addql #4,%sp
  d8:	2e87           	movel %d7,%sp@
  da:	2f00           	movel %d0,%sp@-
  dc:	4e95           	jsr %a5@
  de:	508f           	addql #8,%sp
  e0:	220a           	movel %a2,%d1
  e2:	4841           	swap %d1
  e4:	4241           	clrw %d1
  e6:	8244           	orw %d4,%d1
  e8:	b280           	cmpl %d0,%d1
  ea:	640c           	bccs f8 <___umoddi3+0xf8>
  ec:	d283           	addl %d3,%d1
  ee:	b283           	cmpl %d3,%d1
  f0:	6506           	bcss f8 <___umoddi3+0xf8>
  f2:	b280           	cmpl %d0,%d1
  f4:	6402           	bccs f8 <___umoddi3+0xf8>
  f6:	d283           	addl %d3,%d1
  f8:	9280           	subl %d0,%d1
  fa:	7000           	moveq #0,%d0
  fc:	eaa9           	lsrl %d5,%d1
  fe:	4cee 3cfc ffc8 	moveml %fp@(-56),%d2-%d7/%a2-%a5
 104:	4e5e           	unlk %fp
 106:	4e75           	rts
 108:	b480           	cmpl %d0,%d2
 10a:	6500 011a      	bcsw 226 <___umoddi3+0x226>
 10e:	0c80 0000 ffff 	cmpil #65535,%d0
 114:	6200 011c      	bhiw 232 <___umoddi3+0x232>
 118:	0c80 0000 00ff 	cmpil #255,%d0
 11e:	6200 03ba      	bhiw 4da <___umoddi3+0x4da>
 122:	7600           	moveq #0,%d3
 124:	7e00           	moveq #0,%d7
 126:	2a00           	movel %d0,%d5
 128:	e6ad           	lsrl %d3,%d5
 12a:	2605           	movel %d5,%d3
 12c:	41f9 0000 0000 	lea 0 <___umoddi3>,%a0
 132:	1630 5800      	moveb %a0@(00000000,%d5:l),%d3
 136:	0283 0000 00ff 	andil #255,%d3
 13c:	de83           	addl %d3,%d7
 13e:	7a20           	moveq #32,%d5
 140:	9a87           	subl %d7,%d5
 142:	6600 011c      	bnew 260 <___umoddi3+0x260>
 146:	b480           	cmpl %d0,%d2
 148:	6204           	bhis 14e <___umoddi3+0x14e>
 14a:	b28a           	cmpl %a2,%d1
 14c:	6508           	bcss 156 <___umoddi3+0x156>
 14e:	2c02           	movel %d2,%d6
 150:	2801           	movel %d1,%d4
 152:	988a           	subl %a2,%d4
 154:	9d80           	subxl %d0,%d6
 156:	2006           	movel %d6,%d0
 158:	2204           	movel %d4,%d1
 15a:	4cee 3cfc ffc8 	moveml %fp@(-56),%d2-%d7/%a2-%a5
 160:	4e5e           	unlk %fp
 162:	4e75           	rts
 164:	49f9 0000 0000 	lea 0 <___umoddi3>,%a4
 16a:	4a83           	tstl %d3
 16c:	6614           	bnes 182 <___umoddi3+0x182>
 16e:	42a7           	clrl %sp@-
 170:	4878 0001      	pea 1 <___umoddi3+0x1>
 174:	2d41 fff0      	movel %d1,%fp@(-16)
 178:	4e94           	jsr %a4@
 17a:	508f           	addql #8,%sp
 17c:	2600           	movel %d0,%d3
 17e:	222e fff0      	movel %fp@(-16),%d1
 182:	0c83 0000 ffff 	cmpil #65535,%d3
 188:	6200 0250      	bhiw 3da <___umoddi3+0x3da>
 18c:	0c83 0000 00ff 	cmpil #255,%d3
 192:	6200 0360      	bhiw 4f4 <___umoddi3+0x4f4>
 196:	7000           	moveq #0,%d0
 198:	93c9           	subal %a1,%a1
 19a:	2a03           	movel %d3,%d5
 19c:	e0ad           	lsrl %d0,%d5
 19e:	41f9 0000 0000 	lea 0 <___umoddi3>,%a0
 1a4:	7000           	moveq #0,%d0
 1a6:	1030 5800      	moveb %a0@(00000000,%d5:l),%d0
 1aa:	d089           	addl %a1,%d0
 1ac:	7a20           	moveq #32,%d5
 1ae:	9a80           	subl %d0,%d5
 1b0:	6600 0252      	bnew 404 <___umoddi3+0x404>
 1b4:	9483           	subl %d3,%d2
 1b6:	2c03           	movel %d3,%d6
 1b8:	4246           	clrw %d6
 1ba:	4846           	swap %d6
 1bc:	2e03           	movel %d3,%d7
 1be:	0287 0000 ffff 	andil #65535,%d7
 1c4:	47f9 0000 0000 	lea 0 <___umoddi3>,%a3
 1ca:	4bf9 0000 0000 	lea 0 <___umoddi3>,%a5
 1d0:	2f06           	movel %d6,%sp@-
 1d2:	2f02           	movel %d2,%sp@-
 1d4:	4e93           	jsr %a3@
 1d6:	508f           	addql #8,%sp
 1d8:	2440           	moveal %d0,%a2
 1da:	2f06           	movel %d6,%sp@-
 1dc:	2f02           	movel %d2,%sp@-
 1de:	4e94           	jsr %a4@
 1e0:	588f           	addql #4,%sp
 1e2:	2e87           	movel %d7,%sp@
 1e4:	2f00           	movel %d0,%sp@-
 1e6:	4e95           	jsr %a5@
 1e8:	508f           	addql #8,%sp
 1ea:	240a           	movel %a2,%d2
 1ec:	4842           	swap %d2
 1ee:	4242           	clrw %d2
 1f0:	2204           	movel %d4,%d1
 1f2:	4241           	clrw %d1
 1f4:	4841           	swap %d1
 1f6:	8481           	orl %d1,%d2
 1f8:	b480           	cmpl %d0,%d2
 1fa:	640c           	bccs 208 <___umoddi3+0x208>
 1fc:	d483           	addl %d3,%d2
 1fe:	b483           	cmpl %d3,%d2
 200:	6506           	bcss 208 <___umoddi3+0x208>
 202:	b480           	cmpl %d0,%d2
 204:	6402           	bccs 208 <___umoddi3+0x208>
 206:	d483           	addl %d3,%d2
 208:	9480           	subl %d0,%d2
 20a:	2f06           	movel %d6,%sp@-
 20c:	2f02           	movel %d2,%sp@-
 20e:	4e93           	jsr %a3@
 210:	508f           	addql #8,%sp
 212:	2440           	moveal %d0,%a2
 214:	2f06           	movel %d6,%sp@-
 216:	2f02           	movel %d2,%sp@-
 218:	4e94           	jsr %a4@
 21a:	588f           	addql #4,%sp
 21c:	2e87           	movel %d7,%sp@
 21e:	2f00           	movel %d0,%sp@-
 220:	4e95           	jsr %a5@
 222:	6000 feba      	braw de <___umoddi3+0xde>
 226:	2002           	movel %d2,%d0
 228:	4cee 3cfc ffc8 	moveml %fp@(-56),%d2-%d7/%a2-%a5
 22e:	4e5e           	unlk %fp
 230:	4e75           	rts
 232:	0c80 00ff ffff 	cmpil #16777215,%d0
 238:	6200 02a8      	bhiw 4e2 <___umoddi3+0x4e2>
 23c:	7610           	moveq #16,%d3
 23e:	7e10           	moveq #16,%d7
 240:	2a00           	movel %d0,%d5
 242:	e6ad           	lsrl %d3,%d5
 244:	2605           	movel %d5,%d3
 246:	41f9 0000 0000 	lea 0 <___umoddi3>,%a0
 24c:	1630 5800      	moveb %a0@(00000000,%d5:l),%d3
 250:	0283 0000 00ff 	andil #255,%d3
 256:	de83           	addl %d3,%d7
 258:	7a20           	moveq #32,%d5
 25a:	9a87           	subl %d7,%d5
 25c:	6700 fee8      	beqw 146 <___umoddi3+0x146>
 260:	2c00           	movel %d0,%d6
 262:	ebae           	lsll %d5,%d6
 264:	200a           	movel %a2,%d0
 266:	eea8           	lsrl %d7,%d0
 268:	8c80           	orl %d0,%d6
 26a:	200a           	movel %a2,%d0
 26c:	eba8           	lsll %d5,%d0
 26e:	2440           	moveal %d0,%a2
 270:	2802           	movel %d2,%d4
 272:	eeac           	lsrl %d7,%d4
 274:	ebaa           	lsll %d5,%d2
 276:	2001           	movel %d1,%d0
 278:	eea8           	lsrl %d7,%d0
 27a:	8480           	orl %d0,%d2
 27c:	eba9           	lsll %d5,%d1
 27e:	2d41 fff8      	movel %d1,%fp@(-8)
 282:	2606           	movel %d6,%d3
 284:	4243           	clrw %d3
 286:	4843           	swap %d3
 288:	2006           	movel %d6,%d0
 28a:	0280 0000 ffff 	andil #65535,%d0
 290:	2d40 fffc      	movel %d0,%fp@(-4)
 294:	47f9 0000 0000 	lea 0 <___umoddi3>,%a3
 29a:	2f03           	movel %d3,%sp@-
 29c:	2f04           	movel %d4,%sp@-
 29e:	4e93           	jsr %a3@
 2a0:	508f           	addql #8,%sp
 2a2:	49f9 0000 0000 	lea 0 <___umoddi3>,%a4
 2a8:	2f03           	movel %d3,%sp@-
 2aa:	2f04           	movel %d4,%sp@-
 2ac:	2d40 fff0      	movel %d0,%fp@(-16)
 2b0:	4e94           	jsr %a4@
 2b2:	508f           	addql #8,%sp
 2b4:	2800           	movel %d0,%d4
 2b6:	4bf9 0000 0000 	lea 0 <___umoddi3>,%a5
 2bc:	2f2e fffc      	movel %fp@(-4),%sp@-
 2c0:	2f00           	movel %d0,%sp@-
 2c2:	4e95           	jsr %a5@
 2c4:	508f           	addql #8,%sp
 2c6:	2240           	moveal %d0,%a1
 2c8:	222e fff0      	movel %fp@(-16),%d1
 2cc:	4841           	swap %d1
 2ce:	4241           	clrw %d1
 2d0:	2002           	movel %d2,%d0
 2d2:	4240           	clrw %d0
 2d4:	4840           	swap %d0
 2d6:	8280           	orl %d0,%d1
 2d8:	b289           	cmpl %a1,%d1
 2da:	6416           	bccs 2f2 <___umoddi3+0x2f2>
 2dc:	2044           	moveal %d4,%a0
 2de:	5388           	subql #1,%a0
 2e0:	d286           	addl %d6,%d1
 2e2:	b286           	cmpl %d6,%d1
 2e4:	6500 01c8      	bcsw 4ae <___umoddi3+0x4ae>
 2e8:	b289           	cmpl %a1,%d1
 2ea:	6400 01c2      	bccw 4ae <___umoddi3+0x4ae>
 2ee:	5584           	subql #2,%d4
 2f0:	d286           	addl %d6,%d1
 2f2:	9289           	subl %a1,%d1
 2f4:	2f03           	movel %d3,%sp@-
 2f6:	2f01           	movel %d1,%sp@-
 2f8:	2d41 fff0      	movel %d1,%fp@(-16)
 2fc:	4e93           	jsr %a3@
 2fe:	508f           	addql #8,%sp
 300:	2640           	moveal %d0,%a3
 302:	2f03           	movel %d3,%sp@-
 304:	222e fff0      	movel %fp@(-16),%d1
 308:	2f01           	movel %d1,%sp@-
 30a:	4e94           	jsr %a4@
 30c:	508f           	addql #8,%sp
 30e:	2600           	movel %d0,%d3
 310:	2f2e fffc      	movel %fp@(-4),%sp@-
 314:	2f00           	movel %d0,%sp@-
 316:	4e95           	jsr %a5@
 318:	508f           	addql #8,%sp
 31a:	220b           	movel %a3,%d1
 31c:	4841           	swap %d1
 31e:	4241           	clrw %d1
 320:	8242           	orw %d2,%d1
 322:	b280           	cmpl %d0,%d1
 324:	6416           	bccs 33c <___umoddi3+0x33c>
 326:	2403           	movel %d3,%d2
 328:	5382           	subql #1,%d2
 32a:	d286           	addl %d6,%d1
 32c:	b286           	cmpl %d6,%d1
 32e:	6500 0184      	bcsw 4b4 <___umoddi3+0x4b4>
 332:	b280           	cmpl %d0,%d1
 334:	6400 017e      	bccw 4b4 <___umoddi3+0x4b4>
 338:	5583           	subql #2,%d3
 33a:	d286           	addl %d6,%d1
 33c:	2041           	moveal %d1,%a0
 33e:	91c0           	subal %d0,%a0
 340:	4844           	swap %d4
 342:	4244           	clrw %d4
 344:	8684           	orl %d4,%d3
 346:	2243           	moveal %d3,%a1
 348:	2009           	movel %a1,%d0
 34a:	220a           	movel %a2,%d1
 34c:	2400           	movel %d0,%d2
 34e:	4840           	swap %d0
 350:	2601           	movel %d1,%d3
 352:	4841           	swap %d1
 354:	3802           	movew %d2,%d4
 356:	c8c3           	muluw %d3,%d4
 358:	c4c1           	muluw %d1,%d2
 35a:	c6c0           	muluw %d0,%d3
 35c:	c2c0           	muluw %d0,%d1
 35e:	2004           	movel %d4,%d0
 360:	b140           	eorw %d0,%d0
 362:	4840           	swap %d0
 364:	d480           	addl %d0,%d2
 366:	d483           	addl %d3,%d2
 368:	6406           	bccs 370 <___umoddi3+0x370>
 36a:	0681 0001 0000 	addil #65536,%d1
 370:	4842           	swap %d2
 372:	7000           	moveq #0,%d0
 374:	3002           	movew %d2,%d0
 376:	3404           	movew %d4,%d2
 378:	2642           	moveal %d2,%a3
 37a:	d081           	addl %d1,%d0
 37c:	2240           	moveal %d0,%a1
 37e:	2609           	movel %a1,%d3
 380:	240b           	movel %a3,%d2
 382:	b3c8           	cmpal %a0,%a1
 384:	6200 0134      	bhiw 4ba <___umoddi3+0x4ba>
 388:	6700 0188      	beqw 512 <___umoddi3+0x512>
 38c:	2008           	movel %a0,%d0
 38e:	222e fff8      	movel %fp@(-8),%d1
 392:	9282           	subl %d2,%d1
 394:	9183           	subxl %d3,%d0
 396:	eaa9           	lsrl %d5,%d1
 398:	2400           	movel %d0,%d2
 39a:	efaa           	lsll %d7,%d2
 39c:	eaa8           	lsrl %d5,%d0
 39e:	8282           	orl %d2,%d1
 3a0:	4cee 3cfc ffc8 	moveml %fp@(-56),%d2-%d7/%a2-%a5
 3a6:	4e5e           	unlk %fp
 3a8:	4e75           	rts
 3aa:	0c83 00ff ffff 	cmpil #16777215,%d3
 3b0:	6200 014c      	bhiw 4fe <___umoddi3+0x4fe>
 3b4:	7010           	moveq #16,%d0
 3b6:	327c 0010      	moveaw #16,%a1
 3ba:	2a0a           	movel %a2,%d5
 3bc:	e0ad           	lsrl %d0,%d5
 3be:	41f9 0000 0000 	lea 0 <___umoddi3>,%a0
 3c4:	7000           	moveq #0,%d0
 3c6:	1030 5800      	moveb %a0@(00000000,%d5:l),%d0
 3ca:	d089           	addl %a1,%d0
 3cc:	7a20           	moveq #32,%d5
 3ce:	9a80           	subl %d0,%d5
 3d0:	6600 fc88      	bnew 5a <___umoddi3+0x5a>
 3d4:	7a00           	moveq #0,%d5
 3d6:	6000 fc94      	braw 6c <___umoddi3+0x6c>
 3da:	0c83 00ff ffff 	cmpil #16777215,%d3
 3e0:	6200 0126      	bhiw 508 <___umoddi3+0x508>
 3e4:	7010           	moveq #16,%d0
 3e6:	327c 0010      	moveaw #16,%a1
 3ea:	2a03           	movel %d3,%d5
 3ec:	e0ad           	lsrl %d0,%d5
 3ee:	41f9 0000 0000 	lea 0 <___umoddi3>,%a0
 3f4:	7000           	moveq #0,%d0
 3f6:	1030 5800      	moveb %a0@(00000000,%d5:l),%d0
 3fa:	d089           	addl %a1,%d0
 3fc:	7a20           	moveq #32,%d5
 3fe:	9a80           	subl %d0,%d5
 400:	6700 fdb2      	beqw 1b4 <___umoddi3+0x1b4>
 404:	ebab           	lsll %d5,%d3
 406:	2802           	movel %d2,%d4
 408:	e0ac           	lsrl %d0,%d4
 40a:	2a44           	moveal %d4,%a5
 40c:	ebaa           	lsll %d5,%d2
 40e:	2801           	movel %d1,%d4
 410:	e0ac           	lsrl %d0,%d4
 412:	8484           	orl %d4,%d2
 414:	2801           	movel %d1,%d4
 416:	ebac           	lsll %d5,%d4
 418:	2c03           	movel %d3,%d6
 41a:	4246           	clrw %d6
 41c:	4846           	swap %d6
 41e:	2e03           	movel %d3,%d7
 420:	0287 0000 ffff 	andil #65535,%d7
 426:	47f9 0000 0000 	lea 0 <___umoddi3>,%a3
 42c:	2f06           	movel %d6,%sp@-
 42e:	2f0d           	movel %a5,%sp@-
 430:	4e93           	jsr %a3@
 432:	508f           	addql #8,%sp
 434:	2440           	moveal %d0,%a2
 436:	2f06           	movel %d6,%sp@-
 438:	2f0d           	movel %a5,%sp@-
 43a:	4e94           	jsr %a4@
 43c:	508f           	addql #8,%sp
 43e:	4bf9 0000 0000 	lea 0 <___umoddi3>,%a5
 444:	2f07           	movel %d7,%sp@-
 446:	2f00           	movel %d0,%sp@-
 448:	4e95           	jsr %a5@
 44a:	508f           	addql #8,%sp
 44c:	2240           	moveal %d0,%a1
 44e:	220a           	movel %a2,%d1
 450:	4841           	swap %d1
 452:	4241           	clrw %d1
 454:	2002           	movel %d2,%d0
 456:	4240           	clrw %d0
 458:	4840           	swap %d0
 45a:	8280           	orl %d0,%d1
 45c:	b289           	cmpl %a1,%d1
 45e:	640c           	bccs 46c <___umoddi3+0x46c>
 460:	d283           	addl %d3,%d1
 462:	b283           	cmpl %d3,%d1
 464:	6506           	bcss 46c <___umoddi3+0x46c>
 466:	b289           	cmpl %a1,%d1
 468:	6402           	bccs 46c <___umoddi3+0x46c>
 46a:	d283           	addl %d3,%d1
 46c:	2441           	moveal %d1,%a2
 46e:	95c9           	subal %a1,%a2
 470:	2f06           	movel %d6,%sp@-
 472:	2f0a           	movel %a2,%sp@-
 474:	4e93           	jsr %a3@
 476:	508f           	addql #8,%sp
 478:	2d40 fffc      	movel %d0,%fp@(-4)
 47c:	2f06           	movel %d6,%sp@-
 47e:	2f0a           	movel %a2,%sp@-
 480:	4e94           	jsr %a4@
 482:	588f           	addql #4,%sp
 484:	2e87           	movel %d7,%sp@
 486:	2f00           	movel %d0,%sp@-
 488:	4e95           	jsr %a5@
 48a:	508f           	addql #8,%sp
 48c:	222e fffc      	movel %fp@(-4),%d1
 490:	4841           	swap %d1
 492:	4241           	clrw %d1
 494:	8242           	orw %d2,%d1
 496:	b280           	cmpl %d0,%d1
 498:	640c           	bccs 4a6 <___umoddi3+0x4a6>
 49a:	d283           	addl %d3,%d1
 49c:	b283           	cmpl %d3,%d1
 49e:	6506           	bcss 4a6 <___umoddi3+0x4a6>
 4a0:	b280           	cmpl %d0,%d1
 4a2:	6402           	bccs 4a6 <___umoddi3+0x4a6>
 4a4:	d283           	addl %d3,%d1
 4a6:	2401           	movel %d1,%d2
 4a8:	9480           	subl %d0,%d2
 4aa:	6000 fd24      	braw 1d0 <___umoddi3+0x1d0>
 4ae:	2808           	movel %a0,%d4
 4b0:	6000 fe40      	braw 2f2 <___umoddi3+0x2f2>
 4b4:	2602           	movel %d2,%d3
 4b6:	6000 fe84      	braw 33c <___umoddi3+0x33c>
 4ba:	2609           	movel %a1,%d3
 4bc:	240b           	movel %a3,%d2
 4be:	948a           	subl %a2,%d2
 4c0:	9786           	subxl %d6,%d3
 4c2:	2008           	movel %a0,%d0
 4c4:	222e fff8      	movel %fp@(-8),%d1
 4c8:	9282           	subl %d2,%d1
 4ca:	9183           	subxl %d3,%d0
 4cc:	eaa9           	lsrl %d5,%d1
 4ce:	2400           	movel %d0,%d2
 4d0:	efaa           	lsll %d7,%d2
 4d2:	eaa8           	lsrl %d5,%d0
 4d4:	8282           	orl %d2,%d1
 4d6:	6000 fec8      	braw 3a0 <___umoddi3+0x3a0>
 4da:	7608           	moveq #8,%d3
 4dc:	7e08           	moveq #8,%d7
 4de:	6000 fc46      	braw 126 <___umoddi3+0x126>
 4e2:	7618           	moveq #24,%d3
 4e4:	7e18           	moveq #24,%d7
 4e6:	6000 fc3e      	braw 126 <___umoddi3+0x126>
 4ea:	7008           	moveq #8,%d0
 4ec:	327c 0008      	moveaw #8,%a1
 4f0:	6000 fb4e      	braw 40 <___umoddi3+0x40>
 4f4:	7008           	moveq #8,%d0
 4f6:	327c 0008      	moveaw #8,%a1
 4fa:	6000 fc9e      	braw 19a <___umoddi3+0x19a>
 4fe:	7018           	moveq #24,%d0
 500:	327c 0018      	moveaw #24,%a1
 504:	6000 fb3a      	braw 40 <___umoddi3+0x40>
 508:	7018           	moveq #24,%d0
 50a:	327c 0018      	moveaw #24,%a1
 50e:	6000 fc8a      	braw 19a <___umoddi3+0x19a>
 512:	b7ee fff8      	cmpal %fp@(-8),%a3
 516:	62a2           	bhis 4ba <___umoddi3+0x4ba>
 518:	2608           	movel %a0,%d3
 51a:	2008           	movel %a0,%d0
 51c:	222e fff8      	movel %fp@(-8),%d1
 520:	9282           	subl %d2,%d1
 522:	9183           	subxl %d3,%d0
 524:	eaa9           	lsrl %d5,%d1
 526:	2400           	movel %d0,%d2
 528:	efaa           	lsll %d7,%d2
 52a:	eaa8           	lsrl %d5,%d0
 52c:	8282           	orl %d2,%d1
 52e:	6000 fe70      	braw 3a0 <___umoddi3+0x3a0>
	...

_udiv_w_sdiv.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___udiv_w_sdiv>:
   0:	4e56 0000      	linkw %fp,#0
   4:	7000           	moveq #0,%d0
   6:	4e5e           	unlk %fp
   8:	4e75           	rts
	...

_udivmoddi4.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___udivmoddi4>:
   0:	4e56 ffe8      	linkw %fp,#-24
   4:	48e7 3f3c      	moveml %d2-%d7/%a2-%a5,%sp@-
   8:	222e 0008      	movel %fp@(8),%d1
   c:	262e 000c      	movel %fp@(12),%d3
  10:	2c2e 0010      	movel %fp@(16),%d6
  14:	202e 0014      	movel %fp@(20),%d0
  18:	246e 0018      	moveal %fp@(24),%a2
  1c:	2a00           	movel %d0,%d5
  1e:	2403           	movel %d3,%d2
  20:	2801           	movel %d1,%d4
  22:	4a86           	tstl %d6
  24:	6600 012a      	bnew 150 <___udivmoddi4+0x150>
  28:	b280           	cmpl %d0,%d1
  2a:	6400 01b4      	bccw 1e0 <___udivmoddi4+0x1e0>
  2e:	0c80 0000 ffff 	cmpil #65535,%d0
  34:	6200 03ea      	bhiw 420 <___udivmoddi4+0x420>
  38:	0c80 0000 00ff 	cmpil #255,%d0
  3e:	6200 05c6      	bhiw 606 <___udivmoddi4+0x606>
  42:	91c8           	subal %a0,%a0
  44:	97cb           	subal %a3,%a3
  46:	2c00           	movel %d0,%d6
  48:	2e08           	movel %a0,%d7
  4a:	eeae           	lsrl %d7,%d6
  4c:	2246           	moveal %d6,%a1
  4e:	41f9 0000 0000 	lea 0 <___udivmoddi4>,%a0
  54:	7c00           	moveq #0,%d6
  56:	1c30 9800      	moveb %a0@(00000000,%a1:l),%d6
  5a:	2e0b           	movel %a3,%d7
  5c:	de86           	addl %d6,%d7
  5e:	7c20           	moveq #32,%d6
  60:	9c87           	subl %d7,%d6
  62:	6712           	beqs 76 <___udivmoddi4+0x76>
  64:	2a00           	movel %d0,%d5
  66:	edad           	lsll %d6,%d5
  68:	2801           	movel %d1,%d4
  6a:	edac           	lsll %d6,%d4
  6c:	2003           	movel %d3,%d0
  6e:	eea8           	lsrl %d7,%d0
  70:	8880           	orl %d0,%d4
  72:	2403           	movel %d3,%d2
  74:	edaa           	lsll %d6,%d2
  76:	2605           	movel %d5,%d3
  78:	4243           	clrw %d3
  7a:	4843           	swap %d3
  7c:	2205           	movel %d5,%d1
  7e:	0281 0000 ffff 	andil #65535,%d1
  84:	2d41 fffc      	movel %d1,%fp@(-4)
  88:	4bf9 0000 0000 	lea 0 <___udivmoddi4>,%a5
  8e:	2f03           	movel %d3,%sp@-
  90:	2f04           	movel %d4,%sp@-
  92:	4e95           	jsr %a5@
  94:	508f           	addql #8,%sp
  96:	2d40 fff8      	movel %d0,%fp@(-8)
  9a:	47f9 0000 0000 	lea 0 <___udivmoddi4>,%a3
  a0:	2f03           	movel %d3,%sp@-
  a2:	2f04           	movel %d4,%sp@-
  a4:	4e93           	jsr %a3@
  a6:	508f           	addql #8,%sp
  a8:	2e00           	movel %d0,%d7
  aa:	49f9 0000 0000 	lea 0 <___udivmoddi4>,%a4
  b0:	2f2e fffc      	movel %fp@(-4),%sp@-
  b4:	2f00           	movel %d0,%sp@-
  b6:	4e94           	jsr %a4@
  b8:	508f           	addql #8,%sp
  ba:	282e fff8      	movel %fp@(-8),%d4
  be:	4844           	swap %d4
  c0:	4244           	clrw %d4
  c2:	2202           	movel %d2,%d1
  c4:	4241           	clrw %d1
  c6:	4841           	swap %d1
  c8:	8881           	orl %d1,%d4
  ca:	b880           	cmpl %d0,%d4
  cc:	6416           	bccs e4 <___udivmoddi4+0xe4>
  ce:	2207           	movel %d7,%d1
  d0:	5381           	subql #1,%d1
  d2:	d885           	addl %d5,%d4
  d4:	b885           	cmpl %d5,%d4
  d6:	6500 0508      	bcsw 5e0 <___udivmoddi4+0x5e0>
  da:	b880           	cmpl %d0,%d4
  dc:	6400 0502      	bccw 5e0 <___udivmoddi4+0x5e0>
  e0:	5587           	subql #2,%d7
  e2:	d885           	addl %d5,%d4
  e4:	9880           	subl %d0,%d4
  e6:	2f03           	movel %d3,%sp@-
  e8:	2f04           	movel %d4,%sp@-
  ea:	4e95           	jsr %a5@
  ec:	508f           	addql #8,%sp
  ee:	2a40           	moveal %d0,%a5
  f0:	2f03           	movel %d3,%sp@-
  f2:	2f04           	movel %d4,%sp@-
  f4:	4e93           	jsr %a3@
  f6:	508f           	addql #8,%sp
  f8:	2800           	movel %d0,%d4
  fa:	2f2e fffc      	movel %fp@(-4),%sp@-
  fe:	2f00           	movel %d0,%sp@-
 100:	4e94           	jsr %a4@
 102:	508f           	addql #8,%sp
 104:	220d           	movel %a5,%d1
 106:	4841           	swap %d1
 108:	4241           	clrw %d1
 10a:	8242           	orw %d2,%d1
 10c:	b280           	cmpl %d0,%d1
 10e:	6416           	bccs 126 <___udivmoddi4+0x126>
 110:	2404           	movel %d4,%d2
 112:	5382           	subql #1,%d2
 114:	d285           	addl %d5,%d1
 116:	b285           	cmpl %d5,%d1
 118:	6500 04cc      	bcsw 5e6 <___udivmoddi4+0x5e6>
 11c:	b280           	cmpl %d0,%d1
 11e:	6400 04c6      	bccw 5e6 <___udivmoddi4+0x5e6>
 122:	5584           	subql #2,%d4
 124:	d285           	addl %d5,%d1
 126:	2607           	movel %d7,%d3
 128:	4843           	swap %d3
 12a:	4243           	clrw %d3
 12c:	8684           	orl %d4,%d3
 12e:	9280           	subl %d0,%d1
 130:	93c9           	subal %a1,%a1
 132:	b4fc 0000      	cmpaw #0,%a2
 136:	6708           	beqs 140 <___udivmoddi4+0x140>
 138:	eca9           	lsrl %d6,%d1
 13a:	4292           	clrl %a2@
 13c:	2541 0004      	movel %d1,%a2@(4)
 140:	2043           	moveal %d3,%a0
 142:	2009           	movel %a1,%d0
 144:	2208           	movel %a0,%d1
 146:	4cee 3cfc ffc0 	moveml %fp@(-64),%d2-%d7/%a2-%a5
 14c:	4e5e           	unlk %fp
 14e:	4e75           	rts
 150:	b286           	cmpl %d6,%d1
 152:	6420           	bccs 174 <___udivmoddi4+0x174>
 154:	b4fc 0000      	cmpaw #0,%a2
 158:	6700 0530      	beqw 68a <___udivmoddi4+0x68a>
 15c:	2481           	movel %d1,%a2@
 15e:	2543 0004      	movel %d3,%a2@(4)
 162:	91c8           	subal %a0,%a0
 164:	93c9           	subal %a1,%a1
 166:	2009           	movel %a1,%d0
 168:	2208           	movel %a0,%d1
 16a:	4cee 3cfc ffc0 	moveml %fp@(-64),%d2-%d7/%a2-%a5
 170:	4e5e           	unlk %fp
 172:	4e75           	rts
 174:	0c86 0000 ffff 	cmpil #65535,%d6
 17a:	6200 02ba      	bhiw 436 <___udivmoddi4+0x436>
 17e:	0c86 0000 00ff 	cmpil #255,%d6
 184:	6200 04b8      	bhiw 63e <___udivmoddi4+0x63e>
 188:	91c8           	subal %a0,%a0
 18a:	97cb           	subal %a3,%a3
 18c:	2a06           	movel %d6,%d5
 18e:	2e08           	movel %a0,%d7
 190:	eead           	lsrl %d7,%d5
 192:	2245           	moveal %d5,%a1
 194:	41f9 0000 0000 	lea 0 <___udivmoddi4>,%a0
 19a:	7a00           	moveq #0,%d5
 19c:	1a30 9800      	moveb %a0@(00000000,%a1:l),%d5
 1a0:	2e0b           	movel %a3,%d7
 1a2:	de85           	addl %d5,%d7
 1a4:	7a20           	moveq #32,%d5
 1a6:	9a87           	subl %d7,%d5
 1a8:	6600 02be      	bnew 468 <___udivmoddi4+0x468>
 1ac:	b286           	cmpl %d6,%d1
 1ae:	6206           	bhis 1b6 <___udivmoddi4+0x1b6>
 1b0:	b680           	cmpl %d0,%d3
 1b2:	6500 04c2      	bcsw 676 <___udivmoddi4+0x676>
 1b6:	2801           	movel %d1,%d4
 1b8:	2403           	movel %d3,%d2
 1ba:	9480           	subl %d0,%d2
 1bc:	9986           	subxl %d6,%d4
 1be:	307c 0001      	moveaw #1,%a0
 1c2:	b4fc 0000      	cmpaw #0,%a2
 1c6:	6700 04d4      	beqw 69c <___udivmoddi4+0x69c>
 1ca:	2484           	movel %d4,%a2@
 1cc:	2542 0004      	movel %d2,%a2@(4)
 1d0:	93c9           	subal %a1,%a1
 1d2:	2009           	movel %a1,%d0
 1d4:	2208           	movel %a0,%d1
 1d6:	4cee 3cfc ffc0 	moveml %fp@(-64),%d2-%d7/%a2-%a5
 1dc:	4e5e           	unlk %fp
 1de:	4e75           	rts
 1e0:	47f9 0000 0000 	lea 0 <___udivmoddi4>,%a3
 1e6:	4a80           	tstl %d0
 1e8:	6614           	bnes 1fe <___udivmoddi4+0x1fe>
 1ea:	42a7           	clrl %sp@-
 1ec:	4878 0001      	pea 1 <___udivmoddi4+0x1>
 1f0:	2d41 ffe8      	movel %d1,%fp@(-24)
 1f4:	4e93           	jsr %a3@
 1f6:	508f           	addql #8,%sp
 1f8:	2a00           	movel %d0,%d5
 1fa:	222e ffe8      	movel %fp@(-24),%d1
 1fe:	0c85 0000 ffff 	cmpil #65535,%d5
 204:	6200 0104      	bhiw 30a <___udivmoddi4+0x30a>
 208:	0c85 0000 00ff 	cmpil #255,%d5
 20e:	6200 041a      	bhiw 62a <___udivmoddi4+0x62a>
 212:	7000           	moveq #0,%d0
 214:	93c9           	subal %a1,%a1
 216:	2805           	movel %d5,%d4
 218:	e0ac           	lsrl %d0,%d4
 21a:	41f9 0000 0000 	lea 0 <___udivmoddi4>,%a0
 220:	7000           	moveq #0,%d0
 222:	1030 4800      	moveb %a0@(00000000,%d4:l),%d0
 226:	d089           	addl %a1,%d0
 228:	7c20           	moveq #32,%d6
 22a:	9c80           	subl %d0,%d6
 22c:	6600 0106      	bnew 334 <___udivmoddi4+0x334>
 230:	9285           	subl %d5,%d1
 232:	2605           	movel %d5,%d3
 234:	4243           	clrw %d3
 236:	4843           	swap %d3
 238:	2805           	movel %d5,%d4
 23a:	0284 0000 ffff 	andil #65535,%d4
 240:	327c 0001      	moveaw #1,%a1
 244:	4bf9 0000 0000 	lea 0 <___udivmoddi4>,%a5
 24a:	49f9 0000 0000 	lea 0 <___udivmoddi4>,%a4
 250:	2f03           	movel %d3,%sp@-
 252:	2f01           	movel %d1,%sp@-
 254:	2d41 ffe8      	movel %d1,%fp@(-24)
 258:	2d49 ffec      	movel %a1,%fp@(-20)
 25c:	4e95           	jsr %a5@
 25e:	508f           	addql #8,%sp
 260:	2e00           	movel %d0,%d7
 262:	2f03           	movel %d3,%sp@-
 264:	222e ffe8      	movel %fp@(-24),%d1
 268:	2f01           	movel %d1,%sp@-
 26a:	4e93           	jsr %a3@
 26c:	508f           	addql #8,%sp
 26e:	2d40 fffc      	movel %d0,%fp@(-4)
 272:	2f04           	movel %d4,%sp@-
 274:	2f00           	movel %d0,%sp@-
 276:	4e94           	jsr %a4@
 278:	508f           	addql #8,%sp
 27a:	2207           	movel %d7,%d1
 27c:	4841           	swap %d1
 27e:	4241           	clrw %d1
 280:	2e02           	movel %d2,%d7
 282:	4247           	clrw %d7
 284:	4847           	swap %d7
 286:	8287           	orl %d7,%d1
 288:	226e ffec      	moveal %fp@(-20),%a1
 28c:	b280           	cmpl %d0,%d1
 28e:	641a           	bccs 2aa <___udivmoddi4+0x2aa>
 290:	206e fffc      	moveal %fp@(-4),%a0
 294:	5388           	subql #1,%a0
 296:	d285           	addl %d5,%d1
 298:	b285           	cmpl %d5,%d1
 29a:	6500 032a      	bcsw 5c6 <___udivmoddi4+0x5c6>
 29e:	b280           	cmpl %d0,%d1
 2a0:	6400 0324      	bccw 5c6 <___udivmoddi4+0x5c6>
 2a4:	55ae fffc      	subql #2,%fp@(-4)
 2a8:	d285           	addl %d5,%d1
 2aa:	9280           	subl %d0,%d1
 2ac:	2f03           	movel %d3,%sp@-
 2ae:	2f01           	movel %d1,%sp@-
 2b0:	2d41 ffe8      	movel %d1,%fp@(-24)
 2b4:	2d49 ffec      	movel %a1,%fp@(-20)
 2b8:	4e95           	jsr %a5@
 2ba:	508f           	addql #8,%sp
 2bc:	2a40           	moveal %d0,%a5
 2be:	2f03           	movel %d3,%sp@-
 2c0:	222e ffe8      	movel %fp@(-24),%d1
 2c4:	2f01           	movel %d1,%sp@-
 2c6:	4e93           	jsr %a3@
 2c8:	508f           	addql #8,%sp
 2ca:	2600           	movel %d0,%d3
 2cc:	2f04           	movel %d4,%sp@-
 2ce:	2f00           	movel %d0,%sp@-
 2d0:	4e94           	jsr %a4@
 2d2:	508f           	addql #8,%sp
 2d4:	220d           	movel %a5,%d1
 2d6:	4841           	swap %d1
 2d8:	4241           	clrw %d1
 2da:	8242           	orw %d2,%d1
 2dc:	226e ffec      	moveal %fp@(-20),%a1
 2e0:	b280           	cmpl %d0,%d1
 2e2:	6416           	bccs 2fa <___udivmoddi4+0x2fa>
 2e4:	2403           	movel %d3,%d2
 2e6:	5382           	subql #1,%d2
 2e8:	d285           	addl %d5,%d1
 2ea:	b285           	cmpl %d5,%d1
 2ec:	6500 02e0      	bcsw 5ce <___udivmoddi4+0x5ce>
 2f0:	b280           	cmpl %d0,%d1
 2f2:	6400 02da      	bccw 5ce <___udivmoddi4+0x5ce>
 2f6:	5583           	subql #2,%d3
 2f8:	d285           	addl %d5,%d1
 2fa:	282e fffc      	movel %fp@(-4),%d4
 2fe:	4844           	swap %d4
 300:	4244           	clrw %d4
 302:	8684           	orl %d4,%d3
 304:	9280           	subl %d0,%d1
 306:	6000 fe2a      	braw 132 <___udivmoddi4+0x132>
 30a:	0c85 00ff ffff 	cmpil #16777215,%d5
 310:	6200 0322      	bhiw 634 <___udivmoddi4+0x634>
 314:	7010           	moveq #16,%d0
 316:	327c 0010      	moveaw #16,%a1
 31a:	2805           	movel %d5,%d4
 31c:	e0ac           	lsrl %d0,%d4
 31e:	41f9 0000 0000 	lea 0 <___udivmoddi4>,%a0
 324:	7000           	moveq #0,%d0
 326:	1030 4800      	moveb %a0@(00000000,%d4:l),%d0
 32a:	d089           	addl %a1,%d0
 32c:	7c20           	moveq #32,%d6
 32e:	9c80           	subl %d0,%d6
 330:	6700 fefe      	beqw 230 <___udivmoddi4+0x230>
 334:	edad           	lsll %d6,%d5
 336:	2401           	movel %d1,%d2
 338:	e0aa           	lsrl %d0,%d2
 33a:	2842           	moveal %d2,%a4
 33c:	2e01           	movel %d1,%d7
 33e:	edaf           	lsll %d6,%d7
 340:	2203           	movel %d3,%d1
 342:	e0a9           	lsrl %d0,%d1
 344:	8e81           	orl %d1,%d7
 346:	2403           	movel %d3,%d2
 348:	edaa           	lsll %d6,%d2
 34a:	2605           	movel %d5,%d3
 34c:	4243           	clrw %d3
 34e:	4843           	swap %d3
 350:	2805           	movel %d5,%d4
 352:	0284 0000 ffff 	andil #65535,%d4
 358:	4bf9 0000 0000 	lea 0 <___udivmoddi4>,%a5
 35e:	2f03           	movel %d3,%sp@-
 360:	2f0c           	movel %a4,%sp@-
 362:	4e95           	jsr %a5@
 364:	508f           	addql #8,%sp
 366:	2f03           	movel %d3,%sp@-
 368:	2f0c           	movel %a4,%sp@-
 36a:	2d40 ffe8      	movel %d0,%fp@(-24)
 36e:	4e93           	jsr %a3@
 370:	508f           	addql #8,%sp
 372:	2d40 fffc      	movel %d0,%fp@(-4)
 376:	49f9 0000 0000 	lea 0 <___udivmoddi4>,%a4
 37c:	2f04           	movel %d4,%sp@-
 37e:	2f00           	movel %d0,%sp@-
 380:	4e94           	jsr %a4@
 382:	508f           	addql #8,%sp
 384:	2240           	moveal %d0,%a1
 386:	222e ffe8      	movel %fp@(-24),%d1
 38a:	4841           	swap %d1
 38c:	4241           	clrw %d1
 38e:	2007           	movel %d7,%d0
 390:	4240           	clrw %d0
 392:	4840           	swap %d0
 394:	8280           	orl %d0,%d1
 396:	b289           	cmpl %a1,%d1
 398:	641a           	bccs 3b4 <___udivmoddi4+0x3b4>
 39a:	206e fffc      	moveal %fp@(-4),%a0
 39e:	5388           	subql #1,%a0
 3a0:	d285           	addl %d5,%d1
 3a2:	b285           	cmpl %d5,%d1
 3a4:	6500 02c2      	bcsw 668 <___udivmoddi4+0x668>
 3a8:	b289           	cmpl %a1,%d1
 3aa:	6400 02bc      	bccw 668 <___udivmoddi4+0x668>
 3ae:	55ae fffc      	subql #2,%fp@(-4)
 3b2:	d285           	addl %d5,%d1
 3b4:	9289           	subl %a1,%d1
 3b6:	2f03           	movel %d3,%sp@-
 3b8:	2f01           	movel %d1,%sp@-
 3ba:	2d41 ffe8      	movel %d1,%fp@(-24)
 3be:	4e95           	jsr %a5@
 3c0:	508f           	addql #8,%sp
 3c2:	2d40 fff8      	movel %d0,%fp@(-8)
 3c6:	2f03           	movel %d3,%sp@-
 3c8:	222e ffe8      	movel %fp@(-24),%d1
 3cc:	2f01           	movel %d1,%sp@-
 3ce:	4e93           	jsr %a3@
 3d0:	508f           	addql #8,%sp
 3d2:	2f04           	movel %d4,%sp@-
 3d4:	2f00           	movel %d0,%sp@-
 3d6:	2d40 ffec      	movel %d0,%fp@(-20)
 3da:	4e94           	jsr %a4@
 3dc:	508f           	addql #8,%sp
 3de:	2d40 fff4      	movel %d0,%fp@(-12)
 3e2:	222e fff8      	movel %fp@(-8),%d1
 3e6:	4841           	swap %d1
 3e8:	4241           	clrw %d1
 3ea:	8247           	orw %d7,%d1
 3ec:	206e ffec      	moveal %fp@(-20),%a0
 3f0:	b280           	cmpl %d0,%d1
 3f2:	6416           	bccs 40a <___udivmoddi4+0x40a>
 3f4:	2e08           	movel %a0,%d7
 3f6:	5387           	subql #1,%d7
 3f8:	d285           	addl %d5,%d1
 3fa:	b285           	cmpl %d5,%d1
 3fc:	6500 024c      	bcsw 64a <___udivmoddi4+0x64a>
 400:	b280           	cmpl %d0,%d1
 402:	6400 0246      	bccw 64a <___udivmoddi4+0x64a>
 406:	5588           	subql #2,%a0
 408:	d285           	addl %d5,%d1
 40a:	2e2e fffc      	movel %fp@(-4),%d7
 40e:	4847           	swap %d7
 410:	4247           	clrw %d7
 412:	2008           	movel %a0,%d0
 414:	8e80           	orl %d0,%d7
 416:	2247           	moveal %d7,%a1
 418:	92ae fff4      	subl %fp@(-12),%d1
 41c:	6000 fe32      	braw 250 <___udivmoddi4+0x250>
 420:	0c80 00ff ffff 	cmpil #16777215,%d0
 426:	6200 01ea      	bhiw 612 <___udivmoddi4+0x612>
 42a:	307c 0010      	moveaw #16,%a0
 42e:	367c 0010      	moveaw #16,%a3
 432:	6000 fc12      	braw 46 <___udivmoddi4+0x46>
 436:	0c86 00ff ffff 	cmpil #16777215,%d6
 43c:	6200 01e0      	bhiw 61e <___udivmoddi4+0x61e>
 440:	307c 0010      	moveaw #16,%a0
 444:	367c 0010      	moveaw #16,%a3
 448:	2a06           	movel %d6,%d5
 44a:	2e08           	movel %a0,%d7
 44c:	eead           	lsrl %d7,%d5
 44e:	2245           	moveal %d5,%a1
 450:	41f9 0000 0000 	lea 0 <___udivmoddi4>,%a0
 456:	7a00           	moveq #0,%d5
 458:	1a30 9800      	moveb %a0@(00000000,%a1:l),%d5
 45c:	2e0b           	movel %a3,%d7
 45e:	de85           	addl %d5,%d7
 460:	7a20           	moveq #32,%d5
 462:	9a87           	subl %d7,%d5
 464:	6700 fd46      	beqw 1ac <___udivmoddi4+0x1ac>
 468:	ebae           	lsll %d5,%d6
 46a:	2400           	movel %d0,%d2
 46c:	eeaa           	lsrl %d7,%d2
 46e:	8c82           	orl %d2,%d6
 470:	eba8           	lsll %d5,%d0
 472:	2d40 fffc      	movel %d0,%fp@(-4)
 476:	2801           	movel %d1,%d4
 478:	eeac           	lsrl %d7,%d4
 47a:	2401           	movel %d1,%d2
 47c:	ebaa           	lsll %d5,%d2
 47e:	2003           	movel %d3,%d0
 480:	eea8           	lsrl %d7,%d0
 482:	8480           	orl %d0,%d2
 484:	ebab           	lsll %d5,%d3
 486:	2d43 fff4      	movel %d3,%fp@(-12)
 48a:	2606           	movel %d6,%d3
 48c:	4243           	clrw %d3
 48e:	4843           	swap %d3
 490:	2206           	movel %d6,%d1
 492:	0281 0000 ffff 	andil #65535,%d1
 498:	2d41 fff8      	movel %d1,%fp@(-8)
 49c:	4bf9 0000 0000 	lea 0 <___udivmoddi4>,%a5
 4a2:	2f03           	movel %d3,%sp@-
 4a4:	2f04           	movel %d4,%sp@-
 4a6:	4e95           	jsr %a5@
 4a8:	508f           	addql #8,%sp
 4aa:	47f9 0000 0000 	lea 0 <___udivmoddi4>,%a3
 4b0:	2f03           	movel %d3,%sp@-
 4b2:	2f04           	movel %d4,%sp@-
 4b4:	2d40 ffe8      	movel %d0,%fp@(-24)
 4b8:	4e93           	jsr %a3@
 4ba:	508f           	addql #8,%sp
 4bc:	2800           	movel %d0,%d4
 4be:	49f9 0000 0000 	lea 0 <___udivmoddi4>,%a4
 4c4:	2f2e fff8      	movel %fp@(-8),%sp@-
 4c8:	2f00           	movel %d0,%sp@-
 4ca:	4e94           	jsr %a4@
 4cc:	508f           	addql #8,%sp
 4ce:	2240           	moveal %d0,%a1
 4d0:	222e ffe8      	movel %fp@(-24),%d1
 4d4:	4841           	swap %d1
 4d6:	4241           	clrw %d1
 4d8:	2002           	movel %d2,%d0
 4da:	4240           	clrw %d0
 4dc:	4840           	swap %d0
 4de:	8280           	orl %d0,%d1
 4e0:	b289           	cmpl %a1,%d1
 4e2:	6416           	bccs 4fa <___udivmoddi4+0x4fa>
 4e4:	2044           	moveal %d4,%a0
 4e6:	5388           	subql #1,%a0
 4e8:	d286           	addl %d6,%d1
 4ea:	b286           	cmpl %d6,%d1
 4ec:	6500 0182      	bcsw 670 <___udivmoddi4+0x670>
 4f0:	b289           	cmpl %a1,%d1
 4f2:	6400 017c      	bccw 670 <___udivmoddi4+0x670>
 4f6:	5584           	subql #2,%d4
 4f8:	d286           	addl %d6,%d1
 4fa:	9289           	subl %a1,%d1
 4fc:	2f03           	movel %d3,%sp@-
 4fe:	2f01           	movel %d1,%sp@-
 500:	2d41 ffe8      	movel %d1,%fp@(-24)
 504:	4e95           	jsr %a5@
 506:	508f           	addql #8,%sp
 508:	2a40           	moveal %d0,%a5
 50a:	2f03           	movel %d3,%sp@-
 50c:	222e ffe8      	movel %fp@(-24),%d1
 510:	2f01           	movel %d1,%sp@-
 512:	4e93           	jsr %a3@
 514:	508f           	addql #8,%sp
 516:	2600           	movel %d0,%d3
 518:	2f2e fff8      	movel %fp@(-8),%sp@-
 51c:	2f00           	movel %d0,%sp@-
 51e:	4e94           	jsr %a4@
 520:	508f           	addql #8,%sp
 522:	220d           	movel %a5,%d1
 524:	4841           	swap %d1
 526:	4241           	clrw %d1
 528:	8242           	orw %d2,%d1
 52a:	b280           	cmpl %d0,%d1
 52c:	6416           	bccs 544 <___udivmoddi4+0x544>
 52e:	2403           	movel %d3,%d2
 530:	5382           	subql #1,%d2
 532:	d286           	addl %d6,%d1
 534:	b286           	cmpl %d6,%d1
 536:	6500 012a      	bcsw 662 <___udivmoddi4+0x662>
 53a:	b280           	cmpl %d0,%d1
 53c:	6400 0124      	bccw 662 <___udivmoddi4+0x662>
 540:	5583           	subql #2,%d3
 542:	d286           	addl %d6,%d1
 544:	2241           	moveal %d1,%a1
 546:	93c0           	subal %d0,%a1
 548:	4844           	swap %d4
 54a:	4244           	clrw %d4
 54c:	8684           	orl %d4,%d3
 54e:	2043           	moveal %d3,%a0
 550:	2008           	movel %a0,%d0
 552:	222e fffc      	movel %fp@(-4),%d1
 556:	2400           	movel %d0,%d2
 558:	4840           	swap %d0
 55a:	2601           	movel %d1,%d3
 55c:	4841           	swap %d1
 55e:	3802           	movew %d2,%d4
 560:	c8c3           	muluw %d3,%d4
 562:	c4c1           	muluw %d1,%d2
 564:	c6c0           	muluw %d0,%d3
 566:	c2c0           	muluw %d0,%d1
 568:	2004           	movel %d4,%d0
 56a:	b140           	eorw %d0,%d0
 56c:	4840           	swap %d0
 56e:	d480           	addl %d0,%d2
 570:	d483           	addl %d3,%d2
 572:	6406           	bccs 57a <___udivmoddi4+0x57a>
 574:	0681 0001 0000 	addil #65536,%d1
 57a:	4842           	swap %d2
 57c:	7000           	moveq #0,%d0
 57e:	3002           	movew %d2,%d0
 580:	3404           	movew %d4,%d2
 582:	2842           	moveal %d2,%a4
 584:	d081           	addl %d1,%d0
 586:	2640           	moveal %d0,%a3
 588:	200b           	movel %a3,%d0
 58a:	240c           	movel %a4,%d2
 58c:	b7c9           	cmpal %a1,%a3
 58e:	6268           	bhis 5f8 <___udivmoddi4+0x5f8>
 590:	6700 00ea      	beqw 67c <___udivmoddi4+0x67c>
 594:	b4fc 0000      	cmpaw #0,%a2
 598:	6700 0102      	beqw 69c <___udivmoddi4+0x69c>
 59c:	2209           	movel %a1,%d1
 59e:	262e fff4      	movel %fp@(-12),%d3
 5a2:	9682           	subl %d2,%d3
 5a4:	9380           	subxl %d0,%d1
 5a6:	eaab           	lsrl %d5,%d3
 5a8:	2001           	movel %d1,%d0
 5aa:	efa8           	lsll %d7,%d0
 5ac:	eaa9           	lsrl %d5,%d1
 5ae:	2481           	movel %d1,%a2@
 5b0:	8680           	orl %d0,%d3
 5b2:	2543 0004      	movel %d3,%a2@(4)
 5b6:	93c9           	subal %a1,%a1
 5b8:	2009           	movel %a1,%d0
 5ba:	2208           	movel %a0,%d1
 5bc:	4cee 3cfc ffc0 	moveml %fp@(-64),%d2-%d7/%a2-%a5
 5c2:	4e5e           	unlk %fp
 5c4:	4e75           	rts
 5c6:	2d48 fffc      	movel %a0,%fp@(-4)
 5ca:	6000 fcde      	braw 2aa <___udivmoddi4+0x2aa>
 5ce:	2602           	movel %d2,%d3
 5d0:	282e fffc      	movel %fp@(-4),%d4
 5d4:	4844           	swap %d4
 5d6:	4244           	clrw %d4
 5d8:	8684           	orl %d4,%d3
 5da:	9280           	subl %d0,%d1
 5dc:	6000 fb54      	braw 132 <___udivmoddi4+0x132>
 5e0:	2e01           	movel %d1,%d7
 5e2:	6000 fb00      	braw e4 <___udivmoddi4+0xe4>
 5e6:	2802           	movel %d2,%d4
 5e8:	2607           	movel %d7,%d3
 5ea:	4843           	swap %d3
 5ec:	4243           	clrw %d3
 5ee:	8684           	orl %d4,%d3
 5f0:	9280           	subl %d0,%d1
 5f2:	93c9           	subal %a1,%a1
 5f4:	6000 fb3c      	braw 132 <___udivmoddi4+0x132>
 5f8:	5388           	subql #1,%a0
 5fa:	200b           	movel %a3,%d0
 5fc:	240c           	movel %a4,%d2
 5fe:	94ae fffc      	subl %fp@(-4),%d2
 602:	9186           	subxl %d6,%d0
 604:	608e           	bras 594 <___udivmoddi4+0x594>
 606:	307c 0008      	moveaw #8,%a0
 60a:	367c 0008      	moveaw #8,%a3
 60e:	6000 fa36      	braw 46 <___udivmoddi4+0x46>
 612:	307c 0018      	moveaw #24,%a0
 616:	367c 0018      	moveaw #24,%a3
 61a:	6000 fa2a      	braw 46 <___udivmoddi4+0x46>
 61e:	307c 0018      	moveaw #24,%a0
 622:	367c 0018      	moveaw #24,%a3
 626:	6000 fb64      	braw 18c <___udivmoddi4+0x18c>
 62a:	7008           	moveq #8,%d0
 62c:	327c 0008      	moveaw #8,%a1
 630:	6000 fbe4      	braw 216 <___udivmoddi4+0x216>
 634:	7018           	moveq #24,%d0
 636:	327c 0018      	moveaw #24,%a1
 63a:	6000 fbda      	braw 216 <___udivmoddi4+0x216>
 63e:	307c 0008      	moveaw #8,%a0
 642:	367c 0008      	moveaw #8,%a3
 646:	6000 fb44      	braw 18c <___udivmoddi4+0x18c>
 64a:	2047           	moveal %d7,%a0
 64c:	2e2e fffc      	movel %fp@(-4),%d7
 650:	4847           	swap %d7
 652:	4247           	clrw %d7
 654:	2008           	movel %a0,%d0
 656:	8e80           	orl %d0,%d7
 658:	2247           	moveal %d7,%a1
 65a:	92ae fff4      	subl %fp@(-12),%d1
 65e:	6000 fbf0      	braw 250 <___udivmoddi4+0x250>
 662:	2602           	movel %d2,%d3
 664:	6000 fede      	braw 544 <___udivmoddi4+0x544>
 668:	2d48 fffc      	movel %a0,%fp@(-4)
 66c:	6000 fd46      	braw 3b4 <___udivmoddi4+0x3b4>
 670:	2808           	movel %a0,%d4
 672:	6000 fe86      	braw 4fa <___udivmoddi4+0x4fa>
 676:	91c8           	subal %a0,%a0
 678:	6000 fb48      	braw 1c2 <___udivmoddi4+0x1c2>
 67c:	b9ee fff4      	cmpal %fp@(-12),%a4
 680:	6200 ff76      	bhiw 5f8 <___udivmoddi4+0x5f8>
 684:	2009           	movel %a1,%d0
 686:	6000 ff0c      	braw 594 <___udivmoddi4+0x594>
 68a:	91c8           	subal %a0,%a0
 68c:	93c9           	subal %a1,%a1
 68e:	2009           	movel %a1,%d0
 690:	2208           	movel %a0,%d1
 692:	4cee 3cfc ffc0 	moveml %fp@(-64),%d2-%d7/%a2-%a5
 698:	4e5e           	unlk %fp
 69a:	4e75           	rts
 69c:	93c9           	subal %a1,%a1
 69e:	2009           	movel %a1,%d0
 6a0:	2208           	movel %a0,%d1
 6a2:	4cee 3cfc ffc0 	moveml %fp@(-64),%d2-%d7/%a2-%a5
 6a8:	4e5e           	unlk %fp
 6aa:	4e75           	rts

fpgnulib.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___unordsf2>:
   0:	202f 0004      	movel %sp@(4),%d0
   4:	2200           	movel %d0,%d1
   6:	4841           	swap %d1
   8:	ee41           	asrw #7,%d1
   a:	48c1           	extl %d1
   c:	0c01 ffff      	cmpib #-1,%d1
  10:	6716           	beqs 28 <___unordsf2+0x28>
  12:	202f 0008      	movel %sp@(8),%d0
  16:	2200           	movel %d0,%d1
  18:	4841           	swap %d1
  1a:	ee41           	asrw #7,%d1
  1c:	48c1           	extl %d1
  1e:	0c01 ffff      	cmpib #-1,%d1
  22:	6710           	beqs 34 <___unordsf2+0x34>
  24:	7000           	moveq #0,%d0
  26:	4e75           	rts
  28:	0280 007f ffff 	andil #8388607,%d0
  2e:	67e2           	beqs 12 <___unordsf2+0x12>
  30:	7001           	moveq #1,%d0
  32:	4e75           	rts
  34:	0280 007f ffff 	andil #8388607,%d0
  3a:	56c0           	sne %d0
  3c:	4880           	extw %d0
  3e:	48c0           	extl %d0
  40:	4480           	negl %d0
  42:	4e75           	rts

00000044 <___unorddf2>:
  44:	2f02           	movel %d2,%sp@-
  46:	242f 0010      	movel %sp@(16),%d2
  4a:	226f 0014      	moveal %sp@(20),%a1
  4e:	202f 0008      	movel %sp@(8),%d0
  52:	206f 000c      	moveal %sp@(12),%a0
  56:	2200           	movel %d0,%d1
  58:	4841           	swap %d1
  5a:	e841           	asrw #4,%d1
  5c:	48c1           	extl %d1
  5e:	0281 0000 07ff 	andil #2047,%d1
  64:	0c81 0000 07ff 	cmpil #2047,%d1
  6a:	671e           	beqs 8a <___unorddf2+0x46>
  6c:	2002           	movel %d2,%d0
  6e:	2202           	movel %d2,%d1
  70:	4841           	swap %d1
  72:	e841           	asrw #4,%d1
  74:	48c1           	extl %d1
  76:	0281 0000 07ff 	andil #2047,%d1
  7c:	0c81 0000 07ff 	cmpil #2047,%d1
  82:	671a           	beqs 9e <___unorddf2+0x5a>
  84:	7000           	moveq #0,%d0
  86:	241f           	movel %sp@+,%d2
  88:	4e75           	rts
  8a:	0280 000f ffff 	andil #1048575,%d0
  90:	6606           	bnes 98 <___unorddf2+0x54>
  92:	b0fc 0000      	cmpaw #0,%a0
  96:	67d4           	beqs 6c <___unorddf2+0x28>
  98:	7001           	moveq #1,%d0
  9a:	241f           	movel %sp@+,%d2
  9c:	4e75           	rts
  9e:	0280 000f ffff 	andil #1048575,%d0
  a4:	66f2           	bnes 98 <___unorddf2+0x54>
  a6:	b2fc 0000      	cmpaw #0,%a1
  aa:	56c0           	sne %d0
  ac:	4880           	extw %d0
  ae:	48c0           	extl %d0
  b0:	4480           	negl %d0
  b2:	241f           	movel %sp@+,%d2
  b4:	4e75           	rts

000000b6 <___floatunsidf>:
  b6:	2f03           	movel %d3,%sp@-
  b8:	2f02           	movel %d2,%sp@-
  ba:	202f 000c      	movel %sp@(12),%d0
  be:	674a           	beqs 10a <___floatunsidf+0x54>
  c0:	223c 0000 041e 	movel #1054,%d1
  c6:	0c80 01ff ffff 	cmpil #33554431,%d0
  cc:	620c           	bhis da <___floatunsidf+0x24>
  ce:	e988           	lsll #4,%d0
  d0:	5981           	subql #4,%d1
  d2:	0c80 01ff ffff 	cmpil #33554431,%d0
  d8:	63f4           	blss ce <___floatunsidf+0x18>
  da:	4a80           	tstl %d0
  dc:	6d08           	blts e6 <___floatunsidf+0x30>
  de:	d080           	addl %d0,%d0
  e0:	5381           	subql #1,%d1
  e2:	4a80           	tstl %d0
  e4:	6cf8           	bges de <___floatunsidf+0x28>
  e6:	2400           	movel %d0,%d2
  e8:	760b           	moveq #11,%d3
  ea:	e6aa           	lsrl %d3,%d2
  ec:	0882 0014      	bclr #20,%d2
  f0:	e949           	lslw #4,%d1
  f2:	4841           	swap %d1
  f4:	4241           	clrw %d1
  f6:	8481           	orl %d1,%d2
  f8:	eb48           	lslw #5,%d0
  fa:	4840           	swap %d0
  fc:	4240           	clrw %d0
  fe:	2040           	moveal %d0,%a0
 100:	2002           	movel %d2,%d0
 102:	2208           	movel %a0,%d1
 104:	241f           	movel %sp@+,%d2
 106:	261f           	movel %sp@+,%d3
 108:	4e75           	rts
 10a:	7400           	moveq #0,%d2
 10c:	7000           	moveq #0,%d0
 10e:	2040           	moveal %d0,%a0
 110:	2002           	movel %d2,%d0
 112:	2208           	movel %a0,%d1
 114:	241f           	movel %sp@+,%d2
 116:	261f           	movel %sp@+,%d3
 118:	4e75           	rts

0000011a <___floatsidf>:
 11a:	2f03           	movel %d3,%sp@-
 11c:	2f02           	movel %d2,%sp@-
 11e:	202f 000c      	movel %sp@(12),%d0
 122:	6758           	beqs 17c <___floatsidf+0x62>
 124:	6d64           	blts 18a <___floatsidf+0x70>
 126:	7400           	moveq #0,%d2
 128:	223c 0000 041d 	movel #1053,%d1
 12e:	0c80 00ff ffff 	cmpil #16777215,%d0
 134:	6e0c           	bgts 142 <___floatsidf+0x28>
 136:	e988           	lsll #4,%d0
 138:	5981           	subql #4,%d1
 13a:	0c80 00ff ffff 	cmpil #16777215,%d0
 140:	6ff4           	bles 136 <___floatsidf+0x1c>
 142:	0c80 3fff ffff 	cmpil #1073741823,%d0
 148:	6e0c           	bgts 156 <___floatsidf+0x3c>
 14a:	d080           	addl %d0,%d0
 14c:	5381           	subql #1,%d1
 14e:	0c80 3fff ffff 	cmpil #1073741823,%d0
 154:	6ff4           	bles 14a <___floatsidf+0x30>
 156:	e949           	lslw #4,%d1
 158:	4841           	swap %d1
 15a:	4241           	clrw %d1
 15c:	8282           	orl %d2,%d1
 15e:	2400           	movel %d0,%d2
 160:	760a           	moveq #10,%d3
 162:	e6a2           	asrl %d3,%d2
 164:	0882 0014      	bclr #20,%d2
 168:	8282           	orl %d2,%d1
 16a:	ed48           	lslw #6,%d0
 16c:	4840           	swap %d0
 16e:	4240           	clrw %d0
 170:	2040           	moveal %d0,%a0
 172:	2001           	movel %d1,%d0
 174:	2208           	movel %a0,%d1
 176:	241f           	movel %sp@+,%d2
 178:	261f           	movel %sp@+,%d3
 17a:	4e75           	rts
 17c:	7200           	moveq #0,%d1
 17e:	2040           	moveal %d0,%a0
 180:	2001           	movel %d1,%d0
 182:	2208           	movel %a0,%d1
 184:	241f           	movel %sp@+,%d2
 186:	261f           	movel %sp@+,%d3
 188:	4e75           	rts
 18a:	4480           	negl %d0
 18c:	243c 8000 0000 	movel #-2147483648,%d2
 192:	4a80           	tstl %d0
 194:	6c92           	bges 128 <___floatsidf+0xe>
 196:	223c c1e0 0000 	movel #-1042284544,%d1
 19c:	7000           	moveq #0,%d0
 19e:	2040           	moveal %d0,%a0
 1a0:	2001           	movel %d1,%d0
 1a2:	2208           	movel %a0,%d1
 1a4:	241f           	movel %sp@+,%d2
 1a6:	261f           	movel %sp@+,%d3
 1a8:	4e75           	rts

000001aa <___floatunsisf>:
 1aa:	2f2f 0004      	movel %sp@(4),%sp@-
 1ae:	4eba ff06      	jsr %pc@(b6 <___floatunsidf>)
 1b2:	2e81           	movel %d1,%sp@
 1b4:	2f00           	movel %d0,%sp@-
 1b6:	4eba 0092      	jsr %pc@(24a <___truncdfsf2>)
 1ba:	508f           	addql #8,%sp
 1bc:	4e75           	rts

000001be <___floatsisf>:
 1be:	2f2f 0004      	movel %sp@(4),%sp@-
 1c2:	4eba ff56      	jsr %pc@(11a <___floatsidf>)
 1c6:	2e81           	movel %d1,%sp@
 1c8:	2f00           	movel %d0,%sp@-
 1ca:	4eba 007e      	jsr %pc@(24a <___truncdfsf2>)
 1ce:	508f           	addql #8,%sp
 1d0:	4e75           	rts

000001d2 <___extendsfdf2>:
 1d2:	2f03           	movel %d3,%sp@-
 1d4:	2f02           	movel %d2,%sp@-
 1d6:	202f 000c      	movel %sp@(12),%d0
 1da:	2600           	movel %d0,%d3
 1dc:	0283 8000 0000 	andil #-2147483648,%d3
 1e2:	2200           	movel %d0,%d1
 1e4:	0881 001f      	bclr #31,%d1
 1e8:	4a81           	tstl %d1
 1ea:	674e           	beqs 23a <___extendsfdf2+0x68>
 1ec:	2200           	movel %d0,%d1
 1ee:	4841           	swap %d1
 1f0:	ee41           	asrw #7,%d1
 1f2:	48c1           	extl %d1
 1f4:	7400           	moveq #0,%d2
 1f6:	4602           	notb %d2
 1f8:	c282           	andl %d2,%d1
 1fa:	0280 007f ffff 	andil #8388607,%d0
 200:	4a81           	tstl %d1
 202:	6612           	bnes 216 <___extendsfdf2+0x44>
 204:	123c 0001      	moveb #1,%d1
 208:	d080           	addl %d0,%d0
 20a:	5381           	subql #1,%d1
 20c:	0800 0017      	btst #23,%d0
 210:	67f6           	beqs 208 <___extendsfdf2+0x36>
 212:	0880 0017      	bclr #23,%d0
 216:	2400           	movel %d0,%d2
 218:	e682           	asrl #3,%d2
 21a:	8483           	orl %d3,%d2
 21c:	0681 0000 0380 	addil #896,%d1
 222:	e949           	lslw #4,%d1
 224:	4841           	swap %d1
 226:	4241           	clrw %d1
 228:	8481           	orl %d1,%d2
 22a:	721d           	moveq #29,%d1
 22c:	e3a8           	lsll %d1,%d0
 22e:	2040           	moveal %d0,%a0
 230:	2002           	movel %d2,%d0
 232:	2208           	movel %a0,%d1
 234:	241f           	movel %sp@+,%d2
 236:	261f           	movel %sp@+,%d3
 238:	4e75           	rts
 23a:	2403           	movel %d3,%d2
 23c:	7000           	moveq #0,%d0
 23e:	2040           	moveal %d0,%a0
 240:	2002           	movel %d2,%d0
 242:	2208           	movel %a0,%d1
 244:	241f           	movel %sp@+,%d2
 246:	261f           	movel %sp@+,%d3
 248:	4e75           	rts

0000024a <___truncdfsf2>:
 24a:	48e7 3e00      	moveml %d2-%d6,%sp@-
 24e:	202f 0018      	movel %sp@(24),%d0
 252:	242f 001c      	movel %sp@(28),%d2
 256:	2600           	movel %d0,%d3
 258:	2200           	movel %d0,%d1
 25a:	2800           	movel %d0,%d4
 25c:	0884 001f      	bclr #31,%d4
 260:	4a84           	tstl %d4
 262:	6606           	bnes 26a <___truncdfsf2+0x20>
 264:	4a82           	tstl %d2
 266:	6700 00bc      	beqw 324 <___truncdfsf2+0xda>
 26a:	2601           	movel %d1,%d3
 26c:	4843           	swap %d3
 26e:	e843           	asrw #4,%d3
 270:	48c3           	extl %d3
 272:	0283 0000 07ff 	andil #2047,%d3
 278:	2803           	movel %d3,%d4
 27a:	0684 ffff fc80 	addil #-896,%d4
 280:	2a02           	movel %d2,%d5
 282:	0285 003f ffff 	andil #4194303,%d5
 288:	4242           	clrw %d2
 28a:	4842           	swap %d2
 28c:	ec4a           	lsrw #6,%d2
 28e:	0281 000f ffff 	andil #1048575,%d1
 294:	08c1 0014      	bset #20,%d1
 298:	7c0a           	moveq #10,%d6
 29a:	eda9           	lsll %d6,%d1
 29c:	8481           	orl %d1,%d2
 29e:	723f           	moveq #63,%d1
 2a0:	c282           	andl %d2,%d1
 2a2:	8285           	orl %d5,%d1
 2a4:	ec82           	asrl #6,%d2
 2a6:	4a84           	tstl %d4
 2a8:	6f62           	bles 30c <___truncdfsf2+0xc2>
 2aa:	0802 0000      	btst #0,%d2
 2ae:	673e           	beqs 2ee <___truncdfsf2+0xa4>
 2b0:	4a81           	tstl %d1
 2b2:	6606           	bnes 2ba <___truncdfsf2+0x70>
 2b4:	0802 0001      	btst #1,%d2
 2b8:	6734           	beqs 2ee <___truncdfsf2+0xa4>
 2ba:	4a84           	tstl %d4
 2bc:	6774           	beqs 332 <___truncdfsf2+0xe8>
 2be:	207c 0200 0000 	moveal #33554432,%a0
 2c4:	7602           	moveq #2,%d3
 2c6:	2202           	movel %d2,%d1
 2c8:	5281           	addql #1,%d1
 2ca:	b1c1           	cmpal %d1,%a0
 2cc:	6f74           	bles 342 <___truncdfsf2+0xf8>
 2ce:	e281           	asrl #1,%d1
 2d0:	2404           	movel %d4,%d2
 2d2:	ef4a           	lslw #7,%d2
 2d4:	4842           	swap %d2
 2d6:	4242           	clrw %d2
 2d8:	0881 0017      	bclr #23,%d1
 2dc:	8481           	orl %d1,%d2
 2de:	0280 8000 0000 	andil #-2147483648,%d0
 2e4:	8480           	orl %d0,%d2
 2e6:	2002           	movel %d2,%d0
 2e8:	4cdf 007c      	moveml %sp@+,%d2-%d6
 2ec:	4e75           	rts
 2ee:	2202           	movel %d2,%d1
 2f0:	e281           	asrl #1,%d1
 2f2:	2404           	movel %d4,%d2
 2f4:	ef4a           	lslw #7,%d2
 2f6:	4842           	swap %d2
 2f8:	4242           	clrw %d2
 2fa:	0881 0017      	bclr #23,%d1
 2fe:	8481           	orl %d1,%d2
 300:	0280 8000 0000 	andil #-2147483648,%d0
 306:	8480           	orl %d0,%d2
 308:	2002           	movel %d2,%d0
 30a:	60dc           	bras 2e8 <___truncdfsf2+0x9e>
 30c:	7ae8           	moveq #-24,%d5
 30e:	ba84           	cmpl %d4,%d5
 310:	6f4e           	bles 360 <___truncdfsf2+0x116>
 312:	7200           	moveq #0,%d1
 314:	7400           	moveq #0,%d2
 316:	8481           	orl %d1,%d2
 318:	0280 8000 0000 	andil #-2147483648,%d0
 31e:	8480           	orl %d0,%d2
 320:	2002           	movel %d2,%d0
 322:	60c4           	bras 2e8 <___truncdfsf2+0x9e>
 324:	0283 8000 0000 	andil #-2147483648,%d3
 32a:	2003           	movel %d3,%d0
 32c:	4cdf 007c      	moveml %sp@+,%d2-%d6
 330:	4e75           	rts
 332:	207c 0100 0000 	moveal #16777216,%a0
 338:	7601           	moveq #1,%d3
 33a:	2202           	movel %d2,%d1
 33c:	5281           	addql #1,%d1
 33e:	b1c1           	cmpal %d1,%a0
 340:	6e8c           	bgts 2ce <___truncdfsf2+0x84>
 342:	e6a1           	asrl %d3,%d1
 344:	2404           	movel %d4,%d2
 346:	5282           	addql #1,%d2
 348:	ef4a           	lslw #7,%d2
 34a:	4842           	swap %d2
 34c:	4242           	clrw %d2
 34e:	0881 0017      	bclr #23,%d1
 352:	8481           	orl %d1,%d2
 354:	0280 8000 0000 	andil #-2147483648,%d0
 35a:	8480           	orl %d0,%d2
 35c:	2002           	movel %d2,%d0
 35e:	6088           	bras 2e8 <___truncdfsf2+0x9e>
 360:	3c3c 0381      	movew #897,%d6
 364:	9c83           	subl %d3,%d6
 366:	7801           	moveq #1,%d4
 368:	edac           	lsll %d6,%d4
 36a:	5384           	subql #1,%d4
 36c:	c882           	andl %d2,%d4
 36e:	8284           	orl %d4,%d1
 370:	eca2           	asrl %d6,%d2
 372:	7800           	moveq #0,%d4
 374:	0802 0000      	btst #0,%d2
 378:	6600 ff36      	bnew 2b0 <___truncdfsf2+0x66>
 37c:	6000 ff70      	braw 2ee <___truncdfsf2+0xa4>

00000380 <___fixdfsi>:
 380:	2f02           	movel %d2,%sp@-
 382:	202f 0008      	movel %sp@(8),%d0
 386:	2200           	movel %d0,%d1
 388:	226f 000c      	moveal %sp@(12),%a1
 38c:	2040           	moveal %d0,%a0
 38e:	6726           	beqs 3b6 <___fixdfsi+0x36>
 390:	2400           	movel %d0,%d2
 392:	4842           	swap %d2
 394:	e842           	asrw #4,%d2
 396:	48c2           	extl %d2
 398:	0282 0000 07ff 	andil #2047,%d2
 39e:	0682 ffff fbe3 	addil #-1053,%d2
 3a4:	4a82           	tstl %d2
 3a6:	6f1e           	bles 3c6 <___fixdfsi+0x46>
 3a8:	203c 7fff ffff 	movel #2147483647,%d0
 3ae:	4a81           	tstl %d1
 3b0:	6d0a           	blts 3bc <___fixdfsi+0x3c>
 3b2:	241f           	movel %sp@+,%d2
 3b4:	4e75           	rts
 3b6:	7000           	moveq #0,%d0
 3b8:	241f           	movel %sp@+,%d2
 3ba:	4e75           	rts
 3bc:	203c 8000 0000 	movel #-2147483648,%d0
 3c2:	241f           	movel %sp@+,%d2
 3c4:	4e75           	rts
 3c6:	0280 000f ffff 	andil #1048575,%d0
 3cc:	08c0 0014      	bset #20,%d0
 3d0:	720a           	moveq #10,%d1
 3d2:	e3a8           	lsll %d1,%d0
 3d4:	2209           	movel %a1,%d1
 3d6:	4241           	clrw %d1
 3d8:	4841           	swap %d1
 3da:	ec49           	lsrw #6,%d1
 3dc:	8081           	orl %d1,%d0
 3de:	72e1           	moveq #-31,%d1
 3e0:	b282           	cmpl %d2,%d1
 3e2:	6ed2           	bgts 3b6 <___fixdfsi+0x36>
 3e4:	4a82           	tstl %d2
 3e6:	660c           	bnes 3f4 <___fixdfsi+0x74>
 3e8:	b0fc 0000      	cmpaw #0,%a0
 3ec:	6cc4           	bges 3b2 <___fixdfsi+0x32>
 3ee:	4480           	negl %d0
 3f0:	241f           	movel %sp@+,%d2
 3f2:	4e75           	rts
 3f4:	4482           	negl %d2
 3f6:	e4a0           	asrl %d2,%d0
 3f8:	60ee           	bras 3e8 <___fixdfsi+0x68>

000003fa <___fixsfsi>:
 3fa:	2f2f 0004      	movel %sp@(4),%sp@-
 3fe:	4eba fdd2      	jsr %pc@(1d2 <___extendsfdf2>)
 402:	2e81           	movel %d1,%sp@
 404:	2f00           	movel %d0,%sp@-
 406:	4eba ff78      	jsr %pc@(380 <___fixdfsi>)
 40a:	508f           	addql #8,%sp
 40c:	4e75           	rts
	...

xfgnulib.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___unordxf2>:
   0:	4fef fff4      	lea %sp@(-12),%sp
   4:	2eaf 0010      	movel %sp@(16),%sp@
   8:	2f6f 0014 0004 	movel %sp@(20),%sp@(4)
   e:	2f6f 0018 0008 	movel %sp@(24),%sp@(8)
  14:	3017           	movew %sp@,%d0
  16:	48c0           	extl %d0
  18:	0280 0000 7fff 	andil #32767,%d0
  1e:	0c80 0000 7fff 	cmpil #32767,%d0
  24:	672a           	beqs 50 <___unordxf2+0x50>
  26:	2eaf 001c      	movel %sp@(28),%sp@
  2a:	2f6f 0020 0004 	movel %sp@(32),%sp@(4)
  30:	2f6f 0024 0008 	movel %sp@(36),%sp@(8)
  36:	3017           	movew %sp@,%d0
  38:	48c0           	extl %d0
  3a:	0280 0000 7fff 	andil #32767,%d0
  40:	0c80 0000 7fff 	cmpil #32767,%d0
  46:	6722           	beqs 6a <___unordxf2+0x6a>
  48:	7000           	moveq #0,%d0
  4a:	4fef 000c      	lea %sp@(12),%sp
  4e:	4e75           	rts
  50:	202f 0004      	movel %sp@(4),%d0
  54:	0880 001f      	bclr #31,%d0
  58:	4a80           	tstl %d0
  5a:	6606           	bnes 62 <___unordxf2+0x62>
  5c:	4aaf 0008      	tstl %sp@(8)
  60:	67c4           	beqs 26 <___unordxf2+0x26>
  62:	7001           	moveq #1,%d0
  64:	4fef 000c      	lea %sp@(12),%sp
  68:	4e75           	rts
  6a:	202f 0004      	movel %sp@(4),%d0
  6e:	0880 001f      	bclr #31,%d0
  72:	4a80           	tstl %d0
  74:	66ec           	bnes 62 <___unordxf2+0x62>
  76:	4aaf 0008      	tstl %sp@(8)
  7a:	56c0           	sne %d0
  7c:	4880           	extw %d0
  7e:	48c0           	extl %d0
  80:	4480           	negl %d0
  82:	4fef 000c      	lea %sp@(12),%sp
  86:	4e75           	rts

00000088 <___extenddfxf2>:
  88:	4fef fff4      	lea %sp@(-12),%sp
  8c:	48e7 3800      	moveml %d2-%d4,%sp@-
  90:	2009           	movel %a1,%d0
  92:	222f 001c      	movel %sp@(28),%d1
  96:	206f 0020      	moveal %sp@(32),%a0
  9a:	2401           	movel %d1,%d2
  9c:	2601           	movel %d1,%d3
  9e:	0283 8000 0000 	andil #-2147483648,%d3
  a4:	2f43 000c      	movel %d3,%sp@(12)
  a8:	0882 001f      	bclr #31,%d2
  ac:	2808           	movel %a0,%d4
  ae:	4a82           	tstl %d2
  b0:	6606           	bnes b8 <___extenddfxf2+0x30>
  b2:	b0fc 0000      	cmpaw #0,%a0
  b6:	6764           	beqs 11c <___extenddfxf2+0x94>
  b8:	2401           	movel %d1,%d2
  ba:	4842           	swap %d2
  bc:	e842           	asrw #4,%d2
  be:	48c2           	extl %d2
  c0:	0282 0000 07ff 	andil #2047,%d2
  c6:	0682 0000 3c00 	addil #15360,%d2
  cc:	4842           	swap %d2
  ce:	4242           	clrw %d2
  d0:	8483           	orl %d3,%d2
  d2:	2f42 000c      	movel %d2,%sp@(12)
  d6:	0281 000f ffff 	andil #1048575,%d1
  dc:	740b           	moveq #11,%d2
  de:	e5a9           	lsll %d2,%d1
  e0:	08c1 001f      	bset #31,%d1
  e4:	2404           	movel %d4,%d2
  e6:	4242           	clrw %d2
  e8:	4842           	swap %d2
  ea:	ea4a           	lsrw #5,%d2
  ec:	8282           	orl %d2,%d1
  ee:	2f41 0010      	movel %d1,%sp@(16)
  f2:	760b           	moveq #11,%d3
  f4:	e7ac           	lsll %d3,%d4
  f6:	2f44 0014      	movel %d4,%sp@(20)
  fa:	222f 000c      	movel %sp@(12),%d1
  fe:	242f 0010      	movel %sp@(16),%d2
 102:	262f 0014      	movel %sp@(20),%d3
 106:	2040           	moveal %d0,%a0
 108:	2081           	movel %d1,%a0@
 10a:	2142 0004      	movel %d2,%a0@(4)
 10e:	2143 0008      	movel %d3,%a0@(8)
 112:	4cdf 001c      	moveml %sp@+,%d2-%d4
 116:	4fef 000c      	lea %sp@(12),%sp
 11a:	4e75           	rts
 11c:	42af 0010      	clrl %sp@(16)
 120:	42af 0014      	clrl %sp@(20)
 124:	222f 000c      	movel %sp@(12),%d1
 128:	242f 0010      	movel %sp@(16),%d2
 12c:	262f 0014      	movel %sp@(20),%d3
 130:	2040           	moveal %d0,%a0
 132:	2081           	movel %d1,%a0@
 134:	2142 0004      	movel %d2,%a0@(4)
 138:	2143 0008      	movel %d3,%a0@(8)
 13c:	4cdf 001c      	moveml %sp@+,%d2-%d4
 140:	4fef 000c      	lea %sp@(12),%sp
 144:	4e75           	rts

00000146 <___truncxfdf2>:
 146:	4fef fff4      	lea %sp@(-12),%sp
 14a:	48e7 3c00      	moveml %d2-%d5,%sp@-
 14e:	2f6f 0020 0010 	movel %sp@(32),%sp@(16)
 154:	2f6f 0024 0014 	movel %sp@(36),%sp@(20)
 15a:	2f6f 0028 0018 	movel %sp@(40),%sp@(24)
 160:	202f 0010      	movel %sp@(16),%d0
 164:	2800           	movel %d0,%d4
 166:	0284 8000 0000 	andil #-2147483648,%d4
 16c:	2200           	movel %d0,%d1
 16e:	0881 001f      	bclr #31,%d1
 172:	262f 0014      	movel %sp@(20),%d3
 176:	4a81           	tstl %d1
 178:	6650           	bnes 1ca <___truncxfdf2+0x84>
 17a:	222f 0018      	movel %sp@(24),%d1
 17e:	4a83           	tstl %d3
 180:	6606           	bnes 188 <___truncxfdf2+0x42>
 182:	4a81           	tstl %d1
 184:	6700 0088      	beqw 20e <___truncxfdf2+0xc8>
 188:	4840           	swap %d0
 18a:	48c0           	extl %d0
 18c:	0280 0000 7fff 	andil #32767,%d0
 192:	2403           	movel %d3,%d2
 194:	0882 001f      	bclr #31,%d2
 198:	7a0b           	moveq #11,%d5
 19a:	eaaa           	lsrl %d5,%d2
 19c:	0680 ffff c400 	addil #-15360,%d0
 1a2:	0c80 0000 07fe 	cmpil #2046,%d0
 1a8:	6e46           	bgts 1f0 <___truncxfdf2+0xaa>
 1aa:	e948           	lslw #4,%d0
 1ac:	4840           	swap %d0
 1ae:	4240           	clrw %d0
 1b0:	8084           	orl %d4,%d0
 1b2:	780b           	moveq #11,%d4
 1b4:	e8a9           	lsrl %d4,%d1
 1b6:	eb4b           	lslw #5,%d3
 1b8:	4843           	swap %d3
 1ba:	4243           	clrw %d3
 1bc:	8082           	orl %d2,%d0
 1be:	8283           	orl %d3,%d1
 1c0:	4cdf 003c      	moveml %sp@+,%d2-%d5
 1c4:	4fef 000c      	lea %sp@(12),%sp
 1c8:	4e75           	rts
 1ca:	222f 0018      	movel %sp@(24),%d1
 1ce:	4840           	swap %d0
 1d0:	48c0           	extl %d0
 1d2:	0280 0000 7fff 	andil #32767,%d0
 1d8:	2403           	movel %d3,%d2
 1da:	0882 001f      	bclr #31,%d2
 1de:	7a0b           	moveq #11,%d5
 1e0:	eaaa           	lsrl %d5,%d2
 1e2:	0680 ffff c400 	addil #-15360,%d0
 1e8:	0c80 0000 07fe 	cmpil #2046,%d0
 1ee:	6fba           	bles 1aa <___truncxfdf2+0x64>
 1f0:	203c 0000 07fe 	movel #2046,%d0
 1f6:	e948           	lslw #4,%d0
 1f8:	4840           	swap %d0
 1fa:	4240           	clrw %d0
 1fc:	8084           	orl %d4,%d0
 1fe:	780b           	moveq #11,%d4
 200:	e8a9           	lsrl %d4,%d1
 202:	eb4b           	lslw #5,%d3
 204:	4843           	swap %d3
 206:	4243           	clrw %d3
 208:	8082           	orl %d2,%d0
 20a:	8283           	orl %d3,%d1
 20c:	60b2           	bras 1c0 <___truncxfdf2+0x7a>
 20e:	2004           	movel %d4,%d0
 210:	4cdf 003c      	moveml %sp@+,%d2-%d5
 214:	4fef 000c      	lea %sp@(12),%sp
 218:	4e75           	rts

0000021a <___extendsfxf2>:
 21a:	4fef fff4      	lea %sp@(-12),%sp
 21e:	2f0a           	movel %a2,%sp@-
 220:	2f02           	movel %d2,%sp@-
 222:	2449           	moveal %a1,%a2
 224:	2f2f 0018      	movel %sp@(24),%sp@-
 228:	4eb9 0000 0000 	jsr 0 <___unordxf2>
 22e:	2f01           	movel %d1,%sp@-
 230:	2f00           	movel %d0,%sp@-
 232:	43ef 0014      	lea %sp@(20),%a1
 236:	4eba fe50      	jsr %pc@(88 <___extenddfxf2>)
 23a:	202f 0014      	movel %sp@(20),%d0
 23e:	222f 0018      	movel %sp@(24),%d1
 242:	242f 001c      	movel %sp@(28),%d2
 246:	2480           	movel %d0,%a2@
 248:	2541 0004      	movel %d1,%a2@(4)
 24c:	2542 0008      	movel %d2,%a2@(8)
 250:	4fef 000c      	lea %sp@(12),%sp
 254:	200a           	movel %a2,%d0
 256:	241f           	movel %sp@+,%d2
 258:	245f           	moveal %sp@+,%a2
 25a:	4fef 000c      	lea %sp@(12),%sp
 25e:	4e75           	rts

00000260 <___truncxfsf2>:
 260:	2f2f 000c      	movel %sp@(12),%sp@-
 264:	2f2f 000c      	movel %sp@(12),%sp@-
 268:	2f2f 000c      	movel %sp@(12),%sp@-
 26c:	4eba fed8      	jsr %pc@(146 <___truncxfdf2>)
 270:	4fef 000c      	lea %sp@(12),%sp
 274:	2f40 0004      	movel %d0,%sp@(4)
 278:	2f41 0008      	movel %d1,%sp@(8)
 27c:	4ef9 0000 0000 	jmp 0 <___unordxf2>

00000282 <___floatsixf>:
 282:	4fef fff4      	lea %sp@(-12),%sp
 286:	2f0a           	movel %a2,%sp@-
 288:	2f02           	movel %d2,%sp@-
 28a:	2449           	moveal %a1,%a2
 28c:	2f2f 0018      	movel %sp@(24),%sp@-
 290:	4eb9 0000 0000 	jsr 0 <___unordxf2>
 296:	2f01           	movel %d1,%sp@-
 298:	2f00           	movel %d0,%sp@-
 29a:	43ef 0014      	lea %sp@(20),%a1
 29e:	4eba fde8      	jsr %pc@(88 <___extenddfxf2>)
 2a2:	202f 0014      	movel %sp@(20),%d0
 2a6:	222f 0018      	movel %sp@(24),%d1
 2aa:	242f 001c      	movel %sp@(28),%d2
 2ae:	2480           	movel %d0,%a2@
 2b0:	2541 0004      	movel %d1,%a2@(4)
 2b4:	2542 0008      	movel %d2,%a2@(8)
 2b8:	4fef 000c      	lea %sp@(12),%sp
 2bc:	200a           	movel %a2,%d0
 2be:	241f           	movel %sp@+,%d2
 2c0:	245f           	moveal %sp@+,%a2
 2c2:	4fef 000c      	lea %sp@(12),%sp
 2c6:	4e75           	rts

000002c8 <___floatunsixf>:
 2c8:	4fef fff4      	lea %sp@(-12),%sp
 2cc:	2f0a           	movel %a2,%sp@-
 2ce:	2f02           	movel %d2,%sp@-
 2d0:	2449           	moveal %a1,%a2
 2d2:	2f2f 0018      	movel %sp@(24),%sp@-
 2d6:	4eb9 0000 0000 	jsr 0 <___unordxf2>
 2dc:	2f01           	movel %d1,%sp@-
 2de:	2f00           	movel %d0,%sp@-
 2e0:	43ef 0014      	lea %sp@(20),%a1
 2e4:	4eba fda2      	jsr %pc@(88 <___extenddfxf2>)
 2e8:	202f 0014      	movel %sp@(20),%d0
 2ec:	222f 0018      	movel %sp@(24),%d1
 2f0:	242f 001c      	movel %sp@(28),%d2
 2f4:	2480           	movel %d0,%a2@
 2f6:	2541 0004      	movel %d1,%a2@(4)
 2fa:	2542 0008      	movel %d2,%a2@(8)
 2fe:	4fef 000c      	lea %sp@(12),%sp
 302:	200a           	movel %a2,%d0
 304:	241f           	movel %sp@+,%d2
 306:	245f           	moveal %sp@+,%a2
 308:	4fef 000c      	lea %sp@(12),%sp
 30c:	4e75           	rts

0000030e <___fixxfsi>:
 30e:	2f2f 000c      	movel %sp@(12),%sp@-
 312:	2f2f 000c      	movel %sp@(12),%sp@-
 316:	2f2f 000c      	movel %sp@(12),%sp@-
 31a:	4eba fe2a      	jsr %pc@(146 <___truncxfdf2>)
 31e:	4fef 000c      	lea %sp@(12),%sp
 322:	2f40 0004      	movel %d0,%sp@(4)
 326:	2f41 0008      	movel %d1,%sp@(8)
 32a:	4ef9 0000 0000 	jmp 0 <___unordxf2>

00000330 <___addxf3>:
 330:	4fef fff4      	lea %sp@(-12),%sp
 334:	48e7 3030      	moveml %d2-%d3/%a2-%a3,%sp@-
 338:	2449           	moveal %a1,%a2
 33a:	47fa fe0a      	lea %pc@(146 <___truncxfdf2>),%a3
 33e:	2f2f 0028      	movel %sp@(40),%sp@-
 342:	2f2f 0028      	movel %sp@(40),%sp@-
 346:	2f2f 0028      	movel %sp@(40),%sp@-
 34a:	4e93           	jsr %a3@
 34c:	4fef 000c      	lea %sp@(12),%sp
 350:	2400           	movel %d0,%d2
 352:	2601           	movel %d1,%d3
 354:	2f2f 0034      	movel %sp@(52),%sp@-
 358:	2f2f 0034      	movel %sp@(52),%sp@-
 35c:	2f2f 0034      	movel %sp@(52),%sp@-
 360:	4e93           	jsr %a3@
 362:	508f           	addql #8,%sp
 364:	2e81           	movel %d1,%sp@
 366:	2f00           	movel %d0,%sp@-
 368:	2f03           	movel %d3,%sp@-
 36a:	2f02           	movel %d2,%sp@-
 36c:	4eb9 0000 0000 	jsr 0 <___unordxf2>
 372:	4fef 000c      	lea %sp@(12),%sp
 376:	2e81           	movel %d1,%sp@
 378:	2f00           	movel %d0,%sp@-
 37a:	43ef 0018      	lea %sp@(24),%a1
 37e:	4eba fd08      	jsr %pc@(88 <___extenddfxf2>)
 382:	508f           	addql #8,%sp
 384:	202f 0010      	movel %sp@(16),%d0
 388:	222f 0014      	movel %sp@(20),%d1
 38c:	242f 0018      	movel %sp@(24),%d2
 390:	2480           	movel %d0,%a2@
 392:	2541 0004      	movel %d1,%a2@(4)
 396:	2542 0008      	movel %d2,%a2@(8)
 39a:	200a           	movel %a2,%d0
 39c:	4cdf 0c0c      	moveml %sp@+,%d2-%d3/%a2-%a3
 3a0:	4fef 000c      	lea %sp@(12),%sp
 3a4:	4e75           	rts

000003a6 <___subxf3>:
 3a6:	4fef fff4      	lea %sp@(-12),%sp
 3aa:	48e7 3030      	moveml %d2-%d3/%a2-%a3,%sp@-
 3ae:	2449           	moveal %a1,%a2
 3b0:	47fa fd94      	lea %pc@(146 <___truncxfdf2>),%a3
 3b4:	2f2f 0028      	movel %sp@(40),%sp@-
 3b8:	2f2f 0028      	movel %sp@(40),%sp@-
 3bc:	2f2f 0028      	movel %sp@(40),%sp@-
 3c0:	4e93           	jsr %a3@
 3c2:	4fef 000c      	lea %sp@(12),%sp
 3c6:	2400           	movel %d0,%d2
 3c8:	2601           	movel %d1,%d3
 3ca:	2f2f 0034      	movel %sp@(52),%sp@-
 3ce:	2f2f 0034      	movel %sp@(52),%sp@-
 3d2:	2f2f 0034      	movel %sp@(52),%sp@-
 3d6:	4e93           	jsr %a3@
 3d8:	508f           	addql #8,%sp
 3da:	2e81           	movel %d1,%sp@
 3dc:	2f00           	movel %d0,%sp@-
 3de:	2f03           	movel %d3,%sp@-
 3e0:	2f02           	movel %d2,%sp@-
 3e2:	4eb9 0000 0000 	jsr 0 <___unordxf2>
 3e8:	4fef 000c      	lea %sp@(12),%sp
 3ec:	2e81           	movel %d1,%sp@
 3ee:	2f00           	movel %d0,%sp@-
 3f0:	43ef 0018      	lea %sp@(24),%a1
 3f4:	4eba fc92      	jsr %pc@(88 <___extenddfxf2>)
 3f8:	508f           	addql #8,%sp
 3fa:	202f 0010      	movel %sp@(16),%d0
 3fe:	222f 0014      	movel %sp@(20),%d1
 402:	242f 0018      	movel %sp@(24),%d2
 406:	2480           	movel %d0,%a2@
 408:	2541 0004      	movel %d1,%a2@(4)
 40c:	2542 0008      	movel %d2,%a2@(8)
 410:	200a           	movel %a2,%d0
 412:	4cdf 0c0c      	moveml %sp@+,%d2-%d3/%a2-%a3
 416:	4fef 000c      	lea %sp@(12),%sp
 41a:	4e75           	rts

0000041c <___mulxf3>:
 41c:	4fef fff4      	lea %sp@(-12),%sp
 420:	48e7 3030      	moveml %d2-%d3/%a2-%a3,%sp@-
 424:	2449           	moveal %a1,%a2
 426:	47fa fd1e      	lea %pc@(146 <___truncxfdf2>),%a3
 42a:	2f2f 0028      	movel %sp@(40),%sp@-
 42e:	2f2f 0028      	movel %sp@(40),%sp@-
 432:	2f2f 0028      	movel %sp@(40),%sp@-
 436:	4e93           	jsr %a3@
 438:	4fef 000c      	lea %sp@(12),%sp
 43c:	2400           	movel %d0,%d2
 43e:	2601           	movel %d1,%d3
 440:	2f2f 0034      	movel %sp@(52),%sp@-
 444:	2f2f 0034      	movel %sp@(52),%sp@-
 448:	2f2f 0034      	movel %sp@(52),%sp@-
 44c:	4e93           	jsr %a3@
 44e:	508f           	addql #8,%sp
 450:	2e81           	movel %d1,%sp@
 452:	2f00           	movel %d0,%sp@-
 454:	2f03           	movel %d3,%sp@-
 456:	2f02           	movel %d2,%sp@-
 458:	4eb9 0000 0000 	jsr 0 <___unordxf2>
 45e:	4fef 000c      	lea %sp@(12),%sp
 462:	2e81           	movel %d1,%sp@
 464:	2f00           	movel %d0,%sp@-
 466:	43ef 0018      	lea %sp@(24),%a1
 46a:	4eba fc1c      	jsr %pc@(88 <___extenddfxf2>)
 46e:	508f           	addql #8,%sp
 470:	202f 0010      	movel %sp@(16),%d0
 474:	222f 0014      	movel %sp@(20),%d1
 478:	242f 0018      	movel %sp@(24),%d2
 47c:	2480           	movel %d0,%a2@
 47e:	2541 0004      	movel %d1,%a2@(4)
 482:	2542 0008      	movel %d2,%a2@(8)
 486:	200a           	movel %a2,%d0
 488:	4cdf 0c0c      	moveml %sp@+,%d2-%d3/%a2-%a3
 48c:	4fef 000c      	lea %sp@(12),%sp
 490:	4e75           	rts

00000492 <___divxf3>:
 492:	4fef fff4      	lea %sp@(-12),%sp
 496:	48e7 3030      	moveml %d2-%d3/%a2-%a3,%sp@-
 49a:	2449           	moveal %a1,%a2
 49c:	47fa fca8      	lea %pc@(146 <___truncxfdf2>),%a3
 4a0:	2f2f 0028      	movel %sp@(40),%sp@-
 4a4:	2f2f 0028      	movel %sp@(40),%sp@-
 4a8:	2f2f 0028      	movel %sp@(40),%sp@-
 4ac:	4e93           	jsr %a3@
 4ae:	4fef 000c      	lea %sp@(12),%sp
 4b2:	2400           	movel %d0,%d2
 4b4:	2601           	movel %d1,%d3
 4b6:	2f2f 0034      	movel %sp@(52),%sp@-
 4ba:	2f2f 0034      	movel %sp@(52),%sp@-
 4be:	2f2f 0034      	movel %sp@(52),%sp@-
 4c2:	4e93           	jsr %a3@
 4c4:	508f           	addql #8,%sp
 4c6:	2e81           	movel %d1,%sp@
 4c8:	2f00           	movel %d0,%sp@-
 4ca:	2f03           	movel %d3,%sp@-
 4cc:	2f02           	movel %d2,%sp@-
 4ce:	4eb9 0000 0000 	jsr 0 <___unordxf2>
 4d4:	4fef 000c      	lea %sp@(12),%sp
 4d8:	2e81           	movel %d1,%sp@
 4da:	2f00           	movel %d0,%sp@-
 4dc:	43ef 0018      	lea %sp@(24),%a1
 4e0:	4eba fba6      	jsr %pc@(88 <___extenddfxf2>)
 4e4:	508f           	addql #8,%sp
 4e6:	202f 0010      	movel %sp@(16),%d0
 4ea:	222f 0014      	movel %sp@(20),%d1
 4ee:	242f 0018      	movel %sp@(24),%d2
 4f2:	2480           	movel %d0,%a2@
 4f4:	2541 0004      	movel %d1,%a2@(4)
 4f8:	2542 0008      	movel %d2,%a2@(8)
 4fc:	200a           	movel %a2,%d0
 4fe:	4cdf 0c0c      	moveml %sp@+,%d2-%d3/%a2-%a3
 502:	4fef 000c      	lea %sp@(12),%sp
 506:	4e75           	rts

00000508 <___negxf2>:
 508:	4fef fff4      	lea %sp@(-12),%sp
 50c:	2f0a           	movel %a2,%sp@-
 50e:	2f02           	movel %d2,%sp@-
 510:	2449           	moveal %a1,%a2
 512:	2f2f 0020      	movel %sp@(32),%sp@-
 516:	2f2f 0020      	movel %sp@(32),%sp@-
 51a:	2f2f 0020      	movel %sp@(32),%sp@-
 51e:	4eba fc26      	jsr %pc@(146 <___truncxfdf2>)
 522:	4fef 000c      	lea %sp@(12),%sp
 526:	2040           	moveal %d0,%a0
 528:	d1fc 8000 0000 	addal #-2147483648,%a0
 52e:	2f01           	movel %d1,%sp@-
 530:	2f08           	movel %a0,%sp@-
 532:	43ef 0010      	lea %sp@(16),%a1
 536:	4eba fb50      	jsr %pc@(88 <___extenddfxf2>)
 53a:	508f           	addql #8,%sp
 53c:	202f 0008      	movel %sp@(8),%d0
 540:	222f 000c      	movel %sp@(12),%d1
 544:	242f 0010      	movel %sp@(16),%d2
 548:	2480           	movel %d0,%a2@
 54a:	2541 0004      	movel %d1,%a2@(4)
 54e:	2542 0008      	movel %d2,%a2@(8)
 552:	200a           	movel %a2,%d0
 554:	241f           	movel %sp@+,%d2
 556:	245f           	moveal %sp@+,%a2
 558:	4fef 000c      	lea %sp@(12),%sp
 55c:	4e75           	rts

0000055e <___cmpxf2>:
 55e:	48e7 1c20      	moveml %d3-%d5/%a2,%sp@-
 562:	262f 0014      	movel %sp@(20),%d3
 566:	282f 0018      	movel %sp@(24),%d4
 56a:	2a2f 001c      	movel %sp@(28),%d5
 56e:	45fa fbd6      	lea %pc@(146 <___truncxfdf2>),%a2
 572:	2f2f 0028      	movel %sp@(40),%sp@-
 576:	2f2f 0028      	movel %sp@(40),%sp@-
 57a:	2f2f 0028      	movel %sp@(40),%sp@-
 57e:	4e92           	jsr %a2@
 580:	2f40 0028      	movel %d0,%sp@(40)
 584:	2f41 002c      	movel %d1,%sp@(44)
 588:	2e83           	movel %d3,%sp@
 58a:	2f44 0004      	movel %d4,%sp@(4)
 58e:	2f45 0008      	movel %d5,%sp@(8)
 592:	4e92           	jsr %a2@
 594:	4fef 000c      	lea %sp@(12),%sp
 598:	2f40 0014      	movel %d0,%sp@(20)
 59c:	2f41 0018      	movel %d1,%sp@(24)
 5a0:	4cdf 0438      	moveml %sp@+,%d3-%d5/%a2
 5a4:	4ef9 0000 0000 	jmp 0 <___unordxf2>

000005aa <___eqxf2>:
 5aa:	48e7 1c20      	moveml %d3-%d5/%a2,%sp@-
 5ae:	262f 0014      	movel %sp@(20),%d3
 5b2:	282f 0018      	movel %sp@(24),%d4
 5b6:	2a2f 001c      	movel %sp@(28),%d5
 5ba:	45fa fb8a      	lea %pc@(146 <___truncxfdf2>),%a2
 5be:	2f2f 0028      	movel %sp@(40),%sp@-
 5c2:	2f2f 0028      	movel %sp@(40),%sp@-
 5c6:	2f2f 0028      	movel %sp@(40),%sp@-
 5ca:	4e92           	jsr %a2@
 5cc:	2f40 0028      	movel %d0,%sp@(40)
 5d0:	2f41 002c      	movel %d1,%sp@(44)
 5d4:	2e83           	movel %d3,%sp@
 5d6:	2f44 0004      	movel %d4,%sp@(4)
 5da:	2f45 0008      	movel %d5,%sp@(8)
 5de:	4e92           	jsr %a2@
 5e0:	4fef 000c      	lea %sp@(12),%sp
 5e4:	2f40 0014      	movel %d0,%sp@(20)
 5e8:	2f41 0018      	movel %d1,%sp@(24)
 5ec:	4cdf 0438      	moveml %sp@+,%d3-%d5/%a2
 5f0:	4ef9 0000 0000 	jmp 0 <___unordxf2>

000005f6 <___nexf2>:
 5f6:	48e7 1c20      	moveml %d3-%d5/%a2,%sp@-
 5fa:	262f 0014      	movel %sp@(20),%d3
 5fe:	282f 0018      	movel %sp@(24),%d4
 602:	2a2f 001c      	movel %sp@(28),%d5
 606:	45fa fb3e      	lea %pc@(146 <___truncxfdf2>),%a2
 60a:	2f2f 0028      	movel %sp@(40),%sp@-
 60e:	2f2f 0028      	movel %sp@(40),%sp@-
 612:	2f2f 0028      	movel %sp@(40),%sp@-
 616:	4e92           	jsr %a2@
 618:	2f40 0028      	movel %d0,%sp@(40)
 61c:	2f41 002c      	movel %d1,%sp@(44)
 620:	2e83           	movel %d3,%sp@
 622:	2f44 0004      	movel %d4,%sp@(4)
 626:	2f45 0008      	movel %d5,%sp@(8)
 62a:	4e92           	jsr %a2@
 62c:	4fef 000c      	lea %sp@(12),%sp
 630:	2f40 0014      	movel %d0,%sp@(20)
 634:	2f41 0018      	movel %d1,%sp@(24)
 638:	4cdf 0438      	moveml %sp@+,%d3-%d5/%a2
 63c:	4ef9 0000 0000 	jmp 0 <___unordxf2>

00000642 <___ltxf2>:
 642:	48e7 1c20      	moveml %d3-%d5/%a2,%sp@-
 646:	262f 0014      	movel %sp@(20),%d3
 64a:	282f 0018      	movel %sp@(24),%d4
 64e:	2a2f 001c      	movel %sp@(28),%d5
 652:	45fa faf2      	lea %pc@(146 <___truncxfdf2>),%a2
 656:	2f2f 0028      	movel %sp@(40),%sp@-
 65a:	2f2f 0028      	movel %sp@(40),%sp@-
 65e:	2f2f 0028      	movel %sp@(40),%sp@-
 662:	4e92           	jsr %a2@
 664:	2f40 0028      	movel %d0,%sp@(40)
 668:	2f41 002c      	movel %d1,%sp@(44)
 66c:	2e83           	movel %d3,%sp@
 66e:	2f44 0004      	movel %d4,%sp@(4)
 672:	2f45 0008      	movel %d5,%sp@(8)
 676:	4e92           	jsr %a2@
 678:	4fef 000c      	lea %sp@(12),%sp
 67c:	2f40 0014      	movel %d0,%sp@(20)
 680:	2f41 0018      	movel %d1,%sp@(24)
 684:	4cdf 0438      	moveml %sp@+,%d3-%d5/%a2
 688:	4ef9 0000 0000 	jmp 0 <___unordxf2>

0000068e <___lexf2>:
 68e:	48e7 1c20      	moveml %d3-%d5/%a2,%sp@-
 692:	262f 0014      	movel %sp@(20),%d3
 696:	282f 0018      	movel %sp@(24),%d4
 69a:	2a2f 001c      	movel %sp@(28),%d5
 69e:	45fa faa6      	lea %pc@(146 <___truncxfdf2>),%a2
 6a2:	2f2f 0028      	movel %sp@(40),%sp@-
 6a6:	2f2f 0028      	movel %sp@(40),%sp@-
 6aa:	2f2f 0028      	movel %sp@(40),%sp@-
 6ae:	4e92           	jsr %a2@
 6b0:	2f40 0028      	movel %d0,%sp@(40)
 6b4:	2f41 002c      	movel %d1,%sp@(44)
 6b8:	2e83           	movel %d3,%sp@
 6ba:	2f44 0004      	movel %d4,%sp@(4)
 6be:	2f45 0008      	movel %d5,%sp@(8)
 6c2:	4e92           	jsr %a2@
 6c4:	4fef 000c      	lea %sp@(12),%sp
 6c8:	2f40 0014      	movel %d0,%sp@(20)
 6cc:	2f41 0018      	movel %d1,%sp@(24)
 6d0:	4cdf 0438      	moveml %sp@+,%d3-%d5/%a2
 6d4:	4ef9 0000 0000 	jmp 0 <___unordxf2>

000006da <___gtxf2>:
 6da:	48e7 1c20      	moveml %d3-%d5/%a2,%sp@-
 6de:	262f 0014      	movel %sp@(20),%d3
 6e2:	282f 0018      	movel %sp@(24),%d4
 6e6:	2a2f 001c      	movel %sp@(28),%d5
 6ea:	45fa fa5a      	lea %pc@(146 <___truncxfdf2>),%a2
 6ee:	2f2f 0028      	movel %sp@(40),%sp@-
 6f2:	2f2f 0028      	movel %sp@(40),%sp@-
 6f6:	2f2f 0028      	movel %sp@(40),%sp@-
 6fa:	4e92           	jsr %a2@
 6fc:	2f40 0028      	movel %d0,%sp@(40)
 700:	2f41 002c      	movel %d1,%sp@(44)
 704:	2e83           	movel %d3,%sp@
 706:	2f44 0004      	movel %d4,%sp@(4)
 70a:	2f45 0008      	movel %d5,%sp@(8)
 70e:	4e92           	jsr %a2@
 710:	4fef 000c      	lea %sp@(12),%sp
 714:	2f40 0014      	movel %d0,%sp@(20)
 718:	2f41 0018      	movel %d1,%sp@(24)
 71c:	4cdf 0438      	moveml %sp@+,%d3-%d5/%a2
 720:	4ef9 0000 0000 	jmp 0 <___unordxf2>

00000726 <___gexf2>:
 726:	48e7 1c20      	moveml %d3-%d5/%a2,%sp@-
 72a:	262f 0014      	movel %sp@(20),%d3
 72e:	282f 0018      	movel %sp@(24),%d4
 732:	2a2f 001c      	movel %sp@(28),%d5
 736:	45fa fa0e      	lea %pc@(146 <___truncxfdf2>),%a2
 73a:	2f2f 0028      	movel %sp@(40),%sp@-
 73e:	2f2f 0028      	movel %sp@(40),%sp@-
 742:	2f2f 0028      	movel %sp@(40),%sp@-
 746:	4e92           	jsr %a2@
 748:	2f40 0028      	movel %d0,%sp@(40)
 74c:	2f41 002c      	movel %d1,%sp@(44)
 750:	2e83           	movel %d3,%sp@
 752:	2f44 0004      	movel %d4,%sp@(4)
 756:	2f45 0008      	movel %d5,%sp@(8)
 75a:	4e92           	jsr %a2@
 75c:	4fef 000c      	lea %sp@(12),%sp
 760:	2f40 0014      	movel %d0,%sp@(20)
 764:	2f41 0018      	movel %d1,%sp@(24)
 768:	4cdf 0438      	moveml %sp@+,%d3-%d5/%a2
 76c:	4ef9 0000 0000 	jmp 0 <___unordxf2>
	...

unwind-dw2.o:     file format a.out-zero-big


unwind-dw2-fde.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___register_frame_info_bases-0xec8>:
       0:	206f 0008      	moveal %sp@(8),%a0
       4:	2228 0008      	movel %a0@(8),%d1
       8:	206f 000c      	moveal %sp@(12),%a0
       c:	2028 0008      	movel %a0@(8),%d0
      10:	b081           	cmpl %d1,%d0
      12:	6508           	bcss 1c <___register_frame_info_bases-0xeac>
      14:	52c0           	shi %d0
      16:	4880           	extw %d0
      18:	48c0           	extl %d0
      1a:	4e75           	rts
      1c:	7001           	moveq #1,%d0
      1e:	4e75           	rts
      20:	48e7 3c3e      	moveml %d2-%d5/%a2-%fp,%sp@-
      24:	282f 0028      	movel %sp@(40),%d4
      28:	2c6f 002c      	moveal %sp@(44),%fp
      2c:	2a6f 0030      	moveal %sp@(48),%a5
      30:	206f 0034      	moveal %sp@(52),%a0
      34:	262f 0038      	movel %sp@(56),%d3
      38:	47f0 8801      	lea %a0@(00000001,%a0:l),%a3
      3c:	b68b           	cmpl %a3,%d3
      3e:	6f00 008c      	blew cc <___register_frame_info_bases-0xdfc>
      42:	2408           	movel %a0,%d2
      44:	45eb 0001      	lea %a3@(1),%a2
      48:	49f3 b800      	lea %a3@(00000000,%a3:l),%a4
      4c:	d9cc           	addal %a4,%a4
      4e:	49f5 c800      	lea %a5@(00000000,%a4:l),%a4
      52:	b5c3           	cmpal %d3,%a2
      54:	6d3e           	blts 94 <___register_frame_info_bases-0xe34>
      56:	244b           	moveal %a3,%a2
      58:	d482           	addl %d2,%d2
      5a:	2642           	moveal %d2,%a3
      5c:	d7c2           	addal %d2,%a3
      5e:	47f5 b800      	lea %a5@(00000000,%a3:l),%a3
      62:	2f14           	movel %a4@,%sp@-
      64:	2f13           	movel %a3@,%sp@-
      66:	2f04           	movel %d4,%sp@-
      68:	4e96           	jsr %fp@
      6a:	4fef 000c      	lea %sp@(12),%sp
      6e:	4a80           	tstl %d0
      70:	6c5a           	bges cc <___register_frame_info_bases-0xdfc>
      72:	2013           	movel %a3@,%d0
      74:	2694           	movel %a4@,%a3@
      76:	2880           	movel %d0,%a4@
      78:	47f2 a801      	lea %a2@(00000001,%a2:l),%a3
      7c:	b7c3           	cmpal %d3,%a3
      7e:	6c4c           	bges cc <___register_frame_info_bases-0xdfc>
      80:	240a           	movel %a2,%d2
      82:	45eb 0001      	lea %a3@(1),%a2
      86:	49f3 b800      	lea %a3@(00000000,%a3:l),%a4
      8a:	d9cc           	addal %a4,%a4
      8c:	49f5 c800      	lea %a5@(00000000,%a4:l),%a4
      90:	b5c3           	cmpal %d3,%a2
      92:	6cc2           	bges 56 <___register_frame_info_bases-0xe72>
      94:	41f2 a800      	lea %a2@(00000000,%a2:l),%a0
      98:	2a08           	movel %a0,%d5
      9a:	da88           	addl %a0,%d5
      9c:	2f35 5800      	movel %a5@(00000000,%d5:l),%sp@-
      a0:	2f14           	movel %a4@,%sp@-
      a2:	2f04           	movel %d4,%sp@-
      a4:	4e96           	jsr %fp@
      a6:	4fef 000c      	lea %sp@(12),%sp
      aa:	4a80           	tstl %d0
      ac:	6ca8           	bges 56 <___register_frame_info_bases-0xe72>
      ae:	49f5 5800      	lea %a5@(00000000,%d5:l),%a4
      b2:	d482           	addl %d2,%d2
      b4:	2642           	moveal %d2,%a3
      b6:	d7c2           	addal %d2,%a3
      b8:	47f5 b800      	lea %a5@(00000000,%a3:l),%a3
      bc:	2f14           	movel %a4@,%sp@-
      be:	2f13           	movel %a3@,%sp@-
      c0:	2f04           	movel %d4,%sp@-
      c2:	4e96           	jsr %fp@
      c4:	4fef 000c      	lea %sp@(12),%sp
      c8:	4a80           	tstl %d0
      ca:	6da6           	blts 72 <___register_frame_info_bases-0xe56>
      cc:	4cdf 7c3c      	moveml %sp@+,%d2-%d5/%a2-%fp
      d0:	4e75           	rts
      d2:	48e7 3c3c      	moveml %d2-%d5/%a2-%a5,%sp@-
      d6:	262f 0024      	movel %sp@(36),%d3
      da:	282f 0028      	movel %sp@(40),%d4
      de:	266f 002c      	moveal %sp@(44),%a3
      e2:	4beb 0008      	lea %a3@(8),%a5
      e6:	2a2b 0004      	movel %a3@(4),%d5
      ea:	2405           	movel %d5,%d2
      ec:	e28a           	lsrl #1,%d2
      ee:	5382           	subql #1,%d2
      f0:	6b18           	bmis 10a <___register_frame_info_bases-0xdbe>
      f2:	49fa ff2c      	lea %pc@(20 <___register_frame_info_bases-0xea8>),%a4
      f6:	2f05           	movel %d5,%sp@-
      f8:	2f02           	movel %d2,%sp@-
      fa:	2f0d           	movel %a5,%sp@-
      fc:	2f04           	movel %d4,%sp@-
      fe:	2f03           	movel %d3,%sp@-
     100:	4e94           	jsr %a4@
     102:	5382           	subql #1,%d2
     104:	4fef 0014      	lea %sp@(20),%sp
     108:	6aec           	bpls f6 <___register_frame_info_bases-0xdd2>
     10a:	2405           	movel %d5,%d2
     10c:	5382           	subql #1,%d2
     10e:	4a82           	tstl %d2
     110:	6f30           	bles 142 <___register_frame_info_bases-0xd86>
     112:	5485           	addql #2,%d5
     114:	da85           	addl %d5,%d5
     116:	2445           	moveal %d5,%a2
     118:	d5c5           	addal %d5,%a2
     11a:	45f3 a800      	lea %a3@(00000000,%a2:l),%a2
     11e:	49fa ff00      	lea %pc@(20 <___register_frame_info_bases-0xea8>),%a4
     122:	202b 0008      	movel %a3@(8),%d0
     126:	2762 0008      	movel %a2@-,%a3@(8)
     12a:	2480           	movel %d0,%a2@
     12c:	2f02           	movel %d2,%sp@-
     12e:	42a7           	clrl %sp@-
     130:	2f0d           	movel %a5,%sp@-
     132:	2f04           	movel %d4,%sp@-
     134:	2f03           	movel %d3,%sp@-
     136:	4e94           	jsr %a4@
     138:	5382           	subql #1,%d2
     13a:	4fef 0014      	lea %sp@(20),%sp
     13e:	4a82           	tstl %d2
     140:	6ee0           	bgts 122 <___register_frame_info_bases-0xda6>
     142:	4cdf 3c3c      	moveml %sp@+,%d2-%d5/%a2-%a5
     146:	4e75           	rts
     148:	102f 0007      	moveb %sp@(7),%d0
     14c:	0c00 ffff      	cmpib #-1,%d0
     150:	6732           	beqs 184 <___register_frame_info_bases-0xd44>
     152:	7207           	moveq #7,%d1
     154:	c081           	andl %d1,%d0
     156:	123c 0002      	moveb #2,%d1
     15a:	b280           	cmpl %d0,%d1
     15c:	6722           	beqs 180 <___register_frame_info_bases-0xd48>
     15e:	6c14           	bges 174 <___register_frame_info_bases-0xd54>
     160:	7203           	moveq #3,%d1
     162:	b280           	cmpl %d0,%d1
     164:	6712           	beqs 178 <___register_frame_info_bases-0xd50>
     166:	123c 0004      	moveb #4,%d1
     16a:	b280           	cmpl %d0,%d1
     16c:	670e           	beqs 17c <___register_frame_info_bases-0xd4c>
     16e:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
     174:	4a80           	tstl %d0
     176:	66f6           	bnes 16e <___register_frame_info_bases-0xd5a>
     178:	7004           	moveq #4,%d0
     17a:	4e75           	rts
     17c:	7008           	moveq #8,%d0
     17e:	4e75           	rts
     180:	7002           	moveq #2,%d0
     182:	4e75           	rts
     184:	7000           	moveq #0,%d0
     186:	4e75           	rts
     188:	206f 0008      	moveal %sp@(8),%a0
     18c:	102f 0007      	moveb %sp@(7),%d0
     190:	0c00 ffff      	cmpib #-1,%d0
     194:	6744           	beqs 1da <___register_frame_info_bases-0xcee>
     196:	7270           	moveq #112,%d1
     198:	c081           	andl %d1,%d0
     19a:	123c 0020      	moveb #32,%d1
     19e:	b280           	cmpl %d0,%d1
     1a0:	6724           	beqs 1c6 <___register_frame_info_bases-0xd02>
     1a2:	6c14           	bges 1b8 <___register_frame_info_bases-0xd10>
     1a4:	7230           	moveq #48,%d1
     1a6:	b280           	cmpl %d0,%d1
     1a8:	6716           	beqs 1c0 <___register_frame_info_bases-0xd08>
     1aa:	123c 0050      	moveb #80,%d1
     1ae:	b280           	cmpl %d0,%d1
     1b0:	670a           	beqs 1bc <___register_frame_info_bases-0xd0c>
     1b2:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
     1b8:	4a80           	tstl %d0
     1ba:	6610           	bnes 1cc <___register_frame_info_bases-0xcfc>
     1bc:	7000           	moveq #0,%d0
     1be:	4e75           	rts
     1c0:	2028 0008      	movel %a0@(8),%d0
     1c4:	4e75           	rts
     1c6:	2028 0004      	movel %a0@(4),%d0
     1ca:	4e75           	rts
     1cc:	123c 0010      	moveb #16,%d1
     1d0:	b280           	cmpl %d0,%d1
     1d2:	67e8           	beqs 1bc <___register_frame_info_bases-0xd0c>
     1d4:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
     1da:	7000           	moveq #0,%d0
     1dc:	4e75           	rts
     1de:	48e7 3f00      	moveml %d2-%d7,%sp@-
     1e2:	2c2f 0020      	movel %sp@(32),%d6
     1e6:	206f 0024      	moveal %sp@(36),%a0
     1ea:	142f 001f      	moveb %sp@(31),%d2
     1ee:	0c02 0050      	cmpib #80,%d2
     1f2:	6700 014a      	beqw 33e <___register_frame_info_bases-0xb8a>
     1f6:	7600           	moveq #0,%d3
     1f8:	1602           	moveb %d2,%d3
     1fa:	700f           	moveq #15,%d0
     1fc:	c083           	andl %d3,%d0
     1fe:	720c           	moveq #12,%d1
     200:	b280           	cmpl %d0,%d1
     202:	6406           	bccs 20a <___register_frame_info_bases-0xcbe>
     204:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
     20a:	d080           	addl %d0,%d0
     20c:	303b 0806      	movew %pc@(214 <___register_frame_info_bases-0xcb4>,%d0:l),%d0
     210:	4efb 0002      	jmp %pc@(214 <___register_frame_info_bases-0xcb4>,%d0:w)
     214:	001a 0102      	orib #2,%a2@+
     218:	00f0           	.short 0x00f0
     21a:	001a 007e      	orib #126,%a2@+
     21e:	fff0           	.short 0xfff0
     220:	fff0           	.short 0xfff0
     222:	fff0           	.short 0xfff0
     224:	fff0           	.short 0xfff0
     226:	00aa 00dc 001a 	oril #14417946,%a2@(126)
     22c:	007e 
     22e:	7200           	moveq #0,%d1
     230:	1210           	moveb %a0@,%d1
     232:	e149           	lslw #8,%d1
     234:	4841           	swap %d1
     236:	4241           	clrw %d1
     238:	7000           	moveq #0,%d0
     23a:	1028 0001      	moveb %a0@(1),%d0
     23e:	4840           	swap %d0
     240:	4240           	clrw %d0
     242:	8081           	orl %d1,%d0
     244:	7200           	moveq #0,%d1
     246:	1228 0002      	moveb %a0@(2),%d1
     24a:	e189           	lsll #8,%d1
     24c:	8280           	orl %d0,%d1
     24e:	8228 0003      	orb %a0@(3),%d1
     252:	2008           	movel %a0,%d0
     254:	5880           	addql #4,%d0
     256:	4a81           	tstl %d1
     258:	6712           	beqs 26c <___register_frame_info_bases-0xc5c>
     25a:	7870           	moveq #112,%d4
     25c:	c684           	andl %d4,%d3
     25e:	183c 0010      	moveb #16,%d4
     262:	b883           	cmpl %d3,%d4
     264:	6722           	beqs 288 <___register_frame_info_bases-0xc40>
     266:	d286           	addl %d6,%d1
     268:	4a02           	tstb %d2
     26a:	6d0c           	blts 278 <___register_frame_info_bases-0xc50>
     26c:	206f 0028      	moveal %sp@(40),%a0
     270:	2081           	movel %d1,%a0@
     272:	4cdf 00fc      	moveml %sp@+,%d2-%d7
     276:	4e75           	rts
     278:	2041           	moveal %d1,%a0
     27a:	2210           	movel %a0@,%d1
     27c:	206f 0028      	moveal %sp@(40),%a0
     280:	2081           	movel %d1,%a0@
     282:	4cdf 00fc      	moveml %sp@+,%d2-%d7
     286:	4e75           	rts
     288:	2c08           	movel %a0,%d6
     28a:	d286           	addl %d6,%d1
     28c:	4a02           	tstb %d2
     28e:	6cdc           	bges 26c <___register_frame_info_bases-0xc5c>
     290:	60e6           	bras 278 <___register_frame_info_bases-0xc50>
     292:	7200           	moveq #0,%d1
     294:	1228 0004      	moveb %a0@(4),%d1
     298:	e149           	lslw #8,%d1
     29a:	4841           	swap %d1
     29c:	4241           	clrw %d1
     29e:	7000           	moveq #0,%d0
     2a0:	1028 0005      	moveb %a0@(5),%d0
     2a4:	4840           	swap %d0
     2a6:	4240           	clrw %d0
     2a8:	8081           	orl %d1,%d0
     2aa:	7200           	moveq #0,%d1
     2ac:	1228 0006      	moveb %a0@(6),%d1
     2b0:	e189           	lsll #8,%d1
     2b2:	8280           	orl %d0,%d1
     2b4:	8228 0007      	orb %a0@(7),%d1
     2b8:	2008           	movel %a0,%d0
     2ba:	5080           	addql #8,%d0
     2bc:	6098           	bras 256 <___register_frame_info_bases-0xc72>
     2be:	2248           	moveal %a0,%a1
     2c0:	7200           	moveq #0,%d1
     2c2:	7800           	moveq #0,%d4
     2c4:	1a19           	moveb %a1@+,%d5
     2c6:	7e00           	moveq #0,%d7
     2c8:	1e05           	moveb %d5,%d7
     2ca:	707f           	moveq #127,%d0
     2cc:	c087           	andl %d7,%d0
     2ce:	e9a8           	lsll %d4,%d0
     2d0:	8280           	orl %d0,%d1
     2d2:	5e84           	addql #7,%d4
     2d4:	4a05           	tstb %d5
     2d6:	6dec           	blts 2c4 <___register_frame_info_bases-0xc04>
     2d8:	701f           	moveq #31,%d0
     2da:	b084           	cmpl %d4,%d0
     2dc:	650c           	bcss 2ea <___register_frame_info_bases-0xbde>
     2de:	0807 0006      	btst #6,%d7
     2e2:	6706           	beqs 2ea <___register_frame_info_bases-0xbde>
     2e4:	70ff           	moveq #-1,%d0
     2e6:	e9a8           	lsll %d4,%d0
     2e8:	8280           	orl %d0,%d1
     2ea:	2009           	movel %a1,%d0
     2ec:	6000 ff68      	braw 256 <___register_frame_info_bases-0xc72>
     2f0:	7200           	moveq #0,%d1
     2f2:	1210           	moveb %a0@,%d1
     2f4:	e189           	lsll #8,%d1
     2f6:	8228 0001      	orb %a0@(1),%d1
     2fa:	48c1           	extl %d1
     2fc:	2008           	movel %a0,%d0
     2fe:	5480           	addql #2,%d0
     300:	6000 ff54      	braw 256 <___register_frame_info_bases-0xc72>
     304:	7200           	moveq #0,%d1
     306:	1210           	moveb %a0@,%d1
     308:	e189           	lsll #8,%d1
     30a:	8228 0001      	orb %a0@(1),%d1
     30e:	2008           	movel %a0,%d0
     310:	5480           	addql #2,%d0
     312:	6000 ff42      	braw 256 <___register_frame_info_bases-0xc72>
     316:	2248           	moveal %a0,%a1
     318:	7200           	moveq #0,%d1
     31a:	7800           	moveq #0,%d4
     31c:	1a19           	moveb %a1@+,%d5
     31e:	707f           	moveq #127,%d0
     320:	c085           	andl %d5,%d0
     322:	e9a8           	lsll %d4,%d0
     324:	8280           	orl %d0,%d1
     326:	5e84           	addql #7,%d4
     328:	4a05           	tstb %d5
     32a:	6cbe           	bges 2ea <___register_frame_info_bases-0xbde>
     32c:	1a19           	moveb %a1@+,%d5
     32e:	707f           	moveq #127,%d0
     330:	c085           	andl %d5,%d0
     332:	e9a8           	lsll %d4,%d0
     334:	8280           	orl %d0,%d1
     336:	5e84           	addql #7,%d4
     338:	4a05           	tstb %d5
     33a:	6de0           	blts 31c <___register_frame_info_bases-0xbac>
     33c:	60ac           	bras 2ea <___register_frame_info_bases-0xbde>
     33e:	2008           	movel %a0,%d0
     340:	5680           	addql #3,%d0
     342:	72fc           	moveq #-4,%d1
     344:	c081           	andl %d1,%d0
     346:	2040           	moveal %d0,%a0
     348:	5880           	addql #4,%d0
     34a:	2218           	movel %a0@+,%d1
     34c:	206f 0028      	moveal %sp@(40),%a0
     350:	2081           	movel %d1,%a0@
     352:	4cdf 00fc      	moveml %sp@+,%d2-%d7
     356:	4e75           	rts
     358:	598f           	subql #4,%sp
     35a:	2f0b           	movel %a3,%sp@-
     35c:	2f0a           	movel %a2,%sp@-
     35e:	246f 0010      	moveal %sp@(16),%a2
     362:	486a 0009      	pea %a2@(9)
     366:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
     36c:	588f           	addql #4,%sp
     36e:	2640           	moveal %d0,%a3
     370:	528b           	addql #1,%a3
     372:	43f2 0809      	lea %a2@(00000009,%d0:l),%a1
     376:	41e9 0001      	lea %a1@(1),%a0
     37a:	122a 0008      	moveb %a2@(8),%d1
     37e:	0c01 0003      	cmpib #3,%d1
     382:	6200 00c4      	bhiw 448 <___register_frame_info_bases-0xa80>
     386:	0c2a 007a 0009 	cmpib #122,%a2@(9)
     38c:	670a           	beqs 398 <___register_frame_info_bases-0xb30>
     38e:	7000           	moveq #0,%d0
     390:	245f           	moveal %sp@+,%a2
     392:	265f           	moveal %sp@+,%a3
     394:	588f           	addql #4,%sp
     396:	4e75           	rts
     398:	43e8 0001      	lea %a0@(1),%a1
     39c:	4a10           	tstb %a0@
     39e:	6c0a           	bges 3aa <___register_frame_info_bases-0xb1e>
     3a0:	2049           	moveal %a1,%a0
     3a2:	43e8 0001      	lea %a0@(1),%a1
     3a6:	4a10           	tstb %a0@
     3a8:	6df6           	blts 3a0 <___register_frame_info_bases-0xb28>
     3aa:	2049           	moveal %a1,%a0
     3ac:	47e8 0001      	lea %a0@(1),%a3
     3b0:	4a10           	tstb %a0@
     3b2:	6c0a           	bges 3be <___register_frame_info_bases-0xb0a>
     3b4:	204b           	moveal %a3,%a0
     3b6:	47e8 0001      	lea %a0@(1),%a3
     3ba:	4a10           	tstb %a0@
     3bc:	6df6           	blts 3b4 <___register_frame_info_bases-0xb14>
     3be:	0c01 0001      	cmpib #1,%d1
     3c2:	677e           	beqs 442 <___register_frame_info_bases-0xa86>
     3c4:	43eb 0001      	lea %a3@(1),%a1
     3c8:	4a13           	tstb %a3@
     3ca:	6c0a           	bges 3d6 <___register_frame_info_bases-0xaf2>
     3cc:	2649           	moveal %a1,%a3
     3ce:	43eb 0001      	lea %a3@(1),%a1
     3d2:	4a13           	tstb %a3@
     3d4:	6df6           	blts 3cc <___register_frame_info_bases-0xafc>
     3d6:	41e9 0001      	lea %a1@(1),%a0
     3da:	4a11           	tstb %a1@
     3dc:	6c0a           	bges 3e8 <___register_frame_info_bases-0xae0>
     3de:	2248           	moveal %a0,%a1
     3e0:	41e9 0001      	lea %a1@(1),%a0
     3e4:	4a11           	tstb %a1@
     3e6:	6df6           	blts 3de <___register_frame_info_bases-0xaea>
     3e8:	122a 000a      	moveb %a2@(10),%d1
     3ec:	0c01 0052      	cmpib #82,%d1
     3f0:	671e           	beqs 410 <___register_frame_info_bases-0xab8>
     3f2:	45ea 000b      	lea %a2@(11),%a2
     3f6:	47fa fde6      	lea %pc@(1de <___register_frame_info_bases-0xcea>),%a3
     3fa:	0c01 0050      	cmpib #80,%d1
     3fe:	671c           	beqs 41c <___register_frame_info_bases-0xaac>
     400:	0c01 004c      	cmpib #76,%d1
     404:	6688           	bnes 38e <___register_frame_info_bases-0xb3a>
     406:	5288           	addql #1,%a0
     408:	121a           	moveb %a2@+,%d1
     40a:	0c01 0052      	cmpib #82,%d1
     40e:	66ea           	bnes 3fa <___register_frame_info_bases-0xace>
     410:	7000           	moveq #0,%d0
     412:	1010           	moveb %a0@,%d0
     414:	245f           	moveal %sp@+,%a2
     416:	265f           	moveal %sp@+,%a3
     418:	588f           	addql #4,%sp
     41a:	4e75           	rts
     41c:	7000           	moveq #0,%d0
     41e:	1010           	moveb %a0@,%d0
     420:	486f 0008      	pea %sp@(8)
     424:	4868 0001      	pea %a0@(1)
     428:	42a7           	clrl %sp@-
     42a:	727f           	moveq #127,%d1
     42c:	c280           	andl %d0,%d1
     42e:	2f01           	movel %d1,%sp@-
     430:	4e93           	jsr %a3@
     432:	2040           	moveal %d0,%a0
     434:	4fef 0010      	lea %sp@(16),%sp
     438:	121a           	moveb %a2@+,%d1
     43a:	0c01 0052      	cmpib #82,%d1
     43e:	66ba           	bnes 3fa <___register_frame_info_bases-0xace>
     440:	60ce           	bras 410 <___register_frame_info_bases-0xab8>
     442:	43e8 0002      	lea %a0@(2),%a1
     446:	608e           	bras 3d6 <___register_frame_info_bases-0xaf2>
     448:	7000           	moveq #0,%d0
     44a:	4600           	notb %d0
     44c:	0c32 0004 b809 	cmpib #4,%a2@(00000009,%a3:l)
     452:	6600 ff3c      	bnew 390 <___register_frame_info_bases-0xb38>
     456:	4a32 b80a      	tstb %a2@(0000000a,%a3:l)
     45a:	6600 ff34      	bnew 390 <___register_frame_info_bases-0xb38>
     45e:	41e9 0003      	lea %a1@(3),%a0
     462:	0c2a 007a 0009 	cmpib #122,%a2@(9)
     468:	6600 ff24      	bnew 38e <___register_frame_info_bases-0xb3a>
     46c:	6000 ff2a      	braw 398 <___register_frame_info_bases-0xb30>
     470:	598f           	subql #4,%sp
     472:	48e7 3f3e      	moveml %d2-%d7/%a2-%fp,%sp@-
     476:	286f 0034      	moveal %sp@(52),%a4
     47a:	246f 0038      	moveal %sp@(56),%a2
     47e:	4a92           	tstl %a2@
     480:	6700 00f6      	beqw 578 <___register_frame_info_bases-0x950>
     484:	7a00           	moveq #0,%d5
     486:	7600           	moveq #0,%d3
     488:	7c00           	moveq #0,%d6
     48a:	7800           	moveq #0,%d4
     48c:	4dfa fd50      	lea %pc@(1de <___register_frame_info_bases-0xcea>),%fp
     490:	4bfa fcb6      	lea %pc@(148 <___register_frame_info_bases-0xd80>),%a5
     494:	2e3c 0000 0358 	movel #856,%d7
     49a:	202a 0004      	movel %a2@(4),%d0
     49e:	6700 0090      	beqw 530 <___register_frame_info_bases-0x998>
     4a2:	47ea 0004      	lea %a2@(4),%a3
     4a6:	97c0           	subal %d0,%a3
     4a8:	b7c4           	cmpal %d4,%a3
     4aa:	6700 00ba      	beqw 566 <___register_frame_info_bases-0x962>
     4ae:	2f0b           	movel %a3,%sp@-
     4b0:	2047           	moveal %d7,%a0
     4b2:	4e90           	jsr %a0@
     4b4:	2600           	movel %d0,%d3
     4b6:	588f           	addql #4,%sp
     4b8:	0c80 0000 00ff 	cmpil #255,%d0
     4be:	6700 00ac      	beqw 56c <___register_frame_info_bases-0x95c>
     4c2:	1800           	moveb %d0,%d4
     4c4:	7400           	moveq #0,%d2
     4c6:	1400           	moveb %d0,%d2
     4c8:	2f0c           	movel %a4,%sp@-
     4ca:	2f02           	movel %d2,%sp@-
     4cc:	4eba fcba      	jsr %pc@(188 <___register_frame_info_bases-0xd40>)
     4d0:	508f           	addql #8,%sp
     4d2:	2a00           	movel %d0,%d5
     4d4:	302c 0010      	movew %a4@(16),%d0
     4d8:	0240 1fe0      	andiw #8160,%d0
     4dc:	0c40 1fe0      	cmpiw #8160,%d0
     4e0:	6768           	beqs 54a <___register_frame_info_bases-0x97e>
     4e2:	302c 0010      	movew %a4@(16),%d0
     4e6:	ea48           	lsrw #5,%d0
     4e8:	0280 0000 00ff 	andil #255,%d0
     4ee:	b083           	cmpl %d3,%d0
     4f0:	6770           	beqs 562 <___register_frame_info_bases-0x966>
     4f2:	002c 0020 0010 	orib #32,%a4@(16)
     4f8:	280b           	movel %a3,%d4
     4fa:	486f 002c      	pea %sp@(44)
     4fe:	486a 0008      	pea %a2@(8)
     502:	2f05           	movel %d5,%sp@-
     504:	2f02           	movel %d2,%sp@-
     506:	4e96           	jsr %fp@
     508:	2f02           	movel %d2,%sp@-
     50a:	4e95           	jsr %a5@
     50c:	4fef 0014      	lea %sp@(20),%sp
     510:	7203           	moveq #3,%d1
     512:	b280           	cmpl %d0,%d1
     514:	6530           	bcss 546 <___register_frame_info_bases-0x982>
     516:	e788           	lsll #3,%d0
     518:	123c 0001      	moveb #1,%d1
     51c:	e1a9           	lsll %d0,%d1
     51e:	5381           	subql #1,%d1
     520:	202f 002c      	movel %sp@(44),%d0
     524:	c280           	andl %d0,%d1
     526:	6708           	beqs 530 <___register_frame_info_bases-0x998>
     528:	5286           	addql #1,%d6
     52a:	b094           	cmpl %a4@,%d0
     52c:	6402           	bccs 530 <___register_frame_info_bases-0x998>
     52e:	2880           	movel %d0,%a4@
     530:	2012           	movel %a2@,%d0
     532:	5880           	addql #4,%d0
     534:	d5c0           	addal %d0,%a2
     536:	4a92           	tstl %a2@
     538:	6600 ff60      	bnew 49a <___register_frame_info_bases-0xa2e>
     53c:	2006           	movel %d6,%d0
     53e:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
     542:	588f           	addql #4,%sp
     544:	4e75           	rts
     546:	72ff           	moveq #-1,%d1
     548:	60d6           	bras 520 <___register_frame_info_bases-0x9a8>
     54a:	0244 00ff      	andiw #255,%d4
     54e:	eb4c           	lslw #5,%d4
     550:	302c 0010      	movew %a4@(16),%d0
     554:	0240 e01f      	andiw #-8161,%d0
     558:	8044           	orw %d4,%d0
     55a:	3940 0010      	movew %d0,%a4@(16)
     55e:	280b           	movel %a3,%d4
     560:	6098           	bras 4fa <___register_frame_info_bases-0x9ce>
     562:	280b           	movel %a3,%d4
     564:	6094           	bras 4fa <___register_frame_info_bases-0x9ce>
     566:	7400           	moveq #0,%d2
     568:	1403           	moveb %d3,%d2
     56a:	608e           	bras 4fa <___register_frame_info_bases-0x9ce>
     56c:	7cff           	moveq #-1,%d6
     56e:	2006           	movel %d6,%d0
     570:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
     574:	588f           	addql #4,%sp
     576:	4e75           	rts
     578:	7c00           	moveq #0,%d6
     57a:	2006           	movel %d6,%d0
     57c:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
     580:	588f           	addql #4,%sp
     582:	4e75           	rts
     584:	598f           	subql #4,%sp
     586:	48e7 3f3e      	moveml %d2-%d7/%a2-%fp,%sp@-
     58a:	286f 0034      	moveal %sp@(52),%a4
     58e:	2c6f 0038      	moveal %sp@(56),%fp
     592:	246f 003c      	moveal %sp@(60),%a2
     596:	342c 0010      	movew %a4@(16),%d2
     59a:	ea4a           	lsrw #5,%d2
     59c:	0282 0000 00ff 	andil #255,%d2
     5a2:	2f0c           	movel %a4,%sp@-
     5a4:	2f02           	movel %d2,%sp@-
     5a6:	4bfa fbe0      	lea %pc@(188 <___register_frame_info_bases-0xd40>),%a5
     5aa:	4e95           	jsr %a5@
     5ac:	508f           	addql #8,%sp
     5ae:	2a00           	movel %d0,%d5
     5b0:	4a92           	tstl %a2@
     5b2:	6772           	beqs 626 <___register_frame_info_bases-0x8a2>
     5b4:	7600           	moveq #0,%d3
     5b6:	2e3c 0000 0148 	movel #328,%d7
     5bc:	2c3c 0000 0358 	movel #856,%d6
     5c2:	202a 0004      	movel %a2@(4),%d0
     5c6:	6754           	beqs 61c <___register_frame_info_bases-0x8ac>
     5c8:	082c 0005 0010 	btst #5,%a4@(16)
     5ce:	6724           	beqs 5f4 <___register_frame_info_bases-0x8d4>
     5d0:	47ea 0004      	lea %a2@(4),%a3
     5d4:	97c0           	subal %d0,%a3
     5d6:	b7c3           	cmpal %d3,%a3
     5d8:	671a           	beqs 5f4 <___register_frame_info_bases-0x8d4>
     5da:	2f0b           	movel %a3,%sp@-
     5dc:	2046           	moveal %d6,%a0
     5de:	4e90           	jsr %a0@
     5e0:	2400           	movel %d0,%d2
     5e2:	2f0c           	movel %a4,%sp@-
     5e4:	7000           	moveq #0,%d0
     5e6:	1002           	moveb %d2,%d0
     5e8:	2f00           	movel %d0,%sp@-
     5ea:	4e95           	jsr %a5@
     5ec:	2a00           	movel %d0,%d5
     5ee:	4fef 000c      	lea %sp@(12),%sp
     5f2:	260b           	movel %a3,%d3
     5f4:	4a82           	tstl %d2
     5f6:	6636           	bnes 62e <___register_frame_info_bases-0x89a>
     5f8:	4aaa 0008      	tstl %a2@(8)
     5fc:	671e           	beqs 61c <___register_frame_info_bases-0x8ac>
     5fe:	2056           	moveal %fp@,%a0
     600:	b0fc 0000      	cmpaw #0,%a0
     604:	6716           	beqs 61c <___register_frame_info_bases-0x8ac>
     606:	2028 0004      	movel %a0@(4),%d0
     60a:	2200           	movel %d0,%d1
     60c:	5481           	addql #2,%d1
     60e:	d281           	addl %d1,%d1
     610:	d281           	addl %d1,%d1
     612:	218a 1800      	movel %a2,%a0@(00000000,%d1:l)
     616:	5280           	addql #1,%d0
     618:	2140 0004      	movel %d0,%a0@(4)
     61c:	2012           	movel %a2@,%d0
     61e:	5880           	addql #4,%d0
     620:	d5c0           	addal %d0,%a2
     622:	4a92           	tstl %a2@
     624:	669c           	bnes 5c2 <___register_frame_info_bases-0x906>
     626:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
     62a:	588f           	addql #4,%sp
     62c:	4e75           	rts
     62e:	7800           	moveq #0,%d4
     630:	1802           	moveb %d2,%d4
     632:	486f 002c      	pea %sp@(44)
     636:	486a 0008      	pea %a2@(8)
     63a:	2f05           	movel %d5,%sp@-
     63c:	2f04           	movel %d4,%sp@-
     63e:	4eba fb9e      	jsr %pc@(1de <___register_frame_info_bases-0xcea>)
     642:	2f04           	movel %d4,%sp@-
     644:	2047           	moveal %d7,%a0
     646:	4e90           	jsr %a0@
     648:	4fef 0014      	lea %sp@(20),%sp
     64c:	7203           	moveq #3,%d1
     64e:	b280           	cmpl %d0,%d1
     650:	6520           	bcss 672 <___register_frame_info_bases-0x856>
     652:	e788           	lsll #3,%d0
     654:	123c 0001      	moveb #1,%d1
     658:	e1a9           	lsll %d0,%d1
     65a:	2001           	movel %d1,%d0
     65c:	5380           	subql #1,%d0
     65e:	c0af 002c      	andl %sp@(44),%d0
     662:	669a           	bnes 5fe <___register_frame_info_bases-0x8ca>
     664:	2012           	movel %a2@,%d0
     666:	5880           	addql #4,%d0
     668:	d5c0           	addal %d0,%a2
     66a:	4a92           	tstl %a2@
     66c:	6600 ff54      	bnew 5c2 <___register_frame_info_bases-0x906>
     670:	60b4           	bras 626 <___register_frame_info_bases-0x8a2>
     672:	70ff           	moveq #-1,%d0
     674:	c0af 002c      	andl %sp@(44),%d0
     678:	67ea           	beqs 664 <___register_frame_info_bases-0x864>
     67a:	6082           	bras 5fe <___register_frame_info_bases-0x8ca>
     67c:	4e56 fff8      	linkw %fp,#-8
     680:	48e7 3030      	moveml %d2-%d3/%a2-%a3,%sp@-
     684:	246e 0008      	moveal %fp@(8),%a2
     688:	362a 0010      	movew %a2@(16),%d3
     68c:	ea4b           	lsrw #5,%d3
     68e:	0283 0000 00ff 	andil #255,%d3
     694:	2f0a           	movel %a2,%sp@-
     696:	2f03           	movel %d3,%sp@-
     698:	4eba faee      	jsr %pc@(188 <___register_frame_info_bases-0xd40>)
     69c:	508f           	addql #8,%sp
     69e:	2400           	movel %d0,%d2
     6a0:	486e fff8      	pea %fp@(-8)
     6a4:	202e 000c      	movel %fp@(12),%d0
     6a8:	5080           	addql #8,%d0
     6aa:	2f00           	movel %d0,%sp@-
     6ac:	2f02           	movel %d2,%sp@-
     6ae:	2f03           	movel %d3,%sp@-
     6b0:	47fa fb2c      	lea %pc@(1de <___register_frame_info_bases-0xcea>),%a3
     6b4:	4e93           	jsr %a3@
     6b6:	486e fffc      	pea %fp@(-4)
     6ba:	222e 0010      	movel %fp@(16),%d1
     6be:	5081           	addql #8,%d1
     6c0:	2f01           	movel %d1,%sp@-
     6c2:	2f02           	movel %d2,%sp@-
     6c4:	302a 0010      	movew %a2@(16),%d0
     6c8:	ea88           	lsrl #5,%d0
     6ca:	7200           	moveq #0,%d1
     6cc:	4601           	notb %d1
     6ce:	c280           	andl %d0,%d1
     6d0:	2f01           	movel %d1,%sp@-
     6d2:	4e93           	jsr %a3@
     6d4:	222e fff8      	movel %fp@(-8),%d1
     6d8:	202e fffc      	movel %fp@(-4),%d0
     6dc:	4fef 0020      	lea %sp@(32),%sp
     6e0:	b081           	cmpl %d1,%d0
     6e2:	6510           	bcss 6f4 <___register_frame_info_bases-0x7d4>
     6e4:	52c0           	shi %d0
     6e6:	4880           	extw %d0
     6e8:	48c0           	extl %d0
     6ea:	4cee 0c0c ffe8 	moveml %fp@(-24),%d2-%d3/%a2-%a3
     6f0:	4e5e           	unlk %fp
     6f2:	4e75           	rts
     6f4:	7001           	moveq #1,%d0
     6f6:	4cee 0c0c ffe8 	moveml %fp@(-24),%d2-%d3/%a2-%a3
     6fc:	4e5e           	unlk %fp
     6fe:	4e75           	rts
     700:	518f           	subql #8,%sp
     702:	48e7 3f3e      	moveml %d2-%d7/%a2-%fp,%sp@-
     706:	286f 0038      	moveal %sp@(56),%a4
     70a:	246f 003c      	moveal %sp@(60),%a2
     70e:	2a2f 0040      	movel %sp@(64),%d5
     712:	342c 0010      	movew %a4@(16),%d2
     716:	ea4a           	lsrw #5,%d2
     718:	0282 0000 00ff 	andil #255,%d2
     71e:	2f0c           	movel %a4,%sp@-
     720:	2f02           	movel %d2,%sp@-
     722:	4dfa fa64      	lea %pc@(188 <___register_frame_info_bases-0xd40>),%fp
     726:	4e96           	jsr %fp@
     728:	508f           	addql #8,%sp
     72a:	2800           	movel %d0,%d4
     72c:	4a92           	tstl %a2@
     72e:	6760           	beqs 790 <___register_frame_info_bases-0x738>
     730:	7600           	moveq #0,%d3
     732:	4bfa faaa      	lea %pc@(1de <___register_frame_info_bases-0xcea>),%a5
     736:	2c3c 0000 0358 	movel #856,%d6
     73c:	202a 0004      	movel %a2@(4),%d0
     740:	6744           	beqs 786 <___register_frame_info_bases-0x742>
     742:	082c 0005 0010 	btst #5,%a4@(16)
     748:	6724           	beqs 76e <___register_frame_info_bases-0x75a>
     74a:	47ea 0004      	lea %a2@(4),%a3
     74e:	97c0           	subal %d0,%a3
     750:	b7c3           	cmpal %d3,%a3
     752:	671a           	beqs 76e <___register_frame_info_bases-0x75a>
     754:	2f0b           	movel %a3,%sp@-
     756:	2046           	moveal %d6,%a0
     758:	4e90           	jsr %a0@
     75a:	2400           	movel %d0,%d2
     75c:	2f0c           	movel %a4,%sp@-
     75e:	7000           	moveq #0,%d0
     760:	1002           	moveb %d2,%d0
     762:	2f00           	movel %d0,%sp@-
     764:	4e96           	jsr %fp@
     766:	2800           	movel %d0,%d4
     768:	4fef 000c      	lea %sp@(12),%sp
     76c:	260b           	movel %a3,%d3
     76e:	4a82           	tstl %d2
     770:	662a           	bnes 79c <___register_frame_info_bases-0x72c>
     772:	202a 0008      	movel %a2@(8),%d0
     776:	2f40 002c      	movel %d0,%sp@(44)
     77a:	222a 000c      	movel %a2@(12),%d1
     77e:	2f41 0030      	movel %d1,%sp@(48)
     782:	4a80           	tstl %d0
     784:	6664           	bnes 7ea <___register_frame_info_bases-0x6de>
     786:	2012           	movel %a2@,%d0
     788:	5880           	addql #4,%d0
     78a:	d5c0           	addal %d0,%a2
     78c:	4a92           	tstl %a2@
     78e:	66ac           	bnes 73c <___register_frame_info_bases-0x78c>
     790:	95ca           	subal %a2,%a2
     792:	200a           	movel %a2,%d0
     794:	4cdf 7cfc      	moveml %sp@+,%d2-%d7/%a2-%fp
     798:	508f           	addql #8,%sp
     79a:	4e75           	rts
     79c:	7000           	moveq #0,%d0
     79e:	1002           	moveb %d2,%d0
     7a0:	2640           	moveal %d0,%a3
     7a2:	486f 002c      	pea %sp@(44)
     7a6:	486a 0008      	pea %a2@(8)
     7aa:	2f04           	movel %d4,%sp@-
     7ac:	2f0b           	movel %a3,%sp@-
     7ae:	4e95           	jsr %a5@
     7b0:	486f 0040      	pea %sp@(64)
     7b4:	2f00           	movel %d0,%sp@-
     7b6:	42a7           	clrl %sp@-
     7b8:	220b           	movel %a3,%d1
     7ba:	7e0f           	moveq #15,%d7
     7bc:	c287           	andl %d7,%d1
     7be:	2f01           	movel %d1,%sp@-
     7c0:	4e95           	jsr %a5@
     7c2:	4fef 001c      	lea %sp@(28),%sp
     7c6:	2e8b           	movel %a3,%sp@
     7c8:	4eba f97e      	jsr %pc@(148 <___register_frame_info_bases-0xd80>)
     7cc:	588f           	addql #4,%sp
     7ce:	7203           	moveq #3,%d1
     7d0:	b280           	cmpl %d0,%d1
     7d2:	652c           	bcss 800 <___register_frame_info_bases-0x6c8>
     7d4:	e788           	lsll #3,%d0
     7d6:	123c 0001      	moveb #1,%d1
     7da:	e1a9           	lsll %d0,%d1
     7dc:	5381           	subql #1,%d1
     7de:	202f 002c      	movel %sp@(44),%d0
     7e2:	c280           	andl %d0,%d1
     7e4:	67a0           	beqs 786 <___register_frame_info_bases-0x742>
     7e6:	222f 0030      	movel %sp@(48),%d1
     7ea:	2e05           	movel %d5,%d7
     7ec:	9e80           	subl %d0,%d7
     7ee:	b287           	cmpl %d7,%d1
     7f0:	62a0           	bhis 792 <___register_frame_info_bases-0x736>
     7f2:	2012           	movel %a2@,%d0
     7f4:	5880           	addql #4,%d0
     7f6:	d5c0           	addal %d0,%a2
     7f8:	4a92           	tstl %a2@
     7fa:	6600 ff40      	bnew 73c <___register_frame_info_bases-0x78c>
     7fe:	6090           	bras 790 <___register_frame_info_bases-0x738>
     800:	72ff           	moveq #-1,%d1
     802:	60da           	bras 7de <___register_frame_info_bases-0x6ea>
     804:	4e56 ffe0      	linkw %fp,#-32
     808:	48e7 3f3c      	moveml %d2-%d7/%a2-%a5,%sp@-
     80c:	266e 0008      	moveal %fp@(8),%a3
     810:	262e 000c      	movel %fp@(12),%d3
     814:	102b 0010      	moveb %a3@(16),%d0
     818:	6d00 02f8      	bltw b12 <___register_frame_info_bases-0x3b6>
     81c:	282b 0010      	movel %a3@(16),%d4
     820:	0284 001f ffff 	andil #2097151,%d4
     826:	6700 024a      	beqw a72 <___register_frame_info_bases-0x456>
     82a:	2404           	movel %d4,%d2
     82c:	5482           	addql #2,%d2
     82e:	d482           	addl %d2,%d2
     830:	d482           	addl %d2,%d2
     832:	2f02           	movel %d2,%sp@-
     834:	45f9 0000 0000 	lea 0 <___register_frame_info_bases-0xec8>,%a2
     83a:	4e92           	jsr %a2@
     83c:	2c00           	movel %d0,%d6
     83e:	2d40 fff0      	movel %d0,%fp@(-16)
     842:	588f           	addql #4,%sp
     844:	6700 0286      	beqw acc <___register_frame_info_bases-0x3fc>
     848:	2040           	moveal %d0,%a0
     84a:	42a8 0004      	clrl %a0@(4)
     84e:	2f02           	movel %d2,%sp@-
     850:	4e92           	jsr %a2@
     852:	2d40 fff4      	movel %d0,%fp@(-12)
     856:	588f           	addql #4,%sp
     858:	6706           	beqs 860 <___register_frame_info_bases-0x668>
     85a:	2240           	moveal %d0,%a1
     85c:	42a9 0004      	clrl %a1@(4)
     860:	082b 0006 0010 	btst #6,%a3@(16)
     866:	6700 056a      	beqw dd2 <___register_frame_info_bases-0xf6>
     86a:	246b 000c      	moveal %a3@(12),%a2
     86e:	2012           	movel %a2@,%d0
     870:	6720           	beqs 892 <___register_frame_info_bases-0x636>
     872:	588a           	addql #4,%a2
     874:	4bee fff0      	lea %fp@(-16),%a5
     878:	49fa fd0a      	lea %pc@(584 <___register_frame_info_bases-0x944>),%a4
     87c:	2f00           	movel %d0,%sp@-
     87e:	2f0d           	movel %a5,%sp@-
     880:	2f0b           	movel %a3,%sp@-
     882:	4e94           	jsr %a4@
     884:	201a           	movel %a2@+,%d0
     886:	4fef 000c      	lea %sp@(12),%sp
     88a:	66f0           	bnes 87c <___register_frame_info_bases-0x64c>
     88c:	2c2e fff0      	movel %fp@(-16),%d6
     890:	670a           	beqs 89c <___register_frame_info_bases-0x62c>
     892:	2446           	moveal %d6,%a2
     894:	b8aa 0004      	cmpl %a2@(4),%d4
     898:	6600 0592      	bnew e2c <___register_frame_info_bases-0x9c>
     89c:	4bfa 0594      	lea %pc@(e32 <___register_frame_info_bases-0x96>),%a5
     8a0:	082b 0005 0010 	btst #5,%a3@(16)
     8a6:	6612           	bnes 8ba <___register_frame_info_bases-0x60e>
     8a8:	302b 0010      	movew %a3@(16),%d0
     8ac:	0240 1fe0      	andiw #8160,%d0
     8b0:	4bfa fdca      	lea %pc@(67c <___register_frame_info_bases-0x84c>),%a5
     8b4:	6604           	bnes 8ba <___register_frame_info_bases-0x60e>
     8b6:	4bfa f748      	lea %pc@(0 <___register_frame_info_bases-0xec8>),%a5
     8ba:	286e fff4      	moveal %fp@(-12),%a4
     8be:	b8fc 0000      	cmpaw #0,%a4
     8c2:	6700 0538      	beqw dfc <___register_frame_info_bases-0xcc>
     8c6:	2046           	moveal %d6,%a0
     8c8:	2e28 0004      	movel %a0@(4),%d7
     8cc:	6700 0522      	beqw df0 <___register_frame_info_bases-0xd8>
     8d0:	43ec 0008      	lea %a4@(8),%a1
     8d4:	2d49 ffe8      	movel %a1,%fp@(-24)
     8d8:	347c 000c      	moveaw #12,%a2
     8dc:	d5c6           	addal %d6,%a2
     8de:	2d4a ffe4      	movel %a2,%fp@(-28)
     8e2:	2d49 ffec      	movel %a1,%fp@(-20)
     8e6:	7000           	moveq #0,%d0
     8e8:	45f9 0000 1270 	lea 1270 <__Unwind_Find_FDE+0x152>,%a2
     8ee:	2406           	movel %d6,%d2
     8f0:	5082           	addql #8,%d2
     8f2:	226e ffec      	moveal %fp@(-20),%a1
     8f6:	58ae ffec      	addql #4,%fp@(-20)
     8fa:	22ca           	movel %a2,%a1@+
     8fc:	2a00           	movel %d0,%d5
     8fe:	5285           	addql #1,%d5
     900:	be85           	cmpl %d5,%d7
     902:	675a           	beqs 95e <___register_frame_info_bases-0x56a>
     904:	5480           	addql #2,%d0
     906:	d080           	addl %d0,%d0
     908:	2440           	moveal %d0,%a2
     90a:	d5c0           	addal %d0,%a2
     90c:	45f2 6800      	lea %a2@(00000000,%d6:l),%a2
     910:	b5fc 0000 1270 	cmpal #4720,%a2
     916:	672e           	beqs 946 <___register_frame_info_bases-0x582>
     918:	2f12           	movel %a2@,%sp@-
     91a:	206e ffe4      	moveal %fp@(-28),%a0
     91e:	2f10           	movel %a0@,%sp@-
     920:	2f0b           	movel %a3,%sp@-
     922:	4e95           	jsr %a5@
     924:	4fef 000c      	lea %sp@(12),%sp
     928:	4a80           	tstl %d0
     92a:	6c1a           	bges 946 <___register_frame_info_bases-0x582>
     92c:	200a           	movel %a2,%d0
     92e:	9082           	subl %d2,%d0
     930:	72fc           	moveq #-4,%d1
     932:	c081           	andl %d1,%d0
     934:	5080           	addql #8,%d0
     936:	2474 0800      	moveal %a4@(00000000,%d0:l),%a2
     93a:	42b4 0800      	clrl %a4@(00000000,%d0:l)
     93e:	b5fc 0000 1270 	cmpal #4720,%a2
     944:	66d2           	bnes 918 <___register_frame_info_bases-0x5b0>
     946:	58ae ffe4      	addql #4,%fp@(-28)
     94a:	2005           	movel %d5,%d0
     94c:	226e ffec      	moveal %fp@(-20),%a1
     950:	58ae ffec      	addql #4,%fp@(-20)
     954:	22ca           	movel %a2,%a1@+
     956:	2a00           	movel %d0,%d5
     958:	5285           	addql #1,%d5
     95a:	be85           	cmpl %d5,%d7
     95c:	66a6           	bnes 904 <___register_frame_info_bases-0x5c4>
     95e:	2042           	moveal %d2,%a0
     960:	7400           	moveq #0,%d2
     962:	7200           	moveq #0,%d1
     964:	7000           	moveq #0,%d0
     966:	246e ffe8      	moveal %fp@(-24),%a2
     96a:	58ae ffe8      	addql #4,%fp@(-24)
     96e:	4a9a           	tstl %a2@+
     970:	6700 03f0      	beqw d62 <___register_frame_info_bases-0x166>
     974:	2241           	moveal %d1,%a1
     976:	5489           	addql #2,%a1
     978:	d3c9           	addal %a1,%a1
     97a:	d3c9           	addal %a1,%a1
     97c:	2390 6800      	movel %a0@,%a1@(00000000,%d6:l)
     980:	5281           	addql #1,%d1
     982:	5280           	addql #1,%d0
     984:	5888           	addql #4,%a0
     986:	be80           	cmpl %d0,%d7
     988:	66dc           	bnes 966 <___register_frame_info_bases-0x562>
     98a:	226e fff0      	moveal %fp@(-16),%a1
     98e:	206e fff4      	moveal %fp@(-12),%a0
     992:	2446           	moveal %d6,%a2
     994:	2541 0004      	movel %d1,%a2@(4)
     998:	2942 0004      	movel %d2,%a4@(4)
     99c:	2028 0004      	movel %a0@(4),%d0
     9a0:	d0a9 0004      	addl %a1@(4),%d0
     9a4:	b084           	cmpl %d4,%d0
     9a6:	6600 0484      	bnew e2c <___register_frame_info_bases-0x9c>
     9aa:	2f08           	movel %a0,%sp@-
     9ac:	2f0d           	movel %a5,%sp@-
     9ae:	2f0b           	movel %a3,%sp@-
     9b0:	4eba f720      	jsr %pc@(d2 <___register_frame_info_bases-0xdf6>)
     9b4:	2d6e fff4 ffe8 	movel %fp@(-12),%fp@(-24)
     9ba:	2c2e fff0      	movel %fp@(-16),%d6
     9be:	226e ffe8      	moveal %fp@(-24),%a1
     9c2:	2069 0004      	moveal %a1@(4),%a0
     9c6:	4fef 000c      	lea %sp@(12),%sp
     9ca:	b0fc 0000      	cmpaw #0,%a0
     9ce:	6700 03c2      	beqw d92 <___register_frame_info_bases-0x136>
     9d2:	2446           	moveal %d6,%a2
     9d4:	222a 0004      	movel %a2@(4),%d1
     9d8:	43e8 0002      	lea %a0@(2),%a1
     9dc:	2e09           	movel %a1,%d7
     9de:	de89           	addl %a1,%d7
     9e0:	2247           	moveal %d7,%a1
     9e2:	d3c7           	addal %d7,%a1
     9e4:	2e2e ffe8      	movel %fp@(-24),%d7
     9e8:	de89           	addl %a1,%d7
     9ea:	2a08           	movel %a0,%d5
     9ec:	5385           	subql #1,%d5
     9ee:	5987           	subql #4,%d7
     9f0:	2247           	moveal %d7,%a1
     9f2:	2811           	movel %a1@,%d4
     9f4:	4a81           	tstl %d1
     9f6:	6760           	beqs a58 <___register_frame_info_bases-0x470>
     9f8:	2441           	moveal %d1,%a2
     9fa:	548a           	addql #2,%a2
     9fc:	d5ca           	addal %a2,%a2
     9fe:	d5ca           	addal %a2,%a2
     a00:	45f2 6800      	lea %a2@(00000000,%d6:l),%a2
     a04:	41f0 1802      	lea %a0@(00000002,%d1:l),%a0
     a08:	d1c8           	addal %a0,%a0
     a0a:	d1c8           	addal %a0,%a0
     a0c:	2406           	movel %d6,%d2
     a0e:	d488           	addl %a0,%d2
     a10:	2841           	moveal %d1,%a4
     a12:	538c           	subql #1,%a4
     a14:	2f04           	movel %d4,%sp@-
     a16:	2f22           	movel %a2@-,%sp@-
     a18:	2f0b           	movel %a3,%sp@-
     a1a:	2d41 ffe0      	movel %d1,%fp@(-32)
     a1e:	4e95           	jsr %a5@
     a20:	4fef 000c      	lea %sp@(12),%sp
     a24:	222e ffe0      	movel %fp@(-32),%d1
     a28:	4a80           	tstl %d0
     a2a:	6f2c           	bles a58 <___register_frame_info_bases-0x470>
     a2c:	5982           	subql #4,%d2
     a2e:	2042           	moveal %d2,%a0
     a30:	2092           	movel %a2@,%a0@
     a32:	b8fc 0000      	cmpaw #0,%a4
     a36:	6700 0324      	beqw d5c <___register_frame_info_bases-0x16c>
     a3a:	220c           	movel %a4,%d1
     a3c:	2841           	moveal %d1,%a4
     a3e:	538c           	subql #1,%a4
     a40:	2f04           	movel %d4,%sp@-
     a42:	2f22           	movel %a2@-,%sp@-
     a44:	2f0b           	movel %a3,%sp@-
     a46:	2d41 ffe0      	movel %d1,%fp@(-32)
     a4a:	4e95           	jsr %a5@
     a4c:	4fef 000c      	lea %sp@(12),%sp
     a50:	222e ffe0      	movel %fp@(-32),%d1
     a54:	4a80           	tstl %d0
     a56:	6ed4           	bgts a2c <___register_frame_info_bases-0x49c>
     a58:	2245           	moveal %d5,%a1
     a5a:	41f1 1802      	lea %a1@(00000002,%d1:l),%a0
     a5e:	d1c8           	addal %a0,%a0
     a60:	d1c8           	addal %a0,%a0
     a62:	2184 6800      	movel %d4,%a0@(00000000,%d6:l)
     a66:	4a85           	tstl %d5
     a68:	6700 0314      	beqw d7e <___register_frame_info_bases-0x14a>
     a6c:	2045           	moveal %d5,%a0
     a6e:	6000 ff7a      	braw 9ea <___register_frame_info_bases-0x4de>
     a72:	0800 0006      	btst #6,%d0
     a76:	6700 01ec      	beqw c64 <___register_frame_info_bases-0x264>
     a7a:	246b 000c      	moveal %a3@(12),%a2
     a7e:	2012           	movel %a2@,%d0
     a80:	6700 039e      	beqw e20 <___register_frame_info_bases-0xa8>
     a84:	588a           	addql #4,%a2
     a86:	49fa f9e8      	lea %pc@(470 <___register_frame_info_bases-0xa58>),%a4
     a8a:	2f00           	movel %d0,%sp@-
     a8c:	2f0b           	movel %a3,%sp@-
     a8e:	4e94           	jsr %a4@
     a90:	508f           	addql #8,%sp
     a92:	72ff           	moveq #-1,%d1
     a94:	b280           	cmpl %d0,%d1
     a96:	6700 01e2      	beqw c7a <___register_frame_info_bases-0x24e>
     a9a:	d880           	addl %d0,%d4
     a9c:	201a           	movel %a2@+,%d0
     a9e:	66ea           	bnes a8a <___register_frame_info_bases-0x43e>
     aa0:	2204           	movel %d4,%d1
     aa2:	0281 001f ffff 	andil #2097151,%d1
     aa8:	202b 0010      	movel %a3@(16),%d0
     aac:	0280 ffe0 0000 	andil #-2097152,%d0
     ab2:	8081           	orl %d1,%d0
     ab4:	2740 0010      	movel %d0,%a3@(16)
     ab8:	b284           	cmpl %d4,%d1
     aba:	670a           	beqs ac6 <___register_frame_info_bases-0x402>
     abc:	0280 ffe0 0000 	andil #-2097152,%d0
     ac2:	2740 0010      	movel %d0,%a3@(16)
     ac6:	4a84           	tstl %d4
     ac8:	6600 fd60      	bnew 82a <___register_frame_info_bases-0x69e>
     acc:	b693           	cmpl %a3@,%d3
     ace:	6500 00d6      	bcsw ba6 <___register_frame_info_bases-0x322>
     ad2:	102b 0010      	moveb %a3@(16),%d0
     ad6:	6d3a           	blts b12 <___register_frame_info_bases-0x3b6>
     ad8:	0800 0006      	btst #6,%d0
     adc:	6700 02d6      	beqw db4 <___register_frame_info_bases-0x114>
     ae0:	286b 000c      	moveal %a3@(12),%a4
     ae4:	2014           	movel %a4@,%d0
     ae6:	6700 00be      	beqw ba6 <___register_frame_info_bases-0x322>
     aea:	588c           	addql #4,%a4
     aec:	4bfa fc12      	lea %pc@(700 <___register_frame_info_bases-0x7c8>),%a5
     af0:	2f03           	movel %d3,%sp@-
     af2:	2f00           	movel %d0,%sp@-
     af4:	2f0b           	movel %a3,%sp@-
     af6:	4e95           	jsr %a5@
     af8:	2440           	moveal %d0,%a2
     afa:	4fef 000c      	lea %sp@(12),%sp
     afe:	4a80           	tstl %d0
     b00:	6604           	bnes b06 <___register_frame_info_bases-0x3c2>
     b02:	201c           	movel %a4@+,%d0
     b04:	66ea           	bnes af0 <___register_frame_info_bases-0x3d8>
     b06:	200a           	movel %a2,%d0
     b08:	4cee 3cfc ffb8 	moveml %fp@(-72),%d2-%d7/%a2-%a5
     b0e:	4e5e           	unlk %fp
     b10:	4e75           	rts
     b12:	0800 0005      	btst #5,%d0
     b16:	6700 00a4      	beqw bbc <___register_frame_info_bases-0x30c>
     b1a:	2e2b 000c      	movel %a3@(12),%d7
     b1e:	2247           	moveal %d7,%a1
     b20:	2a69 0004      	moveal %a1@(4),%a5
     b24:	bafc 0000      	cmpaw #0,%a5
     b28:	677c           	beqs ba6 <___register_frame_info_bases-0x322>
     b2a:	7a00           	moveq #0,%d5
     b2c:	2c0e           	movel %fp,%d6
     b2e:	5186           	subql #8,%d6
     b30:	49fa f6ac      	lea %pc@(1de <___register_frame_info_bases-0xcea>),%a4
     b34:	45ee fffc      	lea %fp@(-4),%a2
     b38:	2d4a ffec      	movel %a2,%fp@(-20)
     b3c:	240d           	movel %a5,%d2
     b3e:	d485           	addl %d5,%d2
     b40:	e28a           	lsrl #1,%d2
     b42:	2002           	movel %d2,%d0
     b44:	5480           	addql #2,%d0
     b46:	d080           	addl %d0,%d0
     b48:	d080           	addl %d0,%d0
     b4a:	2040           	moveal %d0,%a0
     b4c:	2470 7800      	moveal %a0@(00000000,%d7:l),%a2
     b50:	41ea 0004      	lea %a2@(4),%a0
     b54:	91ea 0004      	subal %a2@(4),%a0
     b58:	2f08           	movel %a0,%sp@-
     b5a:	4eba f7fc      	jsr %pc@(358 <___register_frame_info_bases-0xb70>)
     b5e:	7800           	moveq #0,%d4
     b60:	1800           	moveb %d0,%d4
     b62:	2f0b           	movel %a3,%sp@-
     b64:	2f04           	movel %d4,%sp@-
     b66:	4eba f620      	jsr %pc@(188 <___register_frame_info_bases-0xd40>)
     b6a:	588f           	addql #4,%sp
     b6c:	2e86           	movel %d6,%sp@
     b6e:	486a 0008      	pea %a2@(8)
     b72:	2f00           	movel %d0,%sp@-
     b74:	2f04           	movel %d4,%sp@-
     b76:	4e94           	jsr %a4@
     b78:	2f2e ffec      	movel %fp@(-20),%sp@-
     b7c:	2f00           	movel %d0,%sp@-
     b7e:	42a7           	clrl %sp@-
     b80:	700f           	moveq #15,%d0
     b82:	c084           	andl %d4,%d0
     b84:	2f00           	movel %d0,%sp@-
     b86:	4e94           	jsr %a4@
     b88:	202e fff8      	movel %fp@(-8),%d0
     b8c:	4fef 0024      	lea %sp@(36),%sp
     b90:	b083           	cmpl %d3,%d0
     b92:	6220           	bhis bb4 <___register_frame_info_bases-0x314>
     b94:	d0ae fffc      	addl %fp@(-4),%d0
     b98:	b083           	cmpl %d3,%d0
     b9a:	6200 ff6a      	bhiw b06 <___register_frame_info_bases-0x3c2>
     b9e:	2a02           	movel %d2,%d5
     ba0:	5285           	addql #1,%d5
     ba2:	bbc5           	cmpal %d5,%a5
     ba4:	6296           	bhis b3c <___register_frame_info_bases-0x38c>
     ba6:	95ca           	subal %a2,%a2
     ba8:	200a           	movel %a2,%d0
     baa:	4cee 3cfc ffb8 	moveml %fp@(-72),%d2-%d7/%a2-%a5
     bb0:	4e5e           	unlk %fp
     bb2:	4e75           	rts
     bb4:	2a42           	moveal %d2,%a5
     bb6:	bbc5           	cmpal %d5,%a5
     bb8:	6282           	bhis b3c <___register_frame_info_bases-0x38c>
     bba:	60ea           	bras ba6 <___register_frame_info_bases-0x322>
     bbc:	302b 0010      	movew %a3@(16),%d0
     bc0:	0240 1fe0      	andiw #8160,%d0
     bc4:	6600 00ca      	bnew c90 <___register_frame_info_bases-0x238>
     bc8:	226b 000c      	moveal %a3@(12),%a1
     bcc:	2069 0004      	moveal %a1@(4),%a0
     bd0:	b0fc 0000      	cmpaw #0,%a0
     bd4:	67d0           	beqs ba6 <___register_frame_info_bases-0x322>
     bd6:	7400           	moveq #0,%d2
     bd8:	45ee fffc      	lea %fp@(-4),%a2
     bdc:	2d4a ffec      	movel %a2,%fp@(-20)
     be0:	2008           	movel %a0,%d0
     be2:	d082           	addl %d2,%d0
     be4:	e288           	lsrl #1,%d0
     be6:	2200           	movel %d0,%d1
     be8:	5481           	addql #2,%d1
     bea:	d281           	addl %d1,%d1
     bec:	d281           	addl %d1,%d1
     bee:	2471 1800      	moveal %a1@(00000000,%d1:l),%a2
     bf2:	222a 0008      	movel %a2@(8),%d1
     bf6:	266e ffec      	moveal %fp@(-20),%a3
     bfa:	16aa 000c      	moveb %a2@(12),%a3@
     bfe:	1d6a 000d fffd 	moveb %a2@(13),%fp@(-3)
     c04:	1d6a 000e fffe 	moveb %a2@(14),%fp@(-2)
     c0a:	1d6a 000f ffff 	moveb %a2@(15),%fp@(-1)
     c10:	b283           	cmpl %d3,%d1
     c12:	6246           	bhis c5a <___register_frame_info_bases-0x26e>
     c14:	d2ae fffc      	addl %fp@(-4),%d1
     c18:	b283           	cmpl %d3,%d1
     c1a:	6200 feea      	bhiw b06 <___register_frame_info_bases-0x3c2>
     c1e:	2400           	movel %d0,%d2
     c20:	5282           	addql #1,%d2
     c22:	b488           	cmpl %a0,%d2
     c24:	6480           	bccs ba6 <___register_frame_info_bases-0x322>
     c26:	2008           	movel %a0,%d0
     c28:	d082           	addl %d2,%d0
     c2a:	e288           	lsrl #1,%d0
     c2c:	2200           	movel %d0,%d1
     c2e:	5481           	addql #2,%d1
     c30:	d281           	addl %d1,%d1
     c32:	d281           	addl %d1,%d1
     c34:	2471 1800      	moveal %a1@(00000000,%d1:l),%a2
     c38:	222a 0008      	movel %a2@(8),%d1
     c3c:	266e ffec      	moveal %fp@(-20),%a3
     c40:	16aa 000c      	moveb %a2@(12),%a3@
     c44:	1d6a 000d fffd 	moveb %a2@(13),%fp@(-3)
     c4a:	1d6a 000e fffe 	moveb %a2@(14),%fp@(-2)
     c50:	1d6a 000f ffff 	moveb %a2@(15),%fp@(-1)
     c56:	b283           	cmpl %d3,%d1
     c58:	63ba           	blss c14 <___register_frame_info_bases-0x2b4>
     c5a:	2040           	moveal %d0,%a0
     c5c:	b488           	cmpl %a0,%d2
     c5e:	65c6           	bcss c26 <___register_frame_info_bases-0x2a2>
     c60:	6000 ff44      	braw ba6 <___register_frame_info_bases-0x322>
     c64:	2f2b 000c      	movel %a3@(12),%sp@-
     c68:	2f0b           	movel %a3,%sp@-
     c6a:	4eba f804      	jsr %pc@(470 <___register_frame_info_bases-0xa58>)
     c6e:	2800           	movel %d0,%d4
     c70:	508f           	addql #8,%sp
     c72:	70ff           	moveq #-1,%d0
     c74:	b084           	cmpl %d4,%d0
     c76:	6600 fe28      	bnew aa0 <___register_frame_info_bases-0x428>
     c7a:	42ab 0010      	clrl %a3@(16)
     c7e:	377c 1fe0 0010 	movew #8160,%a3@(16)
     c84:	277c 0000 1268 	movel #4712,%a3@(12)
     c8a:	000c 
     c8c:	6000 fe3e      	braw acc <___register_frame_info_bases-0x3fc>
     c90:	2a6b 000c      	moveal %a3@(12),%a5
     c94:	3e2b 0010      	movew %a3@(16),%d7
     c98:	ea4f           	lsrw #5,%d7
     c9a:	0287 0000 00ff 	andil #255,%d7
     ca0:	2f0b           	movel %a3,%sp@-
     ca2:	2f07           	movel %d7,%sp@-
     ca4:	4eba f4e2      	jsr %pc@(188 <___register_frame_info_bases-0xd40>)
     ca8:	508f           	addql #8,%sp
     caa:	2d40 ffe8      	movel %d0,%fp@(-24)
     cae:	282d 0004      	movel %a5@(4),%d4
     cb2:	6700 fef2      	beqw ba6 <___register_frame_info_bases-0x322>
     cb6:	700f           	moveq #15,%d0
     cb8:	c087           	andl %d7,%d0
     cba:	2640           	moveal %d0,%a3
     cbc:	7a00           	moveq #0,%d5
     cbe:	2c0e           	movel %fp,%d6
     cc0:	5186           	subql #8,%d6
     cc2:	49fa f51a      	lea %pc@(1de <___register_frame_info_bases-0xcea>),%a4
     cc6:	41ee fffc      	lea %fp@(-4),%a0
     cca:	2d48 ffec      	movel %a0,%fp@(-20)
     cce:	2405           	movel %d5,%d2
     cd0:	d484           	addl %d4,%d2
     cd2:	e28a           	lsrl #1,%d2
     cd4:	2002           	movel %d2,%d0
     cd6:	5480           	addql #2,%d0
     cd8:	d080           	addl %d0,%d0
     cda:	d080           	addl %d0,%d0
     cdc:	2475 0800      	moveal %a5@(00000000,%d0:l),%a2
     ce0:	2f2e ffec      	movel %fp@(-20),%sp@-
     ce4:	486a 0008      	pea %a2@(8)
     ce8:	2f2e ffe8      	movel %fp@(-24),%sp@-
     cec:	2f07           	movel %d7,%sp@-
     cee:	4e94           	jsr %a4@
     cf0:	2f06           	movel %d6,%sp@-
     cf2:	2f00           	movel %d0,%sp@-
     cf4:	42a7           	clrl %sp@-
     cf6:	2f0b           	movel %a3,%sp@-
     cf8:	4e94           	jsr %a4@
     cfa:	202e fffc      	movel %fp@(-4),%d0
     cfe:	4fef 0020      	lea %sp@(32),%sp
     d02:	b083           	cmpl %d3,%d0
     d04:	624c           	bhis d52 <___register_frame_info_bases-0x176>
     d06:	d0ae fff8      	addl %fp@(-8),%d0
     d0a:	b083           	cmpl %d3,%d0
     d0c:	6200 fdf8      	bhiw b06 <___register_frame_info_bases-0x3c2>
     d10:	2a02           	movel %d2,%d5
     d12:	5285           	addql #1,%d5
     d14:	b885           	cmpl %d5,%d4
     d16:	6300 fe8e      	blsw ba6 <___register_frame_info_bases-0x322>
     d1a:	2405           	movel %d5,%d2
     d1c:	d484           	addl %d4,%d2
     d1e:	e28a           	lsrl #1,%d2
     d20:	2002           	movel %d2,%d0
     d22:	5480           	addql #2,%d0
     d24:	d080           	addl %d0,%d0
     d26:	d080           	addl %d0,%d0
     d28:	2475 0800      	moveal %a5@(00000000,%d0:l),%a2
     d2c:	2f2e ffec      	movel %fp@(-20),%sp@-
     d30:	486a 0008      	pea %a2@(8)
     d34:	2f2e ffe8      	movel %fp@(-24),%sp@-
     d38:	2f07           	movel %d7,%sp@-
     d3a:	4e94           	jsr %a4@
     d3c:	2f06           	movel %d6,%sp@-
     d3e:	2f00           	movel %d0,%sp@-
     d40:	42a7           	clrl %sp@-
     d42:	2f0b           	movel %a3,%sp@-
     d44:	4e94           	jsr %a4@
     d46:	202e fffc      	movel %fp@(-4),%d0
     d4a:	4fef 0020      	lea %sp@(32),%sp
     d4e:	b083           	cmpl %d3,%d0
     d50:	63b4           	blss d06 <___register_frame_info_bases-0x1c2>
     d52:	2802           	movel %d2,%d4
     d54:	b885           	cmpl %d5,%d4
     d56:	62c2           	bhis d1a <___register_frame_info_bases-0x1ae>
     d58:	6000 fe4c      	braw ba6 <___register_frame_info_bases-0x322>
     d5c:	7200           	moveq #0,%d1
     d5e:	6000 fcf8      	braw a58 <___register_frame_info_bases-0x470>
     d62:	2242           	moveal %d2,%a1
     d64:	5489           	addql #2,%a1
     d66:	d3c9           	addal %a1,%a1
     d68:	d3c9           	addal %a1,%a1
     d6a:	2990 9800      	movel %a0@,%a4@(00000000,%a1:l)
     d6e:	5282           	addql #1,%d2
     d70:	5280           	addql #1,%d0
     d72:	5888           	addql #4,%a0
     d74:	be80           	cmpl %d0,%d7
     d76:	6600 fbee      	bnew 966 <___register_frame_info_bases-0x562>
     d7a:	6000 fc0e      	braw 98a <___register_frame_info_bases-0x53e>
     d7e:	206e ffe8      	moveal %fp@(-24),%a0
     d82:	2028 0004      	movel %a0@(4),%d0
     d86:	2046           	moveal %d6,%a0
     d88:	d1a8 0004      	addl %d0,%a0@(4)
     d8c:	2d6e fff4 ffe8 	movel %fp@(-12),%fp@(-24)
     d92:	2f2e ffe8      	movel %fp@(-24),%sp@-
     d96:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
     d9c:	588f           	addql #4,%sp
     d9e:	206e fff0      	moveal %fp@(-16),%a0
     da2:	20ab 000c      	movel %a3@(12),%a0@
     da6:	2748 000c      	movel %a0,%a3@(12)
     daa:	002b ff80 0010 	orib #-128,%a3@(16)
     db0:	6000 fd1a      	braw acc <___register_frame_info_bases-0x3fc>
     db4:	2f03           	movel %d3,%sp@-
     db6:	2f2b 000c      	movel %a3@(12),%sp@-
     dba:	2f0b           	movel %a3,%sp@-
     dbc:	4eba f942      	jsr %pc@(700 <___register_frame_info_bases-0x7c8>)
     dc0:	2440           	moveal %d0,%a2
     dc2:	4fef 000c      	lea %sp@(12),%sp
     dc6:	200a           	movel %a2,%d0
     dc8:	4cee 3cfc ffb8 	moveml %fp@(-72),%d2-%d7/%a2-%a5
     dce:	4e5e           	unlk %fp
     dd0:	4e75           	rts
     dd2:	2f2b 000c      	movel %a3@(12),%sp@-
     dd6:	486e fff0      	pea %fp@(-16)
     dda:	2f0b           	movel %a3,%sp@-
     ddc:	4eba f7a6      	jsr %pc@(584 <___register_frame_info_bases-0x944>)
     de0:	2c2e fff0      	movel %fp@(-16),%d6
     de4:	4fef 000c      	lea %sp@(12),%sp
     de8:	6600 faa8      	bnew 892 <___register_frame_info_bases-0x636>
     dec:	6000 faae      	braw 89c <___register_frame_info_bases-0x62c>
     df0:	204c           	moveal %a4,%a0
     df2:	2246           	moveal %d6,%a1
     df4:	7400           	moveq #0,%d2
     df6:	7200           	moveq #0,%d1
     df8:	6000 fb98      	braw 992 <___register_frame_info_bases-0x536>
     dfc:	2f06           	movel %d6,%sp@-
     dfe:	2f0d           	movel %a5,%sp@-
     e00:	2f0b           	movel %a3,%sp@-
     e02:	4eba f2ce      	jsr %pc@(d2 <___register_frame_info_bases-0xdf6>)
     e06:	4fef 000c      	lea %sp@(12),%sp
     e0a:	206e fff0      	moveal %fp@(-16),%a0
     e0e:	20ab 000c      	movel %a3@(12),%a0@
     e12:	2748 000c      	movel %a0,%a3@(12)
     e16:	002b ff80 0010 	orib #-128,%a3@(16)
     e1c:	6000 fcae      	braw acc <___register_frame_info_bases-0x3fc>
     e20:	02ab ffe0 0000 	andil #-2097152,%a3@(16)
     e26:	0010 
     e28:	6000 fca2      	braw acc <___register_frame_info_bases-0x3fc>
     e2c:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
     e32:	4e56 fff8      	linkw %fp,#-8
     e36:	48e7 303c      	moveml %d2-%d3/%a2-%a5,%sp@-
     e3a:	262e 0008      	movel %fp@(8),%d3
     e3e:	266e 000c      	moveal %fp@(12),%a3
     e42:	246e 0010      	moveal %fp@(16),%a2
     e46:	41eb 0004      	lea %a3@(4),%a0
     e4a:	91eb 0004      	subal %a3@(4),%a0
     e4e:	2f08           	movel %a0,%sp@-
     e50:	4bfa f506      	lea %pc@(358 <___register_frame_info_bases-0xb70>),%a5
     e54:	4e95           	jsr %a5@
     e56:	7400           	moveq #0,%d2
     e58:	1400           	moveb %d0,%d2
     e5a:	2f03           	movel %d3,%sp@-
     e5c:	2f02           	movel %d2,%sp@-
     e5e:	49fa f328      	lea %pc@(188 <___register_frame_info_bases-0xd40>),%a4
     e62:	4e94           	jsr %a4@
     e64:	508f           	addql #8,%sp
     e66:	486e fff8      	pea %fp@(-8)
     e6a:	486b 0008      	pea %a3@(8)
     e6e:	2f00           	movel %d0,%sp@-
     e70:	2f02           	movel %d2,%sp@-
     e72:	47fa f36a      	lea %pc@(1de <___register_frame_info_bases-0xcea>),%a3
     e76:	4e93           	jsr %a3@
     e78:	41ea 0004      	lea %a2@(4),%a0
     e7c:	91ea 0004      	subal %a2@(4),%a0
     e80:	2f08           	movel %a0,%sp@-
     e82:	4e95           	jsr %a5@
     e84:	1400           	moveb %d0,%d2
     e86:	2f03           	movel %d3,%sp@-
     e88:	2f02           	movel %d2,%sp@-
     e8a:	4e94           	jsr %a4@
     e8c:	508f           	addql #8,%sp
     e8e:	486e fffc      	pea %fp@(-4)
     e92:	486a 0008      	pea %a2@(8)
     e96:	2f00           	movel %d0,%sp@-
     e98:	2f02           	movel %d2,%sp@-
     e9a:	4e93           	jsr %a3@
     e9c:	222e fff8      	movel %fp@(-8),%d1
     ea0:	202e fffc      	movel %fp@(-4),%d0
     ea4:	4fef 0028      	lea %sp@(40),%sp
     ea8:	b081           	cmpl %d1,%d0
     eaa:	6510           	bcss ebc <___register_frame_info_bases-0xc>
     eac:	52c0           	shi %d0
     eae:	4880           	extw %d0
     eb0:	48c0           	extl %d0
     eb2:	4cee 3c0c ffe0 	moveml %fp@(-32),%d2-%d3/%a2-%a5
     eb8:	4e5e           	unlk %fp
     eba:	4e75           	rts
     ebc:	7001           	moveq #1,%d0
     ebe:	4cee 3c0c ffe0 	moveml %fp@(-32),%d2-%d3/%a2-%a5
     ec4:	4e5e           	unlk %fp
     ec6:	4e75           	rts

00000ec8 <___register_frame_info_bases>:
     ec8:	226f 0004      	moveal %sp@(4),%a1
     ecc:	206f 0008      	moveal %sp@(8),%a0
     ed0:	b2fc 0000      	cmpaw #0,%a1
     ed4:	6730           	beqs f06 <___register_frame_info_bases+0x3e>
     ed6:	4a91           	tstl %a1@
     ed8:	672c           	beqs f06 <___register_frame_info_bases+0x3e>
     eda:	70ff           	moveq #-1,%d0
     edc:	2080           	movel %d0,%a0@
     ede:	216f 000c 0004 	movel %sp@(12),%a0@(4)
     ee4:	216f 0010 0008 	movel %sp@(16),%a0@(8)
     eea:	2149 000c      	movel %a1,%a0@(12)
     eee:	42a8 0010      	clrl %a0@(16)
     ef2:	317c 1fe0 0010 	movew #8160,%a0@(16)
     ef8:	2179 0000 1260 	movel 1260 <__Unwind_Find_FDE+0x142>,%a0@(20)
     efe:	0014 
     f00:	23c8 0000 1260 	movel %a0,1260 <__Unwind_Find_FDE+0x142>
     f06:	4e75           	rts

00000f08 <___register_frame_info>:
     f08:	226f 0004      	moveal %sp@(4),%a1
     f0c:	206f 0008      	moveal %sp@(8),%a0
     f10:	b2fc 0000      	cmpaw #0,%a1
     f14:	672c           	beqs f42 <___register_frame_info+0x3a>
     f16:	4a91           	tstl %a1@
     f18:	6728           	beqs f42 <___register_frame_info+0x3a>
     f1a:	70ff           	moveq #-1,%d0
     f1c:	2080           	movel %d0,%a0@
     f1e:	42a8 0004      	clrl %a0@(4)
     f22:	42a8 0008      	clrl %a0@(8)
     f26:	2149 000c      	movel %a1,%a0@(12)
     f2a:	42a8 0010      	clrl %a0@(16)
     f2e:	317c 1fe0 0010 	movew #8160,%a0@(16)
     f34:	2179 0000 1260 	movel 1260 <__Unwind_Find_FDE+0x142>,%a0@(20)
     f3a:	0014 
     f3c:	23c8 0000 1260 	movel %a0,1260 <__Unwind_Find_FDE+0x142>
     f42:	4e75           	rts

00000f44 <___register_frame>:
     f44:	2f0a           	movel %a2,%sp@-
     f46:	246f 0008      	moveal %sp@(8),%a2
     f4a:	4a92           	tstl %a2@
     f4c:	6604           	bnes f52 <___register_frame+0xe>
     f4e:	245f           	moveal %sp@+,%a2
     f50:	4e75           	rts
     f52:	4878 0018      	pea 18 <___register_frame_info_bases-0xeb0>
     f56:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
     f5c:	2040           	moveal %d0,%a0
     f5e:	70ff           	moveq #-1,%d0
     f60:	2080           	movel %d0,%a0@
     f62:	42a8 0004      	clrl %a0@(4)
     f66:	42a8 0008      	clrl %a0@(8)
     f6a:	214a 000c      	movel %a2,%a0@(12)
     f6e:	42a8 0010      	clrl %a0@(16)
     f72:	317c 1fe0 0010 	movew #8160,%a0@(16)
     f78:	2179 0000 1260 	movel 1260 <__Unwind_Find_FDE+0x142>,%a0@(20)
     f7e:	0014 
     f80:	23c8 0000 1260 	movel %a0,1260 <__Unwind_Find_FDE+0x142>
     f86:	588f           	addql #4,%sp
     f88:	245f           	moveal %sp@+,%a2
     f8a:	4e75           	rts

00000f8c <___register_frame_info_table_bases>:
     f8c:	206f 0008      	moveal %sp@(8),%a0
     f90:	70ff           	moveq #-1,%d0
     f92:	2080           	movel %d0,%a0@
     f94:	216f 000c 0004 	movel %sp@(12),%a0@(4)
     f9a:	216f 0010 0008 	movel %sp@(16),%a0@(8)
     fa0:	216f 0004 000c 	movel %sp@(4),%a0@(12)
     fa6:	42a8 0010      	clrl %a0@(16)
     faa:	117c 0040 0010 	moveb #64,%a0@(16)
     fb0:	0068 1fe0 0010 	oriw #8160,%a0@(16)
     fb6:	2179 0000 1260 	movel 1260 <__Unwind_Find_FDE+0x142>,%a0@(20)
     fbc:	0014 
     fbe:	23c8 0000 1260 	movel %a0,1260 <__Unwind_Find_FDE+0x142>
     fc4:	4e75           	rts

00000fc6 <___register_frame_info_table>:
     fc6:	206f 0008      	moveal %sp@(8),%a0
     fca:	70ff           	moveq #-1,%d0
     fcc:	2080           	movel %d0,%a0@
     fce:	42a8 0004      	clrl %a0@(4)
     fd2:	42a8 0008      	clrl %a0@(8)
     fd6:	216f 0004 000c 	movel %sp@(4),%a0@(12)
     fdc:	42a8 0010      	clrl %a0@(16)
     fe0:	117c 0040 0010 	moveb #64,%a0@(16)
     fe6:	0068 1fe0 0010 	oriw #8160,%a0@(16)
     fec:	2179 0000 1260 	movel 1260 <__Unwind_Find_FDE+0x142>,%a0@(20)
     ff2:	0014 
     ff4:	23c8 0000 1260 	movel %a0,1260 <__Unwind_Find_FDE+0x142>
     ffa:	4e75           	rts

00000ffc <___register_frame_table>:
     ffc:	4878 0018      	pea 18 <___register_frame_info_bases-0xeb0>
    1000:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
    1006:	2040           	moveal %d0,%a0
    1008:	70ff           	moveq #-1,%d0
    100a:	2080           	movel %d0,%a0@
    100c:	42a8 0004      	clrl %a0@(4)
    1010:	42a8 0008      	clrl %a0@(8)
    1014:	216f 0008 000c 	movel %sp@(8),%a0@(12)
    101a:	42a8 0010      	clrl %a0@(16)
    101e:	117c 0040 0010 	moveb #64,%a0@(16)
    1024:	0068 1fe0 0010 	oriw #8160,%a0@(16)
    102a:	2179 0000 1260 	movel 1260 <__Unwind_Find_FDE+0x142>,%a0@(20)
    1030:	0014 
    1032:	23c8 0000 1260 	movel %a0,1260 <__Unwind_Find_FDE+0x142>
    1038:	588f           	addql #4,%sp
    103a:	4e75           	rts

0000103c <___deregister_frame_info_bases>:
    103c:	2f0b           	movel %a3,%sp@-
    103e:	2f0a           	movel %a2,%sp@-
    1040:	206f 000c      	moveal %sp@(12),%a0
    1044:	b0fc 0000      	cmpaw #0,%a0
    1048:	6700 009e      	beqw 10e8 <___deregister_frame_info_bases+0xac>
    104c:	4a90           	tstl %a0@
    104e:	6700 0098      	beqw 10e8 <___deregister_frame_info_bases+0xac>
    1052:	2479 0000 1260 	moveal 1260 <__Unwind_Find_FDE+0x142>,%a2
    1058:	b4fc 0000      	cmpaw #0,%a2
    105c:	6728           	beqs 1086 <___deregister_frame_info_bases+0x4a>
    105e:	b1ea 000c      	cmpal %a2@(12),%a0
    1062:	6700 008e      	beqw 10f2 <___deregister_frame_info_bases+0xb6>
    1066:	43ea 0014      	lea %a2@(20),%a1
    106a:	246a 0014      	moveal %a2@(20),%a2
    106e:	b4fc 0000      	cmpaw #0,%a2
    1072:	6712           	beqs 1086 <___deregister_frame_info_bases+0x4a>
    1074:	b1ea 000c      	cmpal %a2@(12),%a0
    1078:	66ec           	bnes 1066 <___deregister_frame_info_bases+0x2a>
    107a:	22aa 0014      	movel %a2@(20),%a1@
    107e:	200a           	movel %a2,%d0
    1080:	245f           	moveal %sp@+,%a2
    1082:	265f           	moveal %sp@+,%a3
    1084:	4e75           	rts
    1086:	2479 0000 1264 	moveal 1264 <__Unwind_Find_FDE+0x146>,%a2
    108c:	b4fc 0000      	cmpaw #0,%a2
    1090:	6722           	beqs 10b4 <___deregister_frame_info_bases+0x78>
    1092:	43f9 0000 1264 	lea 1264 <__Unwind_Find_FDE+0x146>,%a1
    1098:	4a2a 0010      	tstb %a2@(16)
    109c:	6c1c           	bges 10ba <___deregister_frame_info_bases+0x7e>
    109e:	266a 000c      	moveal %a2@(12),%a3
    10a2:	b1d3           	cmpal %a3@,%a0
    10a4:	672a           	beqs 10d0 <___deregister_frame_info_bases+0x94>
    10a6:	43ea 0014      	lea %a2@(20),%a1
    10aa:	246a 0014      	moveal %a2@(20),%a2
    10ae:	b4fc 0000      	cmpaw #0,%a2
    10b2:	66e4           	bnes 1098 <___deregister_frame_info_bases+0x5c>
    10b4:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
    10ba:	b1ea 000c      	cmpal %a2@(12),%a0
    10be:	67ba           	beqs 107a <___deregister_frame_info_bases+0x3e>
    10c0:	43ea 0014      	lea %a2@(20),%a1
    10c4:	246a 0014      	moveal %a2@(20),%a2
    10c8:	b4fc 0000      	cmpaw #0,%a2
    10cc:	66ca           	bnes 1098 <___deregister_frame_info_bases+0x5c>
    10ce:	60e4           	bras 10b4 <___deregister_frame_info_bases+0x78>
    10d0:	22aa 0014      	movel %a2@(20),%a1@
    10d4:	2f2a 000c      	movel %a2@(12),%sp@-
    10d8:	4eb9 0000 0000 	jsr 0 <___register_frame_info_bases-0xec8>
    10de:	588f           	addql #4,%sp
    10e0:	200a           	movel %a2,%d0
    10e2:	245f           	moveal %sp@+,%a2
    10e4:	265f           	moveal %sp@+,%a3
    10e6:	4e75           	rts
    10e8:	95ca           	subal %a2,%a2
    10ea:	200a           	movel %a2,%d0
    10ec:	245f           	moveal %sp@+,%a2
    10ee:	265f           	moveal %sp@+,%a3
    10f0:	4e75           	rts
    10f2:	43f9 0000 1260 	lea 1260 <__Unwind_Find_FDE+0x142>,%a1
    10f8:	22aa 0014      	movel %a2@(20),%a1@
    10fc:	6080           	bras 107e <___deregister_frame_info_bases+0x42>

000010fe <___deregister_frame_info>:
    10fe:	6000 ff3c      	braw 103c <___deregister_frame_info_bases>

00001102 <___deregister_frame>:
    1102:	206f 0004      	moveal %sp@(4),%a0
    1106:	4a90           	tstl %a0@
    1108:	6602           	bnes 110c <___deregister_frame+0xa>
    110a:	4e75           	rts
    110c:	2f08           	movel %a0,%sp@-
    110e:	4eba ff2c      	jsr %pc@(103c <___deregister_frame_info_bases>)
    1112:	588f           	addql #4,%sp
    1114:	2f40 0004      	movel %d0,%sp@(4)
    1118:	4ef9 0000 0000 	jmp 0 <___register_frame_info_bases-0xec8>

0000111e <__Unwind_Find_FDE>:
    111e:	4e56 fffc      	linkw %fp,#-4
    1122:	48e7 203c      	moveml %d2/%a2-%a5,%sp@-
    1126:	242e 0008      	movel %fp@(8),%d2
    112a:	2a6e 000c      	moveal %fp@(12),%a5
    112e:	2479 0000 1264 	moveal 1264 <__Unwind_Find_FDE+0x146>,%a2
    1134:	b4fc 0000      	cmpaw #0,%a2
    1138:	6776           	beqs 11b0 <__Unwind_Find_FDE+0x92>
    113a:	b492           	cmpl %a2@,%d2
    113c:	640e           	bccs 114c <__Unwind_Find_FDE+0x2e>
    113e:	246a 0014      	moveal %a2@(20),%a2
    1142:	b4fc 0000      	cmpaw #0,%a2
    1146:	6768           	beqs 11b0 <__Unwind_Find_FDE+0x92>
    1148:	b492           	cmpl %a2@,%d2
    114a:	65f2           	bcss 113e <__Unwind_Find_FDE+0x20>
    114c:	2f02           	movel %d2,%sp@-
    114e:	2f0a           	movel %a2,%sp@-
    1150:	4eba f6b2      	jsr %pc@(804 <___register_frame_info_bases-0x6c4>)
    1154:	2640           	moveal %d0,%a3
    1156:	508f           	addql #8,%sp
    1158:	4a80           	tstl %d0
    115a:	6754           	beqs 11b0 <__Unwind_Find_FDE+0x92>
    115c:	2aaa 0004      	movel %a2@(4),%a5@
    1160:	2b6a 0008 0004 	movel %a2@(8),%a5@(4)
    1166:	302a 0010      	movew %a2@(16),%d0
    116a:	ea48           	lsrw #5,%d0
    116c:	082a 0005 0010 	btst #5,%a2@(16)
    1172:	6600 00b0      	bnew 1224 <__Unwind_Find_FDE+0x106>
    1176:	0280 0000 00ff 	andil #255,%d0
    117c:	7400           	moveq #0,%d2
    117e:	1400           	moveb %d0,%d2
    1180:	2f0a           	movel %a2,%sp@-
    1182:	2f02           	movel %d2,%sp@-
    1184:	4eba f002      	jsr %pc@(188 <___register_frame_info_bases-0xd40>)
    1188:	508f           	addql #8,%sp
    118a:	486e fffc      	pea %fp@(-4)
    118e:	486b 0008      	pea %a3@(8)
    1192:	2f00           	movel %d0,%sp@-
    1194:	2f02           	movel %d2,%sp@-
    1196:	4eba f046      	jsr %pc@(1de <___register_frame_info_bases-0xcea>)
    119a:	2b6e fffc 0008 	movel %fp@(-4),%a5@(8)
    11a0:	4fef 0010      	lea %sp@(16),%sp
    11a4:	200b           	movel %a3,%d0
    11a6:	4cee 3c04 ffe8 	moveml %fp@(-24),%d2/%a2-%a5
    11ac:	4e5e           	unlk %fp
    11ae:	4e75           	rts
    11b0:	49fa f652      	lea %pc@(804 <___register_frame_info_bases-0x6c4>),%a4
    11b4:	2479 0000 1260 	moveal 1260 <__Unwind_Find_FDE+0x142>,%a2
    11ba:	b4fc 0000      	cmpaw #0,%a2
    11be:	6756           	beqs 1216 <__Unwind_Find_FDE+0xf8>
    11c0:	23ea 0014 0000 	movel %a2@(20),1260 <__Unwind_Find_FDE+0x142>
    11c6:	1260 
    11c8:	2f02           	movel %d2,%sp@-
    11ca:	2f0a           	movel %a2,%sp@-
    11cc:	4e94           	jsr %a4@
    11ce:	2640           	moveal %d0,%a3
    11d0:	2079 0000 1264 	moveal 1264 <__Unwind_Find_FDE+0x146>,%a0
    11d6:	508f           	addql #8,%sp
    11d8:	43f9 0000 1264 	lea 1264 <__Unwind_Find_FDE+0x146>,%a1
    11de:	b0fc 0000      	cmpaw #0,%a0
    11e2:	6718           	beqs 11fc <__Unwind_Find_FDE+0xde>
    11e4:	2012           	movel %a2@,%d0
    11e6:	b090           	cmpl %a0@,%d0
    11e8:	6212           	bhis 11fc <__Unwind_Find_FDE+0xde>
    11ea:	43e8 0014      	lea %a0@(20),%a1
    11ee:	2068 0014      	moveal %a0@(20),%a0
    11f2:	b0fc 0000      	cmpaw #0,%a0
    11f6:	6704           	beqs 11fc <__Unwind_Find_FDE+0xde>
    11f8:	b090           	cmpl %a0@,%d0
    11fa:	63ee           	blss 11ea <__Unwind_Find_FDE+0xcc>
    11fc:	2548 0014      	movel %a0,%a2@(20)
    1200:	228a           	movel %a2,%a1@
    1202:	b6fc 0000      	cmpaw #0,%a3
    1206:	6600 ff54      	bnew 115c <__Unwind_Find_FDE+0x3e>
    120a:	2479 0000 1260 	moveal 1260 <__Unwind_Find_FDE+0x142>,%a2
    1210:	b4fc 0000      	cmpaw #0,%a2
    1214:	66aa           	bnes 11c0 <__Unwind_Find_FDE+0xa2>
    1216:	97cb           	subal %a3,%a3
    1218:	200b           	movel %a3,%d0
    121a:	4cee 3c04 ffe8 	moveml %fp@(-24),%d2/%a2-%a5
    1220:	4e5e           	unlk %fp
    1222:	4e75           	rts
    1224:	41eb 0004      	lea %a3@(4),%a0
    1228:	91eb 0004      	subal %a3@(4),%a0
    122c:	2f08           	movel %a0,%sp@-
    122e:	4eba f128      	jsr %pc@(358 <___register_frame_info_bases-0xb70>)
    1232:	588f           	addql #4,%sp
    1234:	7400           	moveq #0,%d2
    1236:	1400           	moveb %d0,%d2
    1238:	2f0a           	movel %a2,%sp@-
    123a:	2f02           	movel %d2,%sp@-
    123c:	4eba ef4a      	jsr %pc@(188 <___register_frame_info_bases-0xd40>)
    1240:	508f           	addql #8,%sp
    1242:	486e fffc      	pea %fp@(-4)
    1246:	486b 0008      	pea %a3@(8)
    124a:	2f00           	movel %d0,%sp@-
    124c:	2f02           	movel %d2,%sp@-
    124e:	4eba ef8e      	jsr %pc@(1de <___register_frame_info_bases-0xcea>)
    1252:	2b6e fffc 0008 	movel %fp@(-4),%a5@(8)
    1258:	4fef 0010      	lea %sp@(16),%sp
    125c:	6000 ff46      	braw 11a4 <__Unwind_Find_FDE+0x86>

Disassembly of section .bss:

00001260 <.bss>:
	...

unwind-sjlj.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <__Unwind_SjLj_Register-0x150>:
   0:	48e7 303c      	moveml %d2-%d3/%a2-%a5,%sp@-
   4:	266f 001c      	moveal %sp@(28),%a3
   8:	246f 0020      	moveal %sp@(32),%a2
   c:	2a6b 000c      	moveal %a3@(12),%a5
  10:	262b 0010      	movel %a3@(16),%d3
  14:	2052           	moveal %a2@,%a0
  16:	b0fc 0000      	cmpaw #0,%a0
  1a:	6768           	beqs 84 <__Unwind_SjLj_Register-0xcc>
  1c:	2868 0018      	moveal %a0@(24),%a4
  20:	7400           	moveq #0,%d2
  22:	700a           	moveq #10,%d0
  24:	2f03           	movel %d3,%sp@-
  26:	2f0a           	movel %a2,%sp@-
  28:	2f0b           	movel %a3,%sp@-
  2a:	2f2b 0004      	movel %a3@(4),%sp@-
  2e:	2f13           	movel %a3@,%sp@-
  30:	2f00           	movel %d0,%sp@-
  32:	4878 0001      	pea 1 <__Unwind_SjLj_Register-0x14f>
  36:	4e95           	jsr %a5@
  38:	4fef 001c      	lea %sp@(28),%sp
  3c:	4a80           	tstl %d0
  3e:	6666           	bnes a6 <__Unwind_SjLj_Register-0xaa>
  40:	103c 0005      	moveb #5,%d0
  44:	b082           	cmpl %d2,%d0
  46:	6760           	beqs a8 <__Unwind_SjLj_Register-0xa8>
  48:	b8fc 0000      	cmpaw #0,%a4
  4c:	6728           	beqs 76 <__Unwind_SjLj_Register-0xda>
  4e:	2f0a           	movel %a2,%sp@-
  50:	2f0b           	movel %a3,%sp@-
  52:	2f2b 0004      	movel %a3@(4),%sp@-
  56:	2f13           	movel %a3@,%sp@-
  58:	4878 000a      	pea a <__Unwind_SjLj_Register-0x146>
  5c:	4878 0001      	pea 1 <__Unwind_SjLj_Register-0x14f>
  60:	4e94           	jsr %a4@
  62:	2400           	movel %d0,%d2
  64:	4fef 0018      	lea %sp@(24),%sp
  68:	7007           	moveq #7,%d0
  6a:	b082           	cmpl %d2,%d0
  6c:	673a           	beqs a8 <__Unwind_SjLj_Register-0xa8>
  6e:	103c 0008      	moveb #8,%d0
  72:	b082           	cmpl %d2,%d0
  74:	6630           	bnes a6 <__Unwind_SjLj_Register-0xaa>
  76:	2052           	moveal %a2@,%a0
  78:	2050           	moveal %a0@,%a0
  7a:	23c8 0000 03d4 	movel %a0,3d4 <__Unwind_Backtrace+0x5a>
  80:	2488           	movel %a0,%a2@
  82:	6698           	bnes 1c <__Unwind_SjLj_Register-0x134>
  84:	99cc           	subal %a4,%a4
  86:	7405           	moveq #5,%d2
  88:	701a           	moveq #26,%d0
  8a:	2f03           	movel %d3,%sp@-
  8c:	2f0a           	movel %a2,%sp@-
  8e:	2f0b           	movel %a3,%sp@-
  90:	2f2b 0004      	movel %a3@(4),%sp@-
  94:	2f13           	movel %a3@,%sp@-
  96:	2f00           	movel %d0,%sp@-
  98:	4878 0001      	pea 1 <__Unwind_SjLj_Register-0x14f>
  9c:	4e95           	jsr %a5@
  9e:	4fef 001c      	lea %sp@(28),%sp
  a2:	4a80           	tstl %d0
  a4:	679a           	beqs 40 <__Unwind_SjLj_Register-0x110>
  a6:	7402           	moveq #2,%d2
  a8:	2002           	movel %d2,%d0
  aa:	4cdf 3c0c      	moveml %sp@+,%d2-%d3/%a2-%a5
  ae:	4e75           	rts
  b0:	48e7 2030      	moveml %d2/%a2-%a3,%sp@-
  b4:	266f 0010      	moveal %sp@(16),%a3
  b8:	246f 0014      	moveal %sp@(20),%a2
  bc:	2052           	moveal %a2@,%a0
  be:	b0fc 0000      	cmpaw #0,%a0
  c2:	674e           	beqs 112 <__Unwind_SjLj_Register-0x3e>
  c4:	2268 0018      	moveal %a0@(24),%a1
  c8:	7000           	moveq #0,%d0
  ca:	b1eb 0010      	cmpal %a3@(16),%a0
  ce:	674c           	beqs 11c <__Unwind_SjLj_Register-0x34>
  d0:	7400           	moveq #0,%d2
  d2:	4a80           	tstl %d0
  d4:	664c           	bnes 122 <__Unwind_SjLj_Register-0x2e>
  d6:	b2fc 0000      	cmpaw #0,%a1
  da:	672a           	beqs 106 <__Unwind_SjLj_Register-0x4a>
  dc:	2f0a           	movel %a2,%sp@-
  de:	2f0b           	movel %a3,%sp@-
  e0:	2f2b 0004      	movel %a3@(4),%sp@-
  e4:	2f13           	movel %a3@,%sp@-
  e6:	103c 0002      	moveb #2,%d0
  ea:	8082           	orl %d2,%d0
  ec:	2f00           	movel %d0,%sp@-
  ee:	4878 0001      	pea 1 <__Unwind_SjLj_Register-0x14f>
  f2:	4e91           	jsr %a1@
  f4:	4fef 0018      	lea %sp@(24),%sp
  f8:	7207           	moveq #7,%d1
  fa:	b280           	cmpl %d0,%d1
  fc:	6726           	beqs 124 <__Unwind_SjLj_Register-0x2c>
  fe:	123c 0008      	moveb #8,%d1
 102:	b280           	cmpl %d0,%d1
 104:	661c           	bnes 122 <__Unwind_SjLj_Register-0x2e>
 106:	4a82           	tstl %d2
 108:	6620           	bnes 12a <__Unwind_SjLj_Register-0x26>
 10a:	2052           	moveal %a2@,%a0
 10c:	2050           	moveal %a0@,%a0
 10e:	2488           	movel %a0,%a2@
 110:	66b2           	bnes c4 <__Unwind_SjLj_Register-0x8c>
 112:	93c9           	subal %a1,%a1
 114:	7005           	moveq #5,%d0
 116:	b1eb 0010      	cmpal %a3@(16),%a0
 11a:	66b4           	bnes d0 <__Unwind_SjLj_Register-0x80>
 11c:	7404           	moveq #4,%d2
 11e:	4a80           	tstl %d0
 120:	67b4           	beqs d6 <__Unwind_SjLj_Register-0x7a>
 122:	7002           	moveq #2,%d0
 124:	4cdf 0c04      	moveml %sp@+,%d2/%a2-%a3
 128:	4e75           	rts
 12a:	4eb9 0000 0000 	jsr 0 <__Unwind_SjLj_Register-0x150>
 130:	4e56 0000      	linkw %fp,#0
 134:	206e 0008      	moveal %fp@(8),%a0
 138:	2050           	moveal %a0@,%a0
 13a:	23c8 0000 03d4 	movel %a0,3d4 <__Unwind_Backtrace+0x5a>
 140:	2268 0024      	moveal %a0@(36),%a1
 144:	41e8 0020      	lea %a0@(32),%a0
 148:	2c50           	moveal %a0@,%fp
 14a:	2e68 0008      	moveal %a0@(8),%sp
 14e:	4ed1           	jmp %a1@

00000150 <__Unwind_SjLj_Register>:
 150:	206f 0004      	moveal %sp@(4),%a0
 154:	20b9 0000 03d4 	movel 3d4 <__Unwind_Backtrace+0x5a>,%a0@
 15a:	23c8 0000 03d4 	movel %a0,3d4 <__Unwind_Backtrace+0x5a>
 160:	4e75           	rts

00000162 <__Unwind_SjLj_Unregister>:
 162:	206f 0004      	moveal %sp@(4),%a0
 166:	23d0 0000 03d4 	movel %a0@,3d4 <__Unwind_Backtrace+0x5a>
 16c:	4e75           	rts

0000016e <__Unwind_GetGR>:
 16e:	206f 0008      	moveal %sp@(8),%a0
 172:	5488           	addql #2,%a0
 174:	d1c8           	addal %a0,%a0
 176:	226f 0004      	moveal %sp@(4),%a1
 17a:	2251           	moveal %a1@,%a1
 17c:	d3c8           	addal %a0,%a1
 17e:	2031 8800      	movel %a1@(00000000,%a0:l),%d0
 182:	4e75           	rts

00000184 <__Unwind_GetCFA>:
 184:	206f 0004      	moveal %sp@(4),%a0
 188:	2050           	moveal %a0@,%a0
 18a:	b0fc 0000      	cmpaw #0,%a0
 18e:	6706           	beqs 196 <__Unwind_GetCFA+0x12>
 190:	2028 0028      	movel %a0@(40),%d0
 194:	4e75           	rts
 196:	7000           	moveq #0,%d0
 198:	4e75           	rts

0000019a <__Unwind_SetGR>:
 19a:	206f 0008      	moveal %sp@(8),%a0
 19e:	5488           	addql #2,%a0
 1a0:	d1c8           	addal %a0,%a0
 1a2:	226f 0004      	moveal %sp@(4),%a1
 1a6:	2251           	moveal %a1@,%a1
 1a8:	d3c8           	addal %a0,%a1
 1aa:	23af 000c 8800 	movel %sp@(12),%a1@(00000000,%a0:l)
 1b0:	4e75           	rts

000001b2 <__Unwind_GetIP>:
 1b2:	206f 0004      	moveal %sp@(4),%a0
 1b6:	2050           	moveal %a0@,%a0
 1b8:	2028 0004      	movel %a0@(4),%d0
 1bc:	5280           	addql #1,%d0
 1be:	4e75           	rts

000001c0 <__Unwind_GetIPInfo>:
 1c0:	206f 0008      	moveal %sp@(8),%a0
 1c4:	4290           	clrl %a0@
 1c6:	206f 0004      	moveal %sp@(4),%a0
 1ca:	2050           	moveal %a0@,%a0
 1cc:	b0fc 0000      	cmpaw #0,%a0
 1d0:	6708           	beqs 1da <__Unwind_GetIPInfo+0x1a>
 1d2:	2028 0004      	movel %a0@(4),%d0
 1d6:	5280           	addql #1,%d0
 1d8:	4e75           	rts
 1da:	7000           	moveq #0,%d0
 1dc:	4e75           	rts

000001de <__Unwind_SetIP>:
 1de:	206f 0004      	moveal %sp@(4),%a0
 1e2:	2050           	moveal %a0@,%a0
 1e4:	202f 0008      	movel %sp@(8),%d0
 1e8:	5380           	subql #1,%d0
 1ea:	2140 0004      	movel %d0,%a0@(4)
 1ee:	4e75           	rts

000001f0 <__Unwind_GetLanguageSpecificData>:
 1f0:	206f 0004      	moveal %sp@(4),%a0
 1f4:	2050           	moveal %a0@,%a0
 1f6:	2028 001c      	movel %a0@(28),%d0
 1fa:	4e75           	rts

000001fc <__Unwind_GetRegionStart>:
 1fc:	7000           	moveq #0,%d0
 1fe:	4e75           	rts

00000200 <__Unwind_FindEnclosingFunction>:
 200:	7000           	moveq #0,%d0
 202:	4e75           	rts

00000204 <__Unwind_GetDataRelBase>:
 204:	7000           	moveq #0,%d0
 206:	4e75           	rts

00000208 <__Unwind_GetTextRelBase>:
 208:	7000           	moveq #0,%d0
 20a:	4e75           	rts

0000020c <__Unwind_SjLj_RaiseException>:
 20c:	598f           	subql #4,%sp
 20e:	2f0a           	movel %a2,%sp@-
 210:	2f02           	movel %d2,%sp@-
 212:	246f 0010      	moveal %sp@(16),%a2
 216:	2439 0000 03d4 	movel 3d4 <__Unwind_Backtrace+0x5a>,%d2
 21c:	2f42 0008      	movel %d2,%sp@(8)
 220:	6740           	beqs 262 <__Unwind_SjLj_RaiseException+0x56>
 222:	2042           	moveal %d2,%a0
 224:	2068 0018      	moveal %a0@(24),%a0
 228:	b0fc 0000      	cmpaw #0,%a0
 22c:	6728           	beqs 256 <__Unwind_SjLj_RaiseException+0x4a>
 22e:	486f 0008      	pea %sp@(8)
 232:	2f0a           	movel %a2,%sp@-
 234:	2f2a 0004      	movel %a2@(4),%sp@-
 238:	2f12           	movel %a2@,%sp@-
 23a:	4878 0001      	pea 1 <__Unwind_SjLj_Register-0x14f>
 23e:	4878 0001      	pea 1 <__Unwind_SjLj_Register-0x14f>
 242:	4e90           	jsr %a0@
 244:	4fef 0018      	lea %sp@(24),%sp
 248:	7206           	moveq #6,%d1
 24a:	b280           	cmpl %d0,%d1
 24c:	671e           	beqs 26c <__Unwind_SjLj_RaiseException+0x60>
 24e:	123c 0008      	moveb #8,%d1
 252:	b280           	cmpl %d0,%d1
 254:	663e           	bnes 294 <__Unwind_SjLj_RaiseException+0x88>
 256:	206f 0008      	moveal %sp@(8),%a0
 25a:	2050           	moveal %a0@,%a0
 25c:	2f48 0008      	movel %a0,%sp@(8)
 260:	66c2           	bnes 224 <__Unwind_SjLj_RaiseException+0x18>
 262:	7005           	moveq #5,%d0
 264:	241f           	movel %sp@+,%d2
 266:	245f           	moveal %sp@+,%a2
 268:	588f           	addql #4,%sp
 26a:	4e75           	rts
 26c:	42aa 000c      	clrl %a2@(12)
 270:	256f 0008 0010 	movel %sp@(8),%a2@(16)
 276:	2f42 0008      	movel %d2,%sp@(8)
 27a:	486f 0008      	pea %sp@(8)
 27e:	2f0a           	movel %a2,%sp@-
 280:	4eba fe2e      	jsr %pc@(b0 <__Unwind_SjLj_Register-0xa0>)
 284:	508f           	addql #8,%sp
 286:	7207           	moveq #7,%d1
 288:	b280           	cmpl %d0,%d1
 28a:	66d8           	bnes 264 <__Unwind_SjLj_RaiseException+0x58>
 28c:	486f 0008      	pea %sp@(8)
 290:	4eba fe9e      	jsr %pc@(130 <__Unwind_SjLj_Register-0x20>)
 294:	7003           	moveq #3,%d0
 296:	241f           	movel %sp@+,%d2
 298:	245f           	moveal %sp@+,%a2
 29a:	588f           	addql #4,%sp
 29c:	4e75           	rts

0000029e <__Unwind_SjLj_ForcedUnwind>:
 29e:	598f           	subql #4,%sp
 2a0:	2f0e           	movel %fp,%sp@-
 2a2:	206f 000c      	moveal %sp@(12),%a0
 2a6:	4def 0008      	lea %sp@(8),%fp
 2aa:	2d39 0000 03d4 	movel 3d4 <__Unwind_Backtrace+0x5a>,%fp@-
 2b0:	216f 0010 000c 	movel %sp@(16),%a0@(12)
 2b6:	216f 0014 0010 	movel %sp@(20),%a0@(16)
 2bc:	2f0e           	movel %fp,%sp@-
 2be:	2f08           	movel %a0,%sp@-
 2c0:	4eba fd3e      	jsr %pc@(0 <__Unwind_SjLj_Register-0x150>)
 2c4:	508f           	addql #8,%sp
 2c6:	7207           	moveq #7,%d1
 2c8:	b280           	cmpl %d0,%d1
 2ca:	6706           	beqs 2d2 <__Unwind_SjLj_ForcedUnwind+0x34>
 2cc:	2c5f           	moveal %sp@+,%fp
 2ce:	588f           	addql #4,%sp
 2d0:	4e75           	rts
 2d2:	2f0e           	movel %fp,%sp@-
 2d4:	4eba fe5a      	jsr %pc@(130 <__Unwind_SjLj_Register-0x20>)

000002d8 <__Unwind_SjLj_Resume>:
 2d8:	598f           	subql #4,%sp
 2da:	2f02           	movel %d2,%sp@-
 2dc:	206f 000c      	moveal %sp@(12),%a0
 2e0:	2f79 0000 03d4 	movel 3d4 <__Unwind_Backtrace+0x5a>,%sp@(4)
 2e6:	0004 
 2e8:	240f           	movel %sp,%d2
 2ea:	5882           	addql #4,%d2
 2ec:	4aa8 000c      	tstl %a0@(12)
 2f0:	6616           	bnes 308 <__Unwind_SjLj_Resume+0x30>
 2f2:	2f02           	movel %d2,%sp@-
 2f4:	2f08           	movel %a0,%sp@-
 2f6:	4eba fdb8      	jsr %pc@(b0 <__Unwind_SjLj_Register-0xa0>)
 2fa:	508f           	addql #8,%sp
 2fc:	7207           	moveq #7,%d1
 2fe:	b280           	cmpl %d0,%d1
 300:	6716           	beqs 318 <__Unwind_SjLj_Resume+0x40>
 302:	4eb9 0000 0000 	jsr 0 <__Unwind_SjLj_Register-0x150>
 308:	2f02           	movel %d2,%sp@-
 30a:	2f08           	movel %a0,%sp@-
 30c:	4eba fcf2      	jsr %pc@(0 <__Unwind_SjLj_Register-0x150>)
 310:	508f           	addql #8,%sp
 312:	7207           	moveq #7,%d1
 314:	b280           	cmpl %d0,%d1
 316:	66ea           	bnes 302 <__Unwind_SjLj_Resume+0x2a>
 318:	2f02           	movel %d2,%sp@-
 31a:	4eba fe14      	jsr %pc@(130 <__Unwind_SjLj_Register-0x20>)

0000031e <__Unwind_SjLj_Resume_or_Rethrow>:
 31e:	598f           	subql #4,%sp
 320:	2f0e           	movel %fp,%sp@-
 322:	206f 000c      	moveal %sp@(12),%a0
 326:	4aa8 000c      	tstl %a0@(12)
 32a:	660e           	bnes 33a <__Unwind_SjLj_Resume_or_Rethrow+0x1c>
 32c:	2f08           	movel %a0,%sp@-
 32e:	4eba fedc      	jsr %pc@(20c <__Unwind_SjLj_RaiseException>)
 332:	588f           	addql #4,%sp
 334:	2c5f           	moveal %sp@+,%fp
 336:	588f           	addql #4,%sp
 338:	4e75           	rts
 33a:	4def 0008      	lea %sp@(8),%fp
 33e:	2d39 0000 03d4 	movel 3d4 <__Unwind_Backtrace+0x5a>,%fp@-
 344:	2f0e           	movel %fp,%sp@-
 346:	2f08           	movel %a0,%sp@-
 348:	4eba fcb6      	jsr %pc@(0 <__Unwind_SjLj_Register-0x150>)
 34c:	508f           	addql #8,%sp
 34e:	7207           	moveq #7,%d1
 350:	b280           	cmpl %d0,%d1
 352:	6706           	beqs 35a <__Unwind_SjLj_Resume_or_Rethrow+0x3c>
 354:	4eb9 0000 0000 	jsr 0 <__Unwind_SjLj_Register-0x150>
 35a:	2f0e           	movel %fp,%sp@-
 35c:	4eba fdd2      	jsr %pc@(130 <__Unwind_SjLj_Register-0x20>)

00000360 <__Unwind_DeleteException>:
 360:	226f 0004      	moveal %sp@(4),%a1
 364:	2069 0008      	moveal %a1@(8),%a0
 368:	b0fc 0000      	cmpaw #0,%a0
 36c:	670a           	beqs 378 <__Unwind_DeleteException+0x18>
 36e:	2f09           	movel %a1,%sp@-
 370:	4878 0001      	pea 1 <__Unwind_SjLj_Register-0x14f>
 374:	4e90           	jsr %a0@
 376:	508f           	addql #8,%sp
 378:	4e75           	rts

0000037a <__Unwind_Backtrace>:
 37a:	598f           	subql #4,%sp
 37c:	48e7 3022      	moveml %d2-%d3/%a2/%fp,%sp@-
 380:	246f 0018      	moveal %sp@(24),%a2
 384:	262f 001c      	movel %sp@(28),%d3
 388:	2039 0000 03d4 	movel 3d4 <__Unwind_Backtrace+0x5a>,%d0
 38e:	4def 0014      	lea %sp@(20),%fp
 392:	2d00           	movel %d0,%fp@-
 394:	6722           	beqs 3b8 <__Unwind_Backtrace+0x3e>
 396:	7400           	moveq #0,%d2
 398:	2f03           	movel %d3,%sp@-
 39a:	2f0e           	movel %fp,%sp@-
 39c:	4e92           	jsr %a2@
 39e:	508f           	addql #8,%sp
 3a0:	4a80           	tstl %d0
 3a2:	6622           	bnes 3c6 <__Unwind_Backtrace+0x4c>
 3a4:	103c 0005      	moveb #5,%d0
 3a8:	b082           	cmpl %d2,%d0
 3aa:	671c           	beqs 3c8 <__Unwind_Backtrace+0x4e>
 3ac:	206f 0010      	moveal %sp@(16),%a0
 3b0:	2010           	movel %a0@,%d0
 3b2:	2f40 0010      	movel %d0,%sp@(16)
 3b6:	66de           	bnes 396 <__Unwind_Backtrace+0x1c>
 3b8:	7405           	moveq #5,%d2
 3ba:	2f03           	movel %d3,%sp@-
 3bc:	2f0e           	movel %fp,%sp@-
 3be:	4e92           	jsr %a2@
 3c0:	508f           	addql #8,%sp
 3c2:	4a80           	tstl %d0
 3c4:	67de           	beqs 3a4 <__Unwind_Backtrace+0x2a>
 3c6:	7403           	moveq #3,%d2
 3c8:	2002           	movel %d2,%d0
 3ca:	4cdf 440c      	moveml %sp@+,%d2-%d3/%a2/%fp
 3ce:	588f           	addql #4,%sp
 3d0:	4e75           	rts
	...

Disassembly of section .bss:

000003d4 <.bss>:
 3d4:	0000 0000      	orib #0,%d0

gthr-gnat.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___gnat_default_lock>:
   0:	4e75           	rts

00000002 <___gnat_default_unlock>:
   2:	4e75           	rts

00000004 <___gnat_install_locks>:
   4:	23ef 0004 0000 	movel %sp@(4),34 <___gthread_mutex_unlock+0xe>
   a:	0034 
   c:	23ef 0008 0000 	movel %sp@(8),38 <___gthread_mutex_unlock+0x12>
  12:	0038 
  14:	4e75           	rts

00000016 <___gthread_active_p>:
  16:	7000           	moveq #0,%d0
  18:	4e75           	rts

0000001a <___gthread_mutex_lock>:
  1a:	2079 0000 0034 	moveal 34 <___gthread_mutex_unlock+0xe>,%a0
  20:	4e90           	jsr %a0@
  22:	7000           	moveq #0,%d0
  24:	4e75           	rts

00000026 <___gthread_mutex_unlock>:
  26:	2079 0000 0038 	moveal 38 <___gthread_mutex_unlock+0x12>,%a0
  2c:	4e90           	jsr %a0@
  2e:	7000           	moveq #0,%d0
  30:	4e75           	rts
	...

Disassembly of section .data:

00000034 <.data>:
  34:	0000 0000      	orib #0,%d0
  38:	0000 0002      	orib #2,%d0

unwind-c.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___gcc_personality_sj0>:
   0:	48e7 3830      	moveml %d2-%d4/%a2-%a3,%sp@-
   4:	242f 002c      	movel %sp@(44),%d2
   8:	7001           	moveq #1,%d0
   a:	b0af 0018      	cmpl %sp@(24),%d0
   e:	6708           	beqs 18 <___gcc_personality_sj0+0x18>
  10:	7003           	moveq #3,%d0
  12:	4cdf 0c1c      	moveml %sp@+,%d2-%d4/%a2-%a3
  16:	4e75           	rts
  18:	202f 001c      	movel %sp@(28),%d0
  1c:	0800 0001      	btst #1,%d0
  20:	6608           	bnes 2a <___gcc_personality_sj0+0x2a>
  22:	7008           	moveq #8,%d0
  24:	4cdf 0c1c      	moveml %sp@+,%d2-%d4/%a2-%a3
  28:	4e75           	rts
  2a:	2f02           	movel %d2,%sp@-
  2c:	4eb9 0000 0000 	jsr 0 <___gcc_personality_sj0>
  32:	2640           	moveal %d0,%a3
  34:	588f           	addql #4,%sp
  36:	4a80           	tstl %d0
  38:	67e8           	beqs 22 <___gcc_personality_sj0+0x22>
  3a:	4a82           	tstl %d2
  3c:	670a           	beqs 48 <___gcc_personality_sj0+0x48>
  3e:	2f02           	movel %d2,%sp@-
  40:	4eb9 0000 0000 	jsr 0 <___gcc_personality_sj0>
  46:	588f           	addql #4,%sp
  48:	244b           	moveal %a3,%a2
  4a:	161a           	moveb %a2@+,%d3
  4c:	0c03 ffff      	cmpib #-1,%d3
  50:	673a           	beqs 8c <___gcc_personality_sj0+0x8c>
  52:	7800           	moveq #0,%d4
  54:	1803           	moveb %d3,%d4
  56:	7070           	moveq #112,%d0
  58:	c084           	andl %d4,%d0
  5a:	7220           	moveq #32,%d1
  5c:	b280           	cmpl %d0,%d1
  5e:	6700 0174      	beqw 1d4 <___gcc_personality_sj0+0x1d4>
  62:	6c00 00ce      	bgew 132 <___gcc_personality_sj0+0x132>
  66:	7240           	moveq #64,%d1
  68:	b280           	cmpl %d0,%d1
  6a:	6700 015a      	beqw 1c6 <___gcc_personality_sj0+0x1c6>
  6e:	123c 0050      	moveb #80,%d1
  72:	b280           	cmpl %d0,%d1
  74:	6700 00ca      	beqw 140 <___gcc_personality_sj0+0x140>
  78:	123c 0030      	moveb #48,%d1
  7c:	b280           	cmpl %d0,%d1
  7e:	6700 0138      	beqw 1b8 <___gcc_personality_sj0+0x1b8>
  82:	4eb9 0000 0000 	jsr 0 <___gcc_personality_sj0>
  88:	45eb 0005      	lea %a3@(5),%a2
  8c:	41ea 0001      	lea %a2@(1),%a0
  90:	0c12 ffff      	cmpib #-1,%a2@
  94:	670e           	beqs a4 <___gcc_personality_sj0+0xa4>
  96:	43e8 0001      	lea %a0@(1),%a1
  9a:	4a10           	tstb %a0@
  9c:	6c04           	bges a2 <___gcc_personality_sj0+0xa2>
  9e:	2049           	moveal %a1,%a0
  a0:	60f4           	bras 96 <___gcc_personality_sj0+0x96>
  a2:	2049           	moveal %a1,%a0
  a4:	5288           	addql #1,%a0
  a6:	45e8 0001      	lea %a0@(1),%a2
  aa:	4a10           	tstb %a0@
  ac:	6c04           	bges b2 <___gcc_personality_sj0+0xb2>
  ae:	204a           	moveal %a2,%a0
  b0:	60f4           	bras a6 <___gcc_personality_sj0+0xa6>
  b2:	2f02           	movel %d2,%sp@-
  b4:	4eb9 0000 0000 	jsr 0 <___gcc_personality_sj0>
  ba:	2240           	moveal %d0,%a1
  bc:	5389           	subql #1,%a1
  be:	588f           	addql #4,%sp
  c0:	b2fc 0000      	cmpaw #0,%a1
  c4:	6f00 ff5c      	blew 22 <___gcc_personality_sj0+0x22>
  c8:	7000           	moveq #0,%d0
  ca:	7600           	moveq #0,%d3
  cc:	181a           	moveb %a2@+,%d4
  ce:	727f           	moveq #127,%d1
  d0:	c284           	andl %d4,%d1
  d2:	e7a9           	lsll %d3,%d1
  d4:	8081           	orl %d1,%d0
  d6:	5e83           	addql #7,%d3
  d8:	4a04           	tstb %d4
  da:	6df0           	blts cc <___gcc_personality_sj0+0xcc>
  dc:	41ea 0001      	lea %a2@(1),%a0
  e0:	4a12           	tstb %a2@
  e2:	6c0a           	bges ee <___gcc_personality_sj0+0xee>
  e4:	2448           	moveal %a0,%a2
  e6:	41ea 0001      	lea %a2@(1),%a0
  ea:	4a12           	tstb %a2@
  ec:	6df6           	blts e4 <___gcc_personality_sj0+0xe4>
  ee:	2448           	moveal %a0,%a2
  f0:	5389           	subql #1,%a1
  f2:	b2fc 0000      	cmpaw #0,%a1
  f6:	66d0           	bnes c8 <___gcc_personality_sj0+0xc8>
  f8:	2600           	movel %d0,%d3
  fa:	5283           	addql #1,%d3
  fc:	6700 ff24      	beqw 22 <___gcc_personality_sj0+0x22>
 100:	2f2f 0028      	movel %sp@(40),%sp@-
 104:	42a7           	clrl %sp@-
 106:	2f02           	movel %d2,%sp@-
 108:	45f9 0000 0000 	lea 0 <___gcc_personality_sj0>,%a2
 10e:	4e92           	jsr %a2@
 110:	508f           	addql #8,%sp
 112:	4297           	clrl %sp@
 114:	4878 0001      	pea 1 <___gcc_personality_sj0+0x1>
 118:	2f02           	movel %d2,%sp@-
 11a:	4e92           	jsr %a2@
 11c:	508f           	addql #8,%sp
 11e:	2e83           	movel %d3,%sp@
 120:	2f02           	movel %d2,%sp@-
 122:	4eb9 0000 0000 	jsr 0 <___gcc_personality_sj0>
 128:	508f           	addql #8,%sp
 12a:	7007           	moveq #7,%d0
 12c:	4cdf 0c1c      	moveml %sp@+,%d2-%d4/%a2-%a3
 130:	4e75           	rts
 132:	4a80           	tstl %d0
 134:	670a           	beqs 140 <___gcc_personality_sj0+0x140>
 136:	123c 0010      	moveb #16,%d1
 13a:	b280           	cmpl %d0,%d1
 13c:	6600 ff44      	bnew 82 <___gcc_personality_sj0+0x82>
 140:	0c03 0050      	cmpib #80,%d3
 144:	6700 009c      	beqw 1e2 <___gcc_personality_sj0+0x1e2>
 148:	700f           	moveq #15,%d0
 14a:	c880           	andl %d0,%d4
 14c:	720c           	moveq #12,%d1
 14e:	b284           	cmpl %d4,%d1
 150:	6500 ff30      	bcsw 82 <___gcc_personality_sj0+0x82>
 154:	d884           	addl %d4,%d4
 156:	303b 4806      	movew %pc@(15e <___gcc_personality_sj0+0x15e>,%d4:l),%d0
 15a:	4efb 0002      	jmp %pc@(15e <___gcc_personality_sj0+0x15e>,%d0:w)
 15e:	ff2a           	.short 0xff2a
 160:	001a 0032      	orib #50,%a2@+
 164:	ff2a           	.short 0xff2a
 166:	0046 ff24      	oriw #-220,%d6
 16a:	ff24           	.short 0xff24
 16c:	ff24           	.short 0xff24
 16e:	ff24           	.short 0xff24
 170:	0026 0032      	orib #50,%fp@-
 174:	ff2a           	.short 0xff2a
 176:	0046 41ea      	oriw #16874,%d6
 17a:	0001 4a12      	orib #18,%d1
 17e:	6c7e           	bges 1fe <___gcc_personality_sj0+0x1fe>
 180:	2448           	moveal %a0,%a2
 182:	60f4           	bras 178 <___gcc_personality_sj0+0x178>
 184:	41ea 0001      	lea %a2@(1),%a0
 188:	4a12           	tstb %a2@
 18a:	6c72           	bges 1fe <___gcc_personality_sj0+0x1fe>
 18c:	2448           	moveal %a0,%a2
 18e:	60f4           	bras 184 <___gcc_personality_sj0+0x184>
 190:	45eb 0003      	lea %a3@(3),%a2
 194:	41ea 0001      	lea %a2@(1),%a0
 198:	0c12 ffff      	cmpib #-1,%a2@
 19c:	6600 fef8      	bnew 96 <___gcc_personality_sj0+0x96>
 1a0:	6000 ff02      	braw a4 <___gcc_personality_sj0+0xa4>
 1a4:	45eb 0009      	lea %a3@(9),%a2
 1a8:	41ea 0001      	lea %a2@(1),%a0
 1ac:	0c12 ffff      	cmpib #-1,%a2@
 1b0:	6600 fee4      	bnew 96 <___gcc_personality_sj0+0x96>
 1b4:	6000 feee      	braw a4 <___gcc_personality_sj0+0xa4>
 1b8:	2f02           	movel %d2,%sp@-
 1ba:	4eb9 0000 0000 	jsr 0 <___gcc_personality_sj0>
 1c0:	588f           	addql #4,%sp
 1c2:	6000 ff7c      	braw 140 <___gcc_personality_sj0+0x140>
 1c6:	2f02           	movel %d2,%sp@-
 1c8:	4eb9 0000 0000 	jsr 0 <___gcc_personality_sj0>
 1ce:	588f           	addql #4,%sp
 1d0:	6000 ff6e      	braw 140 <___gcc_personality_sj0+0x140>
 1d4:	2f02           	movel %d2,%sp@-
 1d6:	4eb9 0000 0000 	jsr 0 <___gcc_personality_sj0>
 1dc:	588f           	addql #4,%sp
 1de:	6000 ff60      	braw 140 <___gcc_personality_sj0+0x140>
 1e2:	200a           	movel %a2,%d0
 1e4:	5680           	addql #3,%d0
 1e6:	72fc           	moveq #-4,%d1
 1e8:	c081           	andl %d1,%d0
 1ea:	2440           	moveal %d0,%a2
 1ec:	588a           	addql #4,%a2
 1ee:	41ea 0001      	lea %a2@(1),%a0
 1f2:	0c12 ffff      	cmpib #-1,%a2@
 1f6:	6600 fe9e      	bnew 96 <___gcc_personality_sj0+0x96>
 1fa:	6000 fea8      	braw a4 <___gcc_personality_sj0+0xa4>
 1fe:	2448           	moveal %a0,%a2
 200:	41ea 0001      	lea %a2@(1),%a0
 204:	0c12 ffff      	cmpib #-1,%a2@
 208:	6600 fe8c      	bnew 96 <___gcc_personality_sj0+0x96>
 20c:	6000 fe96      	braw a4 <___gcc_personality_sj0+0xa4>

emutls.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <___emutls_get_address>:
   0:	48e7 2030      	moveml %d2/%a2-%a3,%sp@-
   4:	266f 0010      	moveal %sp@(16),%a3
   8:	246b 0008      	moveal %a3@(8),%a2
   c:	b4fc 0000      	cmpaw #0,%a2
  10:	6708           	beqs 1a <___emutls_get_address+0x1a>
  12:	200a           	movel %a2,%d0
  14:	4cdf 0c04      	moveml %sp@+,%d2/%a2-%a3
  18:	4e75           	rts
  1a:	242b 0004      	movel %a3@(4),%d2
  1e:	7004           	moveq #4,%d0
  20:	b082           	cmpl %d2,%d0
  22:	653a           	bcss 5e <___emutls_get_address+0x5e>
  24:	2213           	movel %a3@,%d1
  26:	5881           	addql #4,%d1
  28:	2f01           	movel %d1,%sp@-
  2a:	4eb9 0000 0000 	jsr 0 <___emutls_get_address>
  30:	2440           	moveal %d0,%a2
  32:	588f           	addql #4,%sp
  34:	4a80           	tstl %d0
  36:	6764           	beqs 9c <___emutls_get_address+0x9c>
  38:	2480           	movel %d0,%a2@
  3a:	588a           	addql #4,%a2
  3c:	202b 000c      	movel %a3@(12),%d0
  40:	6744           	beqs 86 <___emutls_get_address+0x86>
  42:	2f13           	movel %a3@,%sp@-
  44:	2f00           	movel %d0,%sp@-
  46:	2f0a           	movel %a2,%sp@-
  48:	4eb9 0000 0000 	jsr 0 <___emutls_get_address>
  4e:	4fef 000c      	lea %sp@(12),%sp
  52:	274a 0008      	movel %a2,%a3@(8)
  56:	200a           	movel %a2,%d0
  58:	4cdf 0c04      	moveml %sp@+,%d2/%a2-%a3
  5c:	4e75           	rts
  5e:	2042           	moveal %d2,%a0
  60:	d1d3           	addal %a3@,%a0
  62:	4868 0003      	pea %a0@(3)
  66:	4eb9 0000 0000 	jsr 0 <___emutls_get_address>
  6c:	588f           	addql #4,%sp
  6e:	4a80           	tstl %d0
  70:	672a           	beqs 9c <___emutls_get_address+0x9c>
  72:	2040           	moveal %d0,%a0
  74:	45f0 2803      	lea %a0@(00000003,%d2:l),%a2
  78:	4482           	negl %d2
  7a:	220a           	movel %a2,%d1
  7c:	c282           	andl %d2,%d1
  7e:	2441           	moveal %d1,%a2
  80:	2540 fffc      	movel %d0,%a2@(-4)
  84:	60b6           	bras 3c <___emutls_get_address+0x3c>
  86:	2f13           	movel %a3@,%sp@-
  88:	42a7           	clrl %sp@-
  8a:	2f0a           	movel %a2,%sp@-
  8c:	4eb9 0000 0000 	jsr 0 <___emutls_get_address>
  92:	4fef 000c      	lea %sp@(12),%sp
  96:	274a 0008      	movel %a2,%a3@(8)
  9a:	60ba           	bras 56 <___emutls_get_address+0x56>
  9c:	4eb9 0000 0000 	jsr 0 <___emutls_get_address>

000000a2 <___emutls_register_common>:
  a2:	206f 0004      	moveal %sp@(4),%a0
  a6:	202f 0008      	movel %sp@(8),%d0
  aa:	222f 000c      	movel %sp@(12),%d1
  ae:	226f 0010      	moveal %sp@(16),%a1
  b2:	b090           	cmpl %a0@,%d0
  b4:	6306           	blss bc <___emutls_register_common+0x1a>
  b6:	2080           	movel %d0,%a0@
  b8:	42a8 000c      	clrl %a0@(12)
  bc:	b2a8 0004      	cmpl %a0@(4),%d1
  c0:	6304           	blss c6 <___emutls_register_common+0x24>
  c2:	2141 0004      	movel %d1,%a0@(4)
  c6:	b2fc 0000      	cmpaw #0,%a1
  ca:	6704           	beqs d0 <___emutls_register_common+0x2e>
  cc:	b090           	cmpl %a0@,%d0
  ce:	6702           	beqs d2 <___emutls_register_common+0x30>
  d0:	4e75           	rts
  d2:	2149 000c      	movel %a1,%a0@(12)
  d6:	4e75           	rts

	move #$2700,sr
	move.w #$7fff,$f0004e
	lea 'ARSE',a0		;address of RB+ binary in ROM
	lea 'FOOK',a1        ;run address
	move.l a1,a2
	move.l #'RB+!',d0	;length of binary in byte
copyloop:
	move.b (a0)+,(a1)+
	subq.l #1,d0
	bgt.s copyloop
	jmp (a2)
	
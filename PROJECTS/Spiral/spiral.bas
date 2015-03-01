REM SPIRAL
REM

basic_r_indx=0

DIM rgb_voff%	:	rgb_voff=1735
DIM rgb_von%	:	rgb_von=1991
DIM cry_voff%	:	cry_voff=1729
DIM	cry_von%	:	cry_von=1985

LOADCLUT(strptr(BMP_BLUE_clut),14,16)
LOADCLUT(strptr(BMP_RED_clut),13,16)

DIM x%					:	x=0
DIM y%					:	y=40
DIM y2%					:	y2=0
DIM i%					:	i=0
DIM xunt%				:	xunt=1
DIM ticker%				:	ticker=0
DIM	tickle%				:	tickle=1
DIM switcher%			:	switcher=-1
DIM particles%[511,6]

'particles:								 angle, speed, angular speed, initial colour, colour decay (per frame), pixel life (in frames)

	particles[0,3]=160<<16				'x start
	particles[0,4]=y<<16				'y start
	particles[0,5]=15					'particle count
	for i=1 to 15
		particles[i,0]=(i*8)			'angle
		particles[i,1]=i/2				'speed
		particles[i,2]=0				'angular speed
		particles[i,3]=15				'initial colour
		particles[i,4]=7				'colour decay (per frame)
		particles[i,5]=100				'pixel life (in frames)
	next i

	
	
DPOKE VMODE,rgb_von	

do
	ticker++
	xunt=xunt+tickle
	
	IF ticker=20 THEN
		RPARTI(strptr(particles))
		FOR i=1 TO 15
			particles[i,2]=xunt
		NEXT i
		ticker=0
	ENDIF
	
	IF xunt=16 OR xunt=0 THEN
		tickle=tickle*switcher
	ENDIF
	
	VSYNC
loop
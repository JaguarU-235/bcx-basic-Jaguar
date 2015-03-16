REM SPIRAL
REM

basic_r_indx=0

DIM rgb_voff%	:	rgb_voff=1735
DIM rgb_von%	:	rgb_von=1991
DIM cry_voff%	:	cry_voff=1729
DIM	cry_von%	:	cry_von=1985

LOADCLUT(strptr(PAL_BLUE_clut),14,16)
LOADCLUT(strptr(PAL_RED_clut),13,16)
LOADCLUT(strptr(PAL_GREEN_INK_clut),12,16)



DIM angle%				: 	angle=32
DIM speed%				: 	speed=13
DIM curve%				: 	curve=3
DIM initial%			: 	initial=15
DIM decay%				: 	decay=3
DIM life%				: 	life=64
DIM partis%				: 	partis=16

DIM x%					:	x=160
DIM x2%					:	x2=0
DIM y%					:	y=140
DIM y2%					:	y2=0
DIM y3%					:	y3=0
DIM i%					:	i=0
DIM trigger%			:	trigger=0
DIM counter%			:	counter=0
DIM cap%				:	cap=1
DIM pie!				:	pie=3.1415926535897932384626433832795	'lolol
DIM rads!				:	rads=(pie/180)
DIM partibuff%			:	partibuff=0
DIM partibuff2%			:	partibuff2=0
DIM currentlayer%		:	currentlayer=0

DIM sinz![360]
DIM sins%[360]

FOR i=0 to 359
	sinz[i]=(sin(i*rads))*64			' 64!!111
	sins[i]=(int)INT(sinz[i])
NEXT

DIM particles%[511,6]
'particles:								 angle, speed, angular speed, initial colour, colour decay (per frame), pixel life (in frames)

	particles[0,3]=x<<16				'x start
	particles[0,4]=y<<16				'y start
	particles[0,5]=partis				'particle count
	FOR i=1 TO partis
		particles[i,0]=(i*angle)		'angle
		particles[i,1]=speed			'speed
		particles[i,2]=curve			'angular speed
		particles[i,3]=initial			'initial colour
		particles[i,4]=decay			'colour decay (per frame)
		particles[i,5]=life				'pixel life (in frames)
	NEXT i

partibuff=RGETOBJ(0,R_sprite_gfxbase)
partibuff2=partibuff+38400
	
DPOKE VMODE,cry_voff	
DPOKE BG,30840
do

	trigger++
	counter++
	
	x2=counter[sins]
	y2=(counter/2)[sins]
	
	RSETOBJ(1,R_sprite_x,(x+x2-48)<<16)
	RSETOBJ(1,R_sprite_y,(y+y2-64)<<16)

	IF trigger=4 THEN
		particles[0,3]=(x+x2)<<16
		particles[0,4]=(y+y2)<<16
		RPARTI(strptr(particles))

'		CALL doublebuff		

		trigger=0
	ENDIF
	
VSYNC	
	
	IF counter=359 THEN
		counter=-1
	ENDIF
	
LOOP

SUB doublebuff

		IF currentlayer=0 THEN
			RLOCATE 50,50
			PRINT "layer 0"
			RSETOBJ(0,R_sprite_gfxbase,partibuff2)
			currentlayer=1
		ELSE
			RLOCATE 120,50
			PRINT "layer 1"
			RSETOBJ(0,R_sprite_gfxbase,partibuff)
			currentlayer=0
		ENDIF
		DELAY(30)

END SUB
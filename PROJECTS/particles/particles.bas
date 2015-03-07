' simple raptor particle effect demonstration rb+, sh3-rg

DIM x%			:		x=160
DIM y%			:		y=72
DIM x2%			:		x2=0
DIM y2%			:		y2=0
DIM trigger%	:		trigger=0
DIM counter%	:		counter=0
DIM cap%		:		cap=1
DIM pie!		:		pie=3.1415926535897932384626433832795	'lolol
DIM rads!		:		rads=(pie/180)

DIM i%			:		i=0
DIM sinz![360]
DIM sins%[360]

FOR i=0 to 360
	sinz[i]=(sin(i*rads))*64			' 64!!111
	sins[i]=(int)INT(sinz[i])
NEXT

dim particles%[17,6]

for i=1 to 8
	particles[i,0]=(i-1)*64
next i
for i=1 to 8
	particles[i+8,0]=(i-1)*64+32
next i
for i=1 to 16
	particles[i,1]=6
	particles[i,2]=4
	particles[i,3]=15
	particles[i,4]=10
	particles[i,5]=128
next i
particles[0,5]=16
	
DO
	trigger++
	counter++
	
	x2=counter[sins]
	y2=(counter/2)[sins]
	
	IF trigger=cap THEN
		particles[0,3]=(x+x2)<<16
		particles[0,4]=(y+y2)<<16
		RPARTI(strptr(particles))
		trigger=0
	ENDIF
	
	VSYNC
	
	IF counter=360 THEN
		counter=0
		cap++
		IF cap>=10 THEN
			CALL wearedonehere
		ENDIF
	ENDIF
	
LOOP

SUB wearedonehere
	RLOCATE x-16,y+32
	DELAY(150)
	RPRINT "wrap!"
	trigger=0
	cap=1
	x2=0
	y2=0
	counter=0
	DELAY(50)
ENDSUB
REM FIREWORKS
REM

RUPDALL(1)

dim X as float, Y as float, Y2 as int

do

	X=RND*320
	Y=RND*170

	FOR Y2=320 TO 30+(int)Y STEP -1
		RPARTI(1,(int)X<<16,(int)Y2<<16)
	NEXT Y2
	
	U235SND(0,4)
	
	RPARTI(0,(int)X<<16,(int)Y2<<16)
loop

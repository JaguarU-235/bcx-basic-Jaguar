REM SIMPLE DODGE GAME
dim FRCOUNT, CURRENT
dim PY
dim STICK
dim col

MODPLAY(0)
FRCOUNT=0: CURRENT=0
PY=100
basic_r_indx=0
basic_r_size=0

RLOCATE 10,10

REM MAIN LOOP
do
	PRINT "     "
	FRCOUNT=FRCOUNT+1
	IF FRCOUNT=10 THEN 
		call newenemy 'REM ADD NEW ENEMY
	ENDIF
	STICK=GETPAD(1)
	IF (STICK BAND PAD_UP AND PY>20) THEN
		PY=PY-2
	ENDIF
	IF (STICK BAND PAD_DOWN AND PY<200) THEN
		PY=PY+2
	endif
	RSETOBJ(1,R_sprite_y,PY<<16)
	IF RHIT(1,1,2,22)<>-1 THEN
		'SNDPLAY(0,4)
		col=PY<<10
		dpoke 0xf00058,col
	PRINT "LOLOL"
	ELSE
		dpoke 0xf00058,PY
	endif
	RUPDALL(0)
	MODVOL(PY*63/200)
	SNDVOL((199-PY)*63/200)
	SNDFREQ(4,PY*16384/200)
'	sndkill(0)
loop

REM NEW ENEMY
sub newenemy
	RSETOBJ(2+CURRENT,R_sprite_x,352<<16)
	RSETOBJ(2+CURRENT,R_sprite_y,INT((integer)(RND*200)<<16))
	RSETOBJ(2+CURRENT,R_sprite_was_hit,R_cant_hit)
	RSETOBJ(2+CURRENT,R_sprite_hitpoint,1)
	RSETOBJ(2+CURRENT,R_sprite_xadd,-2<<16)
	RSETOBJ(2+CURRENT,R_sprite_active,1)
	CURRENT=CURRENT+1
	IF CURRENT=20 THEN
		CURRENT=0
	ENDIF
	FRCOUNT=0
end sub


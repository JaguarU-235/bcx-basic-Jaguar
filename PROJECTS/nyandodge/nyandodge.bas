REM SIMPLE DODGE GAME
dim FRCOUNT, CURRENT
dim PY
dim STICK

U235MOD(0)
FRCOUNT=0: CURRENT=0
PY=100

REM MAIN LOOP
do
	FRCOUNT=FRCOUNT+1
	IF FRCOUNT=10 THEN 
		call newenemy 'REM ADD NEW ENEMY
	ENDIF
	STICK=U235PAD(1)
	IF (STICK=1 AND PY>20) THEN
		PY=PY-2
	ENDIF
	IF (STICK=2 AND PY<200) THEN
		PY=PY+2
	endif
	RSETOBJ(1,R_sprite_y,PY<<16)
	IF RHIT(1,1,2,22)<>-1 THEN
		U235SND(0,4)
	endif
	RUPDALL(0)
'    lpoke 0xF00058,0xffffffff
    dpoke 0xf00058,PY
    PY=dpeek(0xf00058)
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


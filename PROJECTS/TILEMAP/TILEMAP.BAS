' TILEMAP DEMO
'
' CLS

dim PX as int, PY as int
PX=0
PY=0

dim PAD as int
do
	PAD=GETPAD(1)
	IF PAD band 1 THEN PY=PY-4
	IF PAD band 2 THEN PY=PY+4
	IF PAD band 4 THEN PX=PX-4
	IF PAD band 8 THEN PX=PX+4
	IF PX<0 THEN PX=0
	IF PX>96 THEN PX=96
	IF PY<0 THEN PY=0
	IF PY>20904 THEN PY=20904
	RSETMAP(PX<<16,PY<<16)
	RUPDALL(0)
loop


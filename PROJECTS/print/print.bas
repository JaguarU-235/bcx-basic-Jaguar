dim paddy as int
basic_r_indx=0
basic_r_size=0
RLOCATE 10,10
RPRINT "helloooooooooooooooo!"
rlocate 10,50
print "hiya! ",(int)100,"belloooo",123
RLOCATE 30,100
RPRINT "Press joypad stuff and see numbers!"
RLOCATE 10,120
do
	paddy=getpad(1)
	if paddy<>0 then
		RPRINTINT paddy
	endif
	rupdall(0)
loop


call craparse

sub craparse

CONST PI = 3.141592653589753
LOCAL i%
local j as short
local px[360] as short
local py[360] as short
for i%=0 to 359
	px[i]=100+30*sin(i%*PI/180)
	py[i]=150+40*cos(i%*PI/180)
next i%
j=1
a:
colour j
for i%=0 to 359
	'plot_px=px[i]
	'plot_py=py[i]
	plot px[i]+j,py[i]+j
next i%
j=(j+1) band 15
goto a
end sub



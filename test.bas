call craparse

sub craparse

CONST PI = 3.141592653589753
LOCAL i%
local j as short
local cx as short
local cy as short
local pad as int

local px[360] as short
local py[360] as short

colour 1
plot 0,0

for i%=0 to 359
	px[i]=100+30*sin(i%*PI/180)
	py[i]=150+40*cos(i%*PI/180)
next i%
j=1
cx=0
cy=0
a:
pad=u235pad(1)
if pad=8 then
	cx=cx+1
elseif pad=4 then
	cx=cx-1
elseif pad=2 then
	cy=cy+1
elseif pad=1 then
	cy=cy-1
end if
colour j
for i%=0 to 359
	plot px[i]+j+cx,py[i]+j+cy
next i%
j=(j+1) band 15
goto a
end sub



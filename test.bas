CONST PI = 3.141592653589753
LOCAL i%
for i%=0 to 359
	plot 100+30*sin(i%*PI/180),150+40*cos(i%*PI/180)
next i%


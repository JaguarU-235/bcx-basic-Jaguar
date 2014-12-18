@echo off
echo ------------------------------------------------------------
REM echo Building Reboot BASIC Application
echo.

set PATH=.;bin;%PATH%

bc nyandodge.bas
m68k-atari-mint-gcc -Iinclude -O2 -c nyandodge.C
rmac -fb -u -o RBASIC.O RAPAPP.s 
rln -z -rq -o RBASIC.ABS -a 4000 x x RBASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ obj\_double.o obj\fpgnulib.o obj\_floatex.o obj\cos.o obj\sqrt.o obj\ldexp.o obj\sin.o obj\mod.o obj\modf.o obj\_normdf.o obj\_infinitydf.o obj\_gtdf2.o obj\_ltdf2.o obj\poly.o obj\matherr.o obj\_eqdf2.o obj\frexp.o obj\_divsi3.o obj\_udivsi3.o obj\memset.o obj\_float.o obj\rand.o obj\_mulsi3.o obj\_modsi3.o obj\floor.o nyandodge.o

REM del rbasic.o
REM 
REM taskkill /IM virtualjaguar.exe > null.o
REM del null.o
start bin\virtualjaguar RBASIC.ABS --alpine







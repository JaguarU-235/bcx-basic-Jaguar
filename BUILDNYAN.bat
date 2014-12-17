@echo off
echo ------------------------------------------------------------
REM echo Building Reboot BASIC Application
echo.

bc nyandodge.bas
m68k-atari-mint-gcc -O2 -c nyandodge.C
bin\rmac -fb -u -o RBASIC.O _RAPAPP.s 
bin\rln -z -rq -o RBASIC.ABS -a 4000 x x RBASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ _double.o fpgnulib.o _floatex.o cos.o sqrt.o ldexp.o sin.o mod.o modf.o _normdf.o _infinitydf.o _gtdf2.o _ltdf2.o poly.o matherr.o _eqdf2.o frexp.o _divsi3.o _udivsi3.o memset.o _float.o rand.o _mulsi3.o _modsi3.o floor.o nyandodge.o

REM del rbasic.o
REM 
REM taskkill /IM virtualjaguar.exe > null.o
REM del null.o
REM start bin\virtualjaguar RBASIC.ABS --alpine







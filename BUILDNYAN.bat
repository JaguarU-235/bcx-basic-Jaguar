@echo off
echo ------------------------------------------------------------
REM echo Building Reboot BASIC Application
echo.

set PATH=.;bin;%PATH%

bc nyandodge.bas
m68k-atari-mint-gcc -Iinclude -O2 -c nyandodge.C
rmac -fb -u -o RBASIC.O RAPAPP.s 
rln -z -rq -o RBASIC.ABS -a 4000 x x RBASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ obj\libm.a obj\libc.a obj\libgcc.a nyandodge.o

REM del rbasic.o
REM 
REM taskkill /IM virtualjaguar.exe > null.o
REM del null.o
start bin\virtualjaguar RBASIC.ABS --alpine







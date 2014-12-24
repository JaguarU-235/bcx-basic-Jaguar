@echo off
echo ------------------------------------------------------------
echo Building RAPTOR Basic Application
echo.

set PATH=.;bin;..\..\bin;%PATH%

cd projects\%1
rmac -fb -u -o ..\..\build\BASIC.O RAPAPP.s 
cd ..\..

bc  PROJECTS\%1\%1.bas -q
move PROJECTS\%1\%1.C build >NUL
rem m68k-atari-mint-gcc -Iinclude -c build\%1.C -o build\%1.o
m68k-atari-mint-gcc -Iinclude -c build\%1.C -o build\%1.o
rln -z -rq -o RBASIC.ABS -a 4000 x x build\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ obj\libm.a obj\libc.a obj\libgcc.a obj\basic_functions.o build\%1.o

rem del basic.o

rem taskkill /IM virtualjaguar.exe > NUL
virtualjaguar RBASIC.ABS --alpine








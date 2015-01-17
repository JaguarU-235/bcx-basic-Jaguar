@echo off
echo ------------------------------------------------------------
echo Building RAPTOR Basic Application
echo.

set PATH=.;bin;..\..\bin;%PATH%

if exist rbasic.abs del rbasic.abs
if exist build\basic.o del build\basic.o

cd projects\%1
rmac -fb -u -o ..\..\build\BASIC.O RAPAPP.s 
cd ..\..

bc  PROJECTS\%1\%1.bas -q
move PROJECTS\%1\%1.C build >NUL
m68k-atari-mint-gcc -O2 -Iinclude -c build\%1.C -o build\%1.o
rln -z -rq -o RBASIC.ABS -a 4000 x x build\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ include\libm.a include\libc.a include\libgcc.a include\basic_functions.o build\%1.o

if not exist rbasic.abs goto :builderror
rem taskkill /IM virtualjaguar.exe > NUL
virtualjaguar RBASIC.ABS --alpine
goto :veryend

:builderror
echo Build error!

:veryend




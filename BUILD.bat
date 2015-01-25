@echo off
echo ------------------------------------------------------------
echo Building RAPTOR Basic Application
echo.

rem -------------------------------------------------------------
rem set path
if defined RBASIC+ goto :pathset
set PATH=%CD%;%CD%\bin;%PATH%
set RBASIC+=64
:pathset

rem -------------------------------------------------------------
rem delete residual files from previous builds
if exist rbasic.abs del rbasic.abs
if exist build\basic.o del build\basic.o
if exist build\%1.C del build\%1.C

rem -------------------------------------------------------------
rem abort build if bas file doesn't exist
if not exist PROJECTS\%1\%1.bas echo PROJECTS\%1\%1.bas doesn't exist!
if not exist PROJECTS\%1\%1.bas goto :builderror

rem -------------------------------------------------------------
rem assemble raptor skeleton
cd PROJECTS\%1
rmac -fb -u -o ..\..\build\BASIC.O RAPAPP.s 
cd ..\..

rem -------------------------------------------------------------
rem translate .bas file to C
bc  PROJECTS\%1\%1.bas -q
move PROJECTS\%1\%1.C build /Y >NUL

rem -------------------------------------------------------------
rem Compile C code
m68k-atari-mint-gcc -O2 -Iinclude -c build\%1.C -o build\%1.o

rem -------------------------------------------------------------
rem Link binaries
rem rln -z -rq -o RBASIC.ABS -a 4000 x x build\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ include\libm.a include\libc.a include\libgcc.a include\basic_functions.o build\%1.o include\ecvtbuf.o include\ee_printf.o include\fcvtbuf.o
rln -z -rq -o RBASIC.ABS -a 4000 x x build\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ include\libm.a include\libc.a include\libgcc.a include\basic_functions.o build\%1.o

rem -------------------------------------------------------------
rem Don't run vj if no .abs file was produced
if not exist rbasic.abs goto :builderror

rem -------------------------------------------------------------
rem Run vj
rem taskkill /IM virtualjaguar.exe >NUL
virtualjaguar RBASIC.ABS --alpine
goto :veryend

rem -------------------------------------------------------------
rem Error handler
:builderror
echo Build error!

:veryend




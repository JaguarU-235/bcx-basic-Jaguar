@echo off

rem -------------------------------------------------------------
rem set path
if defined RBASIC+ goto :pathset
set PATH=%CD%;%CD%\bin;%PATH%
set RBASIC+=64
:pathset

rem -------------------------------------------------------------
if [%1] neq [] goto :dobuild
echo Usage: BUILD.bat projectname
echo        BUILD.bat projectname ROM
echo.
echo Folder "projectname" must exist inside folder "projects"
echo and have a file called "projectname.bas" inside.
echo.
echo when building a ROM it is assumed that there will exist
echo a file called assets.txt inside the project folder
echo and will contain all assets to be included in ROM (if any)
echo.
echo Current projects:
dir /AD /B PROJECTS
goto :veryend

rem -------------------------------------------------------------
:dobuild
echo ------------------------------------------------------------
echo Building RAPTOR Basic+ Application
echo.

rem -------------------------------------------------------------
rem delete residual files from previous builds
if exist PROJECTS\%1\%1.abs del PROJECTS\%1\%1.abs
if exist PROJECTS\%1\build\basic.o del PROJECTS\%1\build\basic.o
if exist PROJECTS\%1\build\%1.C del PROJECTS\%1\build\%1.C
if exist PROJECTS\%1\build\%1.o del PROJECTS\%1\build\%1.o

rem -------------------------------------------------------------
rem abort build if bas file doesn't exist
if not exist PROJECTS\%1\%1.bas echo PROJECTS\%1\%1.bas doesn't exist!
if not exist PROJECTS\%1\%1.bas goto :builderror

rem -------------------------------------------------------------
rem let's build the linkfile and romassets.inc/.h/ramassets.inc right here
rem does asset conversion too
rem if "%2" neq "ROM" goto :assembleraptor
if exist PROJECTS\%1\%1.rom del PROJECTS\%1\%1.rom
if exist PROJECTS\%1\%1.rom del PROJECTS\%1\build\%1.bin
if exist PROJECTS\%1\romassets.h del PROJECTS\%1\romassets.h
if exist PROJECTS\%1\romassets.inc del PROJECTS\%1\romassets.inc
if exist PROJECTS\%1\ramassets.inc del PROJECTS\%1\ramassets.inc
if exist PROJECTS\%1\build\linkfile.bin del PROJECTS\%1\build\linkfile.bin
buildlink PROJECTS\%1\assets.txt PROJECTS\%1

rem -------------------------------------------------------------
rem assemble raptor skeleton
:assembleraptor
cd PROJECTS\%1
rmac -fb -u -i..\..\include -o build\BASIC.O RAPAPP.s 
cd ..\..

rem -------------------------------------------------------------
rem translate .bas file to C
bc  PROJECTS\%1\%1.bas -q
move /Y PROJECTS\%1\%1.C PROJECTS\%1\build >NUL

rem -------------------------------------------------------------
rem Compile C code
m68k-atari-mint-gcc -O2 -Iinclude -IPROJECTS\%1\ -c PROJECTS\%1\build\%1.C -o PROJECTS\%1\build\%1.o
if not exist PROJECTS\%1\build\%1.o goto :builderror

rem -------------------------------------------------------------
rem Link binaries
rln -z -rq -o PROJECTS\%1\%1.abs -a 4000 x x PROJECTS\%1\build\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ include\libm.a include\libc.a include\libgcc.a include\basic_functions.o include\ee_printf.o PROJECTS\%1\build\%1.o
rln -z -rq -o PROJECTS\%1\build\%1.bin -n -a 4000 x x PROJECTS\%1\build\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ include\libm.a include\libc.a include\libgcc.a include\basic_functions.o include\ee_printf.o PROJECTS\%1\build\%1.o
if not exist PROJECTS\%1\%1.abs goto :builderror

if "%2" neq "ROM" goto :norom
rem -------------------------------------------------------------
rem Let's build a ROM
makearom PROJECTS\%1\build\%1.bin PROJECTS\%1\build\linkfile.bin PROJECTS\%1\%1.rom
if not exist PROJECTS\%1\%1.rom goto :builderror

if "%3"=="sendy" goto :sendrom
virtualjaguar PROJECTS\%1\%1.rom --alpine
goto :veryend
:sendrom
jcp -r
ping localhost
jcp -f PROJECTS\%1\%1.rom
goto :veryend

:norom
rem -------------------------------------------------------------
rem Don't run vj if no .abs file was produced
if not exist PROJECTS\%1\%1.abs goto :builderror

rem -------------------------------------------------------------
rem Run vj or send binary to skunk
rem taskkill /IM virtualjaguar.exe >NUL
if "%2"=="sendy" goto :sendabs
virtualjaguar PROJECTS\%1\%1.abs --alpine
goto :veryend
:sendabs
jcp -r
ping localhost
jcp PROJECTS\%1\%1.abs
goto :veryend

rem -------------------------------------------------------------
rem Error handler
:builderror
echo Build error!

:veryend




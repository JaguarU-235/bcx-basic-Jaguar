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
rem if we're building a ROM, we're going to need to build
rem the linkfile and assets.s/h right here
if "%2" neq "ROM" goto :assembleraptor
if exist PROJECTS\%1\%1.rom del PROJECTS\%1\%1.rom
if exist PROJECTS\%1\romassets.h del PROJECTS\%1\romassets.h
if exist PROJECTS\%1\romassets.inc del PROJECTS\%1\romassets.inc
if exist PROJECTS\%1\build\linkfile.bin del PROJECTS\%1\build\linkfile.bin
buildlink PROJECTS\%1\assets.txt PROJECTS\%1

rem -------------------------------------------------------------
rem assemble raptor skeleton
:assembleraptor
cd PROJECTS\%1
rmac -fb -u -o build\BASIC.O RAPAPP.s 
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
rln -z -rq -o PROJECTS\%1\%1.ABS -a 4000 x x PROJECTS\%1\build\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ include\libm.a include\libc.a include\libgcc.a include\basic_functions.o include\ee_printf.o PROJECTS\%1\build\%1.o
rln -z -rq -o PROJECTS\%1\%1.BIN -n -a 4000 x x PROJECTS\%1\build\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ include\libm.a include\libc.a include\libgcc.a include\basic_functions.o include\ee_printf.o PROJECTS\%1\build\%1.o
if not exist PROJECTS\%1\%1.ABS goto :builderror

if "%2" neq "ROM" goto :norom
rem -------------------------------------------------------------
rem Let's build a ROM
makearom PROJECTS\%1\%1.BIN PROJECTS\%1\build\linkfile.bin PROJECTS\%1\%1.rom
rem del PROJECTS\%1\%1.BIN >NUL
if not exist PROJECTS\%1\%1.ROM goto :builderror
virtualjaguar PROJECTS\%1\%1.ROM --alpine
goto :veryend
rem TODO:
rem       - convert all gfx to native format
rem       - create a linkfile with all gfx+sound+whatever else.
rem       - linkfile will be created from a .txt file
rem       - from that file a .s will be created with EQUs so the addresses in ROM
rem         can be exposed to raptor/bcx (bcx should prolly be romassets(0) (1) etc)
rem       - linkfile should have offsets to each asset as a long at its start
rem       - code to copy rom to ram (grab from jiffi) + jump to ram
rem       - prolly make a bin/bjl instead of abs
rem       - grab linkfile created above and pad it in front of .bin
rem       - pad rom
rem       - write last long of rom with address to linkfile
rem       - .txt should be something like "asset_name,'music'/'gfx'/'data',filename"

:norom

rem -------------------------------------------------------------
rem Don't run vj if no .abs file was produced
if not exist PROJECTS\%1\%1.abs goto :builderror

rem -------------------------------------------------------------
rem Run vj
rem taskkill /IM virtualjaguar.exe >NUL
virtualjaguar PROJECTS\%1\%1.ABS --alpine
goto :veryend

rem -------------------------------------------------------------
rem Error handler
:builderror
echo Build error!

:veryend




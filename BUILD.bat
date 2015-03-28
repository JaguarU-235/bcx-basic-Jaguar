@echo off

rem -------------------------------------------------------------
rem set path
if defined RBASIC+ goto :pathset
set PATH=%CD%;%CD%\bin;%PATH%
set RBASIC+=64
:pathset
set BUILDPATH=PROJECTS\%1
set TEMPDIR=PROJECTS\%1\build

rem -------------------------------------------------------------
if [%1] neq [] goto :dobuild
echo Usage: BUILD.bat projectname
echo        BUILD.bat projectname sendy
echo        BUILD.bat projectname ROM
echo        BUILD.bat projectname ROM sendy
echo        BUILD.bat projectname new
echo.
echo Folder "projectname" must exist inside folder "projects"
echo and have a file called "projectname.bas" inside.
echo.
echo when building a ROM it is assumed that there will exist
echo a file called assets.txt inside the project folder
echo and will contain all assets to be included in ROM (if any)
echo.
echo if you specify "new" then a new project will be created
echo from the "projects\template" folder. No project will be
echo created if folder exists.
echo.
echo if you specify "sendy" the project, upon succesful compilation
echo will be sent to Skunkboard (caution - when using ROM, bank
echo #1 will be erased without any warning!)
echo.
echo Current projects:
dir /AD /B PROJECTS
goto :veryend

rem -------------------------------------------------------------
:dobuild
if "%2" == "new" goto :newproject
echo ------------------------------------------------------------
echo Building RAPTOR Basic+ Application
echo.

rem -------------------------------------------------------------
rem delete residual files from previous builds
if exist %BUILDPATH%\%1.abs del %BUILDPATH%\%1.abs
if not exist %TEMPDIR% mkdir %TEMPDIR%
if exist %TEMPDIR%\basic.o del %TEMPDIR%\basic.o
if exist %TEMPDIR%\%1.C del %TEMPDIR%\%1.C
if exist %TEMPDIR%\%1.o del %TEMPDIR%\%1.o
echo Build started on %date% %time% > %TEMPDIR%\build.log

rem -------------------------------------------------------------
rem abort build if bas file doesn't exist
if not exist %BUILDPATH%\%1.bas echo %BUILDPATH%\%1.bas doesn't exist!
if not exist %BUILDPATH%\%1.bas goto :builderror

rem -------------------------------------------------------------
rem let's build the linkfile and romassets.inc/.h/ramassets.inc right here
rem does asset conversion too
if exist %BUILDPATH%\%1.rom del %BUILDPATH%\%1.rom
if exist %TEMPDIR%\%1.bin del %TEMPDIR%\%1.bin
if exist %BUILDPATH%\romassets.h del %BUILDPATH%\romassets.h
if exist %BUILDPATH%\romassets.inc del %BUILDPATH%\romassets.inc
if exist %BUILDPATH%\ramassets.inc del %BUILDPATH%\ramassets.inc
if exist %TEMPDIR%\linkfile.bin del %TEMPDIR%\linkfile.bin
echo. >> %TEMPDIR%\build.log
buildlink %BUILDPATH%\assets.txt %BUILDPATH%

rem -------------------------------------------------------------
rem assemble raptor skeleton
:assembleraptor
echo. >> %TEMPDIR%\build.log
echo Assembling raptor skeleton... >> %TEMPDIR%\build.log
cd %BUILDPATH%
rmac -fb -u -i..\..\include -o build\BASIC.O RAPAPP.s >> build\build.log
cd ..\..

rem -------------------------------------------------------------
rem translate .bas file to C
echo. >> %TEMPDIR%\build.log
echo Translating .bas file to C... >> %TEMPDIR%\build.log
bc  %BUILDPATH%\%1.bas -q >> %TEMPDIR%\build.log
move /Y %BUILDPATH%\%1.C %TEMPDIR% >NUL

rem -------------------------------------------------------------
rem Compile C code
echo. >> %TEMPDIR%\build.log
echo Compiling C code... >> %TEMPDIR%\build.log
m68k-atari-mint-gcc -O2 -Iinclude -I%BUILDPATH%\ -c %TEMPDIR%\%1.C -o %TEMPDIR%\%1.o >> %TEMPDIR%\build.log 2>&1
if not exist %TEMPDIR%\%1.o goto :builderror
m68k-atari-mint-gcc -O2 -Iinclude -I%BUILDPATH%\ %TEMPDIR%\%1.C -S -o %TEMPDIR%\%1.s >> %TEMPDIR%\build.log 2>&1
if "%2" neq "ROM" goto :norom

rem -------------------------------------------------------------
rem Link binaries
echo. >> %TEMPDIR%\build.log
echo Linking things... >> %TEMPDIR%\build.log
rln -z -rq -o %TEMPDIR%\%1.bin -n -a 4000 x x %TEMPDIR%\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ include\libm.a include\libc.a include\libgcc.a include\basic_functions.o include\ee_printf.o %TEMPDIR%\%1.o >> %TEMPDIR%\build.log
if not exist %TEMPDIR%\%1.bin goto :builderror
rem -------------------------------------------------------------
rem Let's build a ROM
echo. >> %TEMPDIR%\build.log
echo Making ROM... >> %TEMPDIR%\build.log
makearom %TEMPDIR%\%1.bin %TEMPDIR%\linkfile.bin %BUILDPATH%\%1.rom
if not exist %BUILDPATH%\%1.rom goto :builderror

if "%3"=="sendy" goto :sendrom
echo. >> %TEMPDIR%\build.log
echo starting vj >> %TEMPDIR%\build.log
start virtualjaguar %BUILDPATH%\%1.rom --alpine
goto :veryend
:sendrom
jcp -r
ping localhost
jcp -f %BUILDPATH%\%1.rom
goto :veryend

:norom
rem -------------------------------------------------------------
rem Link binaries
echo. >> %TEMPDIR%\build.log
echo Linking things... >> %TEMPDIR%\build.log
rln -z -rq -o %BUILDPATH%\%1.abs -a 4000 x x %TEMPDIR%\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ include\libm.a include\libc.a include\libgcc.a include\basic_functions.o include\ee_printf.o %TEMPDIR%\%1.o >> %TEMPDIR%\build.log

rem -------------------------------------------------------------
rem Don't run vj if no .abs file was produced
if not exist %BUILDPATH%\%1.abs goto :builderror
echo. >> %TEMPDIR%\build.log
echo Build successful! >> %TEMPDIR%\build.log

rem -------------------------------------------------------------
rem Run vj or send binary to skunk
if "%2"=="sendy" goto :sendabs
echo. >> %TEMPDIR%\build.log
echo Starting vj
echo starting vj >> %TEMPDIR%\build.log
start virtualjaguar %BUILDPATH%\%1.abs --alpine
goto :veryend
:sendabs
echo Sending to skunkboard...
echo. >> %TEMPDIR%\build.log
echo Sending to skunkboard... >> %TEMPDIR%\build.log
jcp -r
ping localhost
jcp %BUILDPATH%\%1.abs
goto :veryend

rem -------------------------------------------------------------
rem Error handler
:builderror
echo Build error!
echo Build error! >> %TEMPDIR%\build.log
notepad %TEMPDIR%\build.log
goto :veryend

rem -------------------------------------------------------------
rem Create a new project
:newproject
if exist PROJECTS\%1\%1.bas goto :veryend
xcopy /e PROJECTS\template PROJECTS\%1\
rename PROJECTS\%1\template.bas %1.bas
echo Project %1 created successfully!

:veryend


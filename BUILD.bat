@echo off

rem -------------------------------------------------------------
rem Remove the .rbplus extension from the parameter if found
rem and pathname
set PROJECTNAME=%~n1

rem -------------------------------------------------------------
rem set build tools path
if "%RBTOOLS%" neq "" goto :set_from_environment
rem if not found then assume rbtools directory is the current
rem Dangerous but compatible with old style build system
rem (new versions will have this set from the installer)
if "%RBTOOLS%" == "" for %%f in ("%cd%") do set RBTOOLS=%%~sf

:set_from_environment
if defined RBASIC+ goto :pathset
set PATH=%RBTOOLS%;%RBTOOLS%\bin;%PATH%
set RBASIC+=64

:pathset

rem if %RBTOOLS%=="" SET RBTOOLS=d:\Atom\raptor\RAPTOR~4
rem This gets the current path in 8.3 format, might be useful for RBTOOLS too?
set CURRENTPATH_FULL=%cd%
for %%f in ("%cd%") do set CURRENTPATH=%%~sf

rem -------------------------------------------------------------
rem check to see if project exists in "projects\projectname"
rem or "projectname" - the second has precedence
set BUILDPATH=%CURRENTPATH%\PROJECTS\%PROJECTNAME%
if exist %PROJECTNAME%\%PROJECTNAME%.bas set BUILDPATH=%CURRENTPATH%\%PROJECTNAME%
set TEMPDIR=%BUILDPATH%\build
rem assume no ROM mode
set ROM_MODE=

rem -------------------------------------------------------------
if [%PROJECTNAME%] neq [] goto :dobuild
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
echo from the "include\template" folder. No project will be
echo created if folder exists.
echo.
echo if you specify "sendy" the project, upon succesful compilation
echo will be sent to Skunkboard (caution - when using ROM, bank
echo #1 will be erased without any warning!)
echo.
echo Current projects:
if exist projects (
dir /AD /B PROJECTS
) else (
dir /AD /B
)
goto :veryend

rem -------------------------------------------------------------
:dobuild
if "%2" == "new" goto :newproject
echo ------------------------------------------------------------
echo Building RAPTOR Basic+ Application
echo.

rem -------------------------------------------------------------
rem delete residual files from previous builds
if exist %BUILDPATH%\%PROJECTNAME%.abs del %BUILDPATH%\%PROJECTNAME%.abs
if not exist %TEMPDIR% mkdir %TEMPDIR%
if exist %TEMPDIR%\basic.o del %TEMPDIR%\basic.o
if exist %TEMPDIR%\%PROJECTNAME%.C del %TEMPDIR%\%PROJECTNAME%.C
if exist %TEMPDIR%\%PROJECTNAME%.o del %TEMPDIR%\%PROJECTNAME%.o

rem -------------------------------------------------------------
rem abort build if bas file doesn't exist
if not exist %BUILDPATH%\%PROJECTNAME%.bas echo %BUILDPATH%\%PROJECTNAME%.bas doesn't exist!
if not exist %BUILDPATH%\%PROJECTNAME%.bas goto :builderror
echo Build started on %date% %time% > %TEMPDIR%\build.log

rem -------------------------------------------------------------
rem let's build the linkfile and romassets.inc/.h/ramassets.inc right here
rem does asset conversion too
if exist %BUILDPATH%\%PROJECTNAME%.rom del %BUILDPATH%\%PROJECTNAME%.rom
if exist %TEMPDIR%\%PROJECTNAME%.bin del %TEMPDIR%\%PROJECTNAME%.bin
if exist %BUILDPATH%\romassets.h del %BUILDPATH%\romassets.h
if exist %BUILDPATH%\romassets.inc del %BUILDPATH%\romassets.inc
if exist %BUILDPATH%\ramassets.inc del %BUILDPATH%\ramassets.inc
if exist %TEMPDIR%\linkfile.bin del %TEMPDIR%\linkfile.bin
echo. >> %TEMPDIR%\build.log
buildlink %BUILDPATH%\assets.txt %BUILDPATH%
if %ERRORLEVEL% == "2" goto :builderror
if exist %TEMPDIR%\linkfile.bin set ROM_MODE=1

rem -------------------------------------------------------------
rem assemble raptor skeleton
:assembleraptor
echo. >> %TEMPDIR%\build.log
echo Assembling raptor skeleton... >> %TEMPDIR%\build.log
cd %BUILDPATH%
rmac -fb -u -i"%RBTOOLS%\include" -o build\BASIC.O RAPAPP.s >> %TEMPDIR%\build.log 2>&1
cd %CURRENTPATH_FULL%
if NOT EXIST %TEMPDIR%\basic.o goto :builderror

rem -------------------------------------------------------------
rem translate .bas file to C
echo. >> %TEMPDIR%\build.log
echo Translating .bas file to C... >> %TEMPDIR%\build.log
bc %BUILDPATH%\%PROJECTNAME%.bas -q >> %TEMPDIR%\build.log
if %ERRORLEVEL% NEQ 0 goto :builderror
move /Y %BUILDPATH%\%PROJECTNAME%.C %TEMPDIR% >NUL

rem -------------------------------------------------------------
rem Compile C code
echo. >> %TEMPDIR%\build.log
echo Compiling C code... >> %TEMPDIR%\build.log
m68k-atari-mint-gcc -O2 -I"%RBTOOLS%\include" -I%BUILDPATH%\ -c %TEMPDIR%\%PROJECTNAME%.C -o %TEMPDIR%\%PROJECTNAME%.o >> %TEMPDIR%\build.log 2>&1
if %ERRORLEVEL% NEQ 0 goto :builderror
if not exist %TEMPDIR%\%PROJECTNAME%.o goto :builderror
m68k-atari-mint-gcc -O2 -I"%RBTOOLS%\include" -I%BUILDPATH%\ %TEMPDIR%\%PROJECTNAME%.C -S -o %TEMPDIR%\%PROJECTNAME%.s >> %TEMPDIR%\build.log 2>&1
if "%2" neq "ROM" (if "%ROM_MODE%"=="" goto :norom)

rem -------------------------------------------------------------
rem Link binaries
echo Building ROM file...
echo. >> %TEMPDIR%\build.log
echo Linking things... >> %TEMPDIR%\build.log
rln -z -rq -o %TEMPDIR%\%PROJECTNAME%.bin -n -a 4000 x x %TEMPDIR%\BASIC.O "%RBTOOLS%\RAPTOR\RAPTOR.O" "%RBTOOLS%\U235SE\DSP.OBJ" "%RBTOOLS%\include\libm.a" "%RBTOOLS%\include\libc.a" "%RBTOOLS%\include\libgcc.a" "%RBTOOLS%\include\basic_functions.o" "%RBTOOLS%\include\ee_printf.o" %TEMPDIR%\%PROJECTNAME%.o >> %TEMPDIR%\build.log
if not exist %TEMPDIR%\%PROJECTNAME%.bin goto :builderror

rem -------------------------------------------------------------
rem Let's build a ROM
echo. >> %TEMPDIR%\build.log
echo Making ROM... >> %TEMPDIR%\build.log
makearom %TEMPDIR%\%PROJECTNAME%.bin %TEMPDIR%\linkfile.bin %BUILDPATH%\%PROJECTNAME%.rom
if %ERRORLEVEL% NEQ 0 goto :builderror
if not exist %BUILDPATH%\%PROJECTNAME%.rom goto :builderror

if "%3"=="sendy" goto :sendrom
if "%2"=="sendy" goto :sendrom
echo. >> %TEMPDIR%\build.log
echo starting vj >> %TEMPDIR%\build.log
start virtualjaguar %BUILDPATH%\%PROJECTNAME%.rom --alpine
goto :veryend
:sendrom
jcp -r
ping localhost
jcp -f %BUILDPATH%\%PROJECTNAME%.rom
goto :veryend

:norom
rem -------------------------------------------------------------
rem Link binaries
echo Building ABS...
echo. >> %TEMPDIR%\build.log
echo Linking things... >> %TEMPDIR%\build.log
rln -z -rq -o %BUILDPATH%\%PROJECTNAME%.abs -a 4000 x x %TEMPDIR%\BASIC.O "%RBTOOLS%\RAPTOR\RAPTOR.O" "%RBTOOLS%\U235SE\DSP.OBJ" "%RBTOOLS%\include\libm.a" "%RBTOOLS%\include\libc.a" "%RBTOOLS%\include\libgcc.a" "%RBTOOLS%\include\basic_functions.o" "%RBTOOLS%\include\ee_printf.o" %TEMPDIR%\%PROJECTNAME%.o >> %TEMPDIR%\build.log

rem -------------------------------------------------------------
rem Don't run vj if no .abs file was produced
if not exist %BUILDPATH%\%PROJECTNAME%.abs goto :builderror
echo. >> %TEMPDIR%\build.log
echo Build successful! >> %TEMPDIR%\build.log

rem -------------------------------------------------------------
rem Run vj or send binary to skunk
if "%2"=="sendy" goto :sendabs
echo. >> %TEMPDIR%\build.log
echo Starting vj
echo starting vj >> %TEMPDIR%\build.log
start virtualjaguar %BUILDPATH%\%PROJECTNAME%.abs --alpine
goto :veryend
:sendabs
echo Sending to skunkboard...
echo. >> %TEMPDIR%\build.log
echo Sending to skunkboard... >> %TEMPDIR%\build.log
jcp -r
ping localhost
jcp %BUILDPATH%\%PROJECTNAME%.abs
goto :veryend

rem -------------------------------------------------------------
rem Error handler
:builderror
echo Build error!
if exist %TEMPDIR%\build.log echo Build error! >> %TEMPDIR%\build.log
if exist %TEMPDIR%\build.log notepad %TEMPDIR%\build.log
goto :veryend

rem -------------------------------------------------------------
rem Create a new project
:newproject
if exist PROJECTS\%PROJECTNAME%\%PROJECTNAME%.bas goto :veryend
xcopy /e "%RBTOOLS%\include\template" PROJECTS\%PROJECTNAME%\
rename PROJECTS\%PROJECTNAME%\template.bas %PROJECTNAME%.bas
echo Project: %PROJECTNAME% >projects\%PROJECTNAME%.rbplus
echo Creator: >>projects\%PROJECTNAME%.rbplus
echo Date of creation: %DATE% >>projects\%PROJECTNAME%.rbplus
echo Project %PROJECTNAME% created successfully!

:veryend

rem Unset variables
set CURRENTPATH=
set CURRENTPATHFULL=
set TEMPDIR=
set PROJECTNAME=

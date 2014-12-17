@echo off
echo ------------------------------------------------------------
REM echo Building Reboot BASIC Application
echo.

bin\rmac -fb -u -o RBASIC.O RAPAPP.s 
bin\rln -z -rq -o RBASIC.ABS -a 4000 x x RBASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ test.o

REM del rbasic.o
REM 
REM taskkill /IM virtualjaguar.exe > null.o
REM del null.o
REM start bin\virtualjaguar RBASIC.ABS --alpine







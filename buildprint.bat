m68k-atari-mint-c++.exe print.c -Iinclude -S -O2
m68k-atari-mint-c++.exe print.c -Iinclude -c -O2
rln -z -rq -o RBASIC.ABS -a 4000 x x build\BASIC.O RAPTOR\RAPTOR.O U235SE.021\DSP.OBJ obj\libm.a obj\libc.a obj\libgcc.a print.o
bin\virtualjaguar RBASIC.ABS


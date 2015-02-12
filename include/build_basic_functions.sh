#ee_printf WILL crash without -O2, so take care!
m68k-atari-mint-gcc basic_functions.c -c -I. -I..\include -fcall-saved-a1 -fcall-saved-d1
m68k-atari-mint-gcc ee_printf.c -c -O3 -I. -I..\include

; Input main code (runs in bank 1)
                        
; Get input flags
    movei   #Input_Flags, Main_Tmp1
    load    (Main_Tmp1), Main_Tmp4

; Handle mode changes
    btst    #Input_FlagModeChange, Main_Tmp4
    jr      eq, Input_Main_NoModeChange 
    bclr    #Input_FlagModeChange, Main_Tmp4
    btst    #Input_FlagEnabled, Main_Tmp4
    jr      eq, Input_Main_Disable
    nop
    movei   #JOYSTICK, Main_Tmp2
    movei   #$817E, Main_Tmp3  ; enable row 0 on both joystick ports for rotary
    storew  Main_Tmp3, (Main_Tmp2)
Input_Main_Disable:
    store   Main_Tmp4, (Main_Tmp1)
Input_Main_NoModeChange:

; Check if mouse/rotary mode is enabled, and exits if it isn't
    btst    #Input_FlagEnabled, Main_Tmp4
    movei   #Input_Main_End, Main_Tmp1
    jump    eq, (Main_Tmp1)
    nop

; Handle delta counter reads 
    btst    #Input_FlagReadingDeltas, Main_Tmp4
    jr      eq, Input_Main_NoRead
    nop
    bclr    #Input_FlagReadingDeltas, Main_Tmp4
    movei   #Input_Vars, Main_Tmp1
    store   Input_RegXdelta, (Main_Tmp1)
    addqt   #4, Main_Tmp1
    store   Input_RegYdelta, (Main_Tmp1)
    addqt   #4, Main_Tmp1
    store   Main_Tmp4, (Main_Tmp1)
    addqt   #4, Main_Tmp1
    moveq   #0, Input_RegXdelta
    moveq   #0, Input_RegYdelta
Input_Main_NoRead:

; Read the inputs if the flag is set
    movei   #Input_Main_End, Main_Tmp2
    movefa  Input_RegReadInputsFlag, Main_Tmp1
    btst    #0, Main_Tmp1
    jump    eq, (Main_Tmp2)
    nop
    moveq   #0, Main_Tmp1
    moveta  Main_Tmp1, Input_RegReadInputsFlag
    movei   #JOYSTICK, Main_Tmp1
    loadw   (Main_Tmp1), Main_Tmp1

; Joypad port 2 to joypad port 1 conversion
    btst    #Input_FlagJoyPort, Main_Tmp4
    jr      eq, Input_Main_JoypadPort1
    nop
    shrq    #4, Main_Tmp1
Input_Main_JoypadPort1:

; Amiga to Atari conversion
    movei   #Input_Main_AtariMode, Main_Tmp2
    btst    #Input_FlagRotary, Main_Tmp4
    jump    ne, (Main_Tmp2)
    nop
    btst    #Input_FlagAmigaMode, Main_Tmp4
    jump    eq, (Main_Tmp2)
    nop
    movei   #$600, Main_Tmp4
    move    Main_Tmp1, Main_Tmp2
    move    Main_Tmp2, Main_Tmp3
    and     Main_Tmp4, Main_Tmp1
    shrq    #8, Main_Tmp2
    shlq    #(31 - 11), Main_Tmp3
    shlq    #11, Main_Tmp2
    shrq    #(31 -  8), Main_Tmp3
    or      Main_Tmp2, Main_Tmp1
    or      Main_Tmp3, Main_Tmp1
Input_Main_AtariMode:

; Handle the mouse/rotary movements    
    move    Input_RegJoyPrev, Main_Tmp2
    shrq    #1, Input_RegJoyPrev
    shlq    #1, Main_Tmp2
    xor     Main_Tmp1, Input_RegJoyPrev
    xor     Main_Tmp1, Main_Tmp2
    move    Input_RegJoyPrev, Main_Tmp3
    move    Main_Tmp2, Main_Tmp4
    shlq    #(31 -  8), Input_RegJoyPrev
    shlq    #(31 -  9), Main_Tmp2   
    shlq    #(31 - 10), Main_Tmp3   
    shlq    #(31 - 11), Main_Tmp4
    shrq    #31, Input_RegJoyPrev
    shrq    #31, Main_Tmp2  
    shrq    #31, Main_Tmp3  
    shrq    #31, Main_Tmp4
    sub     Input_RegJoyPrev, Input_RegXdelta
    sub     Main_Tmp3, Input_RegYdelta
    add     Main_Tmp2, Input_RegXdelta
    add     Main_Tmp4, Input_RegYdelta
    move    Main_Tmp1, Input_RegJoyPrev
    
Input_Main_End:


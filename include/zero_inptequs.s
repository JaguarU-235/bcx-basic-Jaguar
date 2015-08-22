; Input-related constants
Input_IntDivisor            .equ    23      ; Interrupt divisor ; set this so
                                            ; that audio sample rate / divisor
                                            ; is 2 kHz or a bit more
                                            ; For example, use 11 if your
                                            ; audio sample rate is 22050 Hz
Input_FlagEnabled           .equ    0       ; 0 = mouse/rotary mode enabled
                                            ; 1 = mouse/rotary mode disabled (normal pad mode)
Input_FlagAmigaMode         .equ    1       ; 0 = Atari mouse mode
                                            ; 1 = Amiga mouse mode
Input_FlagJoyPort           .equ    2       ; 0 = mouse/rotary connected to joypad port 1      
                                            ; 1 = mouse/rotary connected to joypad port 2      
Input_FlagReadingDeltas     .equ    3       ; 0 = no read of delta counters in progress / read complete
                                            ; 1 = read in progress
Input_FlagRotary            .equ    4       ; 0 = mouse mode
                                            ; 1 = rotary mode
Input_FlagModeChange        .equ    5       ; 0 = no mode change in progress / mode change complete      
                                            ; 1 = mode change in progress

; Bit numbers for pad buttons
Input_Pad_Pause             .equ    0
Input_Pad_A                 .equ    1
Input_Pad_Up                .equ    2
Input_Pad_Down              .equ    3
Input_Pad_Left              .equ    4
Input_Pad_Right             .equ    5
Input_Pad_C1                .equ    6
Input_Pad_B                 .equ    7
Input_Pad_Star              .equ    8
Input_Pad_7                 .equ    9
Input_Pad_4                 .equ    10
Input_Pad_1                 .equ    11
Input_Pad_C2                .equ    12
Input_Pad_C                 .equ    13
Input_Pad_0                 .equ    14
Input_Pad_8                 .equ    15
Input_Pad_5                 .equ    16
Input_Pad_2                 .equ    17
Input_Pad_C3                .equ    18
Input_Pad_Option            .equ    19
Input_Pad_Sharp             .equ    20
Input_Pad_9                 .equ    21
Input_Pad_6                 .equ    22
Input_Pad_3                 .equ    23

; Bit numbers for mouse buttons
Input_Mouse_Left            .equ    1
Input_Mouse_Right           .equ    0

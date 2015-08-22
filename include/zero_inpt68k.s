; Input-related 68000 routines
.extern Input_Read

.include "zero_inpt68ki.s"
.68000

    
; Select the joypad port 1 to use for rotary/mouse input.
; This doesn't enable rotary/mouse mode if it isn't already.
; No registers are modified.
Input_SetJoyPort1:
    and.l       #~(1 << Input_FlagJoyPort), Input_Flags
    bra         Input_ReadDeltas ; clear delta counters
                          

; Select the joypad port 2 to use for rotary/mouse input.
; This doesn't enable rotary/mouse mode if it isn't already.
; No registers are modified.
Input_SetJoyPort2:
    or.l        #(1 << Input_FlagJoyPort), Input_Flags
    bra         Input_ReadDeltas ; clear delta counters


; Select the normal pad mode.
; No registers are modified.
Input_SetNormalPadMode:
    and.l       #~(1 << Input_FlagEnabled), Input_Flags
    bra         Input_SetMode


; Select the rotary mode.
; No registers are modified.
Input_SetRotaryMode:
    bsr         Input_SetNormalPadMode
    or.l        #(1 << Input_FlagRotary), Input_Flags
    or.l        #(1 << Input_FlagEnabled), Input_Flags
    bsr         Input_SetMode
    bra         Input_ReadDeltas ; clear delta counters


; Select the Atari mouse mode. 
; No registers are modified.
Input_SetAtariMouseMode:
    and.l       #~(1 << Input_FlagAmigaMode), Input_Flags
    bra         Input_SetMouseMode


; Select the Amiga mouse mode. 
; No registers are modified.
Input_SetAmigaMouseMode:
    or.l        #(1 << Input_FlagAmigaMode), Input_Flags
    bra         Input_SetMouseMode


; Read the inputs.
; Output registers: d0.l: Buttons states for the device connected to the left joystick port.
;                         Bits are set when the associated buttons are pressed.
;                   d1.l: Buttons states for the device connected to the right joystick port.
;                         Bits are set when the associated buttons are pressed.
;                   d2.l: Mouse X delta since the last call to Input_Read (signed).
;                   d3.l: Mouse Y delta since the last call to Input_Read (signed).
;                   d4.l: Rotary delta  since the last call to Input_Read (signed).
; Other registers are not modified.
; Values that are meaningless in the current mode are set to zero.
Input_Read:
    movem.l     d7, -(sp)

    clr.l       d2
    clr.l       d3
    clr.l       d4
    
    move.l      Input_Flags, d7
    bsr         Input_SetNormalPadMode
    bsr         Input_ReadPads
    move.l      d7, Input_Flags
    bsr         Input_SetMode

    btst.l      #Input_FlagEnabled, d7
    beq.s       Input_Read_End

    bsr         Input_ReadDeltas

    btst.l      #Input_FlagRotary, d7
    bne.s       Input_Read_RotaryMode

Input_Read_MouseMode:
    move.l      Input_Xdelta, d2
    move.l      Input_Ydelta, d3
    btst.l      #Input_FlagJoyPort, d7
    bne.s       Input_Read_MouseMode_RightPort
Input_Read_MouseMode_LeftPort:
    and.l       #(1 << Input_Mouse_Left) | (1 << Input_Mouse_Right), d0
    bra.s       Input_Read_End
Input_Read_MouseMode_RightPort:
    and.l       #(1 << Input_Mouse_Left) | (1 << Input_Mouse_Right), d1
    bra.s       Input_Read_End

Input_Read_RotaryMode:
    move.l      Input_Ydelta, d4
    btst.l      #Input_FlagJoyPort, d7
    bne.s       Input_Read_RotaryMode_RightPort
Input_Read_RotaryMode_LeftPort:
    and.l       #~((1 << Input_Pad_Left) | (1 << Input_Pad_Right)), d0
    bra.s       Input_Read_End
Input_Read_RotaryMode_RightPort:
    and.l       #~((1 << Input_Pad_Left) | (1 << Input_Pad_Right)), d1

Input_Read_End:
    movem.l     (sp)+, d7
    rts

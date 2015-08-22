; Internal input-related 68000 routines.
; These functions should not be called by application code.
.68000


; Read the delta counters (and reset them).
; Results are put into the Input_Xdelta and Input_Ydelta variables.
; No registers are modified.
Input_ReadDeltas:                          
    movem.l     d0, -(sp)                  
    or.l        #(1 << Input_FlagReadingDeltas), Input_Flags
Input_ReadDeltas_Wait:
    move.l      Input_Flags, d0
    btst.l      #Input_FlagReadingDeltas, d0
    bne.s       Input_ReadDeltas_Wait
    movem.l     (sp)+, d0
    rts


; Select the mode (normal pad, rotary or mouse).
; Input_Flags must be set accordingly before calling this function.
; No registers are modified.
Input_SetMode:
    movem.l     d0, -(sp)
    or.l        #(1 << Input_FlagModeChange), Input_Flags
Input_SetMode_Wait:
    move.l      Input_Flags, d0
    btst.l      #Input_FlagModeChange, d0
    bne.s       Input_SetMode_Wait
    movem.l     (sp)+, d0
    rts


; Select the mouse mode.
; No registers are modified.
Input_SetMouseMode:
    bsr         Input_SetNormalPadMode
    and.l       #~(1 << Input_FlagRotary), Input_Flags
    or.l        #(1 << Input_FlagEnabled), Input_Flags
    bsr         Input_SetMode
    bra         Input_ReadDeltas ; clear delta counters


; Reads a row on the left joystick port (the row must be currently selected).
; Input : d0.l: data for previous rows (will get shifted left by 6 bits)
;         d2.l: value read in JOYBUTS
;         d3.l: value read in JOYSTICK
; Output: d0.l: data for the row in the lower 6 bits
Input_ReadRowLeft:
    movem.l     d2-d3, -(sp)

    lsl.l       #6, d0

    and.l       #$0003, d2
    or.l        d2, d0

    and.l       #$0F00, d3
    lsr.l       #(8-2), d3
    or.l        d3, d0    

    movem.l     (sp)+, d2-d3
    rts
    

; Reads a row on both joystick ports (the row must be currently selected).
; Input : d0.l and d1.l: data for previous rows (will get shifted left by 6 bits)
; Output: d0.l and d1.l: data for the row in the lower 6 bits
Input_ReadRow:
    movem.l     d2-d3, -(sp)

    move.w      JOYBUTS, d2
    move.w      JOYSTICK, d3

    bsr         Input_ReadRowLeft

    lsr.l       #2, d2
    lsr.l       #4, d3
    exg.l       d0, d1
    bsr         Input_ReadRowLeft
    exg.l       d0, d1

    movem.l     (sp)+, d2-d3
    rts


; Read both pads.
; Input : nothing.
; Output: d0.l: buttons states for the pad plugged into the left joystick port.
;         d1.l: buttons states for the pad plugged into the left joystick port.
; Bit set = button pressed.
Input_ReadPads:
    clr.l       d0
    clr.l       d1

    move.w      #$81E7, JOYSTICK ; read row 3
    bsr         Input_ReadRow
    move.w      #$81DB, JOYSTICK ; read row 2
    bsr         Input_ReadRow
    move.w      #$81BD, JOYSTICK ; read row 1
    bsr         Input_ReadRow
    move.w      #$817E, JOYSTICK ; read row 0
    bsr         Input_ReadRow

    eor.l       #$FFFFFF ^ (1 << Input_Pad_C1) ^ (1 << Input_Pad_C2) ^ (1 << Input_Pad_C3), d0
    eor.l       #$FFFFFF ^ (1 << Input_Pad_C1) ^ (1 << Input_Pad_C2) ^ (1 << Input_Pad_C3), d1

    rts




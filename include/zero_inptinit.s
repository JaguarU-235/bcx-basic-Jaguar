; Input initialization routine
; Should be called at the beginning your DSP code, before enabling interrupts
; This routine assumes the current bank is 1
    moveq       #0, Input_RegJoyPrev
    moveq       #0, Input_RegXdelta
    moveq       #0, Input_RegYdelta
    moveq       #Input_IntDivisor, Main_Tmp1
    moveta      Main_Tmp1, Input_RegIntCounter
    moveq       #0, Main_Tmp1
    moveta      Main_Tmp1, Input_RegReadInputsFlag



; Input interrupt code (runs in bank 0)

; Handle the interrupt divisor and set the "read inputs" flag
    subq    #1, Input_RegIntCounter
    jr      ne, Input_Int_End
    nop
    moveq   #Input_IntDivisor, Input_RegIntCounter
    moveq   #1, Input_RegReadInputsFlag
Input_Int_End:

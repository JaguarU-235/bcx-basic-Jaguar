.text
.68000
.noclear                   

.extern Audio_Play

        include "zero_audioequ.s"

; Initializes the audio
; Input registers  : none
; Output registers : none
Audio_Init:
    movem.l     d0/a0-a1, -(sp)

; DSP code & data copy
    move.l      #Audio_DSP_Begin, a0
    move.l      #D_RAM, a1
    move.w      #((Audio_DSP_End - Audio_DSP_Begin) / 4) - 1, d0
Audio_Init_DSP_CopyLoop:
    move.l      (a0)+, (a1)+
    dbra.w      d0, Audio_Init_DSP_CopyLoop

; Start DSP
    move.l      #$00070007, D_END
    move.l      #Audio_DSP_Main, D_PC
    move.l      #$4000, D_FLAGS  
    move.l      #DSPGO, D_CTRL

; Wait until the audio initialization is done
Audio_Init_WaitReady:
    tst.b       Audio_Ready
    beq.s       Audio_Init_WaitReady

    movem.l     (sp)+, d0/a0-a1
    rts
                     

; Plays a sound on an audio channel
; Input registers  : d0.l : audio channel (1 ~ 4)
;                    a0.l : pointer to the sound data
;                           must be longword-aligned
;                    d1.l : length of the sound in samples
;                           must be a multiple of 4
;                           set to zero to stop a sound currently playing
;                    d2.l : upsampling factor
;                           equal to 46168 / sound sample rate
;                    d3.l : flags (see below). Use bitwise OR to combine them.
;                           Audio_8bit_Signed   : 8 bit signed PCM
;                           Audio_8bit_Unsigned : 8 bit unsigned PCM
;                           Audio_8bit_muLaw    : 8 bit muLaw
;                           Audio_Looping       : loop the sound.
;                                                 if not set, play once.
; Output registers : none
Audio_Play:
    movem.l     a0-a1/d0-d3, -(sp)

    move.l      #Chan_Upd_Parms, a1

Audio_Play_Wait:
    tst.l       (a1)
    bne.s       Audio_Play_Wait

    tst.l       d1
    bne.s       Audio_Play_NotSilence 
    move.l      #0, 4(a1)
    bra.s       Audio_Play_End    

Audio_Play_NotSilence:
    move.l      d2, 8(a1)
    move.l      a0, 12(a1)
    add.l       d1, a0
    move.l      a0, 16(a1)
    move.l      #32768, d1
    divu.w      d2, d1
    or.w        d1, d3
    bset.l      #Chan_Enabled_Shift, d3
    move.l      d3, 4(a1)
    move.l      #Chan_Format_Shift, d1
    lsr.l       d1, d3
    lsl.l       #2, d3
    move.l      #Audio_SilenceValue, a0
    move.l      (a0,d3.w), 20(a1)

Audio_Play_End:         
    move.l      d0, (a1)

    movem.l     (sp)+, a0-a1/d0-d3
    rts


.data
Audio_Ready:  .dc.b 0   ; Flag to indicate that the audio initialization
                        ; is done


.include "zero_inpt68k.s"


.phrase
Audio_DSP_Begin:
.dsp

; Interrupt registers equates for an audio channel
; Chan_Num is the channel number
; Reg1 ~ Reg5 are the registers to use
.macro Chan_IntRegEqus Chan_Num, Reg1, Reg2, Reg3, Reg4, Reg5
Chan\{Chan_Num}_Int_Out             .equr \Reg1   ; Interpolated output sample
Chan\{Chan_Num}_Int_Next            .equr \Reg2   ; Next input sample for interpolation
Chan\{Chan_Num}_Int_Diff            .equr \Reg3   ; Difference between consecutive interpolated samples
Chan\{Chan_Num}_Int_Count           .equr \Reg4   ; Interpolation counter
Chan\{Chan_Num}_Int_UpsmpFact       .equr \Reg5   ; Interpolation upsampling factor (freq out / freq in)
.endm


; Main registers equates for an audio channel
; Chan_Num is the channel number
; Reg1 ~ Reg6 are the registers to use
.macro Chan_MainRegEqus Chan_Num, Reg1, Reg2, Reg3, Reg4, Reg5, Reg6
Chan\{Chan_Num}_MiscParms           .equr \Reg1     ; Miscellaneous audio channel parameters
                                                    ; Bits 15.. 0 : Interpolation difference scale factor
                                                    ; Bit  29     : 1 = looping enabled
                                                    ; Bit  28     : 1 = channel enabled
                                                    ; Bits 31..30 : Audio conversion table to use
Chan\{Chan_Num}_Src_Begin_Ptr       .equr \Reg2     ; Pointer to the beginning of the source audio data
Chan\{Chan_Num}_Src_End_Ptr         .equr \Reg3     ; Pointer to the end of the source audio data
Chan\{Chan_Num}_Src_Ptr             .equr \Reg4     ; Pointer to the current position in the source audio data
Chan\{Chan_Num}_Src_Buf             .equr \Reg5     ; 4-byte source audio data buffer
Chan\{Chan_Num}_Src_BufCount        .equr \Reg6     ; Number of remaining source audio samples in buffer
.endm


; Initializes an audio channel
; Chan_Num is the channel number
.macro Chan_Init Chan_Num
    moveq       #0, Chan\{Chan_Num}_MiscParms
    moveq       #0, Main_Tmp1
    moveta      Main_Tmp1, Chan\{Chan_Num}_Int_Out
    moveta      Main_Tmp1, Chan\{Chan_Num}_Int_Diff         
.endm


; Mixes the audio channels
; Chan_Num1 ~ Chan_Num4 are the channels numbers
.macro Chan_Mix Chan_Num1, Chan_Num2, Chan_Num3, Chan_Num4
    move        Chan\{Chan_Num1}_Int_Out, Audio_OutSmpl
    add         Chan\{Chan_Num1}_Int_Diff, Chan\{Chan_Num1}_Int_Out
    add         Chan\{Chan_Num2}_Int_Out, Audio_OutSmpl
    add         Chan\{Chan_Num2}_Int_Diff, Chan\{Chan_Num2}_Int_Out
    add         Chan\{Chan_Num3}_Int_Out, Audio_OutSmpl
    add         Chan\{Chan_Num3}_Int_Diff, Chan\{Chan_Num3}_Int_Out
    add         Chan\{Chan_Num4}_Int_Out, Audio_OutSmpl
    add         Chan\{Chan_Num4}_Int_Diff, Chan\{Chan_Num4}_Int_Out
    sharq       #2, Audio_OutSmpl
.endm


; Updates an audio channel (fetches audio data, handles interpolation, etc.)
; Chan_Num is the channel number
.macro Chan_Update Chan_Num
    movei       #Chan_Update_Done\~, Int_Tmp2

    movefa      Chan\{Chan_Num}_MiscParms, Int_Tmp1
    btst        #Chan_Enabled_Shift, Int_Tmp1
    jump        eq, (Int_Tmp2)
    nop                       

    subq        #1, Chan\{Chan_Num}_Int_Count
    jump        ne, (Int_Tmp2)
    nop

    move        Chan\{Chan_Num}_Int_UpsmpFact, Chan\{Chan_Num}_Int_Count
    move        Chan\{Chan_Num}_Int_Out, Chan\{Chan_Num}_Int_Next
    movefa      Chan\{Chan_Num}_Src_Buf, Int_Tmp1
    movefa      Chan\{Chan_Num}_MiscParms, Int_Tmp2
 
    move        Int_Tmp1, Int_Tmp4
  
    shrq        #Chan_Format_Shift, Int_Tmp2
    shlq        #8, Int_Tmp2
  
    shrq        #24, Int_Tmp1
    add         Int_Tmp2, Int_Tmp1
    shlq        #2, Int_Tmp1
    add         Audio_Tables_Ptr, Int_Tmp1
    
    movefa      Chan\{Chan_Num}_Src_BufCount, Int_Tmp3
    subq        #1, Int_Tmp3
    load        (Int_Tmp1), Chan\{Chan_Num}_Int_Next
    jr          ne, Chan_Update_SampleDone\~
    shlq        #8, Int_Tmp4

    movefa      Chan\{Chan_Num}_Src_Ptr, Int_Tmp2
    load        (Int_Tmp2), Int_Tmp4    
    addqt       #4, Int_Tmp2          
    movefa      Chan\{Chan_Num}_Src_End_Ptr, Int_Tmp1
    cmp         Int_Tmp1, Int_Tmp2         
    moveq       #4, Int_Tmp3
    jr          ne, Chan_Update_NotDataEnd\~
    nop
Chan_Update_DataEnd\~:
    movefa      Chan\{Chan_Num}_MiscParms, Int_Tmp2  
    btst        #Chan_Looping_Shift, Int_Tmp2
    jr          eq, Chan_Update_DisableChannel\~
    nop
    
    movefa      Chan\{Chan_Num}_Src_Begin_Ptr, Int_Tmp2
Chan_Update_NotDataEnd\~:
    moveta      Int_Tmp2, Chan\{Chan_Num}_Src_Ptr
Chan_Update_SampleDone\~:       
    move        Chan\{Chan_Num}_Int_Next, Chan\{Chan_Num}_Int_Diff
    moveta      Int_Tmp3, Chan\{Chan_Num}_Src_BufCount
    sub         Chan\{Chan_Num}_Int_Out, Chan\{Chan_Num}_Int_Diff
    moveta      Int_Tmp4, Chan\{Chan_Num}_Src_Buf
    sharq       #1, Chan\{Chan_Num}_Int_Diff
    movefa      Chan\{Chan_Num}_MiscParms, Int_Tmp1
    imult       Int_Tmp1, Chan\{Chan_Num}_Int_Diff
    sharq       #14, Chan\{Chan_Num}_Int_Diff
Chan_Update_Done\~:
    jr          t, Chan_Update_Done2\~
    nop

Chan_Update_DisableChannel\~:
    moveq       #0, Int_Tmp1
    moveta      Int_Tmp1, Chan\{Chan_Num}_MiscParms
    moveq       #0, Chan\{Chan_Num}_Int_Diff      

Chan_Update_Done2\~:
    movei       #Chan_Upd_Parms, Int_Tmp3
    movei       #Update_Done\~, Int_Tmp1
    load        (Int_Tmp3), Int_Tmp2
    cmpq        #\{Chan_Num}, Int_Tmp2
    jump        ne, (Int_Tmp1)
    nop
    moveq       #0, Chan\{Chan_Num}_Int_Out
    moveq       #0, Chan\{Chan_Num}_Int_Next
    moveq       #0, Chan\{Chan_Num}_Int_Diff         
    moveq       #1, Chan\{Chan_Num}_Int_Count
    load        (Int_Tmp3+1), Int_Tmp1
    moveta      Int_Tmp1, Chan\{Chan_Num}_MiscParms
    load        (Int_Tmp3+2), Chan\{Chan_Num}_Int_UpsmpFact
    load        (Int_Tmp3+3), Int_Tmp1
    moveta      Int_Tmp1, Chan\{Chan_Num}_Src_Begin_Ptr
    moveta      Int_Tmp1, Chan\{Chan_Num}_Src_Ptr
    load        (Int_Tmp3+4), Int_Tmp1
    moveta      Int_Tmp1, Chan\{Chan_Num}_Src_End_Ptr
    load        (Int_Tmp3+5), Int_Tmp1
    moveta      Int_Tmp1, Chan\{Chan_Num}_Src_Buf
    moveq       #1, Int_Tmp1
    moveta      Int_Tmp1, Chan\{Chan_Num}_Src_BufCount
    moveq       #0, Int_Tmp1
    store       Int_Tmp1, (Int_Tmp3)

Update_Done\~:  
.endm


; Interrupt (bank 0) registers equates
Int_DSP_StackPtr            .equr   r31         ; Interrupt (bank 0) DSP stack
Int_DSP_Flags               .equr   r28         ; Interrupt DSP flags backup
Int_Tmp1                    .equr   r29         ; Interrupt temporary register #1
Int_Tmp2                    .equr   r30         ; Interrupt temporary register #2
Int_Tmp3                    .equr   r14         ; Interrupt temporary register #3
Int_Tmp4                    .equr   r15         ; Interrupt temporary register #4

; Audio-related interrupt (bank 0) registers equates
Audio_L_Ptr                 .equr   r8              ; Pointer to the left  audio channel register
Audio_R_Ptr                 .equr   r9              ; Pointer to the right audio channel register
Audio_OutSmpl               .equr   r10             ; Audio output sample
Audio_Tables_Ptr            .equr   r11             ; Pointer to the audio conversion tables
Chan_IntRegEqus 1,  r0,  r1,  r2,  r3, r24          ; Registers for audio channel #1
Chan_IntRegEqus 2,  r4,  r5,  r6,  r7, r25          ; Registers for audio channel #2
Chan_IntRegEqus 3, r16, r17, r18, r19, r26          ; Registers for audio channel #3
Chan_IntRegEqus 4, r20, r21, r22, r23, r27          ; Registers for audio channel #4

; Input-related interrupt (bank 0) registers equates
Input_RegIntCounter         .equr   r12             ; Interrupt counter
Input_RegReadInputsFlag     .equr   r13             ; Flag to signal the inputs should be read
                                  

; Main (bank 1) registers equates
Main_Tmp1                   .equr   r0              ; Main temporary register #1
Main_Tmp2                   .equr   r1              ; Main temporary register #2
Main_Tmp3                   .equr   r2              ; Main temporary register #1
Main_Tmp4                   .equr   r3              ; Main temporary register #2

; Audio-related main (bank 1) registers equates
Chan_MainRegEqus 1,  r4,  r5,  r6,  r7,  r8,  r9,   ; Registers for audio channel #1
Chan_MainRegEqus 2, r10, r11, r12, r13, r14, r15,   ; Registers for audio channel #2
Chan_MainRegEqus 3, r16, r17, r18, r19, r20, r21,   ; Registers for audio channel #3
Chan_MainRegEqus 4, r22, r23, r24, r25, r26, r27    ; Registers for audio channel #4

; Input-related main (bank 1) registers equates
Input_RegJoyPrev            .equr   r28             ; Previous value of the JOYSTICK register
Input_RegXdelta             .equr   r29             ; X delta counter
Input_RegYdelta             .equr   r30             ; Y delta counter




.org        D_RAM

dsp_int_0: 
.rept 8
	nop
.endr   

i2s_int:
    store       Audio_OutSmpl, (Audio_L_Ptr)
    store       Audio_OutSmpl, (Audio_R_Ptr)

; Save DSP flags
    movei       #D_FLAGS, Int_Tmp1
    load        (Int_Tmp1), Int_DSP_Flags
                               
Chan_Mix 1, 2, 3, 4 
Chan_Update 1
Chan_Update 2
Chan_Update 3
Chan_Update 4

.include "zero_inptint.s"                            ; handle input

    movei       #D_FLAGS, Int_Tmp2              ; get flags address
    bset        #10, Int_DSP_Flags              ; clear the interrupt latch 
    load        (Int_DSP_StackPtr), Int_Tmp1    ; get last instruction address
    bclr        #3, Int_DSP_Flags               ; clear IMASK
    addq        #2, Int_Tmp1                    ; point at next to be executed
    addq        #4, Int_DSP_StackPtr            ; updating the stack pointer
    jump        (Int_Tmp1)                      ; and return
    store       Int_DSP_Flags, (Int_Tmp2)       ; restore flags


Audio_DSP_Main:                  
; No user stack

; Initializes the interrupt stack
    movei       #D_ENDRAM - 4, Main_Tmp1
    moveta      Main_Tmp1, Int_DSP_StackPtr
            
; Initializes main registers
    movei       #L_I2S, Main_Tmp1
    moveta      Main_Tmp1, Audio_L_Ptr
    movei       #R_I2S, Main_Tmp1
    moveta      Main_Tmp1, Audio_R_Ptr
    movei       #Audio_Tables, Main_Tmp1
    moveta      Main_Tmp1, Audio_Tables_Ptr

; Initializes audio channels
Chan_Init 1
Chan_Init 2
Chan_Init 3
Chan_Init 4

; Initializes the input system
    .include "zero_inptinit.s"

; Setups the audio system
    movei       #SCLK, Main_Tmp1
    movei       #8, Main_Tmp2         ; 46168 Hz
    store       Main_Tmp2, (Main_Tmp1)
    
    movei       #SMODE, Main_Tmp1
    movei       #%001101, Main_Tmp2   ; I2S mode
    store       Main_Tmp2, (Main_Tmp1)

    moveq       #0, Main_Tmp2
    movei       #L_I2S, Main_Tmp1
    store       Main_Tmp2, (Main_Tmp1)
    movei       #R_I2S, Main_Tmp1
    store       Main_Tmp2, (Main_Tmp1)
    
    movei       #JOYSTICK, Main_Tmp1
    movei       #$81FF, Main_Tmp2     ; mute disabled
    storew      Main_Tmp2, (Main_Tmp1)

    movei       #D_FLAGS, Main_Tmp1
    load        (Main_Tmp1), Main_Tmp2
    bset        #5, Main_Tmp2          ; I2S interrupts enabled    
    bset        #3, Main_Tmp2          ; interrupts enabled
    store       Main_Tmp2, (Main_Tmp1)

    movei       #Audio_Ready, Main_Tmp1
    moveq       #1, Main_Tmp2
    storeb      Main_Tmp2, (Main_Tmp1)

Audio_DSP_Main_Loop:
    .include "zero_inptmain.s"
    
    movei       #Audio_DSP_Main_Loop, Main_Tmp1 
    jump        t, (Main_Tmp1)
    nop

.long
Chan_Upd_Parms:
.dc.l 0
.dc.l 0
.dc.l 0
.dc.l 0
.dc.l 0
.dc.l 0
                
.include "zero_audiotbl.s"

.include "zero_inptvars.s"

.long
.68000
Audio_DSP_End:


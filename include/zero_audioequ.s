; Equates for audio
Chan_Format_Shift       .equ 30
Chan_Looping_Shift      .equ 29
Chan_Enabled_Shift      .equ 28
Audio_8bit_Signed       .equ (0 << Chan_Format_Shift)
Audio_8bit_Unsigned     .equ (1 << Chan_Format_Shift)
Audio_8bit_muLaw        .equ (2 << Chan_Format_Shift)
Audio_Looping           .equ (1 << Chan_Looping_Shift)
Audio_WriteRequestBase		.equ 0
Audio_ReadRequestBase		.equ 4
Audio_DisableLoopingBase	.equ 8

; Equates for input
.include "zero_inptequs.s"

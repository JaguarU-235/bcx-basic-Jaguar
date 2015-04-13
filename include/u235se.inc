;===============================================================================================================
; U-235 SoundEngine
; Includes
;
; Written by LinkoVitch 2011
; Copyright 2011 U-235  http://www.u-235.co.uk
; 
; Please read LICENSE.TXT for licensing information
;===============================================================================================================
 
;----------------------------------------------------------------------------------------------------- Variables
 
.EXTERN	U235SE_period_ptr				; pointer to the period table 
.EXTERN	U235SE_ptr_sample_bank			; pointer to the sound effects sample bank
 
.EXTERN	U235SE_sfxplaylist_ptr			; address of sound effect playlist to process
 
.EXTERN	U235SE_playmod					; control register for module playback
 
.EXTERN	U235SE_playback_rate			; The current playback rate
.EXTERN	U235SE_playback_period 			; The current playback rate's period
 
.EXTERN U235SE_music_vol
 
.EXTERN	U235SE_sample_tbl
.EXTERN U235SE_sfxplaylist_ptr
.EXTERN U235SE_dsp_playlist
.EXTERN U235SE_dsp_playlist_ptr 
 
.EXTERN U235SE_voice_pos
.EXTERN U235SE_voice_end
.EXTERN U235SE_voice_periods
.EXTERN U235SE_voice_counter 
 
.EXTERN		U235SE_voice_smp
.EXTERN		U235SE_voice_roff
.EXTERN		U235SE_voice_rend

.EXTERN U235SE_endofdspram
;------------------------------------------------------------------------------------------------- Handy Equates
 
U235SE_NOMOD			EQU		0			; no module playback
U235SE_PLAYMONO			EQU		1			; Play the module with mono mixing
U235SE_PLAYSTEREO		EQU		2			; Play the module with stereo mixing
 
U235SE_8KHZ				EQU		$00300042	; Set playback rate  (8.1kHz)
U235SE_12KHZ			EQU		$0030002C	; Set playback rate  (12.060kHz)
U235SE_16KHZ			EQU		$00300020 	; Set playback rate  (16.446kHz)
U235SE_24KHZ			EQU		$00300015	; Set playback rate  (24.67kHz)
U235SE_32KHZ			EQU		$00300010	; Set playback rate  (31.925kHz)
 
U235SE_8KHZ_PERIOD		EQU		1234		; 8kHz period
U235SE_12KHZ_PERIOD		EQU		829			; 12kHz period
U235SE_16KHZ_PERIOD		EQU		608			; 16kHz period
U235SE_24KHZ_PERIOD 	EQU		405			; 24kHz period
U235SE_32KHZ_PERIOD		EQU		313			; 32kHz period
 
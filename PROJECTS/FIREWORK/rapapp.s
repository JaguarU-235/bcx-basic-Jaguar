;;
;; RAPTOR USER FILE
;;
;; Note: 	This file, and all other files, are tabulated for Notepad++
;;			Tabulation might be incorrect in other editors.
;;			use Notepad++ for maximum readability. 
;;



;; DO NOT MODIFY THE FOLLOWING LINES
			.extern RAPTOR_particle_gfx
			.extern RAPTOR_sprite_table
			.extern	RAPTOR_module_list
			.extern	listing
			.extern	RUPDALL_FLAG
			.extern	pixel_list
	
			extern RAPTOR_particle_gfx
			extern RAPTOR_sprite_table
			extern RAPTOR_module_list
	
			include				"build/romassets.inc"
			include				"../../RAPTOR/INCS/JAGUAR.INC"								; Include JAGUAR system labels
			include				"../../RAPTOR/INCS/RAPTOR.INC"								; Include RAPTOR library labels
			include				"../../U235SE.021/U235SE.INC"									; Include U235SE library labels

			.text							

;; YOUR APPLICATION GOES HERE
;; MODIFY AWAY!
						
;; VIDEO SETUP EQUATES
			
raptor_video_mode				equ				vidRGB16								; tell RAPTOR we want RGB 16 mode
raptor_video_enabled			equ				vidENABLE								; tell RAPTOR we want to Video ENABLED
raptor_video_VARMOD				equ				vidVARMOD_OFF							; tell RAPTOR we want VARMOD disabled
			
;; MAP MODULE SETUP EQUATES
			
raptor_first_map_object			equ				0										; Point RAPTOR to the first obejct of the map data
raptor_map_tiles_per_y			equ				0										; tell RAPTOR the height (in tiles) to display
raptor_map_tiles_per_x			equ				0										; tell RAPTOR the width (in tiles) to display
raptor_map_height				equ				0										; tell RAPTOR the map height (in tiles)
raptor_map_width				equ				0										; tell RAPTOR the map width (in tiles)
raptor_tilesize_x				equ				0										; tell RAPTOR the map tilesize (x) in pixels
raptor_tilesize_y				equ				0										; tell RAPTOR the map tilesize (y) in pixels
raptor_tilelinesz				equ				raptor_tilesize_x/2						; calculate the offset to next line of tile data
raptor_tilesize					equ				raptor_tilelinesz*raptor_tilesize_y		; calculate the byte size of a single tile

;; PARTICLE MODULE SETUP EQUATES

raptor_particle_buffer_width	equ				320										; tell RAPTOR the Particle / Text Buffer is 368 pixels wide
raptor_particle_buffer_height	equ				240										; tell RAPTOR the Particle / Text Buffer is 240 pixels high
raptor_particle_pixels			equ				200										; tell RAPTOR the maximum number of particles
raptor_particle_drift_x			equ				0										; tell RAPTOR the Particle Drift Factor (x)
raptor_particle_drift_y			equ				0										; tell RAPTOR the Particle Drift Factor (y)

;; some human friendly names

LIST_display					equ				0										; the first display list

;;
;; The following lines **MUST** be at the start of EVERY RAPTOR APPLICATION
;; They configure the .OBJ file for use
;;	
			move.l	#raptor_video_mode,raptor_vidmode
			move.l	#raptor_video_enabled,raptor_videnable
			move.l	#raptor_video_VARMOD,raptor_varmod
			move.l	#raptor_first_map_object,raptor_maptop_obj
			move.l	#raptor_tilesize_x,raptor_tiles_x
			move.l	#raptor_tilesize_y,raptor_tiles_y
			move.l	#raptor_map_tiles_per_x+2,raptor_tilesperx
			move.l	#raptor_map_tiles_per_y+1,raptor_tilespery
			move.l	#raptor_map_width,raptor_mapwidth
			move.l	#raptor_map_height,raptor_mapheight
			move.l	#raptor_particle_pixels,raptor_maxparts
			move.l	#raptor_tilesize_x-1,raptor_tilerem_mask
			move.l	#raptor_particle_buffer_width,raptor_partbuf_x
			move.l	#raptor_particle_buffer_height,raptor_partbuf_y
			move.l	#raptor_particle_drift_x,raptor_pdriftx
			move.l	#raptor_particle_drift_y,raptor_pdrifty
			move.l	#top_of_bss,raptor_top_of_bss
			move.l	#_trashram,raptor_trashram
			move.l	#RAPTOR_MTtrash,raptor_MTwork
			move.l	#RAPTOR_user_vbi,raptor_uvbi_jmp
			move.l	#RAPTOR_POST_Object_List,raptor_poobjl
			move.l	#RAPTOR_PRE_Object_List,raptor_probjl
			move.l	#RAPTOR_font8x8,raptor_8x8_addr
			move.l	#RAPTOR_font8x16,raptor_8x16_addr
			move.l	#RAPTOR_font16x16,raptor_16x16_addr
			move.l	#RAPTOR_particle_palette,raptor_partipal
			move.l	#RAPTOR_particle_gfx,raptor_pgfx
			move.l	#RAPTOR_particle_gfxe,raptor_pgfxe
			move.l	#RAPTOR_sprite_table,raptor_spritetab
			move.l	#RAPTOR_particle_table,raptor_partitab
			move.l	#RAPTOR_MT_app_name,raptor_mtapp
			move.l	#RAPTOR_MT_file_name,raptor_mtfn
			move.l	#raptor_init_table,raptor_inittab
			move.l	#RAPTOR_samplebank,raptor_samplebank_ptr
			move.l	#0,raptor_mapbmptiles					; <<<<---- THIS WILL NEED TO BE CHANGED IF USING THE TILEMAP MODULE <<<<----
			jsr		RAPTOR_HWinit				; Setup Jaguar hardware / install RAPTOR library

			lea		RAPTOR_autoconvert_list,a6
.autoconv:	move.l	(a6)+,a0
			cmp.l	#-1,a0
			beq.s	.out
			lea		_trashram,a1
			move.l	a6,-(a7)
			jsr		RAPTOR_GFXConvert
			move.l	(a7)+,a6
			move.l	(a6)+,d0
			bmi.s	.noclut
			asl		#5,d0
			lea		$f00400,a1
			add.l	d0,a1
			move.l	a6,-(a7)
			jsr		RAPTOR_move_palette
			move.l	(a7)+,a6
.noclut:	bra		.autoconv
.out:

			
;; we're using Joystick input, so we now need U235 Sound Engine running
			jsr		RAPTOR_U235init														; init the U235 Sound Engine
						
;; get something on the screen
	
			jsr		RAPTOR_start_video													; start video processing
			move.l	#LIST_display,d0													; set RAPTOR to display initial RAPTOR list
			jsr		RAPTOR_setlist														; tell RAPTOR which list to process
			jsr		RAPTOR_UPDATE_ALL													; and update the object list with initial values

			lea 	init_txt(pc),a0
			move.l	#0,d0
			move.l	#202,d1
			moveq	#1,d2
			moveq	#0,d3
			jsr		RAPTOR_print
			
			jmp __Z9basicmainv
			
			;		"0123456789012345678901234567890123456789"
init_txt:	dc.b	"       RAPTOR BASIC+ v0.1 - REBOOT      ",raptor_t_lf
			dc.b	raptor_t_font_siz,0
			dc.b	"        Derived from BCX BASIC v6       "
			dc.b	raptor_t_quit
			.even
			
																						; Loop around!
						
;;
;; RAPTOR user VBI vector
;;

RAPTOR_user_vbi:
			tst.l	RUPDALL_FLAG
			beq.s	.uvbi_out
			movem.l	d0-d7/a0-a6,-(a7)
			jsr		RAPTOR_UPDATE_ALL
			movem.l	(a7)+,d0-d7/a0-a6		
.uvbi_out:	rts																			; we're not using this, nothing tied to the vblank
RUPDALL_FLAG: dc.l 0

;;
;; Creating Non-RAPTOR objects around the list
;;		

RAPTOR_PRE_Object_List:																	; No unmanaged objects before the list
			rts

RAPTOR_POST_Object_List:																; No unmanaged Objects after the list									
			rts
						
							include 	"RAPINIT.S"									; RAPTOR object user data
							include 	"RAPU235.S"									; RAPTOR u235se user data
							
;; 
;; Convert List
;;

RAPTOR_autoconvert_list:	;dc.l	BMP_PLAYER,-1
							dc.l	-1,-1

RAPTOR_module_list:			;dc.l	module0
							dc.l	-1
							
;;
;; MOD files
;;
							.dphrase
module0:					;incbin	"ASSETS/SFX/MOD/MODULE1.MOD"
						
;;
;; Effects
;;

							.dphrase
explode_sam:				incbin	"ASSETS/SFX/SND/EXPLODE.RAW"
explode_end:
							
;;
;; Graphics
;;
							.dphrase
							dc.l	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				
RAPTOR_font8x8:             incbin  "ASSETS/FONTS/F_8x8.BMP"   ; User defined 8x8 fonts                      
.dphrase                                                       
RAPTOR_font8x16:            incbin  "ASSETS/FONTS/F_8x16.BMP"  ; User defined 8x16 fonts                     
.dphrase                                                       
RAPTOR_font16x16:           incbin  "ASSETS/FONTS/F_16x16.BMP" ; User defined 16x16 fonts                    
.dphrase                                                       
RAPTOR_particle_palette:    incbin  "ASSETS/PARTIPAL.BMP"      ; User defined palette for fonts and particles

							.dphrase
				
;;
;; Assets
;;

							.dphrase
							include "build/ramassets.inc"

;;
;; BSS SECTION
;;

							.bss
top_of_bss:

RAPTOR_MTtrash:				.ds.b	16384																		; Workspace for MemoryTrack routines

							.dphrase
RAPTOR_particle_gfx:		.ds.b	(raptor_particle_buffer_width/2)*raptor_particle_buffer_height				; particle FX buffer
RAPTOR_particle_gfxe:			
							.dphrase
RAPTOR_sprite_table:		.ds.b	sprite_max*sprite_tabwidth													; RAPTOR sprite database
							.dphrase
RAPTOR_particle_table:		.ds.b	raptor_particle_pixels*particle_tabwidth									; RAPTOR particle database
							.dphrase

							
_trashram:
								
;END OF FILE

				

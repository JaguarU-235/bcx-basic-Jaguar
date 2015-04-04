;; raptorBASIC+ sprite definition file
;;
;; Each scene you create is made of a number of sprites. This file is where you define the sprites within each scene list.
;;

; MEMORY TRACK STUFF
;

; 15 chars  						'012345678901234'
RAPTOR_MT_app_name:			dc.b	'RAPTOR',0					; Name of Application
							.even
RAPTOR_MT_file_name:		dc.b	'OSSUM',0					; Name of filename to use
							.even

raptor_init_table:
	dc.b	'>RAPTOR<'	; table start flag
	dc.b	'LIST'		; initiate list structure

;;

; text layer - sprite 0
	dc.l	1																; (REPEAT COUNTER) 	; Create this many objects of this type (or 1 for a single object)
	
	dc.l	is_active														; sprite_active		; sprite active flag
	dc.w	16,0															; sprite_x			; 16.16 x value to position at
	dc.w	0,0																; sprite_y			; 16.16 y value to position at
	dc.w	0,0																; sprite_xadd		; 16.16 x addition for sprite movement
	dc.w	0,0																; sprite_yadd		; 16.16 y addition for sprite movement
	dc.l	raptor_particle_buffer_width									; sprite_width		; width of sprite (in pixels)
	dc.l	raptor_particle_buffer_height									; sprite_height		; height of sprite (in pixels)
	dc.l	is_normal														; sprite_flip		; flag for mirroring data left<>right
	dc.l	0																; sprite_coffx		; x offset from centre for collision box centre
	dc.l	0																; sprite_coffy		; y offset from centre for collision box centre	
	dc.l	0																; sprite_hbox		; width of collision box
	dc.l	0																; sprite_vbox		; height of collision box
	dc.l	RAPTOR_particle_gfx												; sprite_gfxbase	; start of bitmap data
	dc.l	4																; (BIT DEPTH)		; bitmap depth (1/2/4/8/16/24)
	dc.l	is_RGB															; (cry/RGB)			; bitmap GFX type
	dc.l	is_trans														; (TRANSPARENCY)	; bitmap TRANS flag
	dc.l	(raptor_particle_buffer_width/2)*raptor_particle_buffer_height	; sprite_framesz	; size per frame in bytes of sprite data
	dc.l	raptor_particle_buffer_width/2									; sprite_bytewid	; width in bytes of one line of sprite data
	dc.l	0																; sprite_animspd	; frame delay between animation changes
	dc.l	0																; sprite_maxframe	; number of frames in animation chain
	dc.l	ani_rept														; sprite_animloop	; repeat or play once
	dc.l	edge_wrap														; sprite_wrap		; wrap on screen exit, or remove
	dc.l	spr_inf															; sprite_timer		; frames sprite is active for (or spr_inf)
	dc.l	spr_linear														; sprite_track		; use 16.16 xadd/yadd or point to 16.16 x/y table
	dc.l	0																; sprite_tracktop	; pointer to loop point in track table (if used)
	dc.l	spr_unscale														; sprite_scaled		; flag for scaleable object
	dc.l	%00100000														; sprite_scale_x	; x scale factor (if scaled)
	dc.l	%00100000														; sprite_scale_y	; y scale factor (if scaled)
	dc.l	-1																; sprite_was_hit	; initially flagged as not hit
	dc.l	15																; sprite_CLUT		; no_CLUT (8/16/24 bit) or CLUT (1/2/4 bit)
	dc.l	cant_hit														; sprite_colchk		; if sprite can collide with another
	dc.l	cd_remove														; sprite_remhit		; flag to remove (or keep) on collision
	dc.l	single															; sprite_bboxlink	; single for normal bounding box, else pointer to table
	dc.l	1																; sprite_hitpoint	; Hitpoints before death
	dc.l	2																; sprite_damage		; Hitpoints deducted from target
	dc.l	raptor_particle_buffer_width/2									; sprite_gwidth		; GFX width (of data)
	
	
	
; background - 12 frames of space scene: horizontal animation - sprite 1
;			value						possible values				description															rb+ label to access
	dc.l	1				; 									; How many sprites like this one do you want in the sprite list?
	dc.l	is_active		; is_active			is_inactive		; Will the sprite be active on screen or inactive?					;   R_sprite_active
	dc.w	0,0				; 									; Put sprite this many pixels from left side of screen.				;   R_sprite_x
	dc.w	40,0			; 									; Put sprite this many pixels down from top of screen.				;   R_sprite_y
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in x?			;   R_sprite_xadd
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in y?			;   R_sprite_yadd
	dc.l	352				; 									; Width of sprite in pixels											; * R_sprite_width
	dc.l	165				; 									; Height of sprite in pixels										; * R_sprite_height
	dc.l	is_normal		; is_normal			is_flipped		; Will the sprite be mirrored in x?									;   R_sprite_flip
	dc.l	0				; 									; Collision box x offset - pixel distance from centre of sprite		; * R_sprite_coffx
	dc.l	0				; 									; Collision box y offset - pixel distance from centre of sprite		; * R_sprite_coffy
	dc.l	352/2			;									; Width of collision box in pixels									; * R_sprite_hbox
	dc.l	165/2			;									; Height of collision box in pixels									; * R_sprite_vbox
	dc.l	STARS			;									; Place in memory where the sprite lives: label from RAPAPP.S		;   R_sprite_gfxbase
	dc.l	4				; 1  2  4  8  16  24				; Sprite graphics type: 1,2,4,8,16 or 24 bit						; * R_sprite_?
	dc.l	is_RGB			; is_RGB			is_cry			; Sprite graphics type. RGB or Atari's CRY format.					; * R_sprite_?
	dc.l	is_trans		; is_trans			is_opaque		; Trans for see-through background, opaque for solid background		; * R_sprite
	dc.l	352*165/2		; 									; Size of sprite in bytes - used to find next frame of animation	;   R_sprite_framesz
																; Enter the x-size * the y-size and add the following next:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	352/2			; 									; Width of a single row of sprite pixels							; * R_sprite_bytewid
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	0				;									; Number of screen updates (VB) before the animation advances		;   R_sprite_framedel
	dc.l	0				; 									; Additional number of animation frames after the first				;   R_sprite_maxframe
	dc.l	ani_rept		; ani_rept			ani_once		; Loop theanimation or play a single time							;	R_sprite_animloop
	dc.l	edge_wrap		; edge_wrap			R_edge_kill		; What do you want to do if sprite leaves the edge of the screen?	;   R_sprite_wrap
	dc.l	spr_inf			; spr_inf							; Want sprite to stay forever or a number of frames?				;   R_sprite_timer
	dc.l	spr_linear		; spr_linear 						; Use automatic movement above or use a tracking table.				;   R_sprite_track
	dc.l	0				;									; If using above tracking table, input the loop point here			;   R_sprite_tracktop
	dc.l	spr_unscale		; spr_unscale		spr_scale		; Is the sprite going to be scaleable or not scaled?				;	R_spr_scaled
	dc.l	32				;									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_x
																; It's probably best to think of the binary number %00100000...
																; Adding numbers to the right increases the size fractionally...
																; Adding them to the left increases buy a factor of one each time
																; So %01000000 is scaled 2x bigger than the original
																;    %00010000 is scaled half size
																;    %00010001 is a tiny bit bigger than half size
	dc.l	32				; 									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_y
																; See above for more info.
	dc.l	-1				; 									; Did the sprite collide with another?								;   R_sprite_was_hit
																; Set to not hit to begin with, used later to flag collisions
	dc.l	10				; no_CLUT							; Define sprite colours.											;   R_sprite_CLUT
																; no_CLUT for 8, 16 and 24bit
																; CLUT number 0 to 15 for 1, 2 and 4bit
	dc.l	cant_hit		; can_hit			cant_hit		; Want to be able to check if this sprite hits others?				;   R_sprite_colchk
	dc.l	cd_keep			; cd_keep			cd_remove		; What to do if a collision is detected.							;   R_sprite_remhit
	dc.l	single			; single							; Bounding box for collision detect 'single'. Or address of table	;	R_sprite_bboxlink
	dc.l	1				; 									; Hit points before sprite is killed								;   R_sprite_hitpoint
	dc.l	1				; 									; Sprite hit point damage per hit									;   R_sprite_damage
	dc.l	352/2			;									; Width of sprite (used for long looping sprites).					;   R_sprite_gwidth
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
																
																
; ship - 3 frames of movement: forwards, left, right - sprite 2
;			value						possible values				description															rb+ label to access
	dc.l	1				; 									; How many sprites like this one do you want in the sprite list?
	dc.l	is_active		; is_active			is_inactive		; Will the sprite be active on screen or inactive?					;   R_sprite_active
	dc.w	160,0			; 									; Put sprite this many pixels from left side of screen.				;   R_sprite_x
	dc.w	180,0			; 									; Put sprite this many pixels down from top of screen.				;   R_sprite_y
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in x?			;   R_sprite_xadd
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in y?			;   R_sprite_yadd
	dc.l	32				; 									; Width of sprite in pixels											; * R_sprite_width
	dc.l	24				; 									; Height of sprite in pixels										; * R_sprite_height
	dc.l	is_normal		; is_normal			is_flipped		; Will the sprite be mirrored in x?									;   R_sprite_flip
	dc.l	0				; 									; Collision box x offset - pixel distance from centre of sprite		; * R_sprite_coffx
	dc.l	0				; 									; Collision box y offset - pixel distance from centre of sprite		; * R_sprite_coffy
	dc.l	32/2			;									; Width of collision box in pixels									; * R_sprite_hbox
	dc.l	24/2			;									; Height of collision box in pixels									; * R_sprite_vbox
	dc.l	SHIP			;									; Place in memory where the sprite lives: label from RAPAPP.S		;   R_sprite_gfxbase
	dc.l	4				; 1  2  4  8  16  24				; Sprite graphics type: 1,2,4,8,16 or 24 bit						; * R_sprite_?
	dc.l	is_RGB			; is_RGB			is_cry			; Sprite graphics type. RGB or Atari's CRY format.					; * R_sprite_?
	dc.l	is_trans		; is_trans			is_opaque		; Trans for see-through background, opaque for solid background		; * R_sprite
	dc.l	32*24/2			; 									; Size of sprite in bytes - used to find next frame of animation	;   R_sprite_framesz
																; Enter the x-size * the y-size and add the following next:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	32/2			; 									; Width of a single row of sprite pixels							; * R_sprite_bytewid
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	0				;									; Number of screen updates (VB) before the animation advances		;   R_sprite_framedel
	dc.l	0				; 									; Additional number of animation frames after the first				;   R_sprite_maxframe
	dc.l	ani_rept		; ani_rept			ani_once		; Loop theanimation or play a single time							;	R_sprite_animloop
	dc.l	edge_wrap		; edge_wrap			R_edge_kill		; What do you want to do if sprite leaves the edge of the screen?	;   R_sprite_wrap
	dc.l	spr_inf			; spr_inf							; Want sprite to stay forever or a number of frames?				;   R_sprite_timer
	dc.l	spr_linear		; spr_linear 						; Use automatic movement above or use a tracking table.				;   R_sprite_track
	dc.l	0				;									; If using above tracking table, input the loop point here			;   R_sprite_tracktop
	dc.l	spr_unscale		; spr_unscale		spr_scale		; Is the sprite going to be scaleable or not scaled?				;	R_spr_scaled
	dc.l	32				;									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_x
																; It's probably best to think of the binary number %00100000...
																; Adding numbers to the right increases the size fractionally...
																; Adding them to the left increases buy a factor of one each time
																; So %01000000 is scaled 2x bigger than the original
																;    %00010000 is scaled half size
																;    %00010001 is a tiny bit bigger than half size
	dc.l	32				; 									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_y
																; See above for more info.
	dc.l	-1				; 									; Did the sprite collide with another?								;   R_sprite_was_hit
																; Set to not hit to begin with, used later to flag collisions
	dc.l	14				; no_CLUT							; Define sprite colours.											;   R_sprite_CLUT
																; no_CLUT for 8, 16 and 24bit
																; CLUT number 0 to 15 for 1, 2 and 4bit
	dc.l	cant_hit		; can_hit			cant_hit		; Want to be able to check if this sprite hits others?				;   R_sprite_colchk
	dc.l	cd_keep			; cd_keep			cd_remove		; What to do if a collision is detected.							;   R_sprite_remhit
	dc.l	single			; single							; Bounding box for collision detect 'single'. Or address of table	;	R_sprite_bboxlink
	dc.l	1				; 									; Hit points before sprite is killed								;   R_sprite_hitpoint
	dc.l	1				; 									; Sprite hit point damage per hit									;   R_sprite_damage
	dc.l	32/2			;									; Width of sprite (used for long looping sprites).					;   R_sprite_gwidth
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
																
																
																
; enemy - 2 frames, normal and hit - sprites 2 TO 6
;			value						possible values				description															rb+ label to access
	dc.l	5				; 									; How many sprites like this one do you want in the sprite list?
	dc.l	is_active		; is_active			is_inactive		; Will the sprite be active on screen or inactive?					;   R_sprite_active
	dc.w	160,0			; 									; Put sprite this many pixels from left side of screen.				;   R_sprite_x
	dc.w	40,0			; 									; Put sprite this many pixels down from top of screen.				;   R_sprite_y
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in x?			;   R_sprite_xadd
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in y?			;   R_sprite_yadd
	dc.l	32				; 									; Width of sprite in pixels											; * R_sprite_width
	dc.l	40				; 									; Height of sprite in pixels										; * R_sprite_height
	dc.l	is_normal		; is_normal			is_flipped		; Will the sprite be mirrored in x?									;   R_sprite_flip
	dc.l	0				; 									; Collision box x offset - pixel distance from centre of sprite		; * R_sprite_coffx
	dc.l	0				; 									; Collision box y offset - pixel distance from centre of sprite		; * R_sprite_coffy
	dc.l	28/2			;									; Width of collision box in pixels									; * R_sprite_hbox
	dc.l	40/2			;									; Height of collision box in pixels									; * R_sprite_vbox
	dc.l	ENEMY			;									; Place in memory where the sprite lives: label from RAPAPP.S		;   R_sprite_gfxbase
	dc.l	4				; 1  2  4  8  16  24				; Sprite graphics type: 1,2,4,8,16 or 24 bit						; * R_sprite_?
	dc.l	is_RGB			; is_RGB			is_cry			; Sprite graphics type. RGB or Atari's CRY format.					; * R_sprite_?
	dc.l	is_trans		; is_trans			is_opaque		; Trans for see-through background, opaque for solid background		; * R_sprite
	dc.l	32*40/2			; 									; Size of sprite in bytes - used to find next frame of animation	;   R_sprite_framesz
																; Enter the x-size * the y-size and add the following next:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	32/2			; 									; Width of a single row of sprite pixels							; * R_sprite_bytewid
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	0				;									; Number of screen updates (VB) before the animation advances		;   R_sprite_framedel
	dc.l	0				; 									; Additional number of animation frames after the first				;   R_sprite_maxframe
	dc.l	ani_rept		; ani_rept			ani_once		; Loop theanimation or play a single time							;	R_sprite_animloop
	dc.l	edge_wrap		; edge_wrap			R_edge_kill		; What do you want to do if sprite leaves the edge of the screen?	;   R_sprite_wrap
	dc.l	spr_inf			; spr_inf							; Want sprite to stay forever or a number of frames?				;   R_sprite_timer
	dc.l	spr_linear		; spr_linear 						; Use automatic movement above or use a tracking table.				;   R_sprite_track
	dc.l	0				;									; If using above tracking table, input the loop point here			;   R_sprite_tracktop
	dc.l	spr_unscale		; spr_unscale		spr_scale		; Is the sprite going to be scaleable or not scaled?				;	R_spr_scaled
	dc.l	32				;									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_x
																; It's probably best to think of the binary number %00100000...
																; Adding numbers to the right increases the size fractionally...
																; Adding them to the left increases buy a factor of one each time
																; So %01000000 is scaled 2x bigger than the original
																;    %00010000 is scaled half size
																;    %00010001 is a tiny bit bigger than half size
	dc.l	32				; 									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_y
																; See above for more info.
	dc.l	-1				; 									; Did the sprite collide with another?								;   R_sprite_was_hit
																; Set to not hit to begin with, used later to flag collisions
	dc.l	13				; no_CLUT							; Define sprite colours.											;   R_sprite_CLUT
																; no_CLUT for 8, 16 and 24bit
																; CLUT number 0 to 15 for 1, 2 and 4bit
	dc.l	can_hit			; can_hit			cant_hit		; Want to be able to check if this sprite hits others?				;   R_sprite_colchk
	dc.l	cd_remove		; cd_keep			cd_remove		; What to do if a collision is detected.							;   R_sprite_remhit
	dc.l	single			; single							; Bounding box for collision detect 'single'. Or address of table	;	R_sprite_bboxlink
	dc.l	199				; 									; Hit points before sprite is killed								;   R_sprite_hitpoint
	dc.l	1				; 									; Sprite hit point damage per hit									;   R_sprite_damage
	dc.l	32/2			;									; Width of sprite (used for long looping sprites).					;   R_sprite_gwidth
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
																
																
; bullet - 7 frames of regular animation - sprites 7-14
;			value						possible values				description															rb+ label to access
	dc.l	10				; 									; How many sprites like this one do you want in the sprite list?
	dc.l	is_inactive		; is_active			is_inactive		; Will the sprite be active on screen or inactive?					;   R_sprite_active
	dc.w	0,0				; 									; Put sprite this many pixels from left side of screen.				;   R_sprite_x
	dc.w	255,0			; 									; Put sprite this many pixels down from top of screen.				;   R_sprite_y
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in x?			;   R_sprite_xadd
	dc.w	-2,0			; 									; How many pixels will this sprite move automatically in y?			;   R_sprite_yadd
	dc.l	16				; 									; Width of sprite in pixels											; * R_sprite_width
	dc.l	16				; 									; Height of sprite in pixels										; * R_sprite_height
	dc.l	is_normal		; is_normal			is_flipped		; Will the sprite be mirrored in x?									;   R_sprite_flip
	dc.l	0				; 									; Collision box x offset - pixel distance from centre of sprite		; * R_sprite_coffx
	dc.l	0				; 									; Collision box y offset - pixel distance from centre of sprite		; * R_sprite_coffy
	dc.l	8/2				;									; Width of collision box in pixels									; * R_sprite_hbox
	dc.l	16/2			;									; Height of collision box in pixels									; * R_sprite_vbox
	dc.l	BULLET			;									; Place in memory where the sprite lives: label from RAPAPP.S		;   R_sprite_gfxbase
	dc.l	4				; 1  2  4  8  16  24				; Sprite graphics type: 1,2,4,8,16 or 24 bit						; * R_sprite_?
	dc.l	is_cry			; is_RGB			is_cry			; Sprite graphics type. RGB or Atari's CRY format.					; * R_sprite_?
	dc.l	is_trans		; is_trans			is_opaque		; Trans for see-through background, opaque for solid background		; * R_sprite
	dc.l	16*16/2			; 									; Size of sprite in bytes - used to find next frame of animation	;   R_sprite_framesz
																; Enter the x-size * the y-size and add the following next:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	16/2			; 									; Width of a single row of sprite pixels							; * R_sprite_bytewid
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	0				;									; Number of screen updates (VB) before the animation advances		;   R_sprite_framedel
	dc.l	6				; 									; Additional number of animation frames after the first				;   R_sprite_maxframe
	dc.l	ani_rept		; ani_rept			ani_once		; Loop the animation or play a single time							;	R_sprite_animloop
	dc.l	edge_kill		; edge_wrap			R_edge_kill		; What do you want to do if sprite leaves the edge of the screen?	;   R_sprite_wrap
	dc.l	spr_inf			; spr_inf							; Want sprite to stay forever or a number of frames?				;   R_sprite_timer
	dc.l	spr_linear		; spr_linear 						; Use automatic movement above or use a tracking table.				;   R_sprite_track
	dc.l	0				;									; If using above tracking table, input the loop point here			;   R_sprite_tracktop
	dc.l	spr_unscale		; spr_unscale		spr_scale		; Is the sprite going to be scaleable or not scaled?				;	R_spr_scaled
	dc.l	32				;									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_x
																; It's probably best to think of the binary number %00100000...
																; Adding numbers to the right increases the size fractionally...
																; Adding them to the left increases buy a factor of one each time
																; So %01000000 is scaled 2x bigger than the original
																;    %00010000 is scaled half size
																;    %00010001 is a tiny bit bigger than half size
	dc.l	32				; 									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_y
																; See above for more info.
	dc.l	-1				; 									; Did the sprite collide with another?								;   R_sprite_was_hit
																; Set to not hit to begin with, used later to flag collisions
	dc.l	12				; no_CLUT							; Define sprite colours.											;   R_sprite_CLUT
																; no_CLUT for 8, 16 and 24bit
																; CLUT number 0 to 15 for 1, 2 and 4bit
	dc.l	can_hit			; can_hit			cant_hit		; Want to be able to check if this sprite hits others?				;   R_sprite_colchk
	dc.l	cd_remove		; cd_keep			cd_remove		; What to do if a collision is detected.							;   R_sprite_remhit
	dc.l	single			; single							; Bounding box for collision detect 'single'. Or address of table	;	R_sprite_bboxlink
	dc.l	1				; 									; Hit points before sprite is killed								;   R_sprite_hitpoint
	dc.l	10				; 									; Sprite hit point damage per hit									;   R_sprite_damage
	dc.l	16/2			;									; Width of sprite (used for long looping sprites).					;   R_sprite_gwidth
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
																																
																
																
; explosion - 16 frames of regular animation 
;			value						possible values				description															rb+ label to access
	dc.l	5				; 									; How many sprites like this one do you want in the sprite list?
	dc.l	is_inactive		; is_active			is_inactive		; Will the sprite be active on screen or inactive?					;   R_sprite_active
	dc.w	0,0				; 									; Put sprite this many pixels from left side of screen.				;   R_sprite_x
	dc.w	255,0			; 									; Put sprite this many pixels down from top of screen.				;   R_sprite_y
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in x?			;   R_sprite_xadd
	dc.w	-1,0			; 									; How many pixels will this sprite move automatically in y?			;   R_sprite_yadd
	dc.l	32				; 									; Width of sprite in pixels											; * R_sprite_width
	dc.l	32				; 									; Height of sprite in pixels										; * R_sprite_height
	dc.l	is_normal		; is_normal			is_flipped		; Will the sprite be mirrored in x?									;   R_sprite_flip
	dc.l	0				; 									; Collision box x offset - pixel distance from centre of sprite		; * R_sprite_coffx
	dc.l	0				; 									; Collision box y offset - pixel distance from centre of sprite		; * R_sprite_coffy
	dc.l	8/2				;									; Width of collision box in pixels									; * R_sprite_hbox
	dc.l	16/2			;									; Height of collision box in pixels									; * R_sprite_vbox
	dc.l	BOOM			;									; Place in memory where the sprite lives: label from RAPAPP.S		;   R_sprite_gfxbase
	dc.l	4				; 1  2  4  8  16  24				; Sprite graphics type: 1,2,4,8,16 or 24 bit						; * R_sprite_?
	dc.l	is_cry			; is_RGB			is_cry			; Sprite graphics type. RGB or Atari's CRY format.					; * R_sprite_?
	dc.l	is_trans		; is_trans			is_opaque		; Trans for see-through background, opaque for solid background		; * R_sprite
	dc.l	32*32/2			; 									; Size of sprite in bytes - used to find next frame of animation	;   R_sprite_framesz
																; Enter the x-size * the y-size and add the following next:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	32/2			; 									; Width of a single row of sprite pixels							; * R_sprite_bytewid
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	2				;									; Number of screen updates (VB) before the animation advances		;   R_sprite_framedel
	dc.l	15				; 									; Additional number of animation frames after the first				;   R_sprite_maxframe
	dc.l	ani_once		; ani_rept			ani_once		; Loop the animation or play a single time							;	R_sprite_animloop
	dc.l	edge_kill		; edge_wrap			R_edge_kill		; What do you want to do if sprite leaves the edge of the screen?	;   R_sprite_wrap
	dc.l	17				; spr_inf							; Want sprite to stay forever or a number of frames?				;   R_sprite_timer
	dc.l	spr_linear		; spr_linear 						; Use automatic movement above or use a tracking table.				;   R_sprite_track
	dc.l	0				;									; If using above tracking table, input the loop point here			;   R_sprite_tracktop
	dc.l	spr_unscale		; spr_unscale		spr_scale		; Is the sprite going to be scaleable or not scaled?				;	R_spr_scaled
	dc.l	32				;									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_x
																; It's probably best to think of the binary number %00100000...
																; Adding numbers to the right increases the size fractionally...
																; Adding them to the left increases buy a factor of one each time
																; So %01000000 is scaled 2x bigger than the original
																;    %00010000 is scaled half size
																;    %00010001 is a tiny bit bigger than half size
	dc.l	32				; 									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_y
																; See above for more info.
	dc.l	-1				; 									; Did the sprite collide with another?								;   R_sprite_was_hit
																; Set to not hit to begin with, used later to flag collisions
	dc.l	11				; no_CLUT							; Define sprite colours.											;   R_sprite_CLUT
																; no_CLUT for 8, 16 and 24bit
																; CLUT number 0 to 15 for 1, 2 and 4bit
	dc.l	cant_hit		; can_hit			cant_hit		; Want to be able to check if this sprite hits others?				;   R_sprite_colchk
	dc.l	cd_remove		; cd_keep			cd_remove		; What to do if a collision is detected.							;   R_sprite_remhit
	dc.l	single			; single							; Bounding box for collision detect 'single'. Or address of table	;	R_sprite_bboxlink
	dc.l	1				; 									; Hit points before sprite is killed								;   R_sprite_hitpoint
	dc.l	1				; 									; Sprite hit point damage per hit									;   R_sprite_damage
	dc.l	32/2			;									; Width of sprite (used for long looping sprites).					;   R_sprite_gwidth
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
																																
																
																
; big explosion - 16 frames of regular animation 
;			value						possible values				description															rb+ label to access
	dc.l	5				; 									; How many sprites like this one do you want in the sprite list?
	dc.l	is_inactive		; is_active			is_inactive		; Will the sprite be active on screen or inactive?					;   R_sprite_active
	dc.w	0,0				; 									; Put sprite this many pixels from left side of screen.				;   R_sprite_x
	dc.w	255,0			; 									; Put sprite this many pixels down from top of screen.				;   R_sprite_y
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in x?			;   R_sprite_xadd
	dc.w	-2,0			; 									; How many pixels will this sprite move automatically in y?			;   R_sprite_yadd
	dc.l	64				; 									; Width of sprite in pixels											; * R_sprite_width
	dc.l	64				; 									; Height of sprite in pixels										; * R_sprite_height
	dc.l	is_normal		; is_normal			is_flipped		; Will the sprite be mirrored in x?									;   R_sprite_flip
	dc.l	0				; 									; Collision box x offset - pixel distance from centre of sprite		; * R_sprite_coffx
	dc.l	0				; 									; Collision box y offset - pixel distance from centre of sprite		; * R_sprite_coffy
	dc.l	8/2				;									; Width of collision box in pixels									; * R_sprite_hbox
	dc.l	16/2			;									; Height of collision box in pixels									; * R_sprite_vbox
	dc.l	BOOM2			;									; Place in memory where the sprite lives: label from RAPAPP.S		;   R_sprite_gfxbase
	dc.l	4				; 1  2  4  8  16  24				; Sprite graphics type: 1,2,4,8,16 or 24 bit						; * R_sprite_?
	dc.l	is_cry			; is_RGB			is_cry			; Sprite graphics type. RGB or Atari's CRY format.					; * R_sprite_?
	dc.l	is_trans		; is_trans			is_opaque		; Trans for see-through background, opaque for solid background		; * R_sprite
	dc.l	64*64/2			; 									; Size of sprite in bytes - used to find next frame of animation	;   R_sprite_framesz
																; Enter the x-size * the y-size and add the following next:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	64/2			; 									; Width of a single row of sprite pixels							; * R_sprite_bytewid
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	1				;									; Number of screen updates (VB) before the animation advances		;   R_sprite_framedel
	dc.l	15				; 									; Additional number of animation frames after the first				;   R_sprite_maxframe
	dc.l	ani_once		; ani_rept			ani_once		; Loop the animation or play a single time							;	R_sprite_animloop
	dc.l	edge_kill		; edge_wrap			R_edge_kill		; What do you want to do if sprite leaves the edge of the screen?	;   R_sprite_wrap
	dc.l	17				; spr_inf							; Want sprite to stay forever or a number of frames?				;   R_sprite_timer
	dc.l	spr_linear		; spr_linear 						; Use automatic movement above or use a tracking table.				;   R_sprite_track
	dc.l	0				;									; If using above tracking table, input the loop point here			;   R_sprite_tracktop
	dc.l	spr_unscale		; spr_unscale		spr_scale		; Is the sprite going to be scaleable or not scaled?				;	R_spr_scaled
	dc.l	32				;									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_x
																; It's probably best to think of the binary number %00100000...
																; Adding numbers to the right increases the size fractionally...
																; Adding them to the left increases buy a factor of one each time
																; So %01000000 is scaled 2x bigger than the original
																;    %00010000 is scaled half size
																;    %00010001 is a tiny bit bigger than half size
	dc.l	32				; 									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_y
																; See above for more info.
	dc.l	-1				; 									; Did the sprite collide with another?								;   R_sprite_was_hit
																; Set to not hit to begin with, used later to flag collisions
	dc.l	11				; no_CLUT							; Define sprite colours.											;   R_sprite_CLUT
																; no_CLUT for 8, 16 and 24bit
																; CLUT number 0 to 15 for 1, 2 and 4bit
	dc.l	cant_hit		; can_hit			cant_hit		; Want to be able to check if this sprite hits others?				;   R_sprite_colchk
	dc.l	cd_remove		; cd_keep			cd_remove		; What to do if a collision is detected.							;   R_sprite_remhit
	dc.l	single			; single							; Bounding box for collision detect 'single'. Or address of table	;	R_sprite_bboxlink
	dc.l	1				; 									; Hit points before sprite is killed								;   R_sprite_hitpoint
	dc.l	1				; 									; Sprite hit point damage per hit									;   R_sprite_damage
	dc.l	64/2			;									; Width of sprite (used for long looping sprites).					;   R_sprite_gwidth
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
																												
														
; dupe ship dummy sprite for end of list, must remain active
;			value						possible values				description															rb+ label to access
	dc.l	1				; 									; How many sprites like this one do you want in the sprite list?
	dc.l	is_active		; is_active			is_inactive		; Will the sprite be active on screen or inactive?					;   R_sprite_active
	dc.w	160,0			; 									; Put sprite this many pixels from left side of screen.				;   R_sprite_x
	dc.w	255,0			; 									; Put sprite this many pixels down from top of screen.				;   R_sprite_y
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in x?			;   R_sprite_xadd
	dc.w	0,0				; 									; How many pixels will this sprite move automatically in y?			;   R_sprite_yadd
	dc.l	32				; 									; Width of sprite in pixels											; * R_sprite_width
	dc.l	24				; 									; Height of sprite in pixels										; * R_sprite_height
	dc.l	is_normal		; is_normal			is_flipped		; Will the sprite be mirrored in x?									;   R_sprite_flip
	dc.l	0				; 									; Collision box x offset - pixel distance from centre of sprite		; * R_sprite_coffx
	dc.l	0				; 									; Collision box y offset - pixel distance from centre of sprite		; * R_sprite_coffy
	dc.l	32/2			;									; Width of collision box in pixels									; * R_sprite_hbox
	dc.l	24/2			;									; Height of collision box in pixels									; * R_sprite_vbox
	dc.l	SHIP			;									; Place in memory where the sprite lives: label from RAPAPP.S		;   R_sprite_gfxbase
	dc.l	4				; 1  2  4  8  16  24				; Sprite graphics type: 1,2,4,8,16 or 24 bit						; * R_sprite_?
	dc.l	is_RGB			; is_RGB			is_cry			; Sprite graphics type. RGB or Atari's CRY format.					; * R_sprite_?
	dc.l	is_trans		; is_trans			is_opaque		; Trans for see-through background, opaque for solid background		; * R_sprite
	dc.l	32*24/2			; 									; Size of sprite in bytes - used to find next frame of animation	;   R_sprite_framesz
																; Enter the x-size * the y-size and add the following next:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	32/2			; 									; Width of a single row of sprite pixels							; * R_sprite_bytewid
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
	dc.l	0				;									; Number of screen updates (VB) before the animation advances		;   R_sprite_framedel
	dc.l	0				; 									; Additional number of animation frames after the first				;   R_sprite_maxframe
	dc.l	ani_rept		; ani_rept			ani_once		; Loop theanimation or play a single time							;	R_sprite_animloop
	dc.l	edge_wrap		; edge_wrap			R_edge_kill		; What do you want to do if sprite leaves the edge of the screen?	;   R_sprite_wrap
	dc.l	spr_inf			; spr_inf							; Want sprite to stay forever or a number of frames?				;   R_sprite_timer
	dc.l	spr_linear		; spr_linear 						; Use automatic movement above or use a tracking table.				;   R_sprite_track
	dc.l	0				;									; If using above tracking table, input the loop point here			;   R_sprite_tracktop
	dc.l	spr_unscale		; spr_unscale		spr_scale		; Is the sprite going to be scaleable or not scaled?				;	R_spr_scaled
	dc.l	32				;									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_x
																; It's probably best to think of the binary number %00100000...
																; Adding numbers to the right increases the size fractionally...
																; Adding them to the left increases buy a factor of one each time
																; So %01000000 is scaled 2x bigger than the original
																;    %00010000 is scaled half size
																;    %00010001 is a tiny bit bigger than half size
	dc.l	32				; 									; 32 is 1:1. 0-31 are scaled down, 33-255 are scaled up.			;   R_sprite_scale_y
																; See above for more info.
	dc.l	-1				; 									; Did the sprite collide with another?								;   R_sprite_was_hit
																; Set to not hit to begin with, used later to flag collisions
	dc.l	14				; no_CLUT							; Define sprite colours.											;   R_sprite_CLUT
																; no_CLUT for 8, 16 and 24bit
																; CLUT number 0 to 15 for 1, 2 and 4bit
	dc.l	cant_hit		; can_hit			cant_hit		; Want to be able to check if this sprite hits others?				;   R_sprite_colchk
	dc.l	cd_keep			; cd_keep			cd_remove		; What to do if a collision is detected.							;   R_sprite_remhit
	dc.l	single			; single							; Bounding box for collision detect 'single'. Or address of table	;	R_sprite_bboxlink
	dc.l	1				; 									; Hit points before sprite is killed								;   R_sprite_hitpoint
	dc.l	1				; 									; Sprite hit point damage per hit									;   R_sprite_damage
	dc.l	32/2			;									; Width of sprite (used for long looping sprites).					;   R_sprite_gwidth
																; Enter the x-size and add the following:
																; /8 for 1bit
																; /4 for 2bit
																; /2 for 4bit
																; nothing for 8bit
																; *2 for 16bit
																; *4 for 24bit
																											
																
			
				

	dc.b	'STOP'							; end of the current LIST

	dc.b	'<RAPTOR>'						; table termination flag

; END OF FILE.

	
	
	

#define R_sprite_tabwidth 188

enum
{
    R_sprite_obj      = 0,   // pointer to object in OL
    R_sprite_active   = 4,   // active flag (-1 = inactive)
    R_sprite_x        = 8,   // x position in 16.16
    R_sprite_y        = 12,  // y position in 16.16
    R_sprite_xadd     = 16,  // x velocity to add in 16.16
    R_sprite_yadd     = 20,  // y velocity to add in 16.16
    R_sprite_flip     = 24,  // if set, add _width to X and set mirror
    R_sprite_width    = 28,  // width of sprite
    R_sprite_height   = 32,  // height of sprite
    R_sprite_vbox     = 36,  // vertical distance from midpoint for collision clipping
    R_sprite_hbox     = 40,  // horizontal distance from midpoint for collision clipping
    R_sprite_gfxbase  = 44,  // pointer to phrase aligned sprite bitmap data
    R_sprite_framesz  = 48,  // size of sprite frame in bytes (offset to next frame)
    R_sprite_framedel = 52,  // vblanks till next sprite animation frame
    R_sprite_curframe = 56,  // current frame number (or 0 for no frames)
    R_sprite_maxframe = 60,  // maximum frame for sprite
    R_sprite_animloop = 64,  // -1 = loop animation, 1=terminate on loop
    R_sprite_wrap     = 68,  // flag for wrap or disable on leaving screen
    R_sprite_timer    = 72,  // frames to stay alive, or -2 for infinite
    R_sprite_track    = 76,  // -1 = use fract update, else pointer to x.y co-ords
    R_sprite_colchk   = 80,  // -1 = no collision detection
    R_sprite_scaled   = 84,  // -1 = unscaled, 1 = scaled
    R_sprite_scale_x  = 88,  // x-scaler
    R_sprite_scale_y  = 92,  // y-scaler
    R_sprite_CLUT     = 96,  // -1 for no change, else CLUT to use for sprite if <16bit
    R_sprite_animspd  = 100, // animation speed
    R_sprite_bytewid  = 104, // width of one scanline of sprite in bytes
    R_sprite_tracktop = 108, // loop point for tracking, or -1 for exit
    R_sprite_was_hit  = 112, // set to +ve if by the collision routine if sprite hit
    R_sprite_coffx    = 116, // offset from center for bounding box (hbox)
    R_sprite_coffy    = 120, // offset from center for bounding box (vbox)
    R_sprite_remhit   = 124, // 1 = remove if hit, else leave onscreen
    R_sprite_bboxlink = 128, // -1, or pointer to bounding box link data
    R_sprite_hitpoint = 132, // hitpoints of damage to take before removal
    R_sprite_damage   = 136, // damage to deal
    R_sprite_flash    = 140, // make sprite blink
    R_sprite_gwidth   = 144, // graphics width
    R_sprite_unused01 = 148,
    R_sprite_unused02 = 152,
    R_sprite_userdat1 = 156,
    R_sprite_userdat2 = 160,
    R_sprite_userdat3 = 164,
    R_sprite_userdat4 = 168,
    R_sprite_userdat5 = 172,
    R_sprite_userdat6 = 176,
    R_sprite_userdat7 = 180,
    R_sprite_userdat8 = 184
};

// changes for BRA objects
//
// set sprite_active to +1 if BRA to be updated, else it will remain as-is

enum
{
    R_obj_bra_y    = R_sprite_y,     // store Y comparison
    R_obj_bra_type = R_sprite_x,     // store BRA type (BAlways, BLess, BMore)
    R_obj_isBRA    = R_sprite_timer, // set to -3 if BRA object
    R_obj_link     = R_sprite_xadd   // jump offset in objects
};

//	-----------------------
//	Equates for readability
//	-----------------------

enum
{
    R_is_active   = 1,
    R_is_inactive = -1,
    R_is_normal   = 1,
    R_is_flipped  = -1,
    R_ani_rept    = -1,
    R_ani_once    = 1,
    R_edge_wrap   = 1,
    R_edge_kill   = -1,
    R_spr_inf     = -2,
    R_spr_linear  = -1,
    R_spr_scale   = 1,
    R_spr_unscale = -1,
    R_no_CLUT     = -1,
    R_is_trans    = 1,
    R_is_opaque   = 0,
    R_can_hit     = 1,
    R_cant_hit    = -1,
    R_cd_remove   = 1,
    R_cd_keep     = -1,
    R_is_cry      = -1,
    R_is_RGB      = 1,
    R_single      = -1
};

enum
{
    BR_always = 2,
    BR_less   = 0,
    BR_more   = 1
};

enum
{
PAD_UP			=		1		, // Up
PAD_U			=		1       , 
PAD_DOWN		=		2		, // Down
PAD_D			=		2       , 
PAD_LEFT		=		4		, // Left
PAD_L			=		4       , 
PAD_RIGHT		=		8		, // Right
PAD_R			=		8		, 
PAD_HASH		=		16		, // Hash (#)
PAD_9			=		32		, // 9
PAD_6			=		64		, // 6
PAD_3			=		0x80		, // 3
PAD_PAUSE		=		0x100	, // Pause
PAD_A			=		0x200	, // A button
PAD_OPTION		=		0x400	, // Option
PAD_STAR		=		0x800	, // Star 
PAD_7			=		0x1000	, // 7
PAD_4			=		0x2000	, // 4
PAD_1			=		0x4000	, // 1
PAD_0			=		0x8000	, // 0 (zero)
PAD_8			=		0x10000	, // 8
PAD_5			=		0x20000	, // 5
PAD_2			=		0x40000	, // 2
PAD_B			=		0x80000	, // B button
PAD_C			=		0x100000	  // C button
};
#define R_sprite_tabwidth 188

enum
{
	R_sprite_obj				=0,		// pointer to object in OL
	R_sprite_active				=4,		// active flag (-1 = inactive)
	R_sprite_x					=8,		// x position in 16.16
	R_sprite_y					=12,	// y position in 16.16
	R_sprite_xadd				=16,	// x velocity to add in 16.16
	R_sprite_yadd				=20,	// y velocity to add in 16.16
	R_sprite_flip				=24,	// if set, add _width to X and set mirror
	R_sprite_width				=28,	// width of sprite
	R_sprite_height				=32,	// height of sprite
	R_sprite_vbox				=36,	// vertical distance from midpoint for collision clipping
	R_sprite_hbox				=40,	// horizontal distance from midpoint for collision clipping
	R_sprite_gfxbase			=44,	// pointer to phrase aligned sprite bitmap data
	R_sprite_framesz			=48,	// size of sprite frame in bytes (offset to next frame)
	R_sprite_framedel			=52,	// vblanks till next sprite animation frame
	R_sprite_curframe			=56,	// current frame number (or 0 for no frames)
	R_sprite_maxframe			=60,	// maximum frame for sprite
	R_sprite_animloop			=64,	// -1 = loop animation, 1=terminate on loop
	R_sprite_wrap				=68,	// flag for wrap or disable on leaving screen
	R_sprite_timer				=72,	// frames to stay alive, or -2 for infinite
	R_sprite_track				=76,	// -1 = use fract update, else pointer to x.y co-ords
	R_sprite_colchk				=80,	// -1 = no collision detection
	R_sprite_scaled				=84,	// -1 = unscaled, 1 = scaled
	R_sprite_scale_x			=88,	// x-scaler
	R_sprite_scale_y			=92,	// y-scaler
	R_sprite_CLUT				=96,	// -1 for no change, else CLUT to use for sprite if <16bit
	R_sprite_animspd			=100,	// animation speed
	R_sprite_bytewid			=104,	// width of one scanline of sprite in bytes
	R_sprite_tracktop			=108,	// loop point for tracking, or -1 for exit
	R_sprite_was_hit			=112,	// set to +ve if by the collision routine if sprite hit
	R_sprite_coffx				=116,	// offset from center for bounding box (hbox)
	R_sprite_coffy				=120,	// offset from center for bounding box (vbox)
	R_sprite_remhit				=124,	// 1 = remove if hit, else leave onscreen
	R_sprite_bboxlink			=128,	// -1, or pointer to bounding box link data
	R_sprite_hitpoint			=132,	// hitpoints of damage to take before removal
	R_sprite_damage				=136,	// damage to deal
	R_sprite_flash				=140,	// make sprite blink
	R_sprite_gwidth				=144,	// graphics width
	R_sprite_rmotion			=148,	// pointer to RMotion animation
	R_sprite_rmcurfrm			=152,	// RMotion internal
	R_sprite_rmfrm				=156,	// RMotion internal
	R_sprite_userdat1			=160,
	R_sprite_userdat2			=164,
	R_sprite_userdat3			=168,
	R_sprite_userdat4			=172,
	R_sprite_userdat5			=176,
	R_sprite_userdat6			=180,
	R_sprite_userdat7			=184
};
typedef struct _RAPTOR_LIST
{
  int     obj;
  int     active;
  union   {	short x_;	int	x;		};
  union   {	short y_;	int	y;		};
  union   {	short xadd_;int	xadd;   };
  union   {	short yadd_;int	yadd;   };
  int     flip;
  int     width;
  int     height;
  int     vbox;
  int     hbox;
  unsigned int     gfxbase;
  int     framesz;
  int     framedel;
  int     curframe;
  int     maxframe;
  int     animloop;
  int     wrap;
  int     timer;
  int     track;
  int     colchk;
  int     scaled;
  int     scale_x;
  int     scale_y;
  int     CLUT;
  int     animspd;
  int     bytewid;
  int     tracktop;
  int     was_hit;
  int     coffx;
  int     coffy;
  int     remhit;
  int     bboxlink;
  int     hitpoint;
  int     damage;
  int     flash;
  int     gwidth;
  int     rmotion;
  int     rmcurfrm;
  int     rmfrm;
  int     userdat1;
  int     userdat2;
  int     userdat3;
  int     userdat4;
  int     userdat5;
  int     userdat6;
  int     userdat7;
}RAPTOR_LIST;
RAPTOR_LIST *rlist;
extern RAPTOR_LIST *rlist asm("rlist");

/*
particle_tabwidth		equ				44								; bytewidth of a single particle entry in particle database (below)
particle_active			equ				0								; particle in use flag
particle_x				equ				4								; x position in 16.16 format
particle_y				equ 			8								; y position in 16.16 format
particle_angle			equ 			12								; angle (0-511) 0=right
particle_speed			equ				16								; speed of particle 
particle_angspd			equ 			20								; angular speed of particle (+=clockwise/-=anticlock)
particle_colour			equ				24								; initial colour (0-15)
particle_coldec			equ				28								; colour decay rate (in frames)
particle_curdec			equ				32								; counter for above
particle_life			equ				36								; pixel timetime (in frames)
particle_address		equ				40								; position in ram where particle was ploted (used to clear)
*/


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
PAD_3			=		128		, // 3
PAD_PAUSE		=		256	, // Pause
PAD_A			=		512	, // A button
PAD_OPTION		=		2048, // Option
PAD_STAR		=		4096	, // Star 
PAD_7			=		8192	, // 7
PAD_4			=		16384	, // 4
PAD_1			=		32768	, // 1
PAD_0			=		65536	, // 0 (zero)
PAD_8			=		131072	, // 8
PAD_5			=		262144	, // 5
PAD_2			=		524288	, // 2
PAD_B			=		2097152	, // B button
PAD_C			=		33554432	  // C button
};

// Next is the full jaguar.inc, converted into #defines

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//       JAGUAR.INC  Hardware Equates for JAGUAR System
//
//       COPYRIGHT 1992-1995 Atari Computer Corporation
//       UNAUTHORIZED REPRODUCTION, ADAPTATION, DISTRIBUTION,
//       PERFORMANCE OR DISPLAY OF THIS COMPUTER PROGRAM OR
//       THE ASSOCIATED AUDIOVISUAL WORK IS STRICTLY PROHIBITED.
//       ALL RIGHTS RESERVED.
//
// Revision History:
// 9/19/94 - Consolidated several files into first master JAGUAR.INC (SDS)
// 2/16/95 - MF
// 4/24/95 - Added UART Error Control and Mask definitions (NBK)
// 5/16/95 - Added Asynchronous Serial/DAC Synonyms (SDS) 
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
//      GENERIC DEFINES
////////////////////////////////////////////////////////////

enum
{

DRAM	=     0x000000, // First system RAM location
USERRAM	=     0x004000, // Beginning of non-reserved RAM
ENDRAM	=     0x200000, // End of DRAM
INITSTACK	=     ENDRAM-4 ,       // Good place to initialize stack

////////////////////////////////////////////////////////////
//      CPU REGISTERS
////////////////////////////////////////////////////////////

LEVEL0	=     0x100	      ,  // 68000 Level 0 Autovector Interrupt
USER0	=     0x100	      ,  // Pseudonym for LEVEL0

//////////////////////////////////////////////////////////////////////////////////////////////
// Masks for INT1 CPU Interrupt Control Register

C_VIDENA	=     0x0001	 ,       // Enable Video time-base interrupts
C_GPUENA	=     0x0002	 ,       // Enable GPU register-write interrupt
C_OPENA	=     0x0004	     ,   // Enable OP stop-object interrupt
C_PITENA	=     0x0008	 ,       // Enable PIT interrupt
C_JERENA	=     0x0010	 ,       // Enable Jerry interrupt

C_VIDCLR	=     0x0100	,        // Clear pending video interrupts
C_GPUCLR	=     0x0200	,        // Clear pending GPU interrupts
C_OPCLR	=     0x0400	    ,    // Clear pending OP interrupts
C_PITCLR	=     0x0800	,        // Clear pending PIT interrupts
C_JERCLR	=     0x1000	,        // Clear pending Jerry interrupts

////////////////////////////////////////////////////////////
//       JAGUAR REGISTERS
////////////////////////////////////////////////////////////

_BASE	 =     0xF00000   ,      // TOM Internal Register Base

////////////////////////////////////////////////////////////
//       TOM REGISTERS
////////////////////////////////////////////////////////////

HC	=     _BASE+4        ,// Horizontal Count
VC	=     _BASE+6        ,// Vertical Count
LPH	=     _BASE+8        ,// Horizontal Lightpen
LPV	=     _BASE+0x0A      ,// Vertical Lightpen
OB0	=     _BASE+0x10      ,// Current Object Phrase
OB1	=     _BASE+0x12      ,
OB2	=     _BASE+0x14      ,
OB3	=     _BASE+0x16      ,
OLP	=     _BASE+0x20      ,// Object List Pointer
OBF	=     _BASE+0x26      ,// Object Processor Flag
VMODE	=     _BASE+0x28  ,    // Video Mode
BORD1	=     _BASE+0x2A  ,    // Border Color (Red & Green)
BORD2	=     _BASE+0x2C  ,    // Border Color (Blue)
HDB1	=     _BASE+0x38  ,    // Horizontal Display Begin One
HDB2	=     _BASE+0x3A  ,    // Horizontal Display Begin Two
HDE	=     _BASE+0x3C      ,// Horizontal Display End
VS	=     _BASE+0x44      ,// Vertical Sync
VDB	=     _BASE+0x46      ,// Vertical Display Begin
VDE	=     _BASE+0x48      ,// Vertical Display End
VI	=     _BASE+0x4E      ,// Vertical Interrupt
PIT0	=     _BASE+0x50  ,    // Programmable Interrupt Timer (Lo)
PIT1	=     _BASE+0x52  ,    // Programmable Interrupt Timer (Hi)
BG	=     _BASE+0x58      ,// Background Color
                          
INT1	=     _BASE+0xE0  ,    // CPU Interrupt Control Register
INT2	=     _BASE+0xE2  ,    // CPU Interrupt Resume Register
                          
CLUT	=     _BASE+0x400 ,    // Color Lookup Table
                          
LBUFA	=     _BASE+0x800 ,    // Line Buffer A
LBUFB	=     _BASE+0x1000,    // Line Buffer B
LBUFC	=     _BASE+0x1800,    // Line Buffer Current

//////////////////////////////////////////////////////////////////////////
//      OBJECT PROCESSOR EQUATES
//////////////////////////////////////////////////////////////////////////

BITOBJ	=     0    ,
SCBITOBJ	=     1,
GPUOBJ	=     2    ,
BRANCHOBJ	=     3,
STOPOBJ	=     4    ,

O_REFLECT	=     0x00002000,       // OR with top LONG of BITMAP object
O_RMW	=     0x00004000    ,
O_TRANS	=     0x00008000    ,
O_RELEASE	=     0x00010000,

O_DEPTH1	=     (0<<12), // DEPTH Field for BITMAP objects
O_DEPTH2	=     (1<<12),
O_DEPTH4	=     (2<<12),
O_DEPTH8	=     (3<<12),
O_DEPTH16	=     (4<<12),
O_DEPTH32	=     (5<<12),

O_NOGAP	=     (1<<15), // Phrase GAP between image phrases
O_1GAP	=     (2<<15),
O_2GAP	=     (3<<15),
O_3GAP	=     (4<<15),
O_4GAP	=     (5<<15),
O_5GAP	=     (6<<15),
O_6GAP	=     (7<<15),

O_BREQ	=     (0<<14), // CC field of BRANCH objects
O_BRGT	=     (1<<14)    ,
O_BRLT	=     (2<<14)    ,
O_BROP	=     (3<<14)    ,
O_BRHALF	=     (4<<14),

O_STOPINTS	=     0x00000008 ,      // Enable Interrupts in STOP object

////////////////////////////////////////////////////////////////////////////////////////
//      VIDEO INITIALIZATION CONSTANTS
////////////////////////////////////////////////////////////////////////////////////////

NTSC_WIDTH	=     1409	,        // Width of screen in pixel clocks
NTSC_HMID	=     823	,        // Middle of screen in pixel clocks
NTSC_HEIGHT	=     241	,        // Height of screen in scanlines
NTSC_VMID	=     266	,        // Middle of screen in halflines

PAL_WIDTH	=     1381,	        // Same as above for PAL...
PAL_HMID	=     843 ,
PAL_HEIGHT	=     287 ,
PAL_VMID	=     322 ,

////// The following mask will extract the PAL/NTSC flag bit from the
////// CONFIG register. NTSC = Bit Set, PAL = Bit Clear

VIDTYPE	=     0x10,

////// The following are Video Mode register flags

VIDEN	=     0x0001	        ,// Enable video-time base generator

CRY16	=     0x0000	       , // Enable 16-bit CRY mode
RGB24	=     0x0002	       , // Enable 24-bit RGB mode
DIRECT16	=     0x0004	   ,     // Enable 16-bit DIRECT mode
RGB16	=     0x0006	       , // Enable 16-bit RGB mode

GENLOCK	=     0x0008	       , // Not Supported in Jaguar Console
INCEN	=     0x0010	       , // Enable encrustation
BINC	=     0x0020	       , // Select local border color
CSYNC	=     0x0040	       , // Enable composite sync
BGEN	=     0x0080	       , // Clear line buffer to BG
VARMOD	=     0x0100	       , // Enable variable-color resolution mode

PWIDTH1	=     0x0000	       , // Select pixels 1 clock wide
PWIDTH2	=     0x0200	       , // Select pixels 2 clocks wide
PWIDTH3	=     0x0400	       , // Select pixels 3 clocks wide
PWIDTH4	=     0x0600	       , // Select pixels 4 clocks wide
PWIDTH5	=     0x0800	       , // Select pixels 5 clocks wide
PWIDTH6	=     0x0A00	       , // Select pixels 6 clocks wide
PWIDTH7	=     0x0C00	       , // Select pixels 7 clocks wide
PWIDTH8	=     0x0E00	       , // Select pixels 8 clocks wide

////////////////////////////////////////////////////////////
//       GPU REGISTERS
////////////////////////////////////////////////////////////

G_FLAGS		=     _BASE+0x2100,    // GPU Flags
G_MTXC	=     _BASE+0x2104    ,// GPU Matrix Control
G_MTXA	=     _BASE+0x2108    ,// GPU Matrix Address
G_END	=     _BASE+0x210C    ,// GPU Data Organization
G_PC	=     _BASE+0x2110    ,// GPU Program Counter
G_CTRL	=     _BASE+0x2114    ,// GPU Operation Control/Status
G_HIDATA	=     _BASE+0x2118,    // GPU Bus Interface high data
G_REMAIN	=     _BASE+0x211C,    // GPU Division Remainder
G_DIVCTRL	=     _BASE+0x211C,    // GPU Divider control
G_RAM	=     _BASE+0x3000    ,// GPU Internal RAM
G_ENDRAM	=     G_RAM+(4*1024), // 4K bytes

//////
////// GPU Flags Register Equates
//////

G_CPUENA	=     0x00000010 ,      // CPU Interrupt enable bits
G_DSPENA	=     0x00000020 ,      // DSP Interrupt enable bits
G_PITENA	=     0x00000040 ,      // PIT Interrupt enable bits
G_OPENA	=     0x00000080     ,  // Object Processor Interrupt enable bits
G_BLITENA	=     0x00000100 ,      // Blitter Interrupt enable bits
G_CPUCLR	=     0x00000200 ,      // CPU Interrupt clear bits
G_DSPCLR	=     0x00000400 ,      // DSP Interrupt clear bits
G_PITCLR	=     0x00000800 ,      // PIT Interrupt clear bits
G_OPCLR	=     0x00001000     ,  // Object Processor Interrupt clear bits
G_BLITCLR	=     0x00002000 ,      // Blitter Interrupt clear bits

//////
////// GPU Control/Status Register
//////

GPUGO	=     0x00000001     ,  // Start and Stop the GPU
//GPUINT0	=     0x00000004       // generate a GPU type 0 interrupt

G_CPULAT	=     0x00000040,       // Interrupt Latches
G_DSPLAT	=     0x00000080,
G_PITLAT	=     0x00000100,
G_OPLAT	=     0x00000200    ,
G_BLITLAT	=     0x00000400,

////////////////////////////////////////////////////////////
//       BLITTER REGISTERS
////////////////////////////////////////////////////////////

A1_BASE	=     _BASE+0x2200    ,// A1 Base Address
A1_FLAGS	=     _BASE+0x2204,    // A1 Control Flags
A1_CLIP	=     _BASE+0x2208    ,// A1 Clipping Size
A1_PIXEL	=     _BASE+0x220C,    // A1 Pixel Pointer
A1_STEP	=     _BASE+0x2210    ,// A1 Step (Integer Part)
A1_FSTEP	=     _BASE+0x2214,    // A1 Step (Fractional Part)
A1_FPIXEL	=     _BASE+0x2218,    // A1 Pixel Pointer (Fractional)
A1_INC	=     _BASE+0x221C    ,// A1 Increment (Integer Part)
A1_FINC	=     _BASE+0x2220    ,// A1 Increment (Fractional Part)
A2_BASE	=     _BASE+0x2224    ,// A2 Base Address
A2_FLAGS	=     _BASE+0x2228,    // A2 Control Flags
A2_MASK	=     _BASE+0x222C    ,// A2 Address Mask
A2_PIXEL	=     _BASE+0x2230,    // A2 PIXEL
A2_STEP	=     _BASE+0x2234    ,// A2 Step (Integer)

B_CMD	=     _BASE+0x2238   , // Command
B_COUNT	=     _BASE+0x223C   , // Counters
B_SRCD	=     _BASE+0x2240   , // Source Data
B_DSTD	=     _BASE+0x2248   , // Destination Data
B_DSTZ	=     _BASE+0x2250   , // Destination Z
B_SRCZ1	=     _BASE+0x2258   , // Source Z (Integer)
B_SRCZ2	=     _BASE+0x2260   , // Source Z (Fractional)
B_PATD	=     _BASE+0x2268   , // Pattern Data
B_IINC	=     _BASE+0x2270   , // Intensity Increment
B_ZINC	=     _BASE+0x2274   , // Z Increment
B_STOP	=     _BASE+0x2278   , // Collision stop control

B_I3	=     _BASE+0x227C   , // Blitter Intensity 3
B_I2	=     _BASE+0x2280   , // Blitter Intensity 2
B_I1	=     _BASE+0x2284   , // Blitter Intensity 1
B_I0	=     _BASE+0x2288   , // Blitter Intensity 0

B_Z3	=     _BASE+0x228C   , // Blitter Z 3
B_Z2	=     _BASE+0x2290   , // Blitter Z 2
B_Z1	=     _BASE+0x2294   , // Blitter Z 1
B_Z0	=     _BASE+0x2298   , // Blitter Z 0

//////
////// BLITTER Command Register equates
//////

SRCEN	=     0x00000001       ,// d00:	   source data read (inner loop)
SRCENZ	=     0x00000002       ,// d01:	   source Z read (inner loop)
SRCENX	=     0x00000004       ,// d02:	   source data read (realign)
DSTEN	=     0x00000008       ,// d03:	   dest data read (inner loop)
DSTENZ	=     0x00000010       ,// d04:	   dest Z read (inner loop)
DSTWRZ	=     0x00000020       ,// d05:	   dest Z write (inner loop)
CLIP_A1	=     0x00000040       ,// d06:	   A1 clipping enable
UPDA1F	=     0x00000100       ,// d08:	   A1 update step fraction
UPDA1	=     0x00000200       ,// d09:	   A1 update step
UPDA2	=     0x00000400       ,// d10:	   A2 update step
DSTA2	=     0x00000800       ,// d11:	   reverse usage of A1 and A2
GOURD	=     0x00001000       ,// d12:	   enable Gouraud shading
ZBUFF	=     0x00002000       ,// d13:	   polygon Z data updates
TOPBEN	=     0x00004000       ,// d14:	   intensity carry into byte
TOPNEN	=     0x00008000       ,// d15:	   intensity carry into nibble
PATDSEL	=     0x00010000       ,// d16:	   Select pattern data
ADDDSEL	=     0x00020000       ,// d17:	   diagnostic
		        // d18-d20: Z comparator inhibit
ZMODELT	=     0x00040000      , //	     source < destination
ZMODEEQ	=     0x00080000      , //	     source = destination
ZMODEGT	=     0x00100000      , //	     source > destination
		        // d21-d24: Logic function control
LFU_NAN	=     0x00200000       ,//	     !source & !destination
LFU_NA	=     0x00400000       ,//	     !source &	destination
LFU_AN	=     0x00800000       ,//	      source & !destination
LFU_A	=     0x01000000       ,//	      source &	destination

CMPDST	=     0x02000000      , // d25:	   pixel compare pattern & dest
BCOMPEN	=     0x04000000      , // d26:	   bit compare write inhibit
DCOMPEN	=     0x08000000      , // d27:	   data compare write inhibit
BKGWREN	=     0x10000000      , // d28:	   data write back
BUSHI	=     0x20000000      , // d29	   blitter priority
SRCSHADE	=     0x40000000  ,     // d30:	   shade src data w/IINC value

//////
////// The following are ALL 16 possible logical operations of the LFUs
//////

LFU_ZERO	=     0x00000000   ,    // All Zeros
LFU_NSAND	=     0x00200000   ,    // NOT Source AND NOT Destination
LFU_NSAD	=     0x00400000   ,    // NOT Source AND Destination
LFU_NOTS	=     0x00600000   ,    // NOT Source
LFU_SAND	=     0x00800000   ,    // Source AND NOT Destination
LFU_NOTD	=     0x00A00000   ,    // NOT Destination
LFU_N_SXORD	=     0x00C00000   ,    // NOT (Source XOR Destination)
LFU_NSORND	=     0x00E00000   ,    // NOT Source OR NOT Destination
LFU_SAD	=     0x01000000       ,// Source AND Destination
LFU_SXORD	=     0x01200000   ,    // Source XOR Destination
LFU_D	=     0x01400000       ,// Destination
LFU_NSORD	=     0x01600000   ,    // NOT Source OR Destination
LFU_S	=     0x01800000       ,// Source
LFU_SORND	=     0x01A00000   ,    // Source OR NOT Destination
LFU_SORD	=     0x01C00000   ,    // Source OR Destination
LFU_ONE	=     0x01E00000       ,// All Ones

// These are some common combinations with less boolean names

LFU_REPLACE	=     0x01800000  ,     // Source REPLACEs destination
LFU_XOR	=     0x01200000      , // Source XOR with destination
LFU_CLEAR	=     0x00000000  ,     // CLEAR destination

//////
////// BLITTER Flags (A1 or A2) register equates
//////

// Pitch d00-d01:
//       distance between pixel phrases
PITCH1	=     0x00000000       ,// 0 phrase gap
PITCH2	=     0x00000001       ,// 1 phrase gap
PITCH4	=     0x00000002       ,// 3 phrase gap
PITCH3	=     0x00000003       ,// 2 phrase gap

// Pixel d03-d05
//       bit depth (2^n)
PIXEL1	=     0x00000000       ,// n = 0 
PIXEL2	=     0x00000008       ,// n = 1 
PIXEL4	=     0x00000010       ,// n = 2 
PIXEL8	=     0x00000018       ,// n = 3 
PIXEL16	=     0x00000020       ,// n = 4 
PIXEL32	=     0x00000028       ,// n = 5 

// Z offset d06-d08
//       offset from phrase of pixel data from its corresponding
//       Z data phrases
ZOFFS0	=     0x00000000       ,// offset = 0    UNUSED
ZOFFS1	=     0x00000040       ,// offset = 1
ZOFFS2	=     0x00000080       ,// offset = 2
ZOFFS3	=     0x000000C0       ,// offset = 3
ZOFFS4	=     0x00000100       ,// offset = 4
ZOFFS5	=     0x00000140       ,// offset = 5
ZOFFS6	=     0x00000180       ,// offset = 6
ZOFFS7	=     0x000001C0       ,// offset = 7    UNUSED

// Width d09-d14
//       width used for address generation
//       This is a 6-bit floating point value in pixels
//       4-bit unsigned exponent
//       2-bit mantissa with implied 3rd bit of 1
WID2	=     0x00000800       ,// 1.00 X 2^1  ( 4<<9)
WID4	=     0x00001000       ,// 1.00 X 2^2  ( 8<<9)
WID6	=     0x00001400       ,// 1.10 X 2^2  (10<<9)
WID8	=     0x00001800       ,// 1.00 x 2^3  (12<<9)
WID10	=     0x00001A00       ,// 1.01 X 2^3  (13<<9)
WID12	=     0x00001C00       ,// 1.10 X 2^3  (14<<9)
WID14	=     0x00001E00       ,// 1.11 X 2^3  (15<<9)
WID16	=     0x00002000       ,// 1.00 X 2^4  (16<<9)
WID20	=     0x00002200       ,// 1.01 X 2^4  (17<<9)
WID24	=     0x00002400       ,// 1.10 X 2^4  (18<<9)
WID28	=     0x00002600       ,// 1.11 X 2^4  (19<<9)
WID32	=     0x00002800       ,// 1.00 X 2^5  (20<<9)
WID40	=     0x00002A00       ,// 1.01 X 2^5  (21<<9)
WID48	=     0x00002C00       ,// 1.10 X 2^5  (22<<9)
WID56	=     0x00002E00       ,// 1.11 X 2^5  (23<<9)
WID64	=     0x00003000       ,// 1.00 X 2^6  (24<<9)
WID80	=     0x00003200       ,// 1.01 X 2^6  (25<<9)
WID96	=     0x00003400       ,// 1.10 X 2^6  (26<<9)
WID112	=     0x00003600       ,// 1.11 X 2^6  (27<<9)
WID128	=     0x00003800       ,// 1.00 X 2^7  (28<<9)
WID160	=     0x00003A00       ,// 1.01 X 2^7  (29<<9)
WID192	=     0x00003C00       ,// 1.10 X 2^7  (30<<9)
WID224	=     0x00003E00       ,// 1.11 X 2^7  (31<<9)
WID256	=     0x00004000       ,// 1.00 X 2^8  (32<<9)
WID320	=     0x00004200       ,// 1.01 X 2^8  (33<<9)
WID384	=     0x00004400       ,// 1.10 X 2^8  (34<<9)
WID448	=     0x00004600       ,// 1.11 X 2^8  (35<<9)
WID512	=     0x00004800       ,// 1.00 X 2^9  (36<<9)
WID640	=     0x00004A00       ,// 1.01 X 2^9  (37<<9)
WID768	=     0x00004C00       ,// 1.10 X 2^9  (38<<9)
WID896	=     0x00004E00       ,// 1.11 X 2^9  (39<<9)
WID1024	=     0x00005000       ,// 1.00 X 2^10 (40<<9)
WID1280	=     0x00005200       ,// 1.01 X 2^10 (41<<9)
WID1536	=     0x00005400       ,// 1.10 X 2^10 (42<<9)
WID1792	=     0x00005600       ,// 1.11 X 2^10 (43<<9)
WID2048	=     0x00005800       ,// 1.00 X 2^11 (44<<9)
WID2560	=     0x00005A00       ,// 1.01 X 2^11 (45<<9)
WID3072	=     0x00005C00       ,// 1.10 X 2^11 (46<<9)
WID3584	=     0x00005E00       ,// 1.11 X 2^11 (47<<9)

// X add control d16-d17
//       controls the update of the X pointer on each pass
//       round the inner loop
XADDPHR	=     0x00000000       ,// 00 - add phrase width and truncate
XADDPIX	=     0x00010000       ,// 01 - add pixel size (add 1)   
XADD0	=     0x00020000       ,// 10 - add zero
XADDINC	=     0x00030000       ,// 11 - add the increment

// Y add control d18
//       controls the update of the Y pointer within the inner loop.
//       it is overridden by the X add control if they are in add increment
YADD0	=     0x00000000       ,// 00 - add zero
YADD1	=     0x00040000       ,// 01 - add 1

// X sign d19
//       add or subtract pixel size if X add control = 01 (XADDPIX)
XSIGNADD	=     0x00000000  ,     // 0 - add pixel size
XSIGNSUB	=     0x00080000  ,     // 1 - subtract pixel size

// Y sign d20
//       add or subtract pixel size if Y add control = 01 (YADD1)
YSIGNADD	=     0x00000000 ,      // 0 - add 1
YSIGNSUB	=     0x00100000 ,      // 1 - sub 1


////////////////////////////////////////////////////////////
//       JERRY REGISTERS
////////////////////////////////////////////////////////////

JPIT1	=     _BASE+0x10000 ,  // Timer 1 Pre-Scaler
JPIT2	=     _BASE+0x10002 ,  // Timer 1 Divider
JPIT3	=     _BASE+0x10004 ,  // Timer 2 Pre-Scaler
JPIT4	=     _BASE+0x10006 ,  // Timer 2 Divider
                            
J_INT   =	_BASE+0x10020   ,// Jerry Interrupt control (to TOM)
	
JOYSTICK	=     _BASE+0x14000,   // Joystick register and mute
JOYBUTS	=     _BASE+0x14002,   // Joystick register
CONFIG	=     _BASE+0x14002,   // Also has NTSC/PAL
                           
SCLK	=     _BASE+0x1A150,   // SSI Clock Frequency
SMODE	=     _BASE+0x1A154,   // SSI Control
                           
L_I2S	=     _BASE+0x1A148,   // I2S Serial Interface
R_I2S	=     _BASE+0x1A14C,   // I2S Serial Interface
LTXD	=     _BASE+0x1A148,   // Synonyms
RTXD	=     _BASE+0x1A14C,
LRXD	=     _BASE+0x1A148,   // Synonyms
RRXD	=     _BASE+0x1A14C,

R_DAC	=     _BASE+0x1A148,   // Swapped on Purpose!
L_DAC	=     _BASE+0x1A14C,

ASICLK	=     _BASE+0x10034 ,  // Asynchronous Clock Register
ASICTRL	=     _BASE+0x10032 ,  // Asynchronous Control Register
ASISTAT	=     _BASE+0x10032 ,  // Asynchronous Status Register
ASIDATA	=     _BASE+0x10030 ,  // Asynchronous Data Register

//================================================================
// UART Definitions (new in this file as of 24-Apr-95)
//================================================================

// UART control register Masks 
// All unused bits in the control register need to be written as zeros !	      
// With exception of U_CLRERR these are valid for read in ASISTAT, too	    

U_MODD  =	(1<<0),  // selects odd parity
U_MPAREN	=     (1<<1),	// enable parity
U_MTXOPOL	=     (1<<2),	// transmit output polarity (if set: active low)
U_MRXIPOL	=     (1<<3),	// receive input polarity (if set: invert input)
U_MTINTEN	=     (1<<4),	// enable transmitter interrupts
U_MRINTEN	=     (1<<5),	// enable reciever interrupts
U_MCLRERR	=     (1<<6),	// clear error (only use if U_SERIN is 
		// inactive otherwise the UART locks up.
		// By default input is active low. This
		// depends on U_MRXIPOL) 
U_MTXBRK	=     (1<<14), // transmit break

// UART control register (ONLY) bit numbers
U_CLRERR	=     6,	//

// UART control AND status register (SHARED) bit numbers 

U_ODD   =	0,       // selects odd parity
U_PAREN =	1,       // enable parity
U_TXOPOL	=     2,	// transmit output polarity (if set: active low)
U_RXIPOL	=     3,	// receive input polarity (if set: invert input)
U_TINTEN	=     4,	// enable transmitter interrupts
U_RINTEN	=     5,	// enable reciever interrupts
U_TXBRK =	14  ,    // transmit break

// UART status register (ONLY) bit numbers

U_ERR   =	15 ,     // error condition exists
U_SERIN =	13 ,     // state of UART1 Pin (serial input data)
U_OE    =	11 ,     // overrun error
U_FE    =	10 ,     // frame error
U_PE    =	9  ,     // parity error
U_TBE   =	8  ,     // transitter buffer empty
U_RBF   =	7  ,     // receiver buffer full


//////
////// Jerry Interrupt Control Flags
//////

J_EXTENA	=     0x0001,	        // Enable external interrupts
J_DSPENA	=     0x0002,	        // Enable DSP interrupts
J_TIM1ENA	=     0x0004,	        // Enable Timer 1 interrupts
J_TIM2ENA	=     0x0008,	        // Enable Timer 2 interrupts
J_ASYNENA	=     0x0010,	        // Enable Asyncronous Serial interrupts
J_SYNENA	=     0x0020,	        // Enable Syncronous Serial interrupts

J_EXTCLR	=     0x0100,	        // Clear pending external interrupts
J_DSPCLR	=     0x0200,	        // Clear pending DSP interrupts
J_TIM1CLR	=     0x0400,	        // Clear pending Timer 1 interrupts
J_TIM2CLR	=     0x0800,	        // Clear pending Timer 2 interrupts
J_ASYNCLR	=     0x1000,	        // Clear pending Asynch. Serial interrupts
J_SYNCLR	=     0x2000,	        // Clear pending Synch. Serial interrupts

////////////////////////////////////////////////////////////////////
//     JERRY Joystick Equates
////////////////////////////////////////////////////////////////////

// Bits when LONGword is formatted as below (from JOYTEST\JT_LOOP.S).
//
// Format: xxApxxBx RLDU147* xxCxxxox 2580369#

JOY_UP	=     20	 ,       //joypad
JOY_DOWN	=     21 ,
JOY_LEFT	=     22 ,
JOY_RIGHT	=     23 ,
                     
FIRE_A	=     29	 ,       //fire buttons
FIRE_B	=     25     ,
FIRE_C	=     13     ,
OPTION	=     9      ,
PAUSE 	=     28     ,
                     
KEY_STAR	=     16,	        //keypad
KEY_7	=     17     ,
KEY_4	=     18     ,
KEY_1	=     19     ,
                     
KEY_0	=     4      ,
KEY_8	=     5      ,
KEY_5	=     6      ,
KEY_2	=     7      ,
                     
KEY_HASH	=     0  ,
KEY_9	=     1      ,
KEY_6	=     2      ,
KEY_3	=     3      ,

ANY_JOY	=     0x00F00000    ,   // AND joyedge with this...
		        // joypad was pressed if result is not 0
ANY_FIRE	=     0x32002200,       // AND joyedge with this...
		        // A,B C, Option or Pause was pressed
		        // if result is not 0
ANY_KEY	=     0x000F00FF    ,   // AND joyedge with this... 123456789*0#
		        // was pressed if result is not 0

//////
//////     ROM Tables built into Jerry - 128 samples each
//////     16 bit samples sign extended to 32
//////

ROM_TABLE	=     _BASE+0x1D000,   // Base of tables

ROM_TRI =	_BASE+0x1D000  , // A triangle wave
ROM_SINE	=     _BASE+0x1D200,   // Full amplitude SINE
ROM_AMSINE	=     _BASE+0x1D400,   // Linear (?) ramp SINE
ROM_12W =	_BASE+0x1D600  , // SINE(X)+SINE(2*X) : (was ROM_SINE12W)
ROM_CHIRP16	=     _BASE+0x1D800,   // SHORT SWEEP
ROM_NTRI	=     _BASE+0x1DA00,   // Triangle w/NOISE
ROM_DELTA	=     _BASE+0x1DC00,   // Positive spike
ROM_NOISE	=     _BASE+0x1DE00,   // Guess

////////////////////////////////////////////////////////////
//       JERRY Registers (DSP)
////////////////////////////////////////////////////////////

D_FLAGS	=     _BASE+0x1A100  , // DSP Flags
D_MTXC	=     _BASE+0x1A104  , // DSP Matrix Control
D_MTXA	=     _BASE+0x1A108  , // DSP Matrix Address
D_END	=     _BASE+0x1A10C  , // DSP Data Organization
D_PC	=     _BASE+0x1A110  , // DSP Program Counter
D_CTRL	=     _BASE+0x1A114  , // DSP Operation Control/Status
D_MOD		=     _BASE+0x1A118,   // DSP Modulo Instruction Mask
D_REMAIN	=     _BASE+0x1A11C,   // DSP Division Remainder
D_DIVCTRL	=     _BASE+0x1A11C,   // DSP Divider control
D_MACHI		=     _BASE+0x1A120,   // DSP Hi byte of MAC operations
D_RAM	=     _BASE+0x1B000,   // DSP Internal RAM
D_ENDRAM	=     D_RAM+(8*1024), // 8K bytes

//////
////// JERRY Flag Register Equates
//////

D_CPUENA	=     0x00000010,       // CPU Interrupt Enable Bit
D_I2SENA	=     0x00000020,       // I2S Interrupt Enable Bit
D_TIM1ENA	=     0x00000040,       // Timer 1 Interrupt Enable Bit
D_TIM2ENA	=     0x00000080,       // Timer 2 Interrupt Enable Bit
D_EXT0ENA	=     0x00000100,       // External Interrupt 0 Enable Bit
D_EXT1ENA	=     0x00010000,       // External Interrupt 1 Enable Bit

D_CPUCLR	=     0x00000200,       // CPU Interrupt Clear Bit
D_I2SCLR	=     0x00000400,       // I2S Interrupt Clear Bit
D_TIM1CLR	=     0x00000800,       // Timer 1 Interrupt Clear Bit
D_TIM2CLR	=     0x00001000,       // Timer 2 Interrupt Clear Bit
D_EXT0CLR	=     0x00002000,       // External Interrupt 0 Clear Bit
D_EXT1CLR	=     0x00020000,       // External Interrupt 1 Clear Bit

//////
////// JERRY Control/Status Register
//////

DSPGO	=     0x00000001    ,   // Start DSP
DSPINT0	=     0x00000004    ,   // Generate a DSP Interrupt 0
                            
D_CPULAT	=     0x00000040,       // Interrupt Latches
D_I2SLAT	=     0x00000080,
D_TIM1LAT	=     0x00000100,
D_TIM2LAT	=     0x00000200,
D_EXT1LAT	=     0x00000400,
D_EXT2LAT	=     0x00010000,

//////
////// JERRY Modulo Instruction Masks
//////

MODMASK2	=     0xFFFFFFFE,       // 2 byte circular buffer
MODMASK4	=     0xFFFFFFFC,       // 4 byte circular buffer
MODMASK8	=     0xFFFFFFF8,       // 8 byte circular buffer
MODMASK16	=     0xFFFFFFF0,       // 16 byte circular buffer
MODMASK32	=     0xFFFFFFE0,       // 32 byte circular buffer
MODMASK64	=     0xFFFFFFC0,       // 64 byte circular buffer
MODMASK128	=     0xFFFFFF80,       // 128 byte circular buffer
MODMASK256	=     0xFFFFFF00,       // 256 byte circular buffer
MODMASK512	=     0xFFFFFE00,       // 512 byte circular buffer
MODMASK1K	=     0xFFFFFC00,       // 1k circular buffer
MODMASK2K	=     0xFFFFF800,       // 2k circular buffer
MODMASK4K	=     0xFFFFF000,       // 4k circular buffer
MODMASK8K	=     0xFFFFE000,       // 8k circular buffer
MODMASK16K	=     0xFFFFC000,       // 16k circular buffer
MODMASK32K	=     0xFFFF8000,       // 32k circular buffer
MODMASK64K	=     0xFFFF0000,       // 64k circular buffer
MODMASK128K	=     0xFFFE0000,       // 128k circular buffer
MODMASK256K	=     0xFFFC0000,       // 256k circular buffer
MODMASK512K	=     0xFFF80000,       // 512k circular buffer
MODMASK1M	=     0xFFF00000,       // 1M circular buffer
        
////////////////////////////////////////////////////////////////////////////////////////////////////
////// SHARED Equates for TOM (GPU) and JERRY (DSP)
////////////////////////////////////////////////////////////////////////////////////////////////////

//////
////// Control/Status Registers
//////

RISCGO	=     0x00000001    ,   // Start GPU or DSP
CPUINT	=     0x00000002    ,   // Allow the GPU/DSP to interrupt CPU
FORCEINT0	=     0x00000004,       // Cause an INT 0 on GPU or DSP
SINGLE_STEP	=     0x00000008,       // Enter SINGLE_STEP mode
SINGLE_GO	=     0x00000010,       // Execute one instruction

REGPAGE	=     0x00004000    ,   // Register Bank Select
DMAEN	=     0x00008000    ,   // Enable DMA LOAD and STORE

//////
////// Flags Register
//////

ZERO_FLAG	=     0x00000001,       // ALU Zero Flag
CARRY_FLAG	=     0x00000002,       // ALU Carry Flag
NEGA_FLAG	=     0x00000004,       // ALU Negative Flag

IMASK	=     0x00000008    ,   // Interrupt Service Mask

//////
////// Matrix Control Register
//////

MATRIX3	=     0x00000003    ,   // use for 3x1 Matrix
MATRIX4	=     0x00000004    ,   // etc...
MATRIX5	=     0x00000005    ,
MATRIX6	=     0x00000006    ,
MATRIX7	=     0x00000007    ,
MATRIX8	=     0x00000008    ,
MATRIX9	=     0x00000009    ,
MATRIX10	=     0x0000000A,
MATRIX11	=     0x0000000B,
MATRIX12	=     0x0000000C,
MATRIX13	=     0x0000000D,
MATRIX14	=     0x0000000E,
MATRIX15	=     0x0000000F,
	                        
MATROW	=     0x00000000    ,   // Access Matrix by Row
MATCOL	=     0x00000010    ,   // Access Matrix by Column

//////
////// Data Organisation Register
//////

BIG_IO	=     0x00010001    ,   // Use 32-bit registers as big-endian
BIG_PIX	=     0x00020002    ,   // Pixel organisation is big-endian
BIG_INST	=     0x00040004,       // Word program fetches are big-endian

//////
////// Divide Unit Control
//////

DIV_OFFSET	=     0x00000001,       // Divide 16.16 values if set

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////// The following ='s will be removed from JAGUAR.INC in the next release
////// or two. For the most part, they are being removed because they are only
////// useful in Jaguar programming methods we do not recommend.
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

COMPAT	=     1,

//  IF      COMPAT

MOD_MASK	=     _BASE+0x1A118,   // Mask for DSP ADDQ(SUBQ)MOD

//////
////// These registers should never be messed with so these EQUs will
////// be purged in the next revision of JAGUAR.INC. Please don't use them.
//////

MEMCON1 =	_BASE+0     ,   // Memory Configuration Register One
MEMCON2 =	_BASE+2     ,   // Memory Configuration Register Two
OLPLO	=     _BASE+0x20,
OLPHI	=     _BASE+0x22,
ODP	=     _BASE+0x24    ,  // Object Data Pointer
HP	=     _BASE+0x2e    ,  // Horizontal Period
HBB	=     _BASE+0x30    ,  // Horizontal Blanking Begin
HBE	=     _BASE+0x32    ,  // Horizontal Blanking End
HS	=     _BASE+0x34    ,  // Horizontal Sync
HVS	=     _BASE+0x36    ,  // Horizontal Vertical Sync
VP	=     _BASE+0x3e    ,  // Vertical Period
VBB	=     _BASE+0x40    ,  // Vertical Blanking Begin
VBE	=     _BASE+0x42    ,  // Vertical Blanking End
VEB	=     _BASE+0x4a    ,  // Vertical =alization Begin
VEE	=     _BASE+0x4c    ,  // Vertical =alization End
HEQ	=     _BASE+0x54    ,  // Horizontal =alization End
TEST1	=     _BASE+0x56      // Undocumented Register - DO NOT USE
};
//	 ENDIF

//////////////////
//// EOF ////
//////////////////

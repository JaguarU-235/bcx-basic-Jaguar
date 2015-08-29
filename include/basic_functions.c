// C++
#if defined( __cplusplus )
  #define overloaded
  #define C_EXPORT EXTERN_C __declspec(dllexport)
  #define C_IMPORT EXTERN_C __declspec(dllimport)
#else
  #define C_EXPORT __declspec(dllexport)
  #define C_IMPORT __declspec(dllimport)
#endif

#include <ctype.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stddef.h>
#include <stdlib.h>
#include <setjmp.h>
#include <time.h>
#include <stdarg.h>
#include <process.h>
#include "raptor.h"

//
// Function declarations, variables and externs
//

void basicmain() asm ("__Z9basicmainv"); //main function declaration
void colour();
void delay(int x) asm("delay");
int GETPAD(int pad);
void RSETLIST(int list_index);
void RSETOBJ(int spr_index, int offset, int value);
int RGETOBJ(int spr_index, int offset);
int RHIT(int r_sl, int r_sh, int r_tl, int r_th);
void RUPDALL(volatile int update);
void MODPLAY(int module);
void SNDPLAY(int sampleno, int channel);
void RPARTI(int *fx);
void RSETMAP(int x,int y);
void SNDKILL(int v) asm("SNDKILL");
void SNDDELTA(int v,int x) asm("SNDDELTA");
void SNDFREQ(int v,int y) asm("SNDFREQ");
void SNDVOLRESET(int v) asm("SNDVOLRESET");
void SNDPLAYFREQ(int v,int x,int y) asm("SNDPLAYFREQ");
void loadclut(unsigned short *paladdress, short target_clut, short no_of_indices) asm("loadclut");
int fadepal(int clut_no,int fade_cols,int *palette) asm("fadepal");
int fadesingle(short clut_index,short target_col) asm("fadesingle");
extern int U235SE_pad1 asm ("U235SE_pad1");
extern int U235SE_pad2 asm ("U235SE_pad2");
extern int U235SE_music_vol asm ("U235SE_music_vol");
extern int U235SE_sfx_vol asm ("U235SE_sfx_vol");
extern void *RAPTOR_sprite_table asm ("RAPTOR_sprite_table");
extern void *raptor_liststart asm ("raptor_liststart");
extern void *pixel_list asm ("pixel_list");
extern void *raptor_part_inject_addr asm ("raptor_part_inject_addr");
extern int raptor_map_position_x asm ("raptor_map_position_x");
extern int raptor_map_position_y asm ("raptor_map_position_y");
extern void RAPTOR_GPU_COLLISION() asm ("RAPTOR_GPU_COLLISION");
volatile extern int raptor_result asm ("raptor_result");
extern int raptor_sourcel asm ("raptor_sourcel");
extern int raptor_sourceh asm ("raptor_sourceh");
extern int raptor_targetl asm ("raptor_targetl");
extern int raptor_targeth asm ("raptor_targeth");
extern void *RAPTOR_module_list asm ("RAPTOR_module_list");
extern void *RAPTOR_U235setmodule() asm ("RAPTOR_U235setmodule");
extern void *RAPTOR_U235gomodule_stereo() asm ("RAPTOR_U235gomodule_stereo");
extern void *RAPTOR_U235playsample() asm ("RAPTOR_U235playsample");
extern void *RAPTOR_U235stopmodule() asm ("RAPTOR_U235stopmodule");
extern void RAPTOR_wait_frame() asm ("RAPTOR_wait_frame");
extern int RUPDALL_FLAG asm ("RUPDALL_FLAG");
extern void Audio_Play asm ("Audio_Play");
void SNDZEROPLAY(int channel, void *sound_address, int sample_size, int sample_divider, int play_command) asm("SNDZEROPLAY");
short hiscore_check(int score, char *name) asm("hiscore_check");
extern void ZEROPAD() asm("ZEROPAD");
extern void Input_Read asm("Input_Read");
extern void powaset(int spr_index, int offset, int no_of_times, void *array_of_values) asm("powaset");
extern void powadiff(int spr_index, int offset, int no_of_times, void *array_of_values) asm("powadiff");
extern void powazap(int spr_index, int offset, int no_of_times, int value) asm("powazap");
extern void powabset(int spr_index, int offset, int no_of_times, void *array_of_values, int skip_offset) asm("powabset");
extern void powabdiff(int spr_index, int offset, int no_of_times, void *array_of_values, int skip_offset) asm("powabdiff");
extern void powabzap(int spr_index, int offset, int no_of_times, int value, int skip_offset) asm("powabzap");

unsigned char plot_colour=0;
int errno=0; //needed by some libc/libm functions
double y=0; //needed by some libc/libm functions
double yt2=0; //needed by some libc/libm functions
char *basic_r_buffer=(char *)0;
struct exception xcpt={0,0,0,0,0}; //needed by some libc/libm functions
volatile int basic_r_xpos=0;
volatile int basic_r_ypos=0;
int basic_r_indx=0;
int basic_r_size=0;
extern unsigned int *U235SE_sfxplaylist_ptr asm ("U235SE_sfxplaylist_ptr");
static unsigned int U235_commands[2]={0,0};
extern long raptor_partbuf_x asm("raptor_partbuf_x");
extern long raptor_partbuf_y asm("raptor_partbuf_y");
extern void RBRA(long object_number, long branch_type, long ypos, long object_to_branch_if_taken) asm("RBRA");
extern void bin2asc(long number, long no_digits, char *string) asm("bin2asc");

//Warning: do NOT change the order of these 5 variables!
unsigned long zero_left_pad asm("zero_left_pad")=0;
unsigned long zero_right_pad asm("zero_right_pad")=0;
long zero_mousex_delta asm("zero_mousex_delta")=0;
long zero_mousey_delta asm("zero_mousey_delta")=0;
long zero_rotary_delta asm("zero_rotary_delta")=0;


//
// And now, teh c0d3!!!111
//

// -----------------------------------------------------------------------------
void powabzap(int spr_index, int offset, int no_of_times, int value, int skip_offset)
{
	__asm__ ("\tmovem.l d0/d1/a0,-(sp)\n\t"
            "|movem.l 8(a6),d0/d1/d2/a0\n\t"
			"|move.l %d0,%d3 |multiply by 188, courtesy of gcc\n\t"
			"|add.l %d3,%d3  |(nope, not checking if there's a faster way, suck it up :P\n\t"
			"|add.l %d0,%d3\n\t"
			"|lsl.l #4,%d3\n\t"
			"|sub.l %d0,%d3\n\t"
			"|add.l %d3,%d3\n\t"
			"|add.l %d3,%d3\n\t"
			"|add.l d1,d3\n\t"
			"|lea raptor_liststart,a1\n\t"
			"|lea (a1,d3.l),a1\n\t"
			"|subq.l #1,d2 |no of iterations-1 for dbra\n"
			"|powaloop2:\t move.l (a0)+,d3 \n\t"
			"|add.l d3,(a1) \n\t"
			"|lea 188(a1),a1\n\t"
			"|dbra d2,powaloop2\n\t"
	"move.l 8(%fp),%a0\n\t"
	"move.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"lsl.l #4,%d0\n\t"
	"sub.l %a0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l 12(%fp),%d0\n\t"
	"move.l raptor_liststart,%a0\n\t"
	"lea (a0,d0.l),a0\n\t"
	"move.l 20(a6),d0\n\t"
	"move.l 16(a6),d1\n\t"
	"subq.w #1,d1\n\t"
        "move.l 24(a6),d2\n\t"
	"powaloop6:\n\t"
	"move.l d0,(a0)\n\t"
	"add.l d2,a0\n\t"
	"dbra d1,powaloop6\n\t"
            "movem.l (sp)+,d0/d1/a0\n\t");
}
// -----------------------------------------------------------------------------
void powabdiff(int spr_index, int offset, int no_of_times, void *array_of_values, int skip_offset)
{
	__asm__ ("\tmovem.l d0/d1/d2/a0/a1,-(sp)\n\t"
            "|movem.l 8(a6),d0/d1/d2/a0\n\t"
			"|move.l %d0,%d3 |multiply by 188, courtesy of gcc\n\t"
			"|add.l %d3,%d3  |(nope, not checking if there's a faster way, suck it up :P\n\t"
			"|add.l %d0,%d3\n\t"
			"|lsl.l #4,%d3\n\t"
			"|sub.l %d0,%d3\n\t"
			"|add.l %d3,%d3\n\t"
			"|add.l %d3,%d3\n\t"
			"|add.l d1,d3\n\t"
			"|lea raptor_liststart,a1\n\t"
			"|lea (a1,d3.l),a1\n\t"
			"|subq.l #1,d2 |no of iterations-1 for dbra\n"
			"|powaloop2:\t move.l (a0)+,d3 \n\t"
			"|add.l d3,(a1) \n\t"
			"|lea 188(a1),a1\n\t"
			"|dbra d2,powaloop2\n\t"
	"move.l 8(%fp),%a0\n\t"
	"move.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"lsl.l #4,%d0\n\t"
	"sub.l %a0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l 12(%fp),%d0\n\t"
	"move.l raptor_liststart,%a0\n\t"
	"lea (a0,d0.l),a0\n\t"
	"move.l 20(a6),a1\n\t"
	"move.l 16(a6),d1\n\t"
	"subq.w #1,d1\n\t"
        "move.l 24(a6),d0\n\t"
	"powaloop5:\tmove.l (a1)+,d2\n\t"
	"add.l d2,(a0)\n\t"
	"add.l d0,a0\n\t"
	"dbra d1,powaloop5\n\t"
            "movem.l (sp)+,d0/d1/d2/a0/a1\n\t");
}
// -----------------------------------------------------------------------------
void powabset(int spr_index, int offset, int no_of_times, void *array_of_values, int skip_offset)
{
	__asm__ ("\tmovem.l d0/d1/a0/a1,-(sp)\n\t"
            "|movem.l 8(a6),d0/d1/d2/a0\n\t"
			"||move.l %d0,%d3 |multiply by 188, courtesy of gcc\n\t"
			"||add.l %d3,%d3  |(nope, not checking if there's a faster way, suck it up :P\n\t"
			"||add.l %d0,%d3\n\t"
			"||lsl.l #4,%d3\n\t"
			"||sub.l %d0,%d3\n\t"
			"||add.l %d3,%d3\n\t"
			"||add.l %d3,%d3\n\t"
			"|mulu #188,d0\n\t"
			"|add.l d1,d0\n\t"
			"|lea raptor_liststart,a1\n\t"
			"|lea (a1,d0.l),a1\n\t"
			"||subq.l #1,d2 |no of iterations-1 for dbra\n"
			"||powaloop:\t move.l (a0)+,(a1) \n\t"
			"||lea 188(a1),a1\n\t"
			"||dbra d2,powaloop\n\t"
			"|move.l (a0),(a1)\n\t"
	"move.l 8(%fp),%a0\n\t"
	"move.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"lsl.l #4,%d0\n\t"
	"sub.l %a0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l 12(%fp),%d0\n\t"
	"move.l raptor_liststart,%a0\n\t"
	"add.l d0,a0\n\t"
	"move.l 20(a6),a1\n\t"
	"move.l 16(a6),d1\n\t"
	"subq.w #1,d1\n\t"
        "move.l 24(a6),d0\n\t"
	"|move.l (a1),(%a0,%d0.l)\n\t"
	"powaloop4:\tmove.l (a1)+,(a0)\n\t"
	"add.l d0,a0\n\t"
	"dbra d1,powaloop4\n\t"

            "movem.l (sp)+,d0/d1/a0/a1\n\t");
}
// -----------------------------------------------------------------------------
void powazap(int spr_index, int offset, int no_of_times, int value)
{
	__asm__ ("\tmovem.l d0/d1/a0,-(sp)\n\t"
            "|movem.l 8(a6),d0/d1/d2/a0\n\t"
			"|move.l %d0,%d3 |multiply by 188, courtesy of gcc\n\t"
			"|add.l %d3,%d3  |(nope, not checking if there's a faster way, suck it up :P\n\t"
			"|add.l %d0,%d3\n\t"
			"|lsl.l #4,%d3\n\t"
			"|sub.l %d0,%d3\n\t"
			"|add.l %d3,%d3\n\t"
			"|add.l %d3,%d3\n\t"
			"|add.l d1,d3\n\t"
			"|lea raptor_liststart,a1\n\t"
			"|lea (a1,d3.l),a1\n\t"
			"|subq.l #1,d2 |no of iterations-1 for dbra\n"
			"|powaloop2:\t move.l (a0)+,d3 \n\t"
			"|add.l d3,(a1) \n\t"
			"|lea 188(a1),a1\n\t"
			"|dbra d2,powaloop2\n\t"
	"move.l 8(%fp),%a0\n\t"
	"move.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"lsl.l #4,%d0\n\t"
	"sub.l %a0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l 12(%fp),%d0\n\t"
	"move.l raptor_liststart,%a0\n\t"
	"lea (a0,d0.l),a0\n\t"
	"move.l 20(a6),d0\n\t"
	"move.l 16(a6),d1\n\t"
	"subq.w #1,d1\n\t"
	"powaloop3:\n\t"
	"move.l d0,(a0)\n\t"
	"lea 188(a0),a0\n\t"
	"dbra d1,powaloop3\n\t"
            "movem.l (sp)+,d0/d1/a0\n\t");
}
// -----------------------------------------------------------------------------
void powadiff(int spr_index, int offset, int no_of_times, void *array_of_values)
{
	__asm__ ("\tmovem.l d0/d1/d2/d3/a0/a1,-(sp)\n\t"
            "|movem.l 8(a6),d0/d1/d2/a0\n\t"
			"|move.l %d0,%d3 |multiply by 188, courtesy of gcc\n\t"
			"|add.l %d3,%d3  |(nope, not checking if there's a faster way, suck it up :P\n\t"
			"|add.l %d0,%d3\n\t"
			"|lsl.l #4,%d3\n\t"
			"|sub.l %d0,%d3\n\t"
			"|add.l %d3,%d3\n\t"
			"|add.l %d3,%d3\n\t"
			"|add.l d1,d3\n\t"
			"|lea raptor_liststart,a1\n\t"
			"|lea (a1,d3.l),a1\n\t"
			"|subq.l #1,d2 |no of iterations-1 for dbra\n"
			"|powaloop2:\t move.l (a0)+,d3 \n\t"
			"|add.l d3,(a1) \n\t"
			"|lea 188(a1),a1\n\t"
			"|dbra d2,powaloop2\n\t"
	"move.l 8(%fp),%a0\n\t"
	"move.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"lsl.l #4,%d0\n\t"
	"sub.l %a0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l 12(%fp),%d0\n\t"
	"move.l raptor_liststart,%a0\n\t"
	"lea (a0,d0.l),a0\n\t"
	"move.l 20(a6),a1\n\t"
	"move.l 16(a6),d1\n\t"
	"subq.w #1,d1\n\t"
	"powaloop2:\tmove.l (a1)+,d3\n\t"
	"add.l d3,(a0)\n\t"
	"lea 188(a0),a0\n\t"
	"dbra d1,powaloop2\n\t"
            "movem.l (sp)+,d0/d1/d2/d3/a0/a1\n\t");
}
// -----------------------------------------------------------------------------
void powaset(int spr_index, int offset, int no_of_times, void *array_of_values)
{
	__asm__ ("\tmovem.l d0/d1/d2/d3/a0/a1,-(sp)\n\t"
            "|movem.l 8(a6),d0/d1/d2/a0\n\t"
			"||move.l %d0,%d3 |multiply by 188, courtesy of gcc\n\t"
			"||add.l %d3,%d3  |(nope, not checking if there's a faster way, suck it up :P\n\t"
			"||add.l %d0,%d3\n\t"
			"||lsl.l #4,%d3\n\t"
			"||sub.l %d0,%d3\n\t"
			"||add.l %d3,%d3\n\t"
			"||add.l %d3,%d3\n\t"
			"|mulu #188,d0\n\t"
			"|add.l d1,d0\n\t"
			"|lea raptor_liststart,a1\n\t"
			"|lea (a1,d0.l),a1\n\t"
			"||subq.l #1,d2 |no of iterations-1 for dbra\n"
			"||powaloop:\t move.l (a0)+,(a1) \n\t"
			"||lea 188(a1),a1\n\t"
			"||dbra d2,powaloop\n\t"
			"|move.l (a0),(a1)\n\t"
	"move.l 8(%fp),%a0\n\t"
	"move.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"add.l %a0,%d0\n\t"
	"lsl.l #4,%d0\n\t"
	"sub.l %a0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l %d0,%d0\n\t"
	"add.l 12(%fp),%d0\n\t"
	"move.l raptor_liststart,%a0\n\t"
	"lea (a0,d0.l),a0\n\t"
	"move.l 20(a6),a1\n\t"
	"move.l 16(a6),d1\n\t"
	"subq.w #1,d1\n\t"
	"|move.l (a1),(%a0,%d0.l)\n\t"
	"powaloop:\tmove.l (a1)+,(a0)\n\t"
	"lea 188(a0),a0\n\t"
	"dbra d1,powaloop\n\t"

            "movem.l (sp)+,d0/d1/d2/d3/a0/a1\n\t");
}
// -----------------------------------------------------------------------------
void bin2asc(long number, long no_digits, char *string)
{
	__asm__ ("\tmovem.l d1/d4/a0,-(sp)\n\t"
            "movem.l 8(a6),d1/d4/a0\n\t"
            "jsr RAPTOR_HEXtoDEC\n\t"
			"clr.b 1(a0,d4.w)    |hex2dec expects digits-1 in d4 and we want to zero out the byte after the last digit\n\t"
            "movem.l (sp)+,d1/d4/a0\n\t");
}
// -----------------------------------------------------------------------------
void RBRA(long object_number, long branch_type, long ypos, long object_to_branch_if_taken)
{
	__asm__ ("\tmovem.l d0-d3/a6,-(sp) |lolol\n\t"
            "movem.l 8(a6),d0-d3\n\t"    
            "jsr RAPTOR_setup_object_bra\n\t"
            "movem.l (sp)+,d0-d3/a6    |lolol\n\t");
}
// -----------------------------------------------------------------------------
void ZEROPAD()
{
	__asm__ ("\tmovem.l d0-d4,-(sp)\n\t"
                "jsr Input_Read\n\t"
            "movem.l d0-d4,zero_left_pad\n\t"    
            "movm.l (sp)+,d0-d4\n\t");
}
// -----------------------------------------------------------------------------
short hiscore_check(int score, char *name)
{
	__asm__ ("\tmove.l 8(a6),d0\n\t"
	"move.l 12(a6),a0\n\t"
	"jsr RAPTOR_chk_highscores\n\t");
}
// -----------------------------------------------------------------------------
void SNDZEROPLAY(int channel, void *sound_address, int sample_size, int sample_divider, int play_command)
{
__asm(""
	"movem.l d0/a0/d1/d2/d3,-(a7)\n\t"
	"move.l	8(a6),d0\n\t"
	"move.l	12(a6),a0\n\t"
	"move.l	16(a6),d1\n\t"
	"move.l	20(a6),d2\n\t"
	"move.l	24(a6),d3\n\t"
	"jsr		Audio_Play\n\t"
	"movem.l (sp)+,d0/a0/d1/d2/d3");
}
// -----------------------------------------------------------------------------
int fadesingle(short clut_index,short target_col)
{
	__asm__ ("\tmove.l d1,-(a7)\n\t"
	"move.l 10(a6),d1\n\t"
	"move.l 8(a6),d0\n\t"
	"jsr RAPTOR_fade_clutindex\n\t"
	"move.l (a7)+,d1");	
}
// -----------------------------------------------------------------------------
int fadepal(int clut_no,int fade_cols,int *palette)
{
	__asm__ ("\tmovem.l d7/a1,-(a7)\n\t"
	"move.l 16(a6),a1\n\t"
	"move.l 12(a6),d7\n\t"
	"move.l 8(a6),d0\n\t"
	"jsr RAPTOR_fade_clut\n\t"
	"movem.l (a7)+,d7/a1");
}
// -----------------------------------------------------------------------------
void loadclut(unsigned short *paladdress, short target_clut, short no_of_indices)
{
	short i;
	unsigned short *src=(unsigned short *)paladdress;
	unsigned short *dest=(unsigned short *)(0xf00400+target_clut*(16*2));
	for (i=0;i<no_of_indices;i++)
		*dest++=*src++;
}
// -----------------------------------------------------------------------------
void SNDKILL(int v)
{
	U235_commands[0]=v<<4|1;
	U235SE_sfxplaylist_ptr=&U235_commands[0];
}
// -----------------------------------------------------------------------------
void SNDDELTA(int v,int x)
{
	U235_commands[0]=x<<8|x<<v|3;
	U235SE_sfxplaylist_ptr=&U235_commands[0];
}
// -----------------------------------------------------------------------------
void SNDFREQ(int v,int y)
{
	U235_commands[0]=y<<16|v<<4|7;
	U235SE_sfxplaylist_ptr=&U235_commands[0];
}
// -----------------------------------------------------------------------------
void SNDPLAYFREQ(int v,int x,int y)
{
	U235_commands[0]=y<<16|x<<8|v<<4|4;
	U235SE_sfxplaylist_ptr=&U235_commands[0];
}
// -----------------------------------------------------------------------------
void SNDVOLRESET(int v)
{
	U235_commands[0]=v<<4|8;
	U235SE_sfxplaylist_ptr=&U235_commands[0];
}
// -----------------------------------------------------------------------------
void plot(short plot_px, short plot_py)
{
__asm__ ("movem.l	d0-d4/a0,-(a6)\n\t"
"			|move.w	-2(a6),d0\n\t"
"			|move.w	-4(a6),d1\n\t"
"			exg d0,d1\n\t"
"			move.b	_plot_colour,d2\n\t"
"			moveq	#15,d4\n\t"
"			btst	#0,d0\n\t"
"			beq.s	plot_even\n\t"
"			lsr.b	#4,d2\n\t"
"			moveq	#-16,d4\n\t"
"plot_even:		asr.w	#1,d0\n\t"
"			lea		RAPTOR_particle_gfx,a0\n\t"
"			add.w	d0,a0\n\t"
"			move.w	d1,d3\n\t"
"			asl.w	#5,d3\n\t"
"			asl.w	#7,d1\n\t"
"			add.w	d1,a0\n\t"
"			add.w	d3,a0\n\t"
"			and.b	d4,(a0)\n\t"
"			or.b	d2,(a0)\n\t"
"			movem.l	(a6)+,d0-d4/a0");
}
// -----------------------------------------------------------------------------
int GETPAD(int pad)
{
	if (pad==1)
		return U235SE_pad1;
	else if (pad==2)
		return U235SE_pad2;
	else
		return 0;
}
// -----------------------------------------------------------------------------
void RSETLIST(int list_index)
{
	//static int d0 asm ("d0")=list_index;
__asm__ ("movem.l	d0-d7/a0-a6,-(a7)\n\t"
"			move.l 8+60(sp),d0\n\t"
"    		jsr		RAPTOR_setlist\n\t"
"			movem.l	(a7)+,d0-d7/a0-a6");
}
// -----------------------------------------------------------------------------
int RHIT(int r_sl, int r_sh, int r_tl, int r_th)
{
	__asm__ ("	movem.l	d1-d7/a0-a6,-(a7)");
	raptor_result=0;
	raptor_sourcel=r_sl;
	raptor_sourceh=r_sh;
	raptor_targetl=r_tl;
	raptor_targeth=r_th;
	__asm__ ("	lea		RAPTOR_GPU_COLLISION,a0");
	__asm__ ("	jsr 	RAPTOR_call_GPU_code");
	__asm__ ("	movem.l	(a7)+,d1-d7/a0-a6");
	return raptor_result;
}
// -----------------------------------------------------------------------------
void RSETOBJ(int spr_index, int offset, int value)
{
	char *a0;
	a0=(char *)raptor_liststart;
	a0=a0+offset+(spr_index*188);
	*(int *)a0=value;
}
// -----------------------------------------------------------------------------
int RGETOBJ(int spr_index, int offset)
{
	char *a0;
	a0=(char *)raptor_liststart;
	a0=a0+offset+(spr_index*188);
	return *(int *)a0;
}
// -----------------------------------------------------------------------------
void RUPDALL(volatile int update)
{
	if (update==0) //NOW
	{
		if (RUPDALL_FLAG!=4)
{
__asm__ ("\tmovem.l	d0-d7/a0-a6,-(a7)\n\t"
"jsr		RAPTOR_wait_frame_UPDATE_ALL\n\t"
"movem.l	(a7)+,d0-d7/a0-a6");
}
		else
		{
			RAPTOR_wait_frame();
			RUPDALL_FLAG=0;
		}
	}
	else if (update==1) //VBL
	{
		RUPDALL_FLAG=4;
	}
	else if (update==2) //Remove VBL
	{
		RUPDALL_FLAG=0;
	}
}
// -----------------------------------------------------------------------------
void delay(int x)
{int delayloopcounter;for (delayloopcounter=0;delayloopcounter<x;delayloopcounter++) RUPDALL(0);}
// -----------------------------------------------------------------------------
void MODPLAY(int module)
{
	if (module>=0)
	{
__asm__("move.l 8(a6),a0\n\t"
"jsr RAPTOR_U235setmodule\n\t"
"jsr RAPTOR_U235gomodule_stereo");
	}
	else
	{
		RAPTOR_U235stopmodule();
	}
}
// -----------------------------------------------------------------------------
void SNDPLAY(int sampleno,int channel)
{
  	volatile int s=sampleno;
  	volatile int c=channel;
  __asm__ ("\tmove.l 8(a6),d0\n\t"
  "move.l 12(a6),d1\n\t"
  "movem.l d2-d7/a0-a5,-(sp)\n\t"
  "jsr RAPTOR_U235playsample\n\t"
  "movem.l (sp)+,d2-d7/a0-a5");
}
// -----------------------------------------------------------------------------
void MODVOL(int volume)
{
    U235SE_music_vol=volume;
}
// -----------------------------------------------------------------------------
void SNDVOL(int volume)
{
    U235SE_sfx_vol=volume;
}
// -----------------------------------------------------------------------------
void RPARTI(int *fx)
{
	//fx is an array of longs - 6 rows and
	//as many columns as the user wants
	//first column should be:
	//zzz,zzz,zzz,no_particles,x,y (zzz=don't care)
	*(int *)&raptor_part_inject_addr=(int)&fx[3];
	__asm__ ("movem.l	d0-a6,-(a7)\n\t"
"lea		RAPTOR_particle_injection_GPU,a0\n\t"
"jsr 	RAPTOR_call_GPU_code\n\t"
"movem.l	(a7)+,d0-a6");
}
// -----------------------------------------------------------------------------
void RSETMAP(int x,int y)
{
	raptor_map_position_x=x;
	raptor_map_position_y=y;
	__asm__ ("	movem.l	d0-d7/a0-a6,-(a7)\n\t"
"jsr		RAPTOR_map_set_position\n\t"
"movem.l	(a7)+,d0-d7/a0-a6");
}
// -----------------------------------------------------------------------------
void RLOCATE(int x, int y)
{
	basic_r_xpos=x;
	basic_r_ypos=y;
}
// -----------------------------------------------------------------------------
void RPRINT()
{
	//volatile char *rprint_buffer __asm__ ("a0")=string;
  	__asm__ ("movem.l	d0-d7/a0-a6,-(a7)\n\t"
		  "move.l	_basic_r_xpos,d0\n\t"
		  "move.l	_basic_r_ypos,d1\n\t"
		  "move.l	_basic_r_indx,d2\n\t"
		  "move.l	_basic_r_size,d3\n\t"
		  "move.l	_basic_r_buffer,a0\n\t"
		  "jsr		RAPTOR_print\n\t"
		  "movem.l	(a7)+,d0-d7/a0-a6\n\t");
	
}
// -----------------------------------------------------------------------------
void cls(void)
{
    __asm__ ("movem.l d0/d1/a0,-(a7)\n\t"
"              lea RAPTOR_particle_gfx,a0\n\t"
"              move.l raptor_partbuf_x,d0\n\t"
"              move.l raptor_partbuf_y,d1\n\t"
"              mulu d1,d0\n\t"
"              lsr.l #3,d0\n\t"
"              subq.w #1,d0\n\t"
"              |used to be: move.w #(320*240)/2/4-1,d0\n\t"
"              moveq #0,d1\n\t"
"clr_loop:     move.l d1,(a0)+\n\t"
"              dbra d0,clr_loop\n\t"
"              movem.l (a7)+,d0/d1/a0\n\t");      
              
}

// *********************************************************************
// Created with BCX32 - BASIC To C/C++ Translator (V) 6.00 (2009/06/02)
//                 BCX (c) 1999 - 2009 by Kevin Diggins
// *********************************************************************
//              Translated for compiling with a C Compiler
// *********************************************************************
//#include <windows.h>    // Win32 Header File 

// ***************************************************
// Compiler Defines
// ***************************************************

// C++
#if defined( __cplusplus )
  #define overloaded
  #define C_EXPORT EXTERN_C __declspec(dllexport)
  #define C_IMPORT EXTERN_C __declspec(dllimport)
#else
  #define C_EXPORT __declspec(dllexport)
  #define C_IMPORT __declspec(dllimport)
#endif

// Open Watcom defs
#if defined( __WATCOM_CPLUSPLUS__ ) || defined( __TINYC__ )
  #define atanl atan
  #define sinl  sin
  #define cosl  cos
  #define tanl  tan
  #define asinl asin
  #define acosl acos
  #define log10l log10
  #define logl   log
  #define _fcloseall fcloseall
#endif

// Borland C++ 5.5.1 defs - bcc32.exe
#if defined( __BCPLUSPLUS__ )
  // ===== Borland Libraries ==========
  #include <dos.h>
  #pragma comment(lib,"import32.lib")
  #pragma comment(lib,"cw32.lib")
  // ==================================
#endif

// Microsoft VC++
#ifndef DECLSPEC_UUID
  #if (_MSC_VER >= 1100) && defined ( __cplusplus )
    #define DECLSPEC_UUID(x)    __declspec(uuid(x))
  #else
    #define DECLSPEC_UUID(x)
  #endif
#endif


#if !defined( __LCC__ )
// *************************************************
// Instruct Linker to Search Object/Import Libraries
// *************************************************
#pragma comment(lib,"kernel32.lib")
#pragma comment(lib,"user32.lib")
#pragma comment(lib,"gdi32.lib")
#pragma comment(lib,"comctl32.lib")
#pragma comment(lib,"advapi32.lib")
#pragma comment(lib,"winspool.lib")
#pragma comment(lib,"shell32.lib")
#pragma comment(lib,"ole32.lib")
#pragma comment(lib,"oleaut32.lib")
#pragma comment(lib,"uuid.lib")
#pragma comment(lib,"odbc32.lib")
#pragma comment(lib,"odbccp32.lib")
#pragma comment(lib,"winmm.lib")
#pragma comment(lib,"comdlg32.lib")
#pragma comment(lib,"imagehlp.lib")
#pragma comment(lib,"version.lib")
#else
#pragma lib <winspool.lib>
#pragma lib <shell32.lib>
#pragma lib <ole32.lib>
#pragma lib <oleaut32.lib>
#pragma lib <uuid.lib>
#pragma lib <odbc32.lib>
#pragma lib <odbccp32.lib>
#pragma lib <winmm.lib>
#pragma lib <imagehlp.lib>
#pragma lib <version.lib>
// *************************************************
// End of Object/Import Libraries To Search
// *************************************************
#endif
//#include <windowsx.h>   // Win32 Header File 
//#include <commctrl.h>   // Win32 Header File 
//#include <commdlg.h>    // Win32 Header File 
//#include <mmsystem.h>   // Win32 Header File 
//#include <shellapi.h>   // Win32 Header File 
//#include <shlobj.h>     // Win32 Header File 
//#include <richedit.h>   // Win32 Header File 
//#include <wchar.h>      // Win32 Header File 
//#include <objbase.h>    // Win32 Header File 
//#include <ocidl.h>      // Win32 Header File 
//#include <winuser.h>    // Win32 Header File 
//#include <olectl.h>     // Win32 Header File 
//#include <oaidl.h>      // Win32 Header File 
//#include <ole2.h>       // Win32 Header File 
//#include <oleauto.h>    // Win32 Header File 
//#include <conio.h>
//#include <direct.h>
#include <ctype.h>
//#include <io.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stddef.h>
#include <stdlib.h>
#include <setjmp.h>
#include <time.h>
#include <stdarg.h>
#include <process.h>

// *************************************************
//            User Global Variables
// *************************************************

extern int U235SE_pad1 asm ("U235SE_pad1");
extern int U235SE_pad2 asm ("U235SE_pad2");
extern void *RAPTOR_sprite_table asm ("RAPTOR_sprite_table");
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
unsigned char plot_colour=0;
extern int RUPDALL_FLAG asm ("RUPDALL_FLAG");
int U235PAD(int pad);
void RSETLIST(int list_index);
void RSETOBJ(int spr_index, int offset, int value);
int RGETOBJ(int spr_index, int offset);
int RHIT(int r_sl, int r_sh, int r_tl, int r_th);
void RUPDALL(volatile int update);
void U235MOD(int module);
void U235SND(int sampleno, int channel);
void RPARTI(int fx,int x,int y);
void RSETMAP(int x,int y);
void colour();
int errno=0; //needed by some libc/libm functions
void basicmain() asm ("__Z9basicmainv"); //main function declaration
double y=0; //needed by some libc/libm functions
double yt2=0; //needed by some libc/libm functions
char *basic_r_buffer=(char *)0;
//struct exception {
//	exception_type	type;	/* exception type */
//	const char	*name;	/* function in which it occured */
//	double		arg1;	/* an arg */
//	double		arg2;	/* another arg */
//	double		retval; /* val to return */
//};
struct exception xcpt={0,0,0,0,0}; //needed by some libc/libm functions
volatile int basic_r_xpos=0;
volatile int basic_r_ypos=0;
int basic_r_indx=0;
int basic_r_size=0;

// -----------------------------------------------------------------------------
void plot(short plot_px, short plot_py)
{
__asm__ ("movem.l	d0-d3/a0,-(a6)\n\t"
"			|move.w	-2(a6),d0\n\t"
"			|move.w	-4(a6),d1\n\t"
"			exg d0,d1\n\t"
"			move.b	_plot_colour,d2\n\t"
"			btst	#0,d0\n\t"
"			beq.s	plot_even\n\t"
"			lsr.b	#4,d2\n\t"
"plot_even:		asr.w	#1,d0\n\t"
"			lea		RAPTOR_particle_gfx,a0\n\t"
"			add.w	d0,a0\n\t"
"			move.w	d1,d3\n\t"
"			asl.w	#5,d3\n\t"
"			asl.w	#7,d1\n\t"
"			add.w	d1,a0\n\t"
"			add.w	d3,a0\n\t"
"			or.b	d2,(a0)\n\t"
"			movem.l	(a6)+,d0-d3/a0");
}
// -----------------------------------------------------------------------------
int U235PAD(int pad)
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
__asm__ ("movem.l	d0-d3/a0,-(a7)\n\t"
"			move.l 8(sp),d0\n\t"
"    		jsr		RAPTOR_setlist\n\t"
"			movem.l	(a7)+,d0-d3/a0");
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
	a0=(char *)&RAPTOR_sprite_table;
	a0=a0+offset+(spr_index*188);
	*(int *)a0=value;
}
// -----------------------------------------------------------------------------
int RGETOBJ(int spr_index, int offset)
{
	char *a0;
	a0=(char *)&RAPTOR_sprite_table;
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
__asm__ ("	movem.l	d0-d7/a0-a6,-(a7)\n\t"
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
void U235MOD(int module)
{
	if (module>=0)
	{
__asm__("move.l 8(a6),d0\n\t"
"move.l %d0,%a0\n\t"
"add.l %d0,%a0\n\t"
"move.l %a0,%a1\n\t"
"add.l #RAPTOR_module_list,%a1\n\t"
"move.l (%a1,%a0.l),%a0\n\t"
"jsr RAPTOR_U235setmodule\n\t"
"jsr RAPTOR_U235gomodule_stereo");
	}
	else
	{
		RAPTOR_U235stopmodule();
	}
}
// -----------------------------------------------------------------------------
void U235SND(int sampleno,int channel)
{
  	volatile int s=sampleno;
  	volatile int c=channel;
  __asm__ ("\tmove.l 8(a6),d0\n\t"
  "move.l 12(a6),d1\n\t"
  "jsr RAPTOR_U235playsample");
  //volatile int s=sampleno; //tests show that gcc 4.6.4 -O2 puts
  //volatile int c=channel; //s into d0 and c in d1. YMMV for anything other
  //__asm__ ("	jsr RAPTOR_U235playsample");
}
// -----------------------------------------------------------------------------
void RPARTI(int fx,int x,int y)
{
	int *a0=(int *)&pixel_list;
	a0=(int *)a0[fx];
	*(int *)&raptor_part_inject_addr=(int)a0;
	*a0=x;
	*(a0+1)=y;
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
"			  lea		RAPTOR_particle_gfx,a0\n\t"
"              move.w #(320*240)/2/4-1,d0\n\t"
"              moveq #0,d1\n\t"
"clr_loop:     move.l d1,(a0)+\n\t"
"              dbra d0,clr_loop\n\t"
"              movem.l (a7)+,d0/d1/a0\n\t");      
              
}

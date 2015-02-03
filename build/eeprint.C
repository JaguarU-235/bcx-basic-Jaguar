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
#include "rbasic.h"
#include "raptor.h"




// *************************************************
//            User Global Initialized Arrays
// *************************************************


// *************************************************
//                  Main Program
// *************************************************

void basicmain()
{
basic_r_indx=0;
basic_r_size=0;
RLOCATE(10,10);
basic_r_buffer=(char *)"helloooooooooooooooo!";
RPRINT();
RLOCATE(100,100);

basic_r_buffer=ee_printf("Foooooook!");
RPRINT();
for(;;)
  {
    RUPDALL(0);
  }
  while(1) {};   //  End of main program
}

// *************************************************
//                 Runtime Functions
// *************************************************


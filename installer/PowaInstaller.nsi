;
; Raptor Basic+ installer
; Written by GGN and numerous example scripts (too many to mention here!)
;

!include "MUI2.nsh"
!include "EnvVarUpdate.nsh"
!include "IfExist.nsh"
;--------------------------------

; The name of the installer
Name "Raptor Basic+ v1.2"

; The file to write
OutFile "rb+_install.exe"

; The default installation directory
InstallDir "$PROGRAMFILES\Reboot\RB+"

; Registry key to check for directory (so if you install again, it will 
; overwrite the old one automatically)
InstallDirRegKey HKLM "Software\Reboot\RB+" "Install_Dir"

; Request application privileges for Windows Vista
RequestExecutionLevel admin

;--------------------------------
;Interface Configuration

  !define MUI_HEADERIMAGE
  !define MUI_HEADERIMAGE_BITMAP "rbplus.bmp" ; optional
  !insertmacro MUI_DEFAULT MUI_LICENSEPAGE_TEXT_TOP "Please read the following text before agreeing. Pretty please?"
  !define MUI_ABORTWARNING

;--------------------------------
;Pages

  !insertmacro MUI_PAGE_LICENSE "License.txt"
  !insertmacro MUI_PAGE_COMPONENTS
  !insertmacro MUI_PAGE_DIRECTORY

  !define MUI_PAGE_HEADER_SUBTEXT "Choose the folder in which to install the example projects."
  !define MUI_DIRECTORYPAGE_TEXT_TOP "The installer will install the examples in the following folder. To install in a different folder, click Browse and select another folder. Click Next to continue."
  Var EXAMINSTDIR
  !define MUI_DIRECTORYPAGE_VARIABLE $ExamInstDir ; <= the other directory will be stored into that variable
  !insertmacro MUI_PAGE_DIRECTORY ; <= it will store the selected directory into $ExamInstDir

  !insertmacro MUI_PAGE_INSTFILES

  !insertmacro MUI_UNPAGE_CONFIRM
  !insertmacro MUI_UNPAGE_INSTFILES
  
;--------------------------------
;Languages
 
  !insertmacro MUI_LANGUAGE "English"

;--------------------------------
;Installer Sections

;--------------------------------
;Descriptions

  ;Language strings
  LangString DESC_SecDummy ${LANG_ENGLISH} "A test section."

  ;Assign language strings to sections
  !insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${BaseFiles} $(DESC_BaseFiles)
  !insertmacro MUI_DESCRIPTION_TEXT ${ExamFiles} $(DESC_ExamFiles)
  !insertmacro MUI_FUNCTION_DESCRIPTION_END

;--------------------------------

; Pages

;--------------------------------

; The stuff to install
Section "Base files (required)" BaseFiles

  SectionIn 1 2 RO
  
  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File "..\build.bat"
  SetOutPath $INSTDIR\bin
  File "..\bin\as.exe"
  File "..\bin\bc.exe"
  File "..\bin\bmp2jag.Exe"
  File "..\bin\Buildlink.exe"
  File "..\bin\cc1plus.exe"
  File "..\bin\cc1.exe"
  File "..\bin\GfaWin23.Ocx"
  File "..\bin\libgcc_s_dw2-1.dll"
  File "..\bin\libgmp-10.dll"
  File "..\bin\libiconv-2.dll"
  File "..\bin\libmad-0.dll"
  File "..\bin\libmpc-3.dll"
  File "..\bin\libmpfr-4.dll"
  File "..\bin\libstdc++-6.dll"
  File "..\bin\m68k-atari-mint-c++.exe"
  File "..\bin\m68k-atari-mint-gcc.exe"
  File "..\bin\m68k-atari-mint-gcc-4.6.4.exe"
  File "..\bin\makearom.Exe"
  File "..\bin\msys-1.0.dll"
  File "..\bin\pack2e.exe"
  File "..\bin\inpout32.dll"
  File "..\bin\jcp.exe"
  File "..\bin\lo_inp.exe"
  File "..\bin\lo_inp.txt"
  File "rbplus.ico"
  File "..\bin\rln.exe"
  File "..\bin\rmac.exe"
  File "..\bin\rmotion.exe"
  File "..\bin\sox.exe"
  File "..\bin\virtualjaguar.exe"
  File "..\bin\zlib1.dll"
  SetOutPath $INSTDIR\Include
  File "..\include\zero_audio.s"
  File "..\include\zero_audioequ.s"
  File "..\include\zero_audiotbl.s"
  File "..\include\zero_inpt68k.s"
  File "..\include\zero_inpt68ki.s"
  File "..\include\zero_inptequs.s"
  File "..\include\zero_inptinit.s"
  File "..\include\zero_inptint.s"
  File "..\include\zero_inptmain.s"
  File "..\include\zero_inptvars.s"
  File "..\include\externs.inc"
  File "..\include\alloca.h"
  File "..\include\basic_functions.o"
  File "..\include\compiler.h"
  File "..\include\ctype.h"
  File "..\include\ee_printf.o"
  File "..\include\features.h"
  File "..\include\libc.a"
  File "..\include\libgcc.a"
  File "..\include\libm.a"
  File "..\include\linker.h"
  File "..\include\math.h"
  File "..\include\process.h"
  File "..\include\raptor.h"
  File "..\include\rbasic.h"
  File "..\include\setjmp.h"
  File "..\include\stdarg.h"
  File "..\include\stddef.h"
  File "..\include\stdio.h"
  File "..\include\stdlib.h"
  File "..\include\string.h"
  File "..\include\time.h"
  File "..\include\bits\huge_val.h"
  File "..\include\bits\mathdef.h"
  File "..\include\bits\mint_stdio.h"
  File "..\include\bits\stdio_lim.h"
  File "..\include\bits\time.h"
  File "..\include\bits\types.h"
  File "..\include\sys\cdefs.h"
  File "..\include\raptor.inc"
  File "..\include\jaguar.inc"
  File "..\include\partlist.s"
  File "..\include\u235se.inc"
  SetOutPath $INSTDIR\Include\template
  File /r "..\include\template\*.*"
  SetOutPath $INSTDIR\Include\bits
  File "..\include\bits\*.*"
  SetOutPath $INSTDIR\Include\sys
  File "..\include\sys\cdefs.h"
  SetOutPath $INSTDIR\Raptor
  File "..\raptor\Raptor.o"
  SetOutPath $INSTDIR\U235se
  File "..\U235se\dsp.obj"
  File "..\U235se\licence.txt"
  SetOutPath $INSTDIR\Docs
  File /r "..\docs\*.*"
  File /r "..\website\*.*"

  ; Write the installation path into the registry
  WriteRegStr HKLM SOFTWARE\RB+ "Install_Dir" "$INSTDIR"
  
  ; Write the uninstall keys for Windows
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\RB+" "DisplayName" "Raptor Basic+"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\RB+" "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\RB+" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\RB+" "NoRepair" 1
  WriteUninstaller "uninstall.exe"
  
  ;Set environment RBTOOLS and set it to point to the install dir
  ; include for some of the windows messages defines
  !include "winmessages.nsh"
  ; HKLM (all users) vs HKCU (current user) defines
  !define env_hklm 'HKLM "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"'
  !define env_hkcu 'HKCU "Environment"'
  ; set variable
  WriteRegExpandStr ${env_hklm} RBTOOLS "$INSTDIR"
  ; make sure windows knows about the change
  SendMessage ${HWND_BROADCAST} ${WM_WININICHANGE} 0 "STR:Environment" /TIMEOUT=5000

  ;Update PATH to contain the install dir
  ${EnvVarUpdate} $0 "PATH" "A" "HKLM" "$INSTDIR" ; Append 
  
  
  ;Register the .rbplus extension
  ReadRegStr $R0 HKCR ".rbplus" ""
  StrCmp $R0 "NSISFile" 0 +2
  DeleteRegKey HKCR "NSISFile"

  WriteRegStr HKCR ".rbplus" "" "RaptorBasicPlus.CompileFile"
  WriteRegStr HKCR ".rbplus" "PerceivedType" "text"
  WriteRegStr HKCR "RaptorBasicPlus.CompileFile\DefaultIcon" "" "$INSTDIR\bin\rbplus.ico,0"
  WriteRegStr HKCR "RaptorBasicPlus.CompileFile" "" "Raptor Basic Plus Compile File"
  WriteRegStr HKCR "RaptorBasicPlus.CompileFile\shell\compile" "" "Compile RB+ file"
  WriteRegStr HKCR "RaptorBasicPlus.CompileFile\shell\compile\command" "" '"$INSTDIR\build.bat" "%1"'
  WriteRegStr HKCR "RaptorBasicPlus.CompileFile\shell\compile-send" "" "Compile RB+ file and send to Skunkboard"
  WriteRegStr HKCR "RaptorBasicPlus.CompileFile\shell\compile-send\command" "" '"$INSTDIR\build.bat" "%1" sendy'
  WriteRegStr HKCR "RaptorBasicPlus.CompileFile\shell\compile-rom" "" "Compile RB+ file as ROM"
  WriteRegStr HKCR "RaptorBasicPlus.CompileFile\shell\compile-rom\command" "" '"$INSTDIR\build.bat" "%1" ROM'
  WriteRegStr HKCR "RaptorBasicPlus.CompileFile\shell\compile-rom-send" "" "Compile RB+ file as ROM and send to Skunkboard"
  WriteRegStr HKCR "RaptorBasicPlus.CompileFile\shell\compile-rom-send\command" "" '"$INSTDIR\build.bat" "%1" ROM sendy'
  
SectionEnd

!macro copyexamples name
  SetOutPath $ExamInstDir\"${name}"
  File "..\Projects\${name}\*.s"
  File "..\Projects\${name}\*.bas"
  File "..\Projects\${name}\Assets.txt"
  ${!IfExist} "..\Projects\${name}\Rmotion.txt"
	File "..\Projects\${name}\Rmotion.txt"
  !endif
  SetOutPath $ExamInstDir\"${name}\assets"
  File /r "..\Projects\${name}\assets\*.*"
  FileOpen $0 $ExamInstDir\"${name}.rbplus" w
  FileClose $0
!macroend
  
Section "Example projects (optional)" ExamFiles

  SectionIn 1 2
  
  ; Set output path to the installation directory.
  !insertmacro copyexamples 2lists
  !insertmacro copyexamples Changer
  !insertmacro copyexamples Chessboard
  !insertmacro copyexamples CRYtest
  !insertmacro copyexamples DOGEr
  !insertmacro copyexamples Invaders
  !insertmacro copyexamples LOLvalamp
  !insertmacro copyexamples Maprunner
  !insertmacro copyexamples NYANDodge
  !insertmacro copyexamples Pack
  !insertmacro copyexamples Particles
  !insertmacro copyexamples Print
  !insertmacro copyexamples PSemu
  !insertmacro copyexamples Raycaster
  !insertmacro copyexamples Scores
  !insertmacro copyexamples Scroller
  !insertmacro copyexamples ShootBang
  !insertmacro copyexamples Spiral
  !insertmacro copyexamples Tilemap
  !insertmacro copyexamples Starfield
  
SectionEnd

; Optional section (can be disabled by the user)
Section "Start Menu Shortcuts"

  CreateDirectory "$SMPROGRAMS\Raptor Basic+"
  CreateShortcut "$SMPROGRAMS\Raptor Basic+\Uninstall.lnk" "$INSTDIR\uninstall.exe" "" "$INSTDIR\uninstall.exe" 0
  CreateShortcut "$SMPROGRAMS\Raptor Basic+\Raptor Basic+.lnk" "$INSTDIR\build.bat" "rbplus.ico"
  CreateShortcut "$SMPROGRAMS\Raptor Basic+\Raptor Basic+ tutorial.lnk" "$INSTDIR\docs\index.html" ""
  CreateShortcut "$SMPROGRAMS\Raptor Basic+\BCX documentation.lnk" "$INSTDIR\docs\BCXHelp.chm" ""
  
SectionEnd

;--------------------------------

; Uninstaller

Section "Uninstall"
  
  ; Remove registry keys
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\RB+"
  DeleteRegKey HKLM SOFTWARE\RB+

  ; Remove files and uninstaller
  Delete $INSTDIR\bin\*.*
  Delete $INSTDIR\include\*.*
  Delete $INSTDIR\include\bits\*.*
  Delete $INSTDIR\include\sys\*.*
  Delete $INSTDIR\include\template\*.*
  Delete $INSTDIR\raptor\*.*
  Delete $INSTDIR\U235se\*.*
  Delete $INSTDIR\*.*
  Delete $INSTDIR\uninstall.exe

  ; Remove shortcuts, if any
  Delete "$SMPROGRAMS\Raptor Basic+\*.*"

  ; Remove directories used
  RMDir $INSTDIR\bin
  RMDir $INSTDIR\include\template
  RMDir $INSTDIR\include\bits
  RMDir $INSTDIR\include\sys
  RMDir $INSTDIR\include
  RMDir $INSTDIR\raptor
  RMDir $INSTDIR\U235se
  RMDir $INSTDIR
  RMDir "$SMPROGRAMS\Raptor Basic+"

  ;Remove RBTOOLS environment variable
  ; delete variable
  DeleteRegValue ${env_hklm} RBTOOLS
  ; make sure windows knows about the change
  SendMessage ${HWND_BROADCAST} ${WM_WININICHANGE} 0 "STR:Environment" /TIMEOUT=5000
  
  ;Remove install dir from PATH
  ${un.EnvVarUpdate} $0 "PATH" "R" "HKLM" "$INSTDIR"
  
  ;Remove registered extension .rbplus
  !macro AssocDeleteFileExtAndProgId _hkey _dotext _pid
  ReadRegStr $R0 ${_hkey} "Software\Classes\${_dotext}" ""
  StrCmp $R0 "${_pid}" 0 +2
  DeleteRegKey ${_hkey} "Software\Classes\${_dotext}"

  DeleteRegKey ${_hkey} "Software\Classes\${_pid}"
  !macroend

  !insertmacro AssocDeleteFileExtAndProgId HKLM ".rbplus" "RaptorBasicPlus.CompileFile"
  
SectionEnd

Function .onInit
 StrCpy $ExamInstDir "$DOCUMENTS\RBPlus\"
FunctionEnd

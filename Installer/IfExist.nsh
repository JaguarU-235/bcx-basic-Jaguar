/* ${!IfExist}
----------------------------------------------------------------------
    ${!IfExist} "C:\SomeFile.txt"
        !Error "File Exists!"
    !else
        !Error "File is Missing!"
    !endif */
    !define !IfExist `!insertmacro _!IfExist ""`
 
/* ${!IfNExist}
----------------------------------------------------------------------
    ${!IfNExist} "C:\SomeFile.txt"
        !Error "File is Missing!"
    !else
        !Error "File Exists!"
    !endif */
 
    !define !IfNExist `!insertmacro _!IfExist "n"`
    !macro _!IfExist _OP _FilePath
        !ifdef !IfExistIsTrue
            !undef !IfExistIsTrue
        !endif
        !tempfile "!IfExistTmp"
        !system `IF EXIST "${_FilePath}" Echo !define "!IfExistIsTrue" > "${!IfExistTmp}"`
        !include /NONFATAL "${!IfExistTmp}"
        !delfile /NONFATAL "${!IfExistTmp}"
        !undef !IfExistTmp
        !if${_OP}def !IfExistIsTrue
    !macroend
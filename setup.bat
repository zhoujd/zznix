@echo off

set TEMP_LOG="temp.log"

echo setup start ...
echo pwd %CD%

echo add %CD%\cmd to user path
bin\add_path.exe /user %CD%\cmd

echo add %CD%\bin to user path
bin\add_path.exe /user %CD%\bin

echo add %CD%\home\zhoujd\zzemacs\bin to user path
bin\add_path.exe /user %CD%\home\zhoujd\zzemacs\bin

echo add %CD%\share\putty to user path
bin\add_path.exe /user %CD%\share\putty

echo add %CD%\share\ssh2 to user path
bin\add_path.exe /user %CD%\share\ssh2

echo add %CD%\share\nano to user path
bin\add_path.exe /user %CD%\share\nano

echo add %CD%\share\console2 to user path
bin\add_path.exe /user %CD%\share\console2

echo add %CD%\share\xz\bin_x86-64 to user path
bin\add_path.exe /user %CD%\share\xz\bin_x86-64

echo add %CD%\share\xming\bin to user path
bin\add_path.exe /user %CD%\share\xming\bin

echo import reg file: env_zznix.reg 
regedit /s misc\env_zznix.reg

echo import reg file: git_bg_gui.reg 
regedit /s misc\git_bg_gui.reg

echo import reg file: git_bg_shell.reg 
regedit /s misc\git_bg_shell.reg

echo import reg file: git_gui.reg 
regedit /s misc\git_gui.reg

echo import reg file: git_shell.reg 
regedit /s misc\git_shell.reg

echo import reg file: ms_bg_dos.reg 
regedit /s misc\ms_bg_dos.reg

echo import reg file: ms_dos.reg 
regedit /s misc\ms_dos.reg

echo import reg file: fixed_cn.reg
regedit /s share\console2\fixed_cn.reg

echo import reg file: puttyconf.reg
regedit /s share\putty\puttyconf.reg

echo install git-core
bin\7z.exe x -y libexec\git-core.7z -olibexec > %TEMP_LOG%

echo install git-doc
bin\7z.exe x -y doc\git\html.7z -odoc\git > %TEMP_LOG%

echo install lib
bin\7z.exe x -y lib\lib.7z -olib > %TEMP_LOG%

rem clean temp log file
del  %TEMP_LOG%

echo setup end ...
pause

set TEMP_LOG=

@echo on

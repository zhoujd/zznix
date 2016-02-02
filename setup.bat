@echo off

set TEMP_LOG="temp.log"

echo setup start ...
echo pwd %CD%

echo add %CD%\bin to user path
bin\add_path.exe /user %CD%\bin

echo add %CD%\cmd to user path
bin\add_path.exe /user %CD%\cmd

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

echo import reg file: env_zznix.reg 
reg import misc\env_zznix.reg

echo import reg file: git_bg_gui.reg 
reg import misc\git_bg_gui.reg

echo import reg file: git_bg_shell.reg 
reg import misc\git_bg_shell.reg

echo import reg file: git_gui.reg 
reg import misc\git_gui.reg

echo import reg file: git_shell.reg 
reg import misc\git_shell.reg

echo import reg file: ms_bg_dos.reg 
reg import misc\ms_bg_dos.reg

echo import reg file: ms_dos.reg 
reg import misc\ms_dos.reg

echo install git-core
bin\7z.exe x -y libexec\git-core.7z -olibexec > %TEMP_LOG%

echo install lib
bin\7z.exe x -y lib\lib.7z -olib > %TEMP_LOG%

rem clean temp log file
del  %TEMP_LOG%

echo setup end ...
pause

set TEMP_LOG=

@echo on

@echo off

set TEMP_LOG="temp.log"

echo setup local start ...
echo pwd %CD%

echo import reg file: git_bg_shell.reg
regedit /s misc\git_bg_shell.reg
echo import reg file: git_shell.reg
regedit /s misc\git_shell.reg

echo install git-core
bin\7z.exe x -y libexec\git-core.7z -olibexec > %TEMP_LOG%

echo install git-doc
bin\7z.exe x -y doc\git\html.7z -odoc\git > %TEMP_LOG%

echo install lib
bin\7z.exe x -y lib\lib.7z -olib > %TEMP_LOG%

rem clean temp log file
del %TEMP_LOG%

echo setup local end ...
pause

set TEMP_LOG=

@echo on

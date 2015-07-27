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

echo install winscp
bin\7z.exe x -y share\winscp\winscp.7z -oshare\winscp > %TEMP_LOG%

echo setup .bash_addpath
copy /y home\zhoujd\.bash_pathmin home\zhoujd\.bash_addpath

echo setup git config file
copy /y home\zhoujd\.gitcfg-for-min home\zhoujd\.gitconfig

rem clean temp log file
del %TEMP_LOG%

echo setup local end ...
pause

set TEMP_LOG=

@echo on

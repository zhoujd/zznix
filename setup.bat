@echo off

echo setup start ...
echo pwd %CD%

echo add %CD%\bin to user path
bin\add_path.exe /user %CD%\bin

echo add %CD%\home\zhoujd\zzemacs\bin to user path
bin\add_path.exe /user %CD%\home\zhoujd\zzemacs\bin

echo add %CD%\share\putty to user path
bin\add_path.exe /user %CD%\share\putty

echo setup end ...
pause

@echo on

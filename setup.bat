@echo off
echo setup to %OS% start ...

set MYCFG_PATH="%USERPROFILE%\.bash_profile"
set MYHOME="c:/zznix/home/zhoujd"
set CURRENT_DIR=%CD%

if exist %MYCFG_PATH% del %MYCFG_PATH%

echo ### zznix .bash_profile>> %MYCFG_PATH%
echo export HOME=c:/zznix/home/zhoujd>> %MYCFG_PATH%
echo . $HOME/.bashrc>> %MYCFG_PATH%

set MYHOME=
set MYCFG_PATH=
set CURRENT_DIR=

echo setup to %OS% end ...
pause

@echo on

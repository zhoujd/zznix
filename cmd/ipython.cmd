@echo off

rem This is for emacs run IPython
rem Set env var before run this script
set PYTHON_HOME="C:\Python27"

if exist %PYTHON_HOME%\scripts\ipython-script.py goto 1
if exist %PYTHON_HOME%\scripts\ipython goto 2

:1
%PYTHON_HOME%\python.exe -i %PYTHON_HOME%\scripts\ipython-script.py %*
goto END
:2
%PYTHON_HOME%\python.exe -i %PYTHON_HOME%\scripts\ipython %*
goto END
:END

@echo on


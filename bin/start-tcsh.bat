@rem This is for start shell

@set ZZNIX=c:/zznix
@set HOME=%ZZNIX%/home/zhoujd

@if exist %ZZNIX%/bin/csh.exe goto 1
@if exist %ZZNIX%/bin/sh.exe goto 2

:1
@%ZZNIX%/share/tcsh/tcsh-x64.exe -l
@goto END

:2
@%ZZNIX%/share/bash/sh --login -i
@goto END

:END

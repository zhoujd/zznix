@rem This is for start shell

@set ZZNIX=c:/zznix
@set HOME=%ZZNIX%/home/zhoujd
@set SELECT=sh

@if %SELECT% == csh goto 1
@if %SELECT% == sh goto 2
@goto END

:1
@%ZZNIX%/bin/csh.exe -l
@goto END

:2
@%ZZNIX%/bin/sh.exe --login -i
@goto END

:END
@set ZZNIX=
@set HOME=
@set SELECT=

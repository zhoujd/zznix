@rem This is for start shell

@set ZZNIX_HOME=C:/zznix
@set SH_ROOT=C:/Git/bin
@set HOME=%ZZNIX_HOME%/home/zhoujd
@set SELECT=sh

@if %SELECT% == csh goto 1
@if %SELECT% == sh goto 2
@goto END

:1
@%ZZNIX_HOME%/zach/bin/csh.exe -l
@goto END

:2
@%SH_ROOT%/sh.exe --login -i
@goto END

:END
@set ZZNIX_HOME=
@set SH_ROOT=
@set HOME=
@set SELECT=

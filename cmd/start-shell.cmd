@rem This is for start shell

@set ZZNIX_HOME=c:/zznix
@set HOME=%ZZNIX_HOME%/home/zhoujd
@set SELECT=sh

@if %SELECT% == csh goto 1
@if %SELECT% == sh goto 2
@goto END

:1
@%ZZNIX_HOME%/bin/csh.exe -l
@goto END

:2
@C:/Git/bin/sh.exe --login -i
@goto END

:END
@set ZZNIX_HOME=
@set HOME=
@set SELECT=

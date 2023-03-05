@REM Run with Administrators
@REM Option One: Use the Power Users (Windows+X) Menu
@REM Option Two: Use the Start Menu
@REM Option Three: Use the Run Box
@REM

@REM mklink  <target>  <source>
mklink /d c:\Git\zach c:\zznix\zach
mklink /d c:\Git\home c:\zznix\home

@REM setx system environment
c:\zznix\cmd\setx.exe HOME C:\zznix\home\jiandon -m

@REM Please Reboot

pause

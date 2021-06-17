@ECHO off
cls
:start
ECHO.
ECHO 1. 1.1.1.1
ECHO 2. 9.9.9.9
set choice=
set /p choice=Press 1 or 2.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto googledns
if '%choice%'=='2' goto quad9
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:googledns
netsh interface ip set dns "Ethernet" static 8.8.8.8
#Replace Ethernet with interface name
goto end
:quad9
netsh interface ip set dns "Ethernet" static 10.24.20.200
#Replace Ethernet with interface name
goto end

:end
pause

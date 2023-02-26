@echo off
powershell -window hidden -command ""

goto MAIN

:START_DS4Windows
tasklist | findstr /i DS4Windows.exe

if "%errorlevel%" equ "1" (
  python %~dp0\HidHide\Hide.py

  start %~dp0\..\DS4Windows\DS4Windows.exe

  timeout 5
  %~dp0\ChangeProfile.bat xbox360
)

exit /B 0

:START_Retrobat
start %~dp0\..\..\retrobat.exe

timeout 5
%~dp0\..\NirCmd\nircmd.exe win activate process emulationstation.exe

exit /B 0

:CHECK_Emulationstation
timeout 5
tasklist | findstr /i emulationstation.exe

if "%errorlevel%" equ "1" goto EXIT
exit /B 0

:MAIN
call :START_DS4Windows
call :START_Retrobat

for /L %%x in () do (
  call :CHECK_Emulationstation
)

:EXIT
%~dp0\..\DS4Windows\DS4Windows.exe -command Disconnect
%~dp0\..\DS4Windows\DS4Windows.exe -command Shutdown

python %~dp0\HidHide\Unhide.py

exit

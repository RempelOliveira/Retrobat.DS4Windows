@echo off
powershell -window hidden -command ""

set directory=%~1
set game=%~2
set profile=%~3
set force=%~4

goto MAIN

:CHECK_Game
timeout 5
tasklist | findstr /i "%game%"

if %errorlevel% equ 1 goto EXIT
exit /B 0

:MAIN
if not "%profile%" equ "" (
  start %~dp0\ChangeProfile.bat %profile%
)

if "%force%" equ "hide-emulationstation" (
  %~dp0\NirCmd\nircmd.exe win hide title EmulationStation
)

%directory:~0,2%

echo %directory%

cd %directory%
start .\"%game%"

for /L %%x in () do (
  call :CHECK_Game
)

:EXIT
if "%force%" equ "hide-emulationstation" (
  %~dp0\NirCmd\nircmd.exe win show title EmulationStation
)

if not "%profile%" equ "" (
  start %~dp0\ChangeProfile.bat xbox360
  timeout 5
)

%~dp0\NirCmd\nircmd.exe win activate process emulationstation.exe

exit

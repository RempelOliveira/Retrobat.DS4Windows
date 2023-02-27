@echo off
powershell -window hidden -command ""

set p1=%~1
set p2=%~2
set p3=%~3
set p4=%~4

goto MAIN

:CHECK_Game
timeout 5
tasklist | findstr /i "%p2%"

if %errorlevel% equ 1 goto EXIT
exit /B 0

:MAIN
if not "%p3%" equ "" (
  start %~dp0\ChangeProfile.bat %p3%
)

if "%p4%" equ "hide-emulationstation" (
  %~dp0\..\NirCmd\nircmd.exe win hide title EmulationStation
)

%p1:~0,2%

cd %p1%
start .\"%p2%"

for /L %%x in () do (
  call :CHECK_Game
)

:EXIT
if "%p4%" equ "hide-emulationstation" (
  %~dp0\..\NirCmd\nircmd.exe win show title EmulationStation
)

if not "%p3%" equ "" (
  start %~dp0\ChangeProfile.bat xbox360
  timeout 5
)

%~dp0\..\NirCmd\nircmd.exe win activate process emulationstation.exe

exit

@echo off
powershell -window hidden -command ""

goto MAIN

:DS4
D:\Games\Tools\DS4Windows\DS4Windows.exe -command LoadProfile.1.Ds4
D:\Games\Tools\DS4Windows\DS4Windows.exe -command LoadProfile.2.Ds4

exit /B 0

:Xbox360
D:\Games\Tools\DS4Windows\DS4Windows.exe -command LoadProfile.1.Xbox360
D:\Games\Tools\DS4Windows\DS4Windows.exe -command LoadProfile.2.Xbox360

exit /B 0

:MAIN
if %1% equ ds4 (
  call :DS4
) else (
  if %1% equ xbox360 (
    call :Xbox360
  )
)

exit /B 0

@echo off
powershell -window hidden -command ""

goto MAIN

:DS4
for /L %%x in (1, 2, 3, 4) do (
  %~dp0\..\Softwares\DS4Windows\DS4Windows.exe -command LoadProfile.%%x.Ds4
)

exit /B 0

:Xbox360
for /L %%x in (1, 2, 3, 4) do (
  %~dp0\..\Softwares\DS4Windows\DS4Windows.exe -command LoadProfile.%%x.Xbox360
)

exit /B 0

:MAIN
if "%~1" equ "ds4" (
  call :DS4
) else (
  if "%~1" equ "xbox360" (
    call :Xbox360
  )
)

exit /B 0

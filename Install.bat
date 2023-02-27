@echo off

goto MAIN

:INSTALL_NirCmd
curl -L https://www.nirsoft.net/utils/nircmd-x64.zip -o NirCmd\nircmd-x64.zip
tar -xf NirCmd\nircmd-x64.zip -C NirCmd\
del NirCmd\nircmd-x64.zip

exit /B 0

:INSTALL_DS4Windows
curl -L https://github.com/Ryochan7/DS4Windows/releases/download/v3.2.8/DS4Windows_3.2.8_x64.zip -o DS4Windows\DS4Windows_3.2.8_x64.zip
tar -xf DS4Windows\DS4Windows_3.2.8_x64.zip -C DS4Windows\ --strip 1
del DS4Windows\DS4Windows_3.2.8_x64.zip

exit /B 0

:MAIN
echo This script will install a few dependencies to use PS4 joysticks.
set /p p1=Do you want to continue (Y/N)? 

if /i "%p1:~,1%" equ "Y" (
  echo.

  echo --------------------------
  echo Instaling NirCdm ... 
  echo --------------------------

  echo.
  call :INSTALL_NirCmd

  echo.

  echo ------------------------------
  echo Instaling DS4Windows ...
  echo ------------------------------

  echo.
  call :INSTALL_DS4Windows

  echo.

  echo -----------------------------------------------------------------------------
  echo * Don't forget to install HidHide in DS4Windows settings tab and
  echo   set HidHideCli installation folder path in Windows environment variables! *
  echo -----------------------------------------------------------------------------
)

timeout 15
exit

@echo off

goto MAIN

:INSTALL_NirCmd
curl -L https://www.nirsoft.net/utils/nircmd-x64.zip -o Softwares\NirCmd\nircmd-x64.zip
tar -xf Softwares\NirCmd\nircmd-x64.zip -C Softwares\NirCmd\
del Softwares\NirCmd\nircmd-x64.zip

exit /B 0

:INSTALL_Python
curl -L https://www.python.org/ftp/python/3.10.0/python-3.10.0-embed-amd64.zip -o Softwares\Python\python-3.10.0-embed-amd64.zip
tar -xf Softwares\Python\python-3.10.0-embed-amd64.zip -C Softwares\Python\
del Softwares\Python\python-3.10.0-embed-amd64.zip

:INSTALL_AutoHotkey
curl -L https://www.autohotkey.com/download/ahk-v2.zip -o Softwares\AutoHotkey\ahk-v2.zip
tar -xf Softwares\AutoHotkey\ahk-v2.zip -C Softwares\AutoHotkey\
del Softwares\AutoHotkey\ahk-v2.zip

exit /B 0

:INSTALL_DS4Windows
curl -L https://github.com/Ryochan7/DS4Windows/releases/download/v3.2.8/DS4Windows_3.2.8_x64.zip -o Softwares\DS4Windows\DS4Windows_3.2.8_x64.zip
tar -xf Softwares\DS4Windows\DS4Windows_3.2.8_x64.zip -C Softwares\DS4Windows\ --strip 1
del Softwares\DS4Windows\DS4Windows_3.2.8_x64.zip

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
  echo Instaling Python ...
  echo ------------------------------

  echo.
  call :INSTALL_Python

  echo.

  echo --------------------------
  echo Instaling AutoHotkey ... 
  echo --------------------------

  echo.
  call :INSTALL_AutoHotkey

  echo.

  echo ------------------------------
  echo Instaling DS4Windows ...
  echo ------------------------------

  echo.
  call :INSTALL_DS4Windows

  echo.

  echo --------------------------------------------------------------------------------
  echo * Don't forget to install HidHide in DS4Windows settings tab and
  echo   set HidHideCli installation directory path in Windows environment variables! *
  echo --------------------------------------------------------------------------------
)

timeout 15
exit

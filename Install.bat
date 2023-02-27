@echo off
powershell -window hidden -command ""

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
call :INSTALL_NirCmd
call :INSTALL_DS4Windows

exit /B 0

@echo off
powershell -window hidden -command ""

"%~dp0\..\..\..\plugins\Scripts\StartGame.bat" "%~dp0" "MK11.exe" "ds4"

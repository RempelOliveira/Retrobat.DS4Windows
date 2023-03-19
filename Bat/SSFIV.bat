@echo off
powershell -window hidden -command ""

"%~dp0\..\..\..\plugins\Scripts\StartGame.bat" "%~dp0" "SSFIV.exe" "." "hide-emulationstation"

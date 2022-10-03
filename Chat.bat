@echo off
color 2
title Messege sender VERSION 0.1
:top
cls
echo ------------------------------------------
echo            CHAT   :  SERVER:3
echo ------------------------------------------
echo.
set /p name=Enter your name:
goto ll
:ll
cls
echo ------------------------------------------
echo            CHAT   :  SERVER:3
echo ------------------------------------------
echo.
echo Your name is %name%
echo.
start monitor.bat
goto loop
:loop
set /p msg=Type your messege:
powershell -command "Invoke-WebRequest 'https://postconnectamc.000webhostapp.com/writer.php/%name%:%msg%' | Out-Null
if not %errorlevel% == 0 (
echo Unable to sent messege
)
goto loop
@echo off
chcp 65001
cls
mode 70,17
:check220
if exist commandsblocked goto blockedcommand
if not exist commandsblocked goto menu

:blockedcommand
title Oops, This Is Blocked
echo Sorry, The User Has Chosen To Block This Command.
echo.
echo Please Enable Commands And Try Again!
pause>nul
goto check220
:menu
title IP Connector Tool [ctrl + c to stop]
echo.
echo                   [40;34m╦╔═╗  [40;37m╔═╗╦╔╗╔╔═╗╔═╗╦═╗
echo                   [40;34m║╠═╝  [40;37m╠═╝║║║║║ ╦║╣ ╠╦╝
echo                   [40;34m╩╩    [40;37m╩  ╩╝╚╝╚═╝╚═╝╩╚═
echo.
echo.  
set IP=
set /p IP=[40;34mEnter Target IP:[40;37m
echo.
echo [40;31mPing Will Start in 3...
timeout 1 >nul

echo [40;31mPing Will Start in 2...
timeout 1 >nul

echo [40;31mPing Will Start in 1...
timeout 1 >nul
echo.
echo Ctrl + C to Stop
timeout 2 >nul
goto STARTPING
:STARTPING
title Pinging [ %IP% ]   [ Status: Loading... ]
:MAIN
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo [40;31mNot Connected.) && title Pinging [ %IP% ]   [ Status: Connection Protected/Invalid ]
color 5
title Pinging [ %IP% ]   [ Status: Connection Successful ]
ping -t 2 0 10 127.0.0.1 >nul 
goto MAIN
pause
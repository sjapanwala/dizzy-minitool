@echo off
chcp 65001
cls
mode 70,17

:check220
if exist commandsblocked goto blockedcommand
if not exist commandsblocked goto main

:blockedcommand
title Oops, This Is Blocked
echo Sorry, The User Has Chosen To Block This Command.
echo.
echo Please Enable Commands And Try Again!
pause>nul
goto check220

:main
title Harvest Tool [%date%]
cls
echo. 
echo                   [40;34m╦ ╦╔═╗╦═╗╦  ╦╔═╗╔═╗╔╦╗  [40;37m╔╦╗╔═╗╔═╗╦  
echo                   [40;34m╠═╣╠═╣╠╦╝╚╗╔╝║╣ ╚═╗ ║   [40;37m ║ ║ ║║ ║║  
echo                   [40;34m╩ ╩╩ ╩╩╚═ ╚╝ ╚═╝╚═╝ ╩   [40;37m ╩ ╚═╝╚═╝╩═╝
echo.
echo.
echo                [40;34m1) [40;37mHarvest Information From %computername%   
echo.
echo.
if exist harvest1.txt echo                [40;34m*) [40;37mHarvest File 1 [40;32m Filled
if not exist harvest1.txt echo                [40;34m*) [40;37mHarvest File 1 [40;31m Empty
if exist harvest2.txt echo                [40;34m*) [40;37mHarvest File 2 [40;32m Filled
if not exist harvest2.txt echo                [40;34m*) [40;37mHarvest File 2 [40;31m Empty
if exist harvest3.txt echo                [40;34m*) [40;37mHarvest File 3 [40;32m Filled
if not exist harvest3.txt echo                [40;34m*) [40;37mHarvest File 3 [40;31m Empty
set choice=
set /p choice=
if %choice%==1 goto harvestinfo 
if %choice%==2 start harvest1.txt
if %choice%==3 start harvest2.txt
if %choice%==4 start harvest3.txt
goto main

:harvestinfo
if not exist harvest1.txt set filename=harvest1.txt && goto startharvest
if exist harvest1.txt goto harvest2
:harvest2
if not exist harvest2.txt set filename=harvest2.txt && goto startharvest
if exist harvest2.txt goto harvest3
:harvest3
if not exist harvest3.txt set filename=harvest3.txt && goto startharvest
if exist harvest3.txt goto slotsfull
:slotsfull
echo [40;31mAll Harvest Slots Are Full.
echo [40;31mPlease Export Or Delete Old Harvest Files.
goto commandline
goto startharvest
:startharvest
echo Date Harvested: %date%>>%filename%
echo Time Harvested: %time%>>%filename%
echo ┌┬┐┌─┐┬  ┬┬┌─┐┌─┐  ┌┬┐┌─┐┌┬┐┌─┐┬┬  ┌─┐>>%filename%
echo  ││├┤ └┐┌┘││  ├┤    ││├┤  │ ├─┤││  └─┐>>%filename%
echo ─┴┘└─┘ └┘ ┴└─┘└─┘  ─┴┘└─┘ ┴ ┴ ┴┴┴─┘└─┘>>%filename%
echo - - - - - - - - - - - - - - - - - - - ->>%filename%
echo %computername%>>%filename%
echo %username%>>%filename%
echo ┬┌─┐  ┌┬┐┌─┐┌┬┐┌─┐┬┬  ┌─┐>>%filename% 
echo │├─┘   ││├┤  │ ├─┤││  └─┐>>%filename%
echo ┴┴    ─┴┘└─┘ ┴ ┴ ┴┴┴─┘└─┘>>%filename%
echo - - - - - - - - - - - - - - - - ->>%filename% 
ipconfig /release>>%filename%
echo.
echo [40;32m%computername%'s Device Info Hase Been Harvested!
echo Saved as %filename% And Can Be Accessed From Saved Harvest Files!
pause>nul
goto main

:slotsfull
echo.
echo [40;31m All Slots Are Full, Please Delete Old Slots
timeout 2 >nul
goto main


::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFChbWRaSAE+1EbsQ5+n//NaBo1sUV+0xNobY1dQ=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgeEsFLA==
::ZQ05rAF9IBncCkqN+0xwdVsEHFTTXA==
::ZQ05rAF9IAHYFVzEqQIUIQFOVUSvNWWzMroT5Ig=
::eg0/rx1wNQPfEVWB+kM9LVsJDCCLJnGjRpgV5uHP4OWLwg==
::fBEirQZwNQPfEVWB+kM9LVsJDCCLJnGjRpgV5uHP4OWLwg==
::cRolqwZ3JBvQF1fEqQIeZzo0
::dhA7uBVwLU+EWGmW/VQxPB4UdzeDPWK3Rp8d+On1+OuLo3B9
::YQ03rBFzNR3SWATE2g0RSA==
::dhAmsQZ3MwfNWATE2k0+LXs=
::ZQ0/vhVqMQ3MEVWAtB9wCg5dQADCbzja
::Zg8zqx1/OA3MEVWAtB9wCg5dQADCbzja
::dhA7pRFwIByZRRmqu2NQ
::Zh4grVQjdCmDJFeB4wI9IRVdDBCNM2eGIrwG8vHP4OWL7EgFUYI=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
:refresh
@echo off
chcp 65001
title dizzy® │ %time% │ %date% │ Debugmain: 404 │ %username% │
mode 90,25
goto main

if exist login goto locked

:locked
set pass=
set /p pass= please enter your password
if %pass%==%pass% goto main
echo Your Pass Was Not Correct

:main
cls
echo.
echo                                         [40;34m___              
echo                                   [40;34m ____/  (_)_______ __  __
echo                                   [40;34m/ __  / /_  /_  / / / / /
echo                                  [40;34m/ /_/ / / / /_/ /_/ /_/ / 
echo                                  [40;34m\__,_/_/ /___/___/\__, /  
echo                                  [40;37m ©2022 [40;34m          /____/   
echo.
echo                   [40;34m* * * * * * * * * * * * * * * * * * * * * * * * * * * 
echo.
echo.
echo                   [40;34m[01][40;37m IP Locator      [40;34m[05][40;37m Port Scanner    [40;34m[09][40;37m More Scripts
echo.
echo                   [40;34m[02][40;37m Server Pinger   [40;34m[06][40;37m PuTTY           [40;34m[10][40;37m Settings
echo.
echo                   [40;34m[03][40;37m Network Tool    [40;34m[07][40;37m Reaper Pinger   [40;34m[11][40;37m CMD
echo.
echo                   [40;34m[04][40;37m Harvest Tool    [40;34m[08][40;37m getinfo         [40;34m[12][40;37m Exit
echo.
echo [40;37m╔══[40;34m(Home)
echo [40;37m║
set /p choice=[40;37m╚═══[40;34m(%username%/dizzy): [40;37m
if %choice%==1 goto option1
if %choice%==2 goto option2
if %choice%==3 goto option3
if %choice%==4 goto option4
if %choice%==5 goto option5
if %choice%==6 goto option6
if %choice%==7 goto option7
if %choice%==8 goto option8
if %choice%==9 goto option9
if %choice%==10 goto option10
if %choice%==11 goto option11
if %choice%==12 goto option12
goto main

:option1
start iptool.bat
goto main

:option2
start pingtool.bat
goto main

:option3
start nettool.bat
goto main

:option4
start harvesttool.bat
goto main

:option5
start pscan.exe
goto main

:option6
start putty.exe
goto main

:option7
start reaper.bat
goto main

:option8
cls
echo.
echo                                         [40;34m___              
echo                                   [40;34m ____/  (_)_______ __  __
echo                                   [40;34m/ __  / /_  /_  / / / / /
echo                                  [40;34m/ /_/ / / / /_/ /_/ /_/ / 
echo                                  [40;34m\__,_/_/ /___/___/\__, /  
echo                                  [40;37m ©2022 [40;34m          /____/   
echo.
echo [40;37mDizzy Multitool [%username%]
echo.
echo [40;37mVersion[40;34m 1
echo [40;37mManifestID[40;34m %random%
echo [40;37mSession[40;34m 33 
echo.
pause>nul
goto main
:option9
start https://github.com/vyberr
goto main


:option10
mode 60,40
echo.
echo              ┌─┐┌─┐┌┬┐┌┬┐┬┌┐┌┌─┐┌─┐
echo              └─┐├┤  │  │ │││││ ┬└─┐
echo              └─┘└─┘ ┴  ┴ ┴┘└┘└─┘└─┘
echo.
echo   'To Change A Setting, Please Enter The Name of Feature'
echo.
echo.
if exist login echo [40;37mLogin Required     [40;32m ON
if not exist login echo [40;37mLogin Required     [40;31m OFF
echo.
if exist commandsblocked echo [40;37mCommand Security   [40;32m ON
if not exist commandsblocked echo [40;37mCommand Security   [40;31m OFF
echo.
set settingmodified=
set /p settingmodified=[40;37mEnter Command Name (refresh to exit) [40;37m
if %settingmodified%==login goto loginsettings
if %settingmodified%==commandsblocked goto commandsblocked
goto refresh
:loginsettings
if exist login del login && goto refresh
if not exist login echo > login && goto refresh

:commandsblocked
if exist commandsblocked del commandsblocked && goto refresh
if not exist commandsblocked echo > commandsblocked && goto refresh

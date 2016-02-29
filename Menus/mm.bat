@ECHO off
COLOR f0
TITLE Batch Game v0.1: Main Menu

ECHO Welcome to the Batch Game!
ECHO.
ECHO Begin: 1
ECHO Help: Help
ECHO Quit: Quit
ECHO.

:cmd
SET /p in="Enter command: "
IF "%in%"=="1" GOTO start 
IF "%in%"=="Help" GOTO hm
IF "%in%"=="Quit" EXIT
IF "%in%"=="Lefty" ECHO Not valid here.
IF "%in%"=="Righty" ECHO Not valid here.
IF "%in%"=="FAQ" GOTO FAQ
IF "%in%"=="Credits" GOTO cm
IF "%in%"=="MM" ECHO You're already on this menu!
IF "%in%"=="x" ECHO Not valid here.
IF NOT "%in%"=="Righty" IF NOT "%in%"=="Lefty" IF NOT "%in%"=="MM" IF NOT "%in%"=="x" ECHO Invalid command.
GOTO cmd

:start
SET dir="..\Levels"
PUSHD %dir%
START lvl1.bat
EXIT

:hm
START hm.bat
GOTO cmd

:cm
START cm.bat
GOTO cmd

:FAQ
START FAQ.bat
GOTO cmd
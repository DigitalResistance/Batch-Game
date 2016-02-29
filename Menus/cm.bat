@ECHO off
COLOR f0
TITLE Batch Game v0.1: Help Menu

ECHO Programming: A. Connor "Silvainius" Adam
ECHO Graphics:    A. Connor "Silvainius" Adam
ECHO Design:	  A. Connor "Silvainius" Adam
ECHO.
GOTO cmd

:cmd
SET /p in="Enter command: "
IF "%in%"=="Help" GOTO hm
IF "%in%"=="Quit" EXIT
IF "%in%"=="Lefty" ECHO Not valid here.
IF "%in%"=="Righty" ECHO Not valid here.
IF "%in%"=="FAQ" GOTO FAQ
IF "%in%"=="Credits" ECHO you're already on this menu!
IF "%in%"=="MM" ECHO Not valid here.
IF "%in%"=="x" ECHO Not valid here.
IF NOT "%in%"=="Righty" IF NOT "%in%"=="Lefty" IF NOT "%in%"=="Credits" IF NOT "%in%"=="MM" IF NOT "%in%"=="x" ECHO Invalid command.
GOTO cmd

:hm
START hm.bat
EXIT

:FAQ
START FAQ.bat
EXIT

